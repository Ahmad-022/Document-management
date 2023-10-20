$(document).ready(function() {

  $('#sortable-tasks tbody').sortable({
    axis: 'y',
    update: function(event, ui) {
      var items = ui.item.parent().children();
      var positions = [];

      items.each(function(index) {
        var item = $(this);
        item.find('td:last').text(index + 1); // Update the displayed position
        positions.push({ id: item.data('id'), position: index + 1 });
      });

      $.ajax({
        url: '/documents/reorder',
        method: 'PATCH',
        data: { documents: positions }
      });
    }
  });
});
