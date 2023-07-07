using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebFormsLeaflet.Controllers
{
    public class MapsController : ApiController
    {
        public IHttpActionResult Get()
        {
            return Ok(new { message = "Dane z serwera" });
        }
    }
}
