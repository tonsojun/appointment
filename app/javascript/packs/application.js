// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import "bootstrap"
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "jquery"
// import "./src/application.scss"
import "popper.js"
import "jquery-datetimepicker"
import moment from "moment"
import { Calendar } from "@fullcalendar/core"
import dayGridPlugin from "@fullcalendar/daygrid"
import timeGridPlugin from "@fullcalendar/timegrid"
import listPlugin from "@fullcalendar/list"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

document.addEventListener("turbolinks:load", () => {

  $(function () {
    var calendarEl = document.getElementById("calendar");
    var calendar = new Calendar(calendarEl, {
      headerToolbar: { center: 'dayGridMonth,timeGridWeek,timeGridDay' },
      plugins: [dayGridPlugin, listPlugin, timeGridPlugin],
      defaultView: "dayGridMonth",
      initalView: 'timeGridWeek'
    });
    console.log("are you reaching me?");
    
    calendar.render();
  
  });
})