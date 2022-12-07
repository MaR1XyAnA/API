using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using ChatAppAPI.Models;
using ChatAppAPI.Respons;

namespace ChatAppAPI.Controllers
{
    public class ChatRoomTablesController : ApiController
    {
        private ChatCollegeDataBaseEntities db = new ChatCollegeDataBaseEntities();


        // GET: api/ChatRoomTables
        [Route("ListChatRooms")]
        public IHttpActionResult GetChatroomEmploee()
        {
            return Ok(db.ChatRoomTable.Include(Сookies => Сookies.ChatMessageTable).ToList().ConvertAll(Sweep => new ResponceChatRoom(Sweep)));
        }

        // GET: api/ChatRoomTables/5
        [ResponseType(typeof(ChatRoomTable))]
        public IHttpActionResult GetChatRoomTable(int id)
        {
            ChatRoomTable chatRoomTable = db.ChatRoomTable.Find(id);
            if (chatRoomTable == null)
            {
                return NotFound();
            }

            return Ok(chatRoomTable);
        }

        // PUT: api/ChatRoomTables/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutChatRoomTable(int id, ChatRoomTable chatRoomTable)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != chatRoomTable.PersonalNumberChatRoom)
            {
                return BadRequest();
            }

            db.Entry(chatRoomTable).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ChatRoomTableExists(id))
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

        // POST: api/ChatRoomTables
        [ResponseType(typeof(ChatRoomTable))]
        public IHttpActionResult PostChatRoomTable(ChatRoomTable chatRoomTable)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.ChatRoomTable.Add(chatRoomTable);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (ChatRoomTableExists(chatRoomTable.PersonalNumberChatRoom))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = chatRoomTable.PersonalNumberChatRoom }, chatRoomTable);
        }

        // DELETE: api/ChatRoomTables/5
        [ResponseType(typeof(ChatRoomTable))]
        public IHttpActionResult DeleteChatRoomTable(int id)
        {
            ChatRoomTable chatRoomTable = db.ChatRoomTable.Find(id);
            if (chatRoomTable == null)
            {
                return NotFound();
            }

            db.ChatRoomTable.Remove(chatRoomTable);
            db.SaveChanges();

            return Ok(chatRoomTable);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool ChatRoomTableExists(int id)
        {
            return db.ChatRoomTable.Count(e => e.PersonalNumberChatRoom == id) > 0;
        }
    }
}