﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PlantEng.Web.WWW.Areas.Magazine.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Magazine/Home/

        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Apply() {
            return View();
        }
    }
}
