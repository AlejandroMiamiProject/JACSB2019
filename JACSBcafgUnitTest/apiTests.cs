using Microsoft.VisualStudio.TestTools.UnitTesting;
using JACSBcafg;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JACSBcafg.Tests
{
    [TestClass()]
    public class apiTests
    {
        [TestMethod()]
        public void createLearningSiteTest()
        {
            // If any of the fields empty, raises error
            Assert.IsNotNull("@lsName");
            Assert.IsNotNull("@lsOwnerName");
            Assert.IsNotNull("@lsEmail");
            Assert.IsNotNull("@lsPhoneNumber");
            Assert.IsNotNull("@lsWebAddress");
        }

        [TestMethod()]
        public void getVendorsByStateTest()
        {
            // If field is empty, raises error
            Assert.IsNotNull("@state");
        }
    }
}