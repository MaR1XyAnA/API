using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Web.Http;
using System.Web.Http.Description;
using System.Windows;
using ChatAppAPI.Models;
using ChatAppAPI.Respons;

namespace ChatAppAPI.Controllers
{
    public class ChatMessageTablesController : ApiController
    {
        private ChatCollegeDataBaseEntities db = new ChatCollegeDataBaseEntities();

        // GET: api/ChatMessageTables
        public IHttpActionResult GetChatMessageTable()
        {
            return Ok(db.ChatMessageTable.ToList().ConvertAll(Сookies => new ResponsChatMessage(Сookies)));
        }

        public class Sender
        {
            public int PNUsers { get; set; }
            public int PNChatRoom { get; set; }
            public string TextMessage { get; set; }
        }

        [Route("chat_message")]
        [ResponseType(typeof(ResponsChatMessage))]
        public IHttpActionResult SenderText([FromBody] Sender sender)
        {
            var message = db.ChatMessageTable.ToList().Where
                (info => info.PNChatRoom == sender.PNChatRoom).ToList();
            if (message == null)
            {
                return NotFound();
            }
            else
            {
                ChatMessageTable chatMessageTable = new ChatMessageTable
                {
                    PNUsers = sender.PNUsers,
                    PNChatRoom = sender.PNChatRoom,
                    TextMessage = sender.TextMessage,
                    DataTime = DateTime.Now
                };
                try
                {                    
                    db.ChatMessageTable.Add(chatMessageTable);
                    db.SaveChanges();
                    return Ok();
                }
                catch
                {
                    return BadRequest("Данного чата не существует");
                }  
            }
        }
        //public IQueryable<ChatMessageTable> GetChatMessageTables()
        //{
        //    return db.ChatMessageTable;
        //}

        // GET: api/ChatMessageTables/5
        [ResponseType(typeof(ChatMessageTable))]
        public IHttpActionResult GetChatMessageTable(int id)
        {
            ChatMessageTable chatMessageTable = db.ChatMessageTable.Find(id);
            if (chatMessageTable == null)
            {
                return NotFound();
            }

            return Ok(chatMessageTable);
        }

        // PUT: api/ChatMessageTables/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutChatMessageTable(int id, ChatMessageTable chatMessageTable)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != chatMessageTable.PersonalNumberMessage)
            {
                return BadRequest();
            }

            db.Entry(chatMessageTable).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ChatMessageTableExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/ChatMessageTables
        [ResponseType(typeof(ChatMessageTable))]
        public IHttpActionResult PostChatMessageTable(ChatMessageTable chatMessageTable)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.ChatMessageTable.Add(chatMessageTable);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (ChatMessageTableExists(chatMessageTable.PersonalNumberMessage))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = chatMessageTable.PersonalNumberMessage }, chatMessageTable);
        }

        // DELETE: api/ChatMessageTables/5
        [ResponseType(typeof(ChatMessageTable))]
        public IHttpActionResult DeleteChatMessageTable(int id)
        {
            ChatMessageTable chatMessageTable = db.ChatMessageTable.Find(id);
            if (chatMessageTable == null)
            {
                return NotFound();
            }

            db.ChatMessageTable.Remove(chatMessageTable);
            db.SaveChanges();

            return Ok(chatMessageTable);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool ChatMessageTableExists(int id)
        {
            return db.ChatMessageTable.Count(e => e.PersonalNumberMessage == id) > 0;
        }
    }
}