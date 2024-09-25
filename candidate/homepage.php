<?php
    session_start();
    require_once("connect.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Site 101</title>
</head>
<body>
    <div class="container my-5">
        <h1>Welcome to Job Site </h1>
        <h2>All The Available Jobs</h2>
            <?php
                $sql = "SELECT * FROM job";
                $candidate_id = $_SESSION['candidate_id'];
                $result = mysqli_query($conn, $sql);
                while($row = mysqli_fetch_array($result)){
                    $_SESSION['job_id'] = $row['job_id'];
                    ?>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Job Title</th>
                                <th>Job Location</th>
                                <th>Salary</th>
                                <th>Posted Date</th>
                                <th>Details</th>
                                <th>Apply</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><?php echo $row["title"]; ?></td>
                                <td><?php echo $row["location"]; ?></td>
                                <td><?php echo $row["salary"]; ?></td>
                                <td><?php echo $row["posted_date"]; ?></td>
                                <td><button onclick="location.href='../jobdescription.php'">Details</button></td>
                                <td><form action="apply_job.php" method="post">
                                    <input type="submit" value="Apply" >
                                </form></td>
                            </tr>
                        </tbody>
                    </table>
                    <?php
                    }
                    ?>
    </div>

</body>
</html>
