<!DOCTYPE html>
<html>
    <head>
        <title>Password Reset Token</title>
    </head>
    <body>
        <p>Hello,</p>
        <p>You have requested to reset your password. Your reset password token is given below:</p>
        <h3>{{ $data['token'] }}</h3>
        <p>If you didn't request a password reset, please ignore this email.</p>
    </body>
</html>
