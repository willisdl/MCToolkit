$(document).on('page:load', function() {
    $('#calendar').fullCalendar({
        events: '/events.json',
        header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,agendaWeek,agendaDay'
        },
        eventRender: function(event, element) {
            if(event.event_type == "meeting") {
                element.css('background-color', 'lightgreen');
                element.css('border-color', 'lightgreen');
                element.css('color', 'black');
            }
            if(event.event_type == "msel") {
                element.css('background-color', 'lightblue');
                element.css('border-color', 'lightblue');
                element.css('color', 'black');
            }
            if(event.event_type == "oct_tng") {
                element.css('background-color', 'pink');
                element.css('border-color', 'pink');
                element.css('color', 'black');
            }
        }
    });
});