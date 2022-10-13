using ChatAppAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ChatAppAPI.Respons
{
    public partial class ResponceEmployee
    {
        public ResponceEmployee(UsersTable usersTable)
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