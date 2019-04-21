﻿using Microsoft.VisualStudio.TestTools.UnitTesting;
using JACSBcafg.Account;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JACSBcafg.Account.Tests
{
    [TestClass()]
    public class LoginTests
    {
        [TestMethod()]
        public void Page_LoadTest()
        {
            Assert.IsNotNull("@sender");
        }

        [TestMethod()]
        public void LogInTest()
        {
            Assert.IsNotNull("@sender");
            Assert.IsNotNull("@Email.Text");
            Assert.IsNotNull("@Password.Text");
            Assert.IsNotNull("@RememberMe.Checked");
            Assert.IsNotNull("@result");
            // Email.Text, Password.Text, RememberMe.Checked

        }
    }
}