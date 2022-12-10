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
            GetLastUser = chatRoomTable.LastUser;
            GetLastTime = chatRoomTable.LastTime;
           
        }
        public int PersonalNumberChatRoom { get; set; }
        public string TopicChatRoom { get; set; }
        public string GetLastMessage { get; set; }
        public string GetLastUser { get; set; }
        public string GetLastTime { get; set; }
        
    }
}