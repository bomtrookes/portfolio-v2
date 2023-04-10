$name = $_POST['name'];
$email = $_POST['email'];
$message = $_POST['message'];

$to = 'your-email@example.com';
$subject = 'New contact form submission';
$body = "Name: $name\nEmail: $email\nMessage:\n$message";
$headers = "From: $email";

mail($to, $subject, $body, $headers);
