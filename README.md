# Project 6: H2O Contact Manager

### Cleveland Endians:
##### Cole Albers, Sam Yinger, Adam Prater, Andrew Fox, David Sinchok

-------------------------------------

### Project Managers:
* Overall Project Manager: David Sinchok
* Coding Manager: Andrew Fox
* Testing Manager: Sam Yinger
* Documentation: Adam Prater

---------------------------------

### Technologies and Frameworks:
* Devise
* Rspec
* Mailcatcher
* Bootstrap-Sass
* Kaminari
* Turbolinks Transitions

--------------------------------

### Organization and Structure of Code:
We used the MVC design pattern along with the Rails directory structure to
organize and structure our code.

-------------------------------

### How to Execute:
To execute the H2O Manager, simply:
1) type 'rails s' in the command line prompt
2) open up firefox
3) type 'localhost:3000' in the url bar

---------------------------------

### How to Test:
In the text file called 'test_plan' we wrote the method we used to test our
code. Simply follow the test plan in order to test the functionality of
our website.

------------------------------

### Contributions

Cole Albers:
* Created the CSS for all HTML pages.
* Created the Static_Pages Controller.
* Implemented the Contact Controller find method.
* Created the full_title helper method.
* Added contact validation.
* Added the CSS to all HTML pages.
* Added the forms to all HTML pages.
* Created _footer and _header partials
* Created the layout.
* Created the home and search HTML pages.
* Implemented routes.
* Implemented model.
* Created README.

Sam Yinger:
* Implemented the Contact Controller index, new, filter, and create methods.
* Implemented the filter and index(data) HTML pages.
* Created _data partial.
* Implemented routes.
* Created test_plan.txt.

Andrew Fox:
* Created the Helpers Module for the Contact Controller.
* Set up all of the Devise functionality.
* Implemented the Contact Controller edit and destroy method.
* Added back buttons.
* Created destroy.js.
* Implemented the edit, new, and find HTML pages.
* Created _contact_table partial.
* Created the signed_out HTML page.
* Implemented model.

Adam Prater:
* Implemented the Contact Controller update, del_prayer, and del_comment methods.
* Added pagination.
* Added event and prayer validations.
* Implemented the index(prayer) HTML page.
* Created show.js.
* Created _prayers partial.
* Created test_plan.txt.

David Sinchok:
* Implemented the Contact Controller show method.
* Implemented the index(comment) HTML page.
* Created _comments partial.
* Implemented routes.
* Created test_plan.txt.

--------------------------------
### NOTICE:
We currently have it to where anyone can create an account and access the database. This functionality was implemented
specifically for the ease of the graders; in an actual production launch, only an H2O Church admin would allow
people to access the database by accepting their sign-up confirmation email.

---------------------------------

** If you have any questions, feel free to email any group member. **