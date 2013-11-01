One + One Assignments

This is the application for IFTTT by Gagan Gupta. 

It is hosted on heroku at http://oneplusoneassignment.herokuapp.com. I built it in Ruby on Rails, a language I had no experience in whatsoever. In fact, I have never built a web app from start to finish, so this was all new territory for me. So, in the past week, I taught myself the basics by going through various tutorials and then begun building the project. Along the way, I hit many bugs which slowed me down, but that will always be a part of programming, and especially a part of learning a new language. In fact, when I thought I was close to being done with the creation of teams, I did something to my users database which corrupted it, and I had to restart it. 

Directions on how to use the app are in the help section, which you can navigate to by clicking help in the navigation bar at the top right of the page. 

Design-wise, I decided to make this not tailored only specifically to the project specifications. I tried to set things up so they could easily be changed and added to. For example, the users have a profile page right now which only consists of an image and their name, however new attributes can easily be added to make full profile pages of each member on the IFTTT team. 

The SQL database has users, which have an ID, email, and name. A new user with an email that is the same of someone already in the database will not be added, and an error message is displayed. 

Teams consist of users, and also have an ID, and a team_name. In order to set up the fact that teams have many users and users can be on many teams, both the users and the teams have "has_and_belongs_to_many" relationships. 

In a few of the tutorials I went through, testing of web pages was done, but learning exactly how to do it was a compromise I had to make given the time constraints. So, testing was done simply by creating a bunch of fake users programatically and using the app with them. 

In terms of the actual 1+1 assigning, I was unable to get the time to write the code due to the various bugs I hit, but after putting much thought into how I would approach this (quite difficult) problem, here is the algorithm I would use: 

1) Construct a tree for each team member, with the team member as the root, and for each person that he/she is a team member with, add a node and an edge connecting them. This includes if the person who you are making the tree for is on multiple teams. I would likely model this tree with an array of ints, with the ints being the user IDs they are on a team with. 

2) After the trees are constructed, go through each tree that does not already have a pairing (and therefore team member) and choose the first person that still has an edge between them, and make them a pairing. Then on both trees, of the initial team member and the one who he/she is being paired with, delete the edge between them. With the array implementation of this, I would make that array value -1 on both trees. Then mark both of these members with a boolean withPairing = true for the week. 

3) Continue this process, week after week, and inevitably you will hit a tree that has no more options. In fact, in the case of odd teams, you might hit this the first week itself. This is where a compromise must be made. I am choosing to break the rule that every team member must have only one 1+1 assignment per week, for a couple of reasons. Firstly, it will be the least detrimental to the rest of the team members, of whom I am trying not to repeat pairings in consecutive weeks. Second, it's always good to get to know someone new! :) I would prioritize breaking this rule by matching the person (who has no more options) with one other team member who is already matched (i.e. withPairing = true), and, if there are no options that way, simply match them with someone who might not be on a team with them, and finally, if there are no options that way, just rematching them with someone they have already been with. 

4) When some amount (I can't figure out what would be the right number due to how complicated it can get with users on multiple teams) of members are empty (i.e. array is all -1), then I will reset all the connections of everyone back to the initial states. At this point, it might seem like there is no point to keep running the program every week, because we will hit the same pattern over and over again, but teams can change, so it makes the most sense to keep running the program. 

I hope that was clear! I am more than willing to explain this when talking to someone from your company. I am sorry that I was unable to finish the entire application as I had planned to, but given my familiarity in Ruby on Rails and web apps (none) I did the best I could in the time I had. 

I look forward to hearing back from you, and hope that I can work with your company this summer! :)
