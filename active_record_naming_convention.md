
# convention over configuration

- Active Record uses some naming conventions to find out how the mapping between 
models and database tables should be created. Rails will pluralize your class 
names to find the respective database table. So, for a class Book, you should 
have a database table called books.

- BookClub will be stored as book_clubs
- Person model will be stored as people ( Singular to Plural )
- Mouse model will be stored as mice
- LineItems will be stored as line_items

# schema convention for foreign keys

- for defining the foreign keys, these fields should be named following the 
pattern `singularized_table_name_id` (e.g., item_id, order_id). 
These are the fields that Active Record will look for when you 
create associations between your models.


# creating Active Record Class and using it

**model** 

    class Product < ApplicationRecord
    end

**SQL**
 
    CREATE TABLE products (
       id int(11) NOT NULL auto_increment,
       name varchar(255),
       PRIMARY KEY  (id)
    );
    
**Ruby Code**

    p = Product.all


# CRUD Operation

- create

create will return the object and save it to database
new will create a object, and it will not save to the database

    user = User.create(name: "David", occupation: "Code Artist")

    # if you don't want to save to the database, then you can use this 
    user = User.new
    user.name = "David"
    user.occupation = "Code Artist"

    # call to user.save will save the values to the database



- read

return a collection with all users

      users = User.all
  
return the first user

      user = User.first
  
return the first user named David

      david = User.find_by(name: 'David')
  
Find all users named David who are Code Artists and sort by created_at in reverse chronological order

      users = User.where(name: 'David', occupation: 'Code Artist').order(created_at: :desc)

- update

        user = User.find_by(name: 'David')
        user.name = 'Dave'
        user.save

A shorthand for this is to use a hash mapping attribute names to the desired value, like so:

    user = User.find_by(name: 'David')
    user.update(name: 'Dave')

This is most useful when updating several attributes at once. If, on the other hand, you'd like to update several records in bulk, you may find the update_all class method useful:

    User.update_all "max_login_attempts = 3, must_change_password = 'true'"


- delete

    user = User.find_by(name: 'David')
    user.destroy







































































