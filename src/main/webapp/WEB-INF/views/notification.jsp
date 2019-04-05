<div id="myModal" class="modal fade text-center">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Invitación</h4>
			</div>
			<div class="modal-body">
				<form:form id = "notificationForm" action="/widec/notification" method="POST" modelAttribute="notification">
			        <div class="form-group">
			        	<form:input type="hidden" path="author" id="author" value="${user.email}"/>
			        	<form:input type="hidden" path="targetId" id="targetId"/>
				        <div class="form-group">
					        <form:textarea type="text" rows="5" cols="30"  path="message"/>
				        </div>
					    <button type="submit" class="btn btn-primary" name = "notification" value="/notification">Enviar</button>
					    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			        </div>
		    	</form:form>
			</div>
		</div>
	</div>
</div>