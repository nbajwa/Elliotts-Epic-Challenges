#The Ruby Group CRUD App!
For this challenge you will have two hours to finish the following app. You can use any resources you want, with the exception of other DBC students (i.e. you may ask instructors or alumni, but not other current students).


You have graduated from Dev Bootcamp and are looking for work, but you have no money, so you start freelancing to make some extra cash on the side. A client approaches you and offers to hire you to build her foundation - The Ruby Group - a CRUD webapp so they can post about meetings and create work groups. Naturally as a poor, underfunded DBC grad you gladly take the job!

##Release 0
To begin you have to get your associations straight, your client has specified a number of requirements for the database to have:
* There needs to be three main tables - Users, Groups, and Meetings
* A user can be in many groups
* A group has an owner, members, description, and a topic
* A user can be in many meetings
* A meeting has a leader, attendees, description, and a meeting time
* A User has all of the groups they own, the groups they're in, the meetings they lead, the meetings they attend, their Ruby Skills, a profile picture, and an Email/Password for log in

##Release 1
Now that you have you database it's time to do your views! Your client tells you that they want there to be all of the following pages:
* A Main Page that shows all of the created groups and meetings (each in their own column, side-by-side, with the Owner/Leader and Topic/Time). Each one should link to the Group/ Meeting specific Page.
* A Specific Page for each group/meeting that shows the Owner/ Leader (by profile pic), the description, and all of the members/ attedees (again, by profile pic). Your client has specified that they want the members to be in a 3-column layout.
* A Profile page for each user that shows all their information


While you're at it, why not add some basic CSS. Nothing fancy, just something to make the page look less boring.

##Release 2
"Cool" your client says with Glee! What a wonderful app you have made for me! But alas, the pages they don't do anything. My clients can't create or join the groups or meetings.


I can't keep rhyming...sorry...


Okay, so your client wants you to make it so Users can create groups or meetings, giving them the appropriate powers for what they create (which means they can remove members/attendees, delete a group, and edit the name or description). On top of that Users have to be able to join and leave groups/ meetings, as well as, update their info, including their skills, from their profile page.


But remember, only the owner/leader should be able to modify the group's info and only the specific user should be able to modify their skills or info.

##Release 3
