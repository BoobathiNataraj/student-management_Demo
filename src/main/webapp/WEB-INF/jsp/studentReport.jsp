<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Report</title>
	
	<style>
	        body {
	            font-family: Arial, sans-serif;
	            background-color: #f2f2f2;
	            text-align: center;
	            padding: 30px;
	        }

	        h2 {
	            color: #2c3e50;
	            margin-bottom: 30px;
	        }

	        table {
	            margin: 0 auto;
	            border-collapse: collapse;
	            width: 70%;
	            background-color: #fff;
	            box-shadow: 0 2px 8px rgba(0,0,0,0.2);
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

	        span.pass {
	            color: green;
	            font-weight: bold;
	        }

	        span.fail {
	            color: red;
	            font-weight: bold;
	        }

	        .btn {
	            padding: 10px 25px;
	            margin-top: 20px;
	            background-color: #5dade2;
	            color: white;
	            border: none;
	            border-radius: 8px;
	            font-size: 16px;
	            cursor: pointer;
	            transition: 0.3s;
	        }

	        .btn:hover {
	            background-color: #3498db;
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
	    </style>
</head>
<body>

<h2>Student Report (PASS / FAIL)</h2>

<table border="1" cellpadding="5" cellspacing="0">
    <tr>
        <th>ID</th>
        <th>Name</th>
		<th>Age</th>
		<th>Gender</th>
        <th>Marks</th>
        <th>Status</th>
    </tr>

    <c:forEach var="s" items="${students}">
        <tr>
            <td>${s.id}</td>
            <td>${s.name}</td>
			<td>${s.age}</td>
			<td>${s.gender}</td>
            <td>${s.marks}</td>
            <td>
                <c:choose>
                    <c:when test="${s.marks > 34}">
                        <span style="color:green;font-weight:bold;">PASS</span>
                    </c:when>
                    <c:otherwise>
                        <span style="color:red;font-weight:bold;">FAIL</span>
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>

</table>

<br>

<a href="${pageContext.request.contextPath}/">
    <button type="button" class="btn-back">Back</button>
</a>

</body>
</html>
