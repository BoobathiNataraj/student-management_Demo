<html>
<head>
    <title>Student Management System</title>
    <style>
		body {
		           text-align: center;           /* Center heading and buttons horizontally */
		           font-family: Arial, sans-serif;
		           background-color: #f2f2f2;    /* Optional: light background */
		       }

		       h2 {
		           margin-top: 50px;
		           color: #2c3e50;
		       }
			   form {
			               display: inline-block;        /* Keep forms inline */
			               margin: 10px;
			           }
        .btn {
            width: 220px;
            padding: 15px;
            margin: 10px;
            background-color: #5dade2;
            color: white;
            border: none;
            font-size: 18px;
            cursor: pointer;
            border-radius: 10px;
        }
        .btn:hover {
            background-color: #3498db;
        }
    </style>
</head>
<body>

<h2>Welcome To School Management</h2>

<!-- 1st Button -->
<form action="addStudent" method="get">
    <button class="btn">Register</button>
</form>

<!-- 2nd Button -->
<form action="list" method="get">
    <button class="btn">Update / Delete</button>
</form>


<!-- 4th Button -->
<form action="report" method="get">
    <button class="btn">Student report</button>
</form>

<form action="details" method="get">
    <button class="btn">Details</button>
</form>


</body>
</html>
