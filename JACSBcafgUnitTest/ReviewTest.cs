using Microsoft.VisualStudio.TestTools.UnitTesting;
using JACSBcafg.Account;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JACSBcafg.Account.Tests
{
    [TestClass()]
    public class ReviewTests
    {
        [TestMethod()]
        public void Review_ClickTest()
        {
            string comment = "";
            Assert.IsNotNull(comment);
            int rating = "@rating";
            Assert.IsTrue(rating == 0);
            string userId = "@userID";
            string password = "@password";
            Assert.IsTrue(userId.isValid());
            Assert.IsTrue(password.isValid());
        }
    }
}