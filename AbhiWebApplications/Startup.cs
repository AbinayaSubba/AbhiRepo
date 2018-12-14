using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AbhiWebApplications.Startup))]
namespace AbhiWebApplications
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
