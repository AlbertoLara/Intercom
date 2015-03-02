using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MainPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [System.Web.Services.WebMethod]
    public static string login()
    {
        string email = HttpContext.Current.Request["User"];
        string pass = HttpContext.Current.Request["Pass"];
        return email;
    }
}