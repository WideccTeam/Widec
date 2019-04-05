
$(document).ready(function() {
	$('#myNotifications').DataTable( {
		responsive:true,
		serverside:true,
		ajax : {
            url : "personalNotifications.html",
            dataSrc : ""
        },
        columns : [
            {
                data : "message"
            }, {
                data : "author"
            }
        ]
    } );
	
//	//works
//	var table = $('#example').DataTable();
//	
//	$('#example tbody').on( 'click', 'button', function () {
//	    var data = table.row( $(this).parents('tr') ).data();
//	    $("#targetId").val(data[Object.keys(data)[4]]);
//	} );
//	
} );