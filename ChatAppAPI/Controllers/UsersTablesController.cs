using System.Data;
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
    public class UsersTablesController : ApiController
    {
        private ChatCollegeDataBaseEntities db = new ChatCollegeDataBaseEntities();

        // GET: api/UsersTables
        public IQueryable<UsersTable> GetUsersTable()
        {
            return db.UsersTable;
        }

        [Route("api/authorization_user")]
        [ResponseType(typeof(ResponseUserTable))]
        public IHttpActionResult Authorization([FromBody] Data data)
        {
            var user = db.UsersTable.ToList().Where
                (info => info.LoginUser == data.LoginUser && info.PasswordUser == data.PasswordUser).FirstOrDefault();
            if (user == null)
            {
                return NotFound();
            }
            else
            {
                return Ok(new ResponseUserTable(user));
            }
        }
        public class Data
        {
            public string LoginUser { get; set; }
            public string PasswordUser { get; set; }

        }

        // GET: api/UsersTables/5
        [ResponseType(typeof(UsersTable))]
        public IHttpActionResult GetUsersTable(int id)
        {
            UsersTable usersTable = db.UsersTable.Find(id);
            if (usersTable == null)
            {
                return NotFound();
            }

            return Ok(usersTable);
        }

        // PUT: api/UsersTables/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutUsersTable(int id, UsersTable usersTable)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != usersTable.PersonalNumberUser)
            {
                return BadRequest();
            }

            db.Entry(usersTable).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!UsersTableExists(id))
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

        // POST: api/UsersTables
        [ResponseType(typeof(UsersTable))]
        public IHttpActionResult PostUsersTable(UsersTable usersTable)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.UsersTable.Add(usersTable);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = usersTable.PersonalNumberUser }, usersTable);
        }

        // DELETE: api/UsersTables/5
        [ResponseType(typeof(UsersTable))]
        public IHttpActionResult DeleteUsersTable(int id)
        {
            UsersTable usersTable = db.UsersTable.Find(id);
            if (usersTable == null)
            {
                return NotFound();
            }

            db.UsersTable.Remove(usersTable);
            db.SaveChanges();

            return Ok(usersTable);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool UsersTableExists(int id)
        {
            return db.UsersTable.Count(e => e.PersonalNumberUser == id) > 0;
        }
    }
}