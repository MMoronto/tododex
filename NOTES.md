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

- The form is already present in the list show page.
- What URL does this form imply?

POST / items/ :id/items #=> Doesn't describe which list we are adding an item to?

An item doesn't exist outside in our application outside the context of the list it belongs to

Nested Resource -Items are nested in terms of URLs under their parent list.

Does it impact the DB? - I prob need an items table - associated with a list.

Does it impact my URLS? '/lists/1' #

#Step 4: Adding Validations

Validate that lists have a named
Validate that items have a description.

#Step 5: I want to add state (complete, incomplete ) to Items in a List

- Marking items as complete or incomplete.
What urls do i need & how might my database change?

- the idea of an item being complete or incomplete requires data.

- new forms for updating the status of an item - which means new URKL

/lists/1/items
  PUT/PATCH/lists/1/items/1
  PUT/PATCH /lists/:list_id/items/:id

I know i need to steal that checkbox HTML from todomvc

<input class="toggle" type="checkbox">

I need that JS function to submit the form when you click the checkbox

$(function(){
  $("input.toggle").on("change", function(){
    $(this).parents("form").trigger("submit")
    })
  });

# REFACTOR 1: Start using partials in lists/show because it's a bit messy.   

#Step 6: Deleting Items from a list
