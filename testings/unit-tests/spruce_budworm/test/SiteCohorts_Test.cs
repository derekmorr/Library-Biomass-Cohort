// using Edu.Wisc.Forest.Flel.Grids;
using Edu.Wisc.Forest.Flel.Util;

using Landis.Core;
using Landis.Library.BiomassCohorts;
using Landis.SpatialModeling;
using Landis.Species;

using NUnit.Framework;

using System.Collections.Generic;

namespace Landis.Test.Biomass
{
    [TestFixture]
    public class SiteCohorts_Test
    {
        private ISpecies abiebals;
        private ISpecies betualle;
        private ActiveSite activeSite;
        private MockCalculator mockCalculator;
        private const int successionTimestep = 10;
        private Dictionary<ISpecies, int[]> expectedCohorts;

        //---------------------------------------------------------------------

        [OneTimeSetUp]
        public void Init()
        {
            abiebals = Data.Species["abiebals"];
            betualle = Data.Species["betualle"];

            bool[,] grid = new bool[,]{ {true} };
            DataGrid<bool> dataGrid = new DataGrid<bool>(grid);
            ILandscape landscape = new Landscape.Landscape(dataGrid);
            activeSite = landscape[1,1];

            mockCalculator = new MockCalculator();
            Landis.Biomass.Cohorts.Initialize(successionTimestep,
                                              mockCalculator);

            Landis.Biomass.Cohort.DeathEvent += DeathNotExpected;

            expectedCohorts = new Dictionary<ISpecies, int[]>();
        }

        //---------------------------------------------------------------------

        [OneTimeTearDown]
        public void TearDown()
        {
            Landis.Biomass.Cohort.DeathEvent -= DeathNotExpected;
        }

        //---------------------------------------------------------------------

        public void DeathNotExpected(object         sender,
                                     DeathEventArgs eventArgs)
        {
            Assert.Fail("A cohort died unexpectedly");
        }

        //---------------------------------------------------------------------

        [Test]
        public void NoCohorts_Grow()
        {
            SiteCohorts cohorts = new SiteCohorts();
            Assert.AreEqual(0, cohorts.TotalBiomass);

            mockCalculator.CountCalled = 0;
            Util.Grow(cohorts, 5, activeSite, false);
            Assert.AreEqual(0, mockCalculator.CountCalled);
        }

        //---------------------------------------------------------------------

        [Test]
        public void SingleCohort()
        {
            SiteCohorts cohorts = new SiteCohorts();
            Assert.AreEqual(0, cohorts.TotalBiomass);

            const int initialBiomass = 300;
            cohorts.AddNewCohort(abiebals, initialBiomass);
            Assert.AreEqual(initialBiomass, cohorts.TotalBiomass);

            expectedCohorts.Clear();
            expectedCohorts[abiebals] = new int [] { 1, initialBiomass };
            Util.CheckCohorts(expectedCohorts, cohorts);
        }

        //---------------------------------------------------------------------

        [Test]
        public void CombineYoungCohorts()
        {
            SiteCohorts cohorts = new SiteCohorts();
            int[] initialBiomass = new int[] { 300, 700 };
            cohorts.AddNewCohort(abiebals, initialBiomass[0]);
            Assert.AreEqual(initialBiomass[0], cohorts.TotalBiomass);

            //  Grow 1st cohort for 4 years, adding 10 to its biomass per year
            mockCalculator.CountCalled = 0;
            mockCalculator.Change = 10;
            Util.Grow(cohorts, 4, activeSite, false);

            Assert.AreEqual(4, mockCalculator.CountCalled);

            expectedCohorts.Clear();
            expectedCohorts[abiebals] = new int[] {
                5, (int) (300 + 4 * mockCalculator.Change)
            };
            Util.CheckCohorts(expectedCohorts, cohorts);

            //  Add 2nd cohort and then grow both cohorts 6 more years up to
            //  a succession timestep
            cohorts.AddNewCohort(abiebals, initialBiomass[1]);
            mockCalculator.CountCalled = 0;
            Util.Grow(cohorts, 6, activeSite, true);

            //  ComputeChange for both cohorts for 5 years, then combine them,
            //  and then one time for the combined cohort
            Assert.AreEqual(5 * 2 + 1, mockCalculator.CountCalled);

            expectedCohorts.Clear();
            expectedCohorts[abiebals] = new int[] {
                successionTimestep,
                (int)
                    (300 + (4 + 5) * mockCalculator.Change // first cohort before combining
                     + 700 + 5 * mockCalculator.Change     // 2nd cohort before combining
                     + mockCalculator.Change)              // growth after combining
            };
            Util.CheckCohorts(expectedCohorts, cohorts);
        }

        //---------------------------------------------------------------------

        [Test]
        public void Clone()
        {
            SiteCohorts cohorts = new SiteCohorts();
            const int initialBiomass = 55;
            cohorts.AddNewCohort(abiebals, initialBiomass);

            mockCalculator.CountCalled = 0;
            mockCalculator.Change = 1;

            for (int time = successionTimestep; time <= 70; time += successionTimestep) {
                Util.Grow(cohorts, successionTimestep, activeSite, true);
                if (time % 20 == 0)
                    cohorts.AddNewCohort(abiebals, initialBiomass);
                if (time % 30 == 0)
                    cohorts.AddNewCohort(betualle, initialBiomass);
            }

            //  Expected cohort changes:
            //
            //  Time  Cohorts
            //  ----  -------
            //    0   abiebals 1(55)
            //   10   abiebals 10(65)
            //   20   abiebals 20(75) 1(55)
            //   30   abiebals 30(85) 10(65)
            //        betualle 1(55)
            //   40   abiebals 40(95) 20(75) 1(55)
            //        betualle 10(65)
            //   50   abiebals 50(105) 30(85) 10(65)
            //        betualle 20(75)
            //   60   abiebals 60(115) 40(95) 20(75) 1(55)
            //        betualle 30(85) 1(55)
            //   70   abiebals 70(125) 50(105) 30(85) 10(65)
            //        betualle 40(95) 10(65)
            expectedCohorts.Clear();
            expectedCohorts[abiebals] = new int[] {
                //  age  biomass
                    70,    125,
                    50,    105,
                    30,     85,
                    10,     65
            };
            expectedCohorts[betualle] = new int[] {
                //  age  biomass
                    40,     95,
                    10,     65
            };
            Util.CheckCohorts(expectedCohorts, cohorts);

            SiteCohorts clone = cohorts.Clone();
            Util.CheckCohorts(expectedCohorts, clone);

            //  Modify the original set of cohorts by growing them for 2 more
            //  succession timesteps.  Check that clone doesn't change.
            for (int time = 80; time <= 90; time += successionTimestep) {
                Util.Grow(cohorts, successionTimestep, activeSite, true);
            }
            Util.CheckCohorts(expectedCohorts, clone);

            expectedCohorts.Clear();
            expectedCohorts[abiebals] = new int[] {
                //  age  biomass
                    90,    145,
                    70,    125,
                    50,    105,
                    30,     85
            };
            expectedCohorts[betualle] = new int[] {
                //  age  biomass
                    60,    115,
                    30,     85
            };
            Util.CheckCohorts(expectedCohorts, cohorts);
        }
    }
}
