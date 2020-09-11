#STEP 1: Integrate Basic Theme to Asset Pipeline

[X]  / - And see a stubbed out, non-dynamic home page with the theme.

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

Does it impact the DB?
Does it impact my URLS? '/lists/1' #

# Step 3: Add Items to a List

- Make the items in a list real
  - a list has many items and every item belongs to a list.

  lists
  2     Bullcrap List

  items
  id    description   list_id
  1       Milk          2
  1       Cookies       2  

CREATE ACTION for an ITEM in a LIST - What is the URL / HTTP method for that?

Does it impact the DB? - I prob need an items table - associated with a list.

Does it impact my URLS? '/lists/1' #
