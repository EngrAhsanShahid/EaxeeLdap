<!DOCTYPE html>
<html>
<head>
    <script>
    function showMessage(message) {
        alert(message);
    }
    </script>
</head>
<body>
    <%
        String message = (String) request.getAttribute("message");
    %>
    <script>
    showMessage("<%= message %>");
    </script>
</body>
</html>
