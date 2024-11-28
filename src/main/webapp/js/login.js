document.querySelector('input[type="submit"]').addEventListener('click', function(event) {
    event.preventDefault(); // Prevent form submission until validation is complete

    // Get form input values
    const email = document.querySelector('input[type="text"]').value;
    const password = document.querySelector('input[type="password"]').value;

    // Regular expression patterns
    const emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
    const passwordPattern = /^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*]).{8,}$/;

    // Field validation
    if (!email || !password) {
        alert("Please fill out all fields.");
        return;
    }

    // Email validation
    if (!email.match(emailPattern)) {
        alert("Please enter a valid email address.");
        return;
    }

    // Password validation
    if (!password.match(passwordPattern)) {
        alert("Password must contain at least 8 characters, including one uppercase letter, one lowercase letter, one number, and one special character.");
        return;
    }

    // If all validations pass
    alert("Login successful!");

    // Submit the form after validation
    document.querySelector('form').submit();
});
