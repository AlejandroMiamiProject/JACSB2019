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
            Assert.IsNull("@lsName");
            Assert.IsNull("@lsOwnerName");
            Assert.IsNull("@lsEmail");
            Assert.IsNull("@lsPhoneNumber");
            Assert.IsNull("@lsWebAddress");
        }

        [TestMethod()]
        public void getVendorsByStateTest()
        {
            Assert.IsNull("@state");
        }
    }
}