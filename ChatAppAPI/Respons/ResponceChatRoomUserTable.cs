using ChatAppAPI.Models;

namespace ChatAppAPI.Respons
{
    public partial class ResponceChatRoomUserTable
    {
        public ResponceChatRoomUserTable(ChatRoomUserTable ChatRoomUserTable)
        {
            PersonalNumberCRU = ChatRoomUserTable.PersonalNumberCRU;
            PNChatRoom = ChatRoomUserTable.PNChatRoom;
            PNUser = ChatRoomUserTable.PNUser;
        }

        public int PersonalNumberCRU { get; set; }
        public int PNChatRoom { get; set; }
        public int PNUser { get; set; }
    }
}