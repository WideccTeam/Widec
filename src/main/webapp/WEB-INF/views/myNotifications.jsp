<!-- Bootstrap CSS -->
<link rel="stylesheet", href="<c:url value='/css/bootstrap.min.css' />">

<link rel="stylesheet" href="<c:url value='/css/style.css' />">

<link rel="stylesheet" href="<c:url value='/css/datatables.min.css' />">

<script type="text/javascript" charset="utf8" src="<c:url value='/js/jquery.min.js' />"></script>
<script type="text/javascript" charset="utf8" src="<c:url value='/js/datatables.min.js' />"></script>
<script type="text/javascript" charset="utf8" src="<c:url value='/js/bootstrap.min.js' />"></script>
<script type="text/javascript" charset="utf8" src="<c:url value='/js/views/myNotificationsJS.js' />"></script>


<div id="myNotificationsModal" class="modal fade text-center">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Invitación</h4>
			</div>
			<div class="modal-body">
				<table id="myNotifications" class="display" >
				     <thead>
				         <tr>
				             <th>Mensaje</th>
				             <th>Origen</th>
							<!-- Aqui podriamos poner dos botones de aceptar o declinar -->
				         </tr>
				     </thead>
				 </table>
	 		</div>
		</div>
	</div>
</div>