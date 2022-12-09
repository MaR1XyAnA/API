using System.Linq;

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