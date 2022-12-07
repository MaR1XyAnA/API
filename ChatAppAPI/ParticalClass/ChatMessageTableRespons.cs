using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ChatAppAPI.Models
{
    public partial class ChatMessageTable
    {
        private ChatCollegeDataBaseEntities db = new ChatCollegeDataBaseEntities();
        public string TakeMessage
        {
            get
            {
                var emp = db.UsersTable.Where(data => data.PersonalNumberUser == PNUsers).FirstOrDefault();
                string messagE = $"[{DataTime.Hour} : {DataTime.Minute} : {DataTime.Second}] {emp.NameUser} : {TextMessage}";
                return messagE;
            }
        }
    }
}