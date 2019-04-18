using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(JACSBcafg.Startup))]
namespace JACSBcafg
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
