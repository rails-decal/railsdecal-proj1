# Q0: Why is this error being thrown?
Because the pokemon database has nothing in it yet. The controller is not yet defined properly.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The pokemon are being pulled from the pokemon database that has already been seeded. They are being pulled from the database and posted onto the site page.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
Whenever the button is pressed a request is made, more specifically a patch is made to the website which updates the name of the pokemon according to its ID to indicate when a pokemon has been captured and how another one apepars.

# Question 3: What would you name your own Pokemon?
Becky

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I redirected it to go back because it could be a different trainer depending on who is logged in.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
A red oval/rectangle pops up at top telling the user there is an error
# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
