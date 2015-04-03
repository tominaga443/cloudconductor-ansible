#!/usr/bin/expect

spawn bundle exec rake register:admin RAILS_ENV=production

expect "Email"
send "cloudconductor@example.com\n"

expect "Name"
send "cloudconductor-user\n"

expect "Password"
send "cloudconductor\n"

expect "Password Confirmation"
send "cloudconductor\n"

expect "Administrator account registered"
