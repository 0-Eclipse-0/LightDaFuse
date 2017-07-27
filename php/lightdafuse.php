<?php
  $from = $_GET['from'];
  $to = $_GET['to'];
  $subject = $_GET['subject'];
  $message = $_GET['message'];
  $headers = "MIME-Version: 1.0" . "\r\n";
  $headers .= "Content-type:text/html;charset=iso-8859-1" . "\r\n";
  $headers .= "From: $from";

  mail($to, $subject, $message, $headers) or die("Error");
  echo "Success";
?>
