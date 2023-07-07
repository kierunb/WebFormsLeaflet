using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using WebFormsLeaflet.Model;

namespace WebFormsLeaflet.Controllers
{
    public class MapsController : ApiController
    {
        
        private Entities db = new Entities();
        
        public async Task<IHttpActionResult> Get()
        {
            var miasta = await db.Miasta.ToListAsync();
            
            return Ok(miasta);
        }
    }
}
