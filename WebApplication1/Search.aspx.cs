using WebApplication1;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JACSBcafg
{
    public partial class Search : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        } 
        
        public void BtnSearch_Click(object sender, EventArgs e)
        {
            //32:54...
            api a = new api();
            StringBuilder sb = new StringBuilder();

            a.addParam("@searchCriteria", txtSearch.Text);
            DataTable tbl = a.sqlExecDataTable("spSearch");
            sb.Append("<table class='table table-striped table-bordered' style='max-width:700px overflow:auto'>"
                + "<th>Site</th>"
                + "<th>Application</th>"
                + "<th>Module Name</th>"
                + "<th>Topic</th>"
                + "<th>Language</th>"
                + "<th>Prerequisites</th>"
                + "<th>System Requirements</th>"
                + "<th>Link</th>"
                + "<th>Module Rating</th>"
                + "<th>Cost USD</th>"
                + "<th>Skill Level</th>"
                + "<br><th>Description</th>");
            foreach (DataRow row in tbl.Rows)
                sb.Append("<tr><td>"
                   + row["lsName"] + "</td>"
                   + "<td>" + row["appName"] + "</td>"
                   + "<td>" + row["modName"] + "</td>"
                   + "<td>" + row["modTopic"] + "</td>"
                   + "<td>" + row["modLanguage"] + "</td>"
                   + "<td>" + row["modPrereqs"] + "</td>"
                   + "<td><a href='" + row["modLink"] + "'>Link</a></td>"
                   + "<td>" + row["aveModRating"] + "</td>"
                   + "<td>" + row["modSkillLevel"] + "</td>"
                   + "<td>" + row["modDescription"] + "</td></tr>"
                  );
            sb.Append("</table>");
            lblSearch.Text = sb.ToString();
        }
      
        // lbl search should be search criteria....
    }
}