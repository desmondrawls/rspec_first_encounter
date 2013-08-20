##Greetings Fellow Developer!

Thanks for your interest in SumZero and welcome to our Back-end Challenge! To kick off our interview process, we'd like you to solve a few problems to help us gauge your back-end experience.

##A few notes to get you started.

* The test is designed to take about an hour and a half. We will factor in the total time you take to complete the challenge into our evaluation, but we strongly prefer quality submissions over hasty and incomplete work.
* The project environment already contains a working gemfile with rspec. All you need to do is run bundle install and you should be good to go.
* Feel free to contact us if you need clarification, and you are free to use any online resources, but please do not collaborate or share your work with anyone else.

## Challenge 1: Refactor research_items_controller.rb#create
You have been given legacy code without tests which you must clean up:

1. Write controller tests to cover all paths through the create action. (Note, we haven't provided any model code, so stub out models (with rspec) in your tests as necessary).
2. Refactor the action, pushing responsibilities into the models and/or any service classes you feel appropriate (you may create any additional classes as you deem necessary)
3. Refactor your tests to match the new division of labor (creating new model/service test classes where appropriate)

Your final set of tests should pass and the overall behavior of the create action should remain unchanged from its initial form.

##Challenge 2: Design a Flag Module
Imagine you need to allow users to flag three different kinds of items on SumZero (comments, ideas, and quick ideas). You want to develop a common module that is shared with each model to keep things DRY.

1. Database Design. We've created a simple schema to get you started. You'll need to create a migration which embodies your design decisions, e.g., how will you record when an item has been flagged?
2. Module logic. Create the necessary interface for the view layer interact with your module. Hint: What will the view layer need to know, and how will it interact with your module? Hint: You'll probably want a "flag_item!" method as well as a "flagged?" method.
3. Tests. Write tests for your module (if you didn't already in step 2)
