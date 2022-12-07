using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ChatAppAPI.Models
{
    public partial class ChatRoomTable
    {
        public string LastMessage
        {
            get
            {
                string message = "Sweep";
                try
                {
                    message = ChatMessageTable.LastOrDefault()?.TextMessage ?? "Нет сообщений";
                    return message;
                }
                catch
                {
                    return message;
                }
            }
        }
    }
}