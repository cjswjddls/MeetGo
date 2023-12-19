<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>고수 활성화</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">

    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .deleteForm {
            margin: 50px auto;
            width: 80%;
            max-width: 500px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            padding: 20px;
            box-sizing: border-box;
        }

        p {
            font-size: 18px;
            margin-bottom: 20px;
            color: #555;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            display: block;
            text-align: left;
            margin-bottom: 8px;
            color: #333;
        }

        #userPwd {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .delete-btn {
            background-color: #e74c3c;
            color: white;
            border: none;
            width: 100%;
            padding: 12px;
            border-radius: 10px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .delete-btn:hover {
            background-color: #bd2130;
        }
    </style>
</head>
<body>
    <div class="deleteForm">
        <p>계정을 활성화합니다!</p>
        <form action="gosuActivate" method="post">
            <label for="userPwd">Password:</label>
            <input type="password" id="userPwd" name="userPwd" placeholder="Enter Password" required>
            <input type="hidden" name="userId" value="${sessionScope.loginUser.userId}">
            
            <button type="submit" class="delete-btn"><i class="fas fa-user-lock"></i> 계정 활성화</button>
        </form>
    </div>
</body>
</html>
