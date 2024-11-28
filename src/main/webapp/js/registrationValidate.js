
    document.getElementById('submit').addEventListener('click', function(event) {
        event.preventDefault(); // Prevent form submission until validation is complete

        // Get form input values
        const firstName = document.getElementById('firstName').value;
        const lastName = document.getElementById('lastName').value;
        const email = document.getElementById('email').value;
        const password = document.getElementById('password').value;
        const phoneNumber = document.getElementById('phoneNumber').value;
        const dob = document.getElementById('dob').value;
        const genderChecked = document.querySelector('input[name="gender"]:checked');
        const streetAddress1 = document.getElementById('street1').value;
        const streetAddress2 = document.getElementById('street2').value;
        const country = document.getElementById('country').value;
        const city = document.getElementById('city').value;
        const region = document.getElementById('region').value;
        const postalCode = document.getElementById('postalCode').value;

        // Regular expression patterns
        const emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
        const phonePattern = /^[0-9]{10}$/;
        const postalCodePattern = /^[0-9]{5,10}$/;
        const passwordPattern = /^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*]).{8,}$/;

        // Field validation
        if (!firstName || !lastName || !email || !password || !phoneNumber || !dob || !streetAddress1 || !city || !region || !postalCode || !country || !genderChecked) {
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

        // Phone number validation
        if (!phoneNumber.match(phonePattern)) {
            alert("Phone number must be exactly 10 digits.");
            return;
        }

        // Postal code validation
        if (!postalCode.match(postalCodePattern)) {
            alert("Please enter a valid postal code.");
            return;
        }

        // If all validations pass
        alert("Registration successful!");

        // Submit the form after validation
		document.getElementById('registrationForm').submit();
    });
