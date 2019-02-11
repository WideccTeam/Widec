
$(document).ready(function() {
	$('#example').DataTable( {
		responsive:true,
		ajax : {
            url : "reportListTable.html",
            dataSrc : ""
        },
        columns : [
            {
                data : "name"
            }, {
                data : "genre"
            }
        ]
    } );
} );