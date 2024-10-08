<?php
session_start();
require_once("connect.php");

$company_id = $_SESSION['company_id'];

$sql = "SELECT * FROM company WHERE company_id = '$company_id'";
$result = mysqli_query($conn, $sql);
$company = mysqli_fetch_assoc($result);
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>jobsite</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #0e0e45;
            margin: 0;
            padding: 0;
        }

        header {
            position: absolute;
            top: 10px;
            left: 20px;
            color: white;
            font-size: 24px;
            font-weight: bold;
        }

        .container {
            max-width: 500px;
            margin: 120px auto;
            padding: 50px;
            background-color: rgb(243, 231, 253);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            position: relative;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        .company-info {
            list-style: none;
            padding: 0;
        }

        .company-info li {
            margin: 10px 0;
            padding: 10px;
            background-color: #fafafa;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .company-info li span {
            font-weight: bold;
            color: #555;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px; /* Add space above buttons */
        }

        .job-post-button,
        .job-list-button {
            padding: 10px 20px; /* Adjusted padding for better visibility */
            color: white;
            text-align: center;
            text-decoration: none;
            font-weight: bold;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }



        .job-post-button {
            
            background-color: #28a745;
            
        }

        .job-post-button:hover {
            background-color: #218838;
        }

        .job-list-button {   
            background-color: #007bff;   
        }

        .job-list-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>
    <header>JOBSITE</header>
    <div class="container">
        <h1>Company (<?php echo $company["name"]; ?>) Information</h1>
        <ul class="company-info">
        <!-- $company has 1 row result as array -->
            <li><span>Company:</span> <?php echo $company["company"]; ?></li> 
            <li><span>Email:</span> <?php echo $company["email"]; ?></li>
            <li><span>Industry:</span> <?php echo $company["industry"]; ?></li>
            <li><span>Location:</span> <?php echo $company["location"]; ?></li>
            <div class="button-container">
                <div class="job-list-button-container">
                    <a href="job_list.php" class="job-list-button">JOB LIST</a> 
                </div>
                <div class="job-post-button-container">
                    <a href="job_create.php" class="job-post-button">JOB POST</a> 
                </div>
            </div>  
        </ul>
    </div>
    
</body>

</html>