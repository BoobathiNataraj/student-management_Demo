<html>
<head>
    <title>Add Student</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f8;
        }

        .container {
            width: 400px;
            margin: 80px auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        .container h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #2c3e50;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

		input, select {
		            width: 100%;
		            padding: 10px;
		            border-radius: 5px;
		            border: 1px solid #ccc;
		            font-size: 14px;
		        }

        .form-group input:focus {
            outline: none;
            border-color: #3498db;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background: #3498db;
            color: #fff;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn:hover {
            background: #2980b9;
        }
    </style>
</head>

<body>

<div class="container">
    <h2>Add Student</h2>

    <form id="studentForm">
        <div class="form-group">
            <label>Name</label>
            <input type="text" id="name">
        </div>

        <div class="form-group">
            <label>Age</label>
            <input type="number" id="age">
        </div>

		<div class="form-group">
		    <label>Gender</label>
		    <select id="gender" name="gender">
		        <option value="">-- Select Gender --</option>
		        <option value="Male">Male</option>
		        <option value="Female">Female</option>
		        <option value="Other">Other</option>
		    </select>
		</div>


        <div class="form-group">
            <label>Marks</label>
            <input type="number" id="marks">
        </div>

        <!--<button type="button" class="btn" onclick="saveStudent()">Save Student</button>
		
		<a href="/" style="text-decoration: none;">
		        <button type="button" class="btn" style="background-color: #95a5a6; margin-left: 10px;">Back</button>-->
				
				<div style="display: flex; justify-content: space-between; align-items: center; margin-top: 20px;">
				    <!-- Back button left -->
				    <a href="/" style="text-decoration: none;">
				        <button type="button" style="
				            background-color: #3498db;
				            color: white;
				            border: none;
				            padding: 10px 20px;
				            border-radius: 8px;
				            cursor: pointer;
				            font-size: 16px;
				        ">Back</button>
				    </a>

				    <!-- Save button right -->
				    <button type="button" onclick="saveStudent()" style="
				        background-color: #2ecc71;
				        color: white;
				        border: none;
				        padding: 10px 20px;
				        border-radius: 8px;
				        cursor: pointer;
				        font-size: 16px;
				    ">Save </button>
				</div>
    </form>
</div>

<script>
function saveStudent() {
	const name = document.getElementById("name").value;
	    const age = document.getElementById("age").value;
	    const gender = document.getElementById("gender").value;
	    const marks = document.getElementById("marks").value;

	    if (!name || !age || !gender || !marks) {
	        alert("All fields are required");
	        return;
	    }
		
		if (isNaN(age) || age <= 0) {
		    alert("Age must be a positive number");
		    return;
		}

		// Check if marks is numeric
		if (isNaN(marks) || marks < 0 || marks > 100) {
		    alert("Marks must be a number between 0 and 100");
		    return;
		}
		
		const data = { name, age, gender, marks };

    
	
	$.ajax({
	    url: "saveStudent",
	    type: "POST",
	    contentType: "application/json",
	    data: JSON.stringify(data),
	    success: function (msg) {
	        alert(msg);
	        window.location.href = "/";
	    },
	    error: function (xhr, status, error) {
	        console.error(error);
	        alert("Something went wrong!");
	    }
	});

}
</script>

</body>
</html>
