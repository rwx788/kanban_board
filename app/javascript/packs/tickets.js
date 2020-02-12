import 'jquery-ui'
import 'jquery-ui/ui/widget'
import 'jquery-ui/ui/widgets/sortable'
import Rails from "@rails/ujs";

$(document).on("turbolinks:load", function() {
    $(".tickets").sortable({
        update: function(e, ui) {
            Rails.ajax({
                url: $(this).data("url"),
                type: "PATCH",
                data: $(this).sortable('serialize'),
            });
        }
    });
});
