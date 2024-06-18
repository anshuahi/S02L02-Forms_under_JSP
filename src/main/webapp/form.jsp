<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
</head>
<body>
    <h1>Sample Form</h1>
    <form action="<%= request.getContextPath() %>/ControllerClass" method="get">
        <!-- Name input -->
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br><br>

        <!-- Gender input -->
        <label>Gender:</label>
        <input type="radio" id="male" name="gender" value="male" required checked>
        <label for="male">Male</label>
        <input type="radio" id="female" name="gender" value="female" required>
        <label for="female">Female</label>
        <input type="radio" id="other" name="gender" value="other" required>
        <label for="other">Other</label><br><br>

        <!-- Language input -->
        <label>Languages Known:</label><br>
        <input type="checkbox" id="hindi" name="language" value="hindi">
        <label for="hindi">Hindi</label><br>
        <input type="checkbox" id="english" name="language" value="english">
        <label for="english">English</label><br>
        <input type="checkbox" id="spanish" name="language" value="spanish">
        <label for="spanish">Spanish</label><br>
        <input type="checkbox" id="french" name="language" value="french">
        <label for="french">French</label><br>
        <input type="checkbox" id="german" name="language" value="german">
        <label for="german">German</label><br><br>

        <!-- Country input -->
        <label for="country">Country:</label>
        <select id="country" name="country" required>
            <option value="">Select your country</option>
            <option value="India">India</option>
            <option value="usa">United States</option>
            <option value="canada">Canada</option>
            <option value="uk">United Kingdom</option>
            <option value="australia">Australia</option>
            <option value="other">Other</option>
        </select><br><br>

        <!-- Submit button -->
        <button type="submit">Submit</button>
    </form>

</body>
</html>