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
        update: function(e, ui) {
            Rails.ajax({
                url: $(this).data("url"),
                type: "PATCH",
                data: $(this).sortable('serialize'),
            });
        }
    });
    $(".ticket").draggable({
        connectToSortable: ".tickets",
        revert: "invalid"
    });
});
