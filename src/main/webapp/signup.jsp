<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up | Patient Management System</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        .auth-container {
            max-width: 520px; /* slightly wider to accommodate more fields */
        }
        
        .role-icon {
            display: inline-flex;
            margin-right: 8px;
            vertical-align: middle;
        }

        .name-group {
            display: flex;
            gap: 1rem;
        }

        .name-group .form-group {
            flex: 1;
        }
        
        /* overriding specific margin for tighter signup form */
        .form-group {
            margin-bottom: 1rem;
        }
    </style>
</head>
<body>
    <div class="bg-shape bg-shape-1"></div>
    <div class="bg-shape bg-shape-2"></div>

    <div class="auth-container">
        <div class="auth-header" style="margin-bottom: 1.5rem;">
            <div class="logo-icon">
                <svg fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z"></path>
                </svg>
            </div>
            <h1 style="font-size: 1.5rem;">Create an Account</h1>
            <p>Join the Patient Management System</p>
        </div>

        <form action="SignupServlet" method="POST">
            <div class="form-group">
                <label for="fullName">Full Name</label>
                <input type="text" id="fullName" name="fullName" class="form-control" placeholder="John Doe" required>
            </div>

            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" class="form-control" placeholder="john.doe@example.com" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Create a strong password" required minlength="8">
            </div>

            <div class="form-group">
                <label for="role">Register As</label>
                <select id="role" name="role" class="form-control" required>
                    <option value="" disabled selected>Select your role</option>
                    <option value="Admin">System Admin</option>
                    <option value="Doctor">Doctor / Physician</option>
                    <option value="Receptionist">Receptionist</option>
                    <option value="Patient">Patient</option>
                </select>
            </div>

            <button type="submit" class="btn-primary" style="margin-top: 1.5rem;">
                Create Account
                <svg width="20" height="20" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                </svg>
            </button>
        </form>

        <div class="auth-footer">
            <p>Already have an account? <a href="login.jsp">Sign in here</a></p>
        </div>
    </div>
</body>
</html>
