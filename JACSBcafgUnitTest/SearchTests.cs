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
    public class SearchTests
    {
        [TestMethod()]
        public void BtnSearch_ClickTest()
        {
            string searchCriteria = "@searchCriteria".ToLower();

            // If search is empty, raises error
            Assert.IsNotNull(searchCriteria);

            // If search is not in expected searches, raises error
            string[] expectedSearchStrings = {"c++", "java", "python"};
            CollectionAssert.Contains(expectedSearchStrings, searchCriteria);
            // CollectionAssert.Contains(expectedSearchStrings, "@searchCriteria".ToLower()); Passes
        }
    }
}