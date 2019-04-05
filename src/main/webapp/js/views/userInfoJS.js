
$(document).ready(function() {
	$('#example').DataTable( {
		responsive:true,
		serverside:true,
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
            	"defaultContent": "<button data-toggle='modal' data-target='#myModal' class='button'>Invitar</button>"
            }
        ]
    } );
	
	//works
	var table = $('#example').DataTable();
	
/* IMPORTANTE
 * MIRAR COMO HACER EL SUBMIT DEL FORM SIN RECARGAR NINGUNA PAGINA Y TAL */
	$('#example tbody').on( 'click', 'button', function () {
	 /*$('#dialogForm').dialog(
			    {
			        open: function() {
			            $(this).load('notification.jsp');
			        },
			        modal: true
			    }
			    );
			    $('#dialogForm').dialog('open');*/
	
	/*
	 * Esto viene de puta madre para obtener la informacion de los datos pero no tiene sentido para
	 * las notificaciones
	 * 
    */
	    var data = table.row( $(this).parents('tr') ).data();
	    $("#targetId").val(data[Object.keys(data)[4]]);
	} );
	
} );