document.addEventListener("turbolinks:load", () => {
 
  $(function () {
    var calendarEl = document.getElementById("calendar");
    var calendar = new Calendar(calendarEl, {
      header: {
        left: "prev,next",
        right: "dayGridMonth, listMonth",
      },

      plugins: [dayGridPlugin, listPlugin],
      defaultView: "dayGridMonth",
    });

    calendar.render();
  
  });
})