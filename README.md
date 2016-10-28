# Blog Site Lesson

[Blog Project Wireframes](https://drive.google.com/file/d/0B9kOmBLG8CbbaGZ1VDMyY2tHRkE/view?usp=sharing)


## Step 1
- Create a new project for a blog site.
- Create an ERD that includes Article, User, Comment, and Like
- Classify the cardinality of each relationship.
- Once your ERD is approved, you can start on the next step.

## Step 2
- Generate scaffolds for each of the entities.
- Create model tests that verify the associations for your design.
- Add appropriate tags to the models and verify your tests now pass.

## Step 3
- Add tests that make sure it is not possible to create a user with any missing fields or an invalid email address
- Add validation for presence of each of the user attributes
-Add validation for the email address of a user
- Verify your tests now pass

## Step 4
- Add tests for your own validation rules for Articles
- Add validation code to make your tests pass

## Step 5
- Create seed data for several Users and Articles.
- Ensure you can see them on the Article index page
- Create seed data for several Comments and Likes
- Make sure you can navigate to the article show page.

## Step 6

- Set your root in `routes.rb` to point to the articles index

```root to: 'articles#index'```

- Add a welcome bar to your application layout. Hardcode it initially to just say: "Welcome Alice" and confirm you can see it. The layout is in `view/layouts/application.html.erb`
- Generate a sessions controller: 
```rails g controller sessions```
- Add create, new, and destroy actions
- Add routes for each of these 
```
get 'login', to: 'sessions#new'
post 'login', to: 'sessions#create'
delete 'login', to: 'sessions#destroy'
```
Add a login template at `views/sessions/new.html.erb` with a form for logging in:

```
<%= form_tag "/login" do %>
<%= text_field_tag "username", "" %>
 <%= submit_tag "Login" %>
<% end %>
```

- Fill in your create action in your Sessions Controller

```
user = User.find_by(username: params[:username])
session[:user_id] = user.id
redirect_to “/”
```

- Ensure you can manually navigate to /login and you get redirected back to your homepage after entering a valid username that matches an existing user.

## Step 7

- Add conditional logic and login / logout links to your application layout

```
<% if is_logged_in? %>
	Hello <%= current_user.first_name %> |
	<%= link_to "Log out", login_path, method: "delete" %>
<% else %>
	<%= link_to "Login", login_path, method: "get" %>
<% end %>
```
- Create helpers in session_helper.rb

```
def current_user
	session[:user_id] ? User.find(session[:user_id]) : nil
end


def is_logged_in?
  current_user != nil
end
```

- Clear the session in your sessions controller destroy action with:

```
def destroy
	session[:user_id] = nil
   redirect_to "/"
end
```

- Ensure you can login and logout.

## Step 8
- Add a button to make it possible for the logged in user to like an Article. Hint: Use a `form_tag` very similar to what was used for the login form.
- Display a count of how many people have liked the article above the button
- Display a list of all people who have liked an Article at the bottom of an Article’s show page

## Step 9

- Add a button and text input area that makes it possible to comment on a story
- Display the comment with the name of the person who wrote it and the date.

## Step 10

- Continue building the applications per the specs in the wireframe and your own creative inspiration. 
- Follow [Rails Tutorial's steps](https://www.railstutorial.org/book/beginning#sec-deploying) to deploy your app to Heroku
- Share links to your app on the Slack channel!
