<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student List</title>
	<style>
	        body {
	            font-family: Arial, sans-serif;
	            background-color: #f2f2f2;
	            text-align: center;
	            padding: 20px;
	        }

	        h2 {
	            color: #2c3e50;
	            margin-bottom: 30px;
	        }

	        table {
	            margin: 0 auto;
	            border-collapse: collapse;
	            width: 80%;
	            background-color: #fff;
	            box-shadow: 0 2px 5px rgba(0,0,0,0.2);
	        }

	        th, td {
	            padding: 12px 15px;
	            text-align: center;
	            border-bottom: 1px solid #ddd;
	        }

	        th {
	            background-color: #5dade2;
	            color: white;
	        }

	        tr:hover {
	            background-color: #f1f1f1;
	        }

	        a {
	            text-decoration: none;
	            color: #3498db;
	            font-weight: bold;
	        }

	        a:hover {
	            color: #21618c;
	        }

	        .btn {
	            padding: 10px 20px;
	            margin-top: 20px;
	            background-color: #5dade2;
	            color: white;
	            border: none;
	            border-radius: 8px;
	            cursor: pointer;
	            font-size: 16px;
	            transition: 0.3s;
	        }
			.btn-back {
			        background-color: #3498db;  /* Blue background */
			        color: white;               /* White text */
			        padding: 12px 25px;         /* Bigger button */
			        font-size: 16px;            /* Bigger text */
			        border: none;
			        border-radius: 8px;
			        cursor: pointer;
			        transition: 0.3s;
			    }

			    .btn-back:hover {
			        background-color: #2980b9; /* Darker blue on hover */
			    }

	        .btn:hover {
	            background-color: #3498db;
	        }

	        .action-links a {
	            margin: 0 5px;
	        }
	    </style>
	
</head>
<body>

<h2>Student List</h2>

<table border="1" cellpadding="5" cellspacing="0">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Age</th>
        <th>Gender</th>
        <th>Marks</th>
        <th>Action</th>
    </tr>
    <c:forEach var="s" items="${students}">
        <tr>
            <td>${s.id}</td>
            <td>${s.name}</td>
            <td>${s.age}</td>
            <td>${s.gender}</td>
            <td>${s.marks}</td>
            <td>
                <a href="update/${s.id}">Update</a>
				&nbsp;|&nbsp;

				    <a href="delete/${s.id}"
				       onclick="return confirm('Are you sure you want to delete this student?');">
				        Delete
				    </a>
            </td>
        </tr>
    </c:forEach>
</table>

<a href="${pageContext.request.contextPath}/">
    <button type="button" class="btn-back">Back</button>
</a>


</body>
</html>

