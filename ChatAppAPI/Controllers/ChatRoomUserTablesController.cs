using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Web.Http;
using System.Web.Http.Description;
using ChatAppAPI.Models;
using ChatAppAPI.Respons;

namespace ChatAppAPI.Controllers
{
    public class ChatRoomUserTablesController : ApiController
    {
        private ChatCollegeDataBaseEntities db = new ChatCollegeDataBaseEntities();

        // GET: api/ChatRoomUserTables
        public IHttpActionResult GetChatRoomUserTable()
        {
            return Ok(db.ChatRoomUserTable.ToList().ConvertAll(Сookies => new ResponceChatRoomUserTable(Сookies)));
        }

        // GET: api/ChatRoomUserTables/5
        [ResponseType(typeof(ChatRoomUserTable))]
        public IHttpActionResult GetChatRoomUserTable(int id)
        {
            ChatRoomUserTable chatRoomUserTable = db.ChatRoomUserTable.Find(id);
            if (chatRoomUserTable == null)
            {
                return NotFound();
            }

            return Ok(chatRoomUserTable);
        }

        // PUT: api/ChatRoomUserTables/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutChatRoomUserTable(int id, ChatRoomUserTable chatRoomUserTable)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != chatRoomUserTable.PersonalNumberCRU)
            {
                return BadRequest();
            }

            db.Entry(chatRoomUserTable).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ChatRoomUserTableExists(id))
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

        // POST: api/ChatRoomUserTables
        [ResponseType(typeof(ChatRoomUserTable))]
        public IHttpActionResult PostChatRoomUserTable(ChatRoomUserTable chatRoomUserTable)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.ChatRoomUserTable.Add(chatRoomUserTable);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (ChatRoomUserTableExists(chatRoomUserTable.PersonalNumberCRU))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = chatRoomUserTable.PersonalNumberCRU }, chatRoomUserTable);
        }

        // DELETE: api/ChatRoomUserTables/5
        [ResponseType(typeof(ChatRoomUserTable))]
        public IHttpActionResult DeleteChatRoomUserTable(int id)
        {
            ChatRoomUserTable chatRoomUserTable = db.ChatRoomUserTable.Find(id);
            if (chatRoomUserTable == null)
            {
                return NotFound();
            }

            db.ChatRoomUserTable.Remove(chatRoomUserTable);
            db.SaveChanges();

            return Ok(chatRoomUserTable);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool ChatRoomUserTableExists(int id)
        {
            return db.ChatRoomUserTable.Count(e => e.PersonalNumberCRU == id) > 0;
        }
    }
}