using ChatAppAPI.Models;

namespace ChatAppAPI.Respons
{
    public partial class ResponceChatRoom
    {
        public ResponceChatRoom(ChatRoomTable chatRoomTable)
        {
            PersonalNumberChatRoom = chatRoomTable.PersonalNumberChatRoom;
            TopicChatRoom = chatRoomTable.TopicChatRoom;
            GetLastMessage = chatRoomTable.LastMessage;
        }
        public int PersonalNumberChatRoom { get; set; }
        public string TopicChatRoom { get; set; }
        public string GetLastMessage { get; set; }
    }
}