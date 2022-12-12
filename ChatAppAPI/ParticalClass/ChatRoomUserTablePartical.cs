using System;
using System.Collections.Generic;
using System.Linq;

namespace ChatAppAPI.Models
{
    public partial class ChatRoomUserTablePartical
    {
        private ChatCollegeDataBaseEntities db = new ChatCollegeDataBaseEntities();
        List<ChatRoomUserTable> CountList = new List<ChatRoomUserTable>();
        //public string LastCount
        //{
        //    get
        //    {
        //        string Error = "ERROR 2041";
        //        try
        //        {
        //            var result = CountList.GroupBy(user => user.PNUser).Select(sweep => new {sweep.Key}).ToList();
        //            return result.ToString();
        //        }
        //        catch
        //        {
        //            return Error;
        //        }
        //    }
        //}
    }
}