#@Login 
Feature: Login Feature
This feature includes scenario that would validate follwing logins
1. Admin Login
2. linda.anderson
3. negative login


Background: #
Given i am able to navigate on to login page

#Scenario: Admin Login
#Given  i am able to navigate on to login page
#When i update the username as "Admin"
#And i update the password as "admin123"
#And i click on the login button
#Then i should see the username as "Welcome Linda"
#
#Scenario: linda.anderson Login
#Given  i am able to navigate on to login page
#When i update the username as "linda.anderson"
#And i update the password as "linda.anderson"
#And i click on the login button
#Then i should see the username as "Welcome Linda"

#@negative

# 2 scenario in same so can use as like this as 1

Scenario Outline: Login with different users
When i update the username as "<user>"
And i update the password as "<password>"
And i click on the login button
Then i should see the username as "<name>"

Examples: #mean data to give the data
 |user					|password   		| name							|
 |linda.anderson|linda.anderson	|Welcome Rushikesh 	|
 |linda.anderson|linda.anderson	|Welcome Rushikesh 	|
 
Scenario: negative Login
Given  i am able to navigate on to login page
When i update the username as "shruthi"
And i update the password as "shruthi"
And i click on the login button
Then i should see the error as "Invalid credentials"