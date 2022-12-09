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
    public class ChatMessageTablesController : ApiController
    {
        private ChatCollegeDataBaseEntities db = new ChatCollegeDataBaseEntities();

        // GET: api/ChatMessageTables
        public IHttpActionResult GetChatMessageTable()
        {
            return Ok(db.ChatMessageTable.ToList().ConvertAll(Сookies => new ResponsChatMessage(Сookies)));
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