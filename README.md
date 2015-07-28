### Arithmetic Question Management API

###### For full app site: http://maxkrieg.github.io/arithmetic-app
###### For front end code: https://github.com/maxkrieg/arithmetic-app

Back end for Arithmetic Question Management app.  Allows user to view, create, and edit basic arithmetic multiple-choice questions. Imports large dataset from two CSV files containing multiple questions for basic arithmetic. Creates routes allowing User to perform basic CRUD actions on the questions and distractors tables.

### Build

This was built with a Rails API and PostgresQL database, and is consumed by an AngularJS front end.

### User Stories

###### 1. User can view a list of questions
###### 2. User can sort all questions by operand and answer
###### 3. User can filter for questions with a specific operator
###### 4. User can paginate through the question list
###### 5. User can view a specific question
###### 6. User can edit a specific question's operands and operator
###### 7. User can add a distractor to a specific question
###### 8. User can add remove a distractor from a specific question
###### 9. User can change a distractor on a specific question
###### 10. User can create a new question with distractors

### Data Structure

###### Two Tables: Questions table and Distractors table
1. Questions Table Columns: id (PK), first_operand, operator, second_operand, operator.
2. Distractors Table Columns: id (PK), question_id (FK), distractor.

