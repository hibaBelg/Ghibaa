<%@page contentType="text/html" pageEncoding="UTF-8"%>

		<div class="modal fade" id="lgModal" tabindex="-1" role="dialog"
			aria-labelledby="lgModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="lgLabel">Are you sure you want to Logout?</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form>
						 <span aria-hidden="true">Select "Logout" below if want
					to log out from your current session</span>

						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">return</button>
						<a type="button" class="btn bg-gradient-primary" href="Logout.jsp">
							logout</a>
					</div>
				</div>
			</div>
		</div>