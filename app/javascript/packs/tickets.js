import 'jquery-ui'
import 'jquery-ui/ui/widget'
import 'jquery-ui/ui/widgets/sortable'
import 'jquery-ui/ui/widgets/draggable'
import 'jquery-ui/ui/widgets/droppable'
import Rails from "@rails/ujs";


$(document).on("turbolinks:load", function() {
    $(".tickets").sortable({
        connectWith: ".tickets",
        tolerance: "pointer",
        items: "> .ticket",
    });
    $(".tickets").on("sortupdate", function(e, ui) {
        var data = {};
        var items = [];
        // .attributes['data-ticket-id']
        $(this).sortable('toArray').forEach(function(item, index) {
            items[index] = $("#" + item)[0].attributes['data-ticket-id'].value;
        });
        data = {
            tickets: items,
            status: $(this).parent()[0].attributes['data-status-id'].value
        };
        $.ajax({
            url: $(this).data("url"),
            type: "PATCH",
            data: data
        });
    });
    $(".ticket").draggable({
        connectToSortable: ".tickets",
        revert: "invalid"
    });
});
