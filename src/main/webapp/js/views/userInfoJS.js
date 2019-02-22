
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
            },
            {
            	"defaultContent": "<button>Click!</button>"
            }
        ]
    } );
	
	$('#example tbody').on( 'click', 'button', function () {
		 console.log( $('#example').dataTable().data(this)/*rows( this )/*.data()*/ );
    } );
	
} );