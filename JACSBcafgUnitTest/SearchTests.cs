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
            string[] expectedSearchStrings = {"c++", "java", "python"};
            CollectionAssert.Contains(expectedSearchStrings, "@searchCriteria".ToLower());
            // CollectionAssert.Contains(expectedSearchStrings, "@searchCriteria".ToLower()); Passes
        }
    }
}