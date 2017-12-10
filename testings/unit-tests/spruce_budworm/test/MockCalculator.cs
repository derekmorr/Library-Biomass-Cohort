using Edu.Wisc.Forest.Flel.Util;

using Landis.Core;
using Landis.Library.BiomassCohorts;
using Landis.SpatialModeling;

namespace Landis.Test.Biomass
{
    public class MockCalculator
        : ICalculator
    {
        public int CountCalled;
        public int Change;
        public Percentage NonWoodyPercentage;
        public int Mortality;

        //---------------------------------------------------------------------

        public int MortalityWithoutLeafLitter
        {
            get {
                return Mortality;
            }
        }

        //---------------------------------------------------------------------

        public MockCalculator()
        {
        }

        //---------------------------------------------------------------------

        public int ComputeChange(ICohort    cohort,
                                 ActiveSite site)
        {
            CountCalled++;
            return Change;
        }

        //---------------------------------------------------------------------

        public Percentage ComputeNonWoodyPercentage(ICohort    cohort,
                                                    ActiveSite site)
        {
            return NonWoodyPercentage;
        }
    }
}
