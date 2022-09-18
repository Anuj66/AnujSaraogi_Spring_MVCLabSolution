<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="header.jsp" />

<jsp:include page="navbar.jsp" />

<div class="container d-flex justify-content-left my-4">
	<h4>List of Students</h4>
</div>

<div class="container d-flex justify-content-center my-2">
	<table class="table">
		<thead>
			<tr class="table-active">
				<th scope="col">Name</th>
				<th scope="col">Department</th>
				<th scope="col">Country</th>
				<th scope="col">Actions</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="index" items="${students}">
				<tr>
					<td>${ index.name }</td>
					<td>${ index.department }</td>
					<td>${ index.country }</td>
					<td>
						<button class="btn" onclick="editStudent(${index.id})">
							<i class="fa-sharp fa-solid fa-pen-to-square"></i>
						</button>
						<button class="btn" onclick="deleteStudent(${index.id})">
							<i class="fa-solid fa-trash"></i>
						</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<div class="container">
	<br> <a href="/srm/addStudent"><button
			class="btn btn-primary">Add a Student</button>
		</a>
</div>

<script>
	function deleteStudent(id) {
		const confirmation = confirm("Are you sure you want to delete the student")
		if(confirmation) {
				window.location.assign("/srm/deleteStudent/" + id)
		}
	}
	
	function editStudent(id) {
		window.location.assign("/srm/editStudent/" + id);
	}
</script>

<jsp:include page="footer.jsp" />