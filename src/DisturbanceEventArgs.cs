//  Copyright 2005-2010 Portland State University, University of Wisconsin
//  Authors:  Robert M. Scheller, James B. Domingo

using Landis.Core;
using Landis.SpatialModeling;

namespace Landis.Library.BiomassCohorts
{
    /// <summary>
    /// Information about a disturbance event at a site.
    /// </summary>
    public class DisturbanceEventArgs
    {
        private readonly ActiveSite site;
        private readonly ExtensionType disturbanceType;

        //---------------------------------------------------------------------

        /// <summary>
        /// The site where the cohort died.
        /// </summary>
        public ActiveSite Site
        {
            get {
                return site;
            }
        }

        //---------------------------------------------------------------------

        /// <summary>
        /// The type of disturbance that killed the cohort.
        /// </summary>
        public ExtensionType DisturbanceType
        {
            get {
                return disturbanceType;
            }
        }

        //---------------------------------------------------------------------

        /// <summary>
        /// Initializes a new instance.
        /// </summary>
        public DisturbanceEventArgs(ActiveSite site,
                                    ExtensionType disturbanceType)
        {
            this.site = site;
            this.disturbanceType = disturbanceType;
        }
    }
}
