### I. WebApp Link: http://hobbybuddies.herokuapp.com/ 

### II. Github Repos: BeCrusty    tjde https://github.com/tjde/Market

### III. Project Description

#### A. Problem definition / purpose

The purpose of the app is to provide a means for users to find other people to engage in hobbies with together. Users can create listings centred on specific hobbies which include a brief description, date, time, location and number of people invited to join. Other users of the site can then search listings put up by others based on a specific hobby and Australian major city location

#### B. Functionality / features

The features of the app include:

- A search bar that allows users to search by hobby or by city or both

- User authentication

- A navbar with authentication protocols that only allows signed in users who have paid and created profiles to fully access listing details and join the listings's activities

- Stripe checkout payment page to protect and authenticate users' credit card information

- Users  are able to create listings that comes up as summarised cards in searches

- Users able to upload profile pictures to an AWS Server (S3)


#### C. Screenshots

#### D. Tech stack

- Html 5 and CSS3
- Javascript
- Boostrap Framework
- Devise 
- Stripe 
- AWS S3 Server
- Ruby on Rails
- Javascript
- Heroku

#### E.Instructions on how to setup, configure and use your App

To set up and access the app in your own computer, follow the steps below. Please note that this app runs on Rails so you would need to have Ruby and Rails installed on your device. You will also need Postgresql. This app was developed under Rails version 5.2.3.

1. Open your terminal window
2. Navigate into a folder you wanted to download your repo and run the following command in terminal:

  git clone https://github.com/tjde/Market
3. Then run: cd Market
             cd src
  Click enter
4. Run: bundle install -> to install required gems and dependencies for the app to run
5. Run: rails db:create -> to create the database
6. Run: rails db:migrate -> to migrate the database
7. Run: rails s -> to start the server
8. Go to your browser window and type this url: localhost:3000

### IV. Design documentation


#### A. Design process

The group started by coming up with different ideas and considering the potential scope of each idea before finally deciding on HobbyBuddies which we considered interesting and useful.

We then started a trello board with ideas for features and stretch goals we would like to achieve. At this point, we also checked the requirements of the project, ensuring that this would be added to an overall to-do list so as not to be missed.
We initially did potential wireframes in paper and when the layout was agreed on, this was laid out in balsamiq for a more polished interface. Moodboarding was done at Pexel where pictures were collected with a focus on colors that evoke a feeling of anticipation, joy and excitement to the user which is what we want them feel when they use the app and which ties to the app concept of being a platform where people may be able to find a new hobby they enjoy or friends they can do them with.

At this point, we also came up with the user stories, ERD and User Flow Diagram, ensuring the foundation for the app was meticulously laid out before proceeding with the actual coding. 
After this, based on the ERD and plans, the models and databases along with their associations were created. A decision was made to split the controllers based on their function and the agreed app structure. The project timeline and task allocation was reviewed each morning and at the end of the day to evaluate progress to completion. Once the background logic of the app was set and it was functional, testing and styling commenced to form the finalised web app which was deployed in Heroku. 

#### B. User stories

1. As Sylvia, I just moved to Sydney and want to go scuba diving with somebody so that I can meet someone new while having      fun.
2. As John, I want a partner to regularly run with in the morning so that I can be accountable to someone and effectively build a healthy habit.
3. As Daniel I want to try hiking so that I can shake up my usual routine and try something new with other people who know the ropes and can give me guidance.
4. As Amy, I want a regular buddy to go wall climbing with so that I can engage in an activity that I've always enjoyed but haven't been able to do without a partner.

#### C. A workflow diagram of the user journey/s.

#### D. Wireframes

#### E. Database Entity Relationship Diagrams

### V. Planning Process

#### A. Project plan & timeline

#### B. Screenshots of Trello board(s)

### VI. Short Answer Questions

##### A. Project Challenge

The challenge that we are addressing in this project is to build a fully functional rails webapp that is fully deployed over the internet. This app will be a double-sided marketplace with an authentication, authorisation, payment function and image uploading ability. 

##### B. The Problem and why it is important

Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?

With the increasing number of individuals choosing to travel and move to other places, it can be difficult to build new friendships in foreign places. Hobbybuddies aims to address the need for connection by give people more chances to form more intimate connections through enaging in shared interests with smaller groups of people.


##### C. Project Description

Describe the project will you be conducting and how your App will address the needs. 

Our app, HobbyBuddies enables individuals to quickly find and join the activity listings posted by other people who are planning to engage in a specific activity of interest. Upon visiting the website, a user is able to search listings based on a specific hobby and city in Australia. This will only be a brief snippet of the listing, however. After the succesful completion of the sign in process where they will be prompted to pay a nominal one off fee and complete their profile, the user can then create their own listings that others can join or see the specific details of the listings of others where they themselves can join. 

##### D. App Network Infrastructure
Describe the network infrastructure the App may be based on.

##### E. Software Usage
Identify and describe the software to be used in your App.

The software we used were the following:

