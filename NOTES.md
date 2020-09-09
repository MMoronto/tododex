#STEP 1: Integrate Basic Theme to Asset Pipeline

  / - And see a stubbed out, non-dynamic home page with the theme.

#Step 2: Allow people to CRUD lists.


[] ListsController
  #index
- see all their lists
-doubling as my #new action in that it is presenting the person with a form to create a new list.
/ - index all the lists ...
- create a list


- show a list

-i need a model
-i need a controller
-i should generate a resource

I want people to be able to create lists. Then they should be able to add items to those lists. They should be able to navigate  many lists & see each list's items.

lists
  has many items

items
  belongs to a list
