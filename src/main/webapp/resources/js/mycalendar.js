import { Calendar } from "@fullcalendar/core";
import interactionPlugin, { Draggable } from "@fullcalendar/interaction";
import dayGridPlugin from "@fullcalendar/daygrid";
import timeGridPlugin from "@fullcalendar/timegrid";
import listPlugin from "@fullcalendar/list";

(function () {
    if ($("#mycalendar").length) {
        if ($("#calendar-events").length) {
            new Draggable($("#calendar-events")[0], {
                itemSelector: ".event",
                eventData: function (eventEl) {
                    return {
                        title: $(eventEl).find(".event__title").html(),
                        duration: {
                            days: parseInt(
                                $(eventEl).find(".event__days").text()
                            ),
                        },
                    };
                },
            });
        }

        let calendar = new Calendar($("#mycalendar")[0], {
            plugins: [
                interactionPlugin,
                dayGridPlugin,
                timeGridPlugin,
                listPlugin,
            ],
            droppable: true,
            headerToolbar: {
                left: "prev,next today",
                center: "title",
                right: "dayGridMonth,timeGridWeek,timeGridDay,listWeek",
            },
            initialDate: "2023-07-11",
            navLinks: true,
            editable: true,
            dayMaxEvents: true,
            events: [
                {
                    title: "안희건의 일정",
                    start: "2023-07-01",
                    end: "2023-07-03",
                },
                {
                    title: "안희건의 일정",
                    start: "2023-07-11",
                    end: "2023-07-15",
                },
                {
                    title: "안희건의 일정",
                    start: "2023-07-17",
                    end: "2023-07-21",
                },
                {
                    title: "안희건의 일정",
                    start: "2023-07-21",
                    end: "2023-07-24",
                },
                {
                    title: "안희건의 일정",
                    start: "2023-07-24",
                    end: "2023-07-27",
                },
            ],
            drop: function (info) {
                if (
                    $("#checkbox-events").length &&
                    $("#checkbox-events")[0].checked
                ) {
                    $(info.draggedEl).parent().remove();

                    if ($("#calendar-events").children().length == 1) {
                        $("#calendar-no-events").removeClass("hidden");
                    }
                }
            },
        });

        calendar.render();
    }
})();
