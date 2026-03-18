<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Get Started | Patient Management System</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="auth-wrapper">
        <!-- Left Side: Graphic & Brand -->
        <div class="split-left">
            <div class="left-content">
                <div class="brand">
                    <div class="brand-icon">
                        <svg viewBox="0 0 24 24"><path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/></svg>
                    </div>
                    PMS Health
                </div>

                <div class="welcome-text">
                    <h1>Welcome Back!</h1>
                    <p>We are a community, together helping thousands of people out there who are struggling.</p>
                </div>

                <div class="image-bubbles">
                    <div class="bubble bubble-1"><svg fill="currentColor" viewBox="0 0 24 24"><path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/></svg></div>
                    <div class="bubble bubble-2"><svg fill="currentColor" viewBox="0 0 24 24"><path d="M16 11c1.66 0 2.99-1.34 2.99-3S17.66 5 16 5c-1.66 0-3 1.34-3 3s1.34 3 3 3zm-8 0c1.66 0 2.99-1.34 2.99-3S9.66 5 8 5C6.34 5 5 6.34 5 8s1.34 3 3 3zm0 2c-2.33 0-7 1.17-7 3.5V19h14v-2.5c0-2.33-4.67-3.5-7-3.5zm8 0c-.29 0-.62.02-.97.05 1.16.84 1.97 1.97 1.97 3.45V19h6v-2.5c0-2.33-4.67-3.5-7-3.5z"/></svg></div>
                    <div class="bubble bubble-3"><svg fill="currentColor" viewBox="0 0 24 24"><path d="M19 3H5c-1.1 0-1.99.9-1.99 2L3 19c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-6 13h-2v-2h2v2zm0-4h-2V7h2v5z"/></svg></div>
                    <div class="bubble bubble-4"><svg fill="currentColor" viewBox="0 0 24 24"><path d="M13 3h-2v10h2V3zm4.83 2.17l-1.42 1.42A6.92 6.92 0 0 1 19 11c0 3.87-3.13 7-7 7s-7-3.13-7-7c0-2.05.88-3.9 2.26-5.18L5.84 4.4A8.91 8.91 0 0 0 3 11c0 4.97 4.03 9 9 9s9-4.03 9-9c0-2.65-1.15-5.02-2.99-6.6a.04.04 0 0 0-.01-.06z"/></svg></div>
                </div>

                <div class="slider-dots">
                    <div class="dot active"></div>
                    <div class="dot"></div>
                    <div class="dot"></div>
                </div>
            </div>
        </div>

        <!-- Right Side: Form -->
        <div class="split-right">
            <div class="form-header">
                <h2>Welcome Back</h2>
                <p>New here? <a href="signup.jsp">Sign Up</a></p>
            </div>

            <form action="LoginServlet" method="POST">
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" class="form-control" placeholder="jane.doe@example.com" required>
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" class="form-control" placeholder="••••••••" required>
                    <div class="password-toggle" onclick="var p=document.getElementById('password'); if(p.type==='password'){p.type='text';}else{p.type='password';}">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg>
                    </div>
                </div>

                <button type="submit" class="btn-primary">Sign In</button>
            </form>

            <div class="social-login-wrapper">
                <div class="social-login"><p>Or sign in with</p></div>
                <div class="social-icons">
                    <div class="social-icon google"><svg viewBox="0 0 24 24" fill="currentColor"><path d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z" fill="#4285F4"/><path d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z" fill="#34A853"/><path d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z" fill="#FBBC05"/><path d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z" fill="#EA4335"/></svg></div>
                    <div class="social-icon twitter"><svg viewBox="0 0 24 24" fill="currentColor"><path d="M23.95 4.57c-.88.39-1.83.65-2.83.77 1.02-.61 1.8-1.58 2.17-2.74-.95.56-2 .97-3.12 1.19-.9-.96-2.18-1.56-3.59-1.56-2.71 0-4.91 2.2-4.91 4.91 0 .38.04.76.13 1.12C7.69 8.09 4.07 6.13 1.64 3.16c-.42.72-.66 1.56-.66 2.47 0 1.7.87 3.2 2.19 4.08-.81-.03-1.57-.25-2.23-.62v.06c0 2.38 1.7 4.37 3.94 4.82-.41.11-.85.17-1.3.17-.32 0-.63-.03-.93-.09.63 1.95 2.44 3.37 4.58 3.41-1.68 1.32-3.8 2.11-6.1 2.11-.4 0-.79-.02-1.18-.07 2.17 1.39 4.75 2.21 7.49 2.21 8.99 0 13.9-7.45 13.9-13.9 0-.21 0-.42-.01-.63.95-.69 1.78-1.55 2.44-2.54z"/></svg></div>
                    <div class="social-icon facebook"><svg viewBox="0 0 24 24" fill="currentColor"><path d="M24 12.07C24 5.4 18.63 0 12 0S0 5.4 0 12.07C0 18.1 4.39 23.1 10.12 24v-8.44H7.08v-3.49h3.04V9.41c0-3.01 1.8-4.66 4.53-4.66 1.31 0 2.68.23 2.68.23v2.96h-1.51c-1.49 0-1.96.93-1.96 1.88v2.24h3.35l-.54 3.49h-2.8V24C19.61 23.1 24 18.1 24 12.07z"/></svg></div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
