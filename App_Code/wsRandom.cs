using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for wsRandom
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class wsRandom : System.Web.Services.WebService
{

    public wsRandom()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string getLabelString()
    {
        Random random = new Random();
        int r = random.Next(1, 14);
        String text = "";
       // Label1.Text = " " + (Convert.ToString(r));
        if (r == 1)
        {
         text = "Success: a word that takes a second to say but a lifetime to accomplish.";
        }
        if (r == 2)
        {
            text = "Did you ever stop to think, and forget to start again -A.A.Milne";
        }
        if (r == 3)
        {
            text = "“I’m not bad. I’m just drawn that way.” – Who Framed Roger Rabbit";
        }
        if (r == 4)
        {
            text = "Boredom happens only when you have so much time available.";
        }
        if (r == 5)
        {
            text = "Boredom happens only when you have so much time available.";
        }
        if (r == 6)
        {
            text = ". It’s not that I’m so smart, it’s just that I stay with problems longer.—Albert Einstein";
        }
        if (r == 7)
        {
            text = " I respect faith, but doubt is what gets you an education.—Wilson Mizner";
        }
        if (r == 8)
        {
            text = "The pessimist complains about the wind; the optimist expects it to change; the realist adjusts the sails.—William Arthur Ward";
        }
        if (r == 9)
        {
            text = " If you don’t make mistakes, you’re not working on hard enough problems. And that’s a big mistake.—Frank Wilczek";
        }
        if (r == 10)
        {
            text = "You can never get enough of what you don’t really need.—Eric Hoffer";
        }
        if (r == 11)
        {
            text = "Discipline is just choosing between what you want now and what you want most.—Unknown Author";
        }
        if (r == 12)
        {
            text = "The very best thing you can do for the whole world is to make the most of yourself.—Wallace Wattles";
        }
        if (r == 13)
        {
            text = "Good judgment comes from experience, and experience comes from bad judgment.—Barry LePatner";
        }
        if (r == 14)
        {
            text = "Success consists of going from failure to failure without loss of enthusiasm.—Winston Churchill";
        }

        return text;
    }

}
