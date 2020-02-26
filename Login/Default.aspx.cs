using System;
using System.Threading.Tasks;
using System.Web.Security;

namespace FormsAuthenticate.Login
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (FormsAuthentication.Authenticate(username.Value, password.Value))
                {
                    FormsAuthentication.SetAuthCookie(username.Value, remember.Checked);
                    Response.Redirect(Request["ReturnUrl"] ?? "/");
                }
                else
                {
                    loginerror.Visible = true;

                    var tryCount = ((int?) Session["LoginTryCount"] ?? 0) + 1;

                    Session["LoginTryCount"] = tryCount;

                    var waitSec = (int) Math.Pow(1.6, tryCount);

                    if (waitSec > 60)
                        waitSec = 60;

                    Task.Delay(waitSec * 1000).Wait();
                }
            }
            else
                loginerror.Visible = false;
        }
    }
}