# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database: Has ActiveRecord database
- [x] Include more than one model class (e.g. User, Post, Category): Has Client and Accounts models
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts): User has one has_many relationship
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User): Accounts have one belongs_to relationship
- [x] Include user accounts with unique login attribute (username or email): Client email must be unique
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying: AccountsController has all CRUD routes
- [x] Ensure that users can't modify content created by other users: Only allows editing of Clients' own accounts
- [x] Include user input validations: Forms Validate input
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code: Includes README.md

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message