- Trello – For ideation, overall task list and user stories
- Monday – For actual development timeline overview and task allocation
- Balsamiq Cloud – For Wireframing
- Pexel – For moodboarding
- ERD Software online – For creating our entity relationship diagram
- Github – To hold our git repo
- Slack – To communicate and share documentation


##### F. Database
Identify the database to be used in your App and provide a justification for your choice.

The database used in our app is Postgresql. Firstly, sql is the default database built into rails so no additional software needs to be installed. Second of all, a relational database like posgresql allows for for a way to structure our data to more easily obtain the data we require like user hobbies or cities as our app relies on retrieving data based on the relationships between information in the user profile and the listings they create. 


##### G. Production Database Setup
Identify and describe the production database setup (i.e. postgres instance).

##### H. App Architecture
Describe the architecture of your App.

Our app runs on the Ruby on Rails framework which acts as our server side development platform. The database used is Postgresql which is a relationship database linking information from different tables based on relationship associations. It uses Amazon Web Services S3 as active storage for any user profile images uploaded. The Devise gem is used to authenticate users. Stripe payment checkout is used to allow the app to accept payments from users in a secure way. Heroku is the cloud platform used to deploy our app in the internet.

##### I. App Abstractions
Explain the different high-level components (abstractions) in your App.

The Model-View-Controller (MVC) pattern allows for a separation of concerns. The Model takes care of managing the data of the application and the logic pertaining to the retrieval of that data. The View holds the functions which the user can actually see and interact with. The controller acts as the intermediary between the Model and the View, in that it processes the user request and routes the data obtained from the Model and sends it to the Vew to be presented to the user.

##### J. Third Party Services
Detail any third party services that your App will use.

The app uses the following third party services:
 - Amazon Web Services S3 - To serve as storage for image files uploaded by the users for their profiles
 - Stripe - This is used to accept credit card payments from users in order to use the full functionality of the webapp
 - Heroku - This serves as the deployment platform for our webapp so it can be used over the internet

##### K. Marketplace Apps with similar data structure
Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).

The marketplace apps that have similar data structure to ours but in a much larger scale are Ebay and Gumtree where items are linked together in relationship associations and are accessed in this way. For instance, to list items on Ebay and Gumtree, you would need to pick an overall category, then subcategory before reaching the form that allows you to list the specific aspects of the item. Similary, our app uses forms like these for users to put up listings where other users can go and retrieve specific listings based on the hobby and city parameters.

##### L. Database Relations
Discuss the database relations to be implemented.

##### M. Active Record Associations of the Models
Describe your project’s models in terms of the relationships (active record associations) they have with each other.

##### N. Database Schema Design
Provide your database schema design.

##### O. User Stories
Provide User stories for your App.

1. As Sylvia, I just moved to Sydney and want to go scuba diving with somebody so that I can meet someone new while having      fun.
2. As John, I want a partner to regularly run with in the morning so that I can be accountable to someone and effectively build a healthy habit.
3. As Daniel I want to try hiking so that I can shake up my usual routine and try something new with other people who know the ropes and can give me guidance.
4. As Amy, I want a regular buddy to go wall climbing with so that I can engage in an activity that I've always enjoyed but haven't been able to do without a partner.

##### P. Wireframes
Provide Wireframes for your App.

##### Q. Task Allocation and Tracking
Describe the way tasks are allocated and tracked in your project.

An initial list of overall tasks based on discussed features and requirements were compiled. From here, the team used Monday, an online project management software to evaluate pending and current tasks to distribute to team members and keep abreast of things.

##### R. Agile Method Implementation
Discuss how Agile methodology is being implemented in your project.

Feature development was split into sprints running for a number of days, allocated between the two team members. Each feature was also tagged on importance. Please see screenshot above under project timeline.

##### S. Source Control
Provide an overview and description of your Source control process.

The team structured our git repository so that the Master branch is only ever updated with working code. Another remote branch called ‘Dev’ acted as the intermediary for potential merge conflicts that both team members pushed to after working on the code on local branches that branched out from the local dev branch. In this manner, we maintained the integrity of our source code.

##### T. Testing Process
Provide an overview and description of your Testing process.

The team consolidated a list of the main features of the app in a column on the spreadsheet. We then  compiled several test cases for each feature that we believe should work or not work in another column. We then ran each test case, listing down the results and comparing them to what was expected. Any bugs found, were fixed in the code. For a more information, please look at the docs folder for a copy of the test spreadsheet.

##### U. Information System Security Requirements
Discuss and analyse requirements related to information system security.

##### V. Data Protection
Discuss methods you will use to protect information and data.

Our app does not store any confidential user information like addresses, phone numbers. Profiles only have a general city location of the users to narrow down the scope of search. Users of the app cannot directly search for other users to look in their information. They can only see the profile of the User who created a listing. However only the actual logged in user is able to see their Last name and Email. this information is not available to other users viewing their profile. No payment information is stored. All credit card information and payment details are handled by Stripe.

#### W. Legal Obligations with User Data
Research what your legal obligations are in relation to handling user data.
