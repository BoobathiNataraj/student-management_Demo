<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Student</title>
	
	<style>
	       body {
	           font-family: Arial, sans-serif;
	           background-color: #f2f2f2;
	           text-align: center;
	           padding: 50px;
	       }

	       h2 {
	           color: #2c3e50;
	           margin-bottom: 30px;
	       }

	       form {
	           background-color: #fff;
	           padding: 30px;
	           border-radius: 10px;
	           display: inline-block;
	           box-shadow: 0 2px 8px rgba(0,0,0,0.2);
	           min-width: 350px;
	       }

	       div {
	           margin-bottom: 15px;
	           text-align: left;
	       }

	       label {
	           display: block;
	           margin-bottom: 5px;
	           font-weight: bold;
	       }

	       input[type="text"],
	       input[type="number"],
	       select {
	           width: 100%;
	           padding: 8px 10px;
	           border: 1px solid #ccc;
	           border-radius: 5px;
	           font-size: 16px;
	       }

	       select {
	           background-color: #fff;
	       }

	       button {
	           padding: 12px 25px;
	           background-color: #5dade2;
	           color: white;
	           border: none;
	           border-radius: 8px;
	           font-size: 16px;
	           cursor: pointer;
	           transition: 0.3s;
	       }

	       button:hover {
	           background-color: #3498db;
	       }
	   </style>
</head>
<body>

<h2>Update Student</h2>

<form action="${pageContext.request.contextPath}/update" method="post">
    <!-- Hidden ID field -->
    <input type="hidden" name="id" value="${student.id}" />

    <div>
        <label>Name:</label>
        <input type="text" name="name" value="${student.name}" required />
    </div>

    <div>
        <label>Age:</label>
        <input type="number" name="age" value="${student.age}" required />
    </div>

    <div>
		<label>Gender</label>
		   <select name="gender" required>
		       <option value="">-- Select Gender --</option>

		       <option value="Male"
		           ${student.gender == 'Male' ? 'selected' : ''}>Male</option>

		       <option value="Female"
		           ${student.gender == 'Female' ? 'selected' : ''}>Female</option>

		       <option value="Other"
		           ${student.gender == 'Other' ? 'selected' : ''}>Other</option>
				   </select>
				   
    </div>

    <div>
        <label>Marks:</label>
        <input type="number" name="marks" value="${student.marks}" required />
    </div>

    <button type="submit">Update</button>
</form>

</body>
</html>
