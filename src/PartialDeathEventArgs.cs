//  Copyright 2005-2010 Portland State University, University of Wisconsin
//  Authors:  Robert M. Scheller, James B. Domingo

using Landis.Core;
using Landis.SpatialModeling;

namespace Landis.Library.BiomassCohorts
{
    /// <summary>
    /// Information about a cohort's death.
    /// </summary>
    public class PartialDeathEventArgs
    {
        private readonly ICohort cohort;
        private readonly ActiveSite site;
        private readonly ExtensionType disturbanceType;
        private readonly float reduction;

        //---------------------------------------------------------------------

        /// <summary>
        /// The cohort that died.
        /// </summary>
        public ICohort Cohort
        {
            get
            {
                return cohort;
            }
        }

        //---------------------------------------------------------------------

        /// <summary>
        /// The site where the cohort died.
        /// </summary>
        public ActiveSite Site
        {
            get
            {
                return site;
            }
        }

        //---------------------------------------------------------------------

        /// <summary>
        /// The type of disturbance that killed the cohort.
        /// </summary>
        /// <remarks>
        /// null if the cohort died during the growth phase of succession.
        /// </remarks>
        public ExtensionType DisturbanceType
        {
            get
            {
                return disturbanceType;
            }
        }

        //---------------------------------------------------------------------

        /// <summary>
        /// The type of disturbance that killed the cohort.
        /// </summary>
        public float Reduction
        {
            get
            {
                return reduction;
            }
        }
        //---------------------------------------------------------------------

        /// <summary>
        /// Initializes a new instance.
        /// </summary>
        public PartialDeathEventArgs(ICohort cohort,
                              ActiveSite site,
                              ExtensionType disturbanceType, float reduction)
        {
            this.cohort = cohort;
            this.site = site;
            this.disturbanceType = disturbanceType;
            this.reduction = reduction;
        }
    }
}
