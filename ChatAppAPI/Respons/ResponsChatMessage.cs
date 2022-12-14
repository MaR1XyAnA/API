using ChatAppAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ChatAppAPI.Respons
{
    public partial class ResponsChatMessage
    {
        public ResponsChatMessage(ChatMessageTable chatMessageTable)
        {
            PersonalNumberMessage = chatMessageTable.PersonalNumberMessage;
            PNUsers = chatMessageTable.PNUsers;
            PNChatRoom = chatMessageTable.PNChatRoom;
            TextMessage = chatMessageTable.TextMessage;
            DataTime = chatMessageTable.DataTime;
            //TakeMessage= chatMessageTable.TakeMessage;
            TakeUser = chatMessageTable.TakeUser;
            TakeTime = chatMessageTable.TakeTime;
        }
        public int PersonalNumberMessage { get; set; }
        public int PNUsers { get; set; }
        public int PNChatRoom { get; set; }
        public string TextMessage { get; set; }
        public DateTime DataTime { get; set; }
        //public string TakeMessage { get; set; }
        public string TakeUser { get; set; }
        public string TakeTime { get; set; }
    }
}