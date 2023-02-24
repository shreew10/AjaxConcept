using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AjaxConcept
{
    public partial class AjaxTimerWebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tb_dt.Attributes.Add("readonly", "true");
        }

        protected void Timer_1_tick_Tick(object sender, EventArgs e)
        {
            lbl_dt_time.Text = DateTime.Now.ToString();
        }
    }
}