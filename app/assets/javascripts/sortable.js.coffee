$(document).ready ->
  $(".table-sortable").dataTable
    aaSorting: []     # disable default sort (remove this line to enable it)
    bPaginate: false  # Remove pagination
    bFilter: false    # Remove filter
    bInfo: false      # Remove useless info
    # Columns with .unsortable class are not sortable
    aoColumnDefs : [
      'bSortable': false,
      'aTargets': ['unsortable']
    ]