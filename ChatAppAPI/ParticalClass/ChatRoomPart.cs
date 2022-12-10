using System;
using System.Linq;

namespace ChatAppAPI.Models
{
    public partial class ChatRoomTable
    {
        public string LastMessage
        {
            get
            {
                string message = "Сообщение";
                string Error = "ERROR 2041";
                try
                {
                    message = ChatMessageTable.LastOrDefault()?.TextMessage ?? "Нет сообщений";
                    return message;
                }
                catch
                {
                    return Error;
                }
            }
        }

        private ChatCollegeDataBaseEntities db = new ChatCollegeDataBaseEntities();
        public string LastUser
        {
            get
            {
                int IdUser = 0;
                string Null = "";
                try
                {
                    IdUser = (int)(ChatMessageTable.LastOrDefault()?.PNUsers ?? null);
                    var User = db.UsersTable.FirstOrDefault(data => data.PersonalNumberUser == IdUser);
                    return User.NameUser.ToString() + ":";
                }
                catch
                {
                    return Null;
                }
            }
        }

        public string LastTime
        {
            get
            {
                DateTime datetime = new DateTime();
                string Null = "";

                try
                {
                    datetime = (DateTime)(ChatMessageTable.LastOrDefault()?.DataTime ?? null);
                    DateTime time = datetime;
                    return time.ToShortTimeString();
                }
                catch
                {
                    return Null;
                }
            }
        }
    }
}