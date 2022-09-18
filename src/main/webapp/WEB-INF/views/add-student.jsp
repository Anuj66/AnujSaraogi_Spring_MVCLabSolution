<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<jsp:include page="header.jsp"/>

<jsp:include page="navbar.jsp"/>

<div class="container">
	<br>
	<h3>Add Student</h3>
	<form:form action="/srm/processForm" modelAttribute="student">
		<br>
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
		<br>
		<input type="submit" class="btn btn-primary mx-3" value="Save" />
	</form:form>
	<br>
	<a href="/srm/"><button class="btn btn-secondary mx-3">Back to List</button></a>
</div>

<jsp:include page="footer.jsp" />