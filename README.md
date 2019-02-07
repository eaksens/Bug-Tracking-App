# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Iteration #1
In this first iteration, use what you have learned in class to create a single model called
“bug” that models the bugs in our application. Later we will add additional models to the
app. Bugs are represented with this information:
● title: a short descriptive title summarizing the problem.
● description: a longer piece of text which describes the details of the problem.
● issue_type: has three possible values: issue, enhancement, feature.
● priority: priority of the issue with three possible levels: low, medium, high.
● status: the current status of the bug with three possible settings: open, closed,
monitor.


Use rails scaffolding to generate the basic screens for managing bugs (list of all bugs,
show bug, edit bug, and delete bug).
Using the TDD approach outlined in lecture, write the automated tests and then
implement the following model requirements:
1. Title and description cannot be blank whenever a bug is created or edited.
2. Issue_type, priority and status must have valid values (you should represent these
values as enumerated types.)
3. The default value of issue_type should be feature.
4. The default value of priority should be medium.
5. The default value of status should be open.
