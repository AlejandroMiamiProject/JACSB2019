using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace JACSBcafg
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (User.Identity.GetUserId() != null)
            {
                api ws = new api();
                DataTable dt = new DataTable();
                ws.addParam("@UserId", User.Identity.GetUserId());
                dt = ws.sqlExecDataTable("spGetCardsByUser");
                foreach (DataRow r in dt.Rows)
                {
                    Response.Write("<h1>" + r["cardTitle"] + "</h1>");
                }
            }


            //if ()

            
        }
    }
}