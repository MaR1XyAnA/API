using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ChatAppAPI.Models
{
    public partial class ChatRoomTable
    {
        public string GetLastMessage
        {
            get
            {
                string message = "Test message";
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