using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DBUtil
/// </summary>
public class DBUtil
{
    public static String ConnectionString
    {
        //
        // TODO: Add constructor logic here
         get
        {
            // return "Data Source = DESKTOP - PI7H893; Initial Catalog = DBUtil; Integrated Security = True";
            return "Data Source=SUYASH_LAPTOP;Initial Catalog=DBUtil;Integrated Security=True";
        }
    }
}