using System;
using System.Globalization;


namespace WebApplication5
{
    public class Helpers
    {
        public string dbDateConvertor(string theDate)
        {
            return DateTime.ParseExact(theDate, "dd'-'MM'-'yyyy", CultureInfo.InvariantCulture).ToString("yyyy'/'MM'/'dd");
        }
    }
}