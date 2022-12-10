using System.Linq;

namespace ChatAppAPI.Models
{
    public partial class ChatMessageTable
    {
        private ChatCollegeDataBaseEntities db = new ChatCollegeDataBaseEntities();
        //public string TakeMessage
        //{
        //    get
        //    {
        //        var emp = db.UsersTable.Where(data => data.PersonalNumberUser == PNUsers).FirstOrDefault();
        //        string messagE = $"[{DataTime.Hour} : {DataTime.Minute} : {DataTime.Second}] {emp.NameUser} : {TextMessage}";
        //        return messagE;
        //    }
        //}
        public string TakeUser
        {
            get
            {
                var User = db.UsersTable.Where(data => data.PersonalNumberUser == PNUsers).FirstOrDefault();
                return User.NameUser.ToString();
            }
        }

        public string TakeTime
        {
            get
            {
                string time = $"{DataTime.Hour}:{DataTime.Minute}:{DataTime.Second}";
                return time.ToString();
            }
        }
    }
}