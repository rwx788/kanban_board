import $ from 'jquery'
import 'jquery-ui'
import 'jquery-ui/ui/widget'
import 'jquery-ui/ui/widgets/sortable'

document.addEventListener("turbolinks:load", function() {
    $("#tickets").sortable()
});
