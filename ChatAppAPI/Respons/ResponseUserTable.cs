using ChatAppAPI.Models;


namespace ChatAppAPI.Respons
{
    public partial class ResponseUserTable
    {
        public ResponseUserTable(UsersTable usersTable)
        {
            NameUser = usersTable.NameUser;
            LoginUser = usersTable.LoginUser;
            PasswordUser = usersTable.PasswordUser;
            PersonalNumberUser = usersTable.PersonalNumberUser;
        }
        public string NameUser { get; set; }
        public string LoginUser { get; set; }
        public string PasswordUser { get; set; }
        public int PersonalNumberUser { get; set; }
    }
}