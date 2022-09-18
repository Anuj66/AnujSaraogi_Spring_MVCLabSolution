<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<jsp:include page="header.jsp" />

<jsp:include page="navbar.jsp" />

<div class="container">
	<br>
	<h3 class="my-2">Update Student</h3>
	<form:form action="/srm/processEditForm"
		modelAttribute="student">
		<br>
		<form:input path="id" type="hidden" />
		<div class="container">
			<div class="row">
				<div class="col-sm">
					<table class="table table-borderless table-sm">
						<tr>
							<th>Name :</th>
							<th><form:input path="name" /></th>
						</tr>
						<tr>
							<th>Department :</th>
							<th><form:input path="department" /></th>
						</tr>
						<tr>
							<th>Country :</th>
							<th><form:input path="country" /></th>
						</tr>
					</table>
				</div>
				<div class="col-sm"></div>
			</div>
		</div>

		<input type="submit" class="btn btn-primary mx-3" value="Update" />
	</form:form>
	<br> <a href="/srm/">
		<button class="btn btn-secondary mx-3">Back to List</button>
	</a>
</div>

<jsp:include page="footer.jsp" />