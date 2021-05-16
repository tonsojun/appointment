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
import flatpickr from "flatpickr"

require("flatpickr/dist/themes/dark.css");


Rails.start()
Turbolinks.start()
ActiveStorage.start()

//document.addEventListener("turbolinks:load", () => {
 
//   $(function () {
//     var calendarEl = document.getElementById("calendar");
//     var calendar = new Calendar(calendarEl, {
//       header: {
//         left: "prev,next",
//         right: "dayGridMonth, listMonth",
//       },

//       plugins: [dayGridPlugin, listPlugin],
//       defaultView: "dayGridMonth",
//     });

//     calendar.render();
  
//   });

document.addEventListener("turbolinks:load", () => {

var initialize_calendar;
initialize_calendar = function() {
  console.log("hello world")
  $('#calendar').each(function(){
    var calendar = $(this);
    calendar.fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay'
      },
      selectable: true,
      selectHelper: true,
      editable: true,
      eventLimit: true,
      events: '/events.json',

      select: function(start, end) {
        $.getScript('/events/new', function() {});

        calendar.fullCalendar('unselect');
      },

      eventDrop: function(event, delta, revertFunc) {
        event_data = { 
          event: {
            id: event.id,
            start: event.start.format(),
            end: event.end.format()
          }
        };
        $.ajax({
            url: event.update_url,
            data: event_data,
            type: 'PATCH'
        });
      },
      
      eventClick: function(event, jsEvent, view) {
        $.getScript(event.edit_url, function() {});
      }
    });
  })
};
initialize_calendar

})
// $(document).on('turbolinks:load', initialize_calendar);