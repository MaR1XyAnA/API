//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ChatAppAPI.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ChatMessageTable
    {
        public int PersonalNumberMessage { get; set; }
        public int PNUsers { get; set; }
        public int PNChatRoom { get; set; }
        public string TextMessage { get; set; }
        public System.DateTime DataTime { get; set; }
    
        internal virtual ChatRoomTable ChatRoomTable { get; set; }
        internal virtual UsersTable UsersTable { get; set; }
    }
}
