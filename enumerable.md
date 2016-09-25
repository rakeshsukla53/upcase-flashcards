# Using Select, Reject, Collect, Inject and Detect

**Select**

Building a list of items from the array using select

    a = [1,2,3,4]
    a.select {|n| n > 2}
    
this statement will not change the object a, if you want to change the object
a as well then you need to use `!` 

    a = [1,2,3,4]
    a.select! {|n| n > 2}

Now here a will be changed

**Reject**

Building a list of items from the array using reject ( this is opposite of select )

    a = [1,2,3,4]
    a.reject {|n| n > 2}
    
**Collect**

Returns an array of values that are the RESULT of logic in the block

    a = [1,2,3,4]
    a.collect {|n| n*n}

Important Point - Finally, note that using select, reject, and collect returns an array.

**Inject**

When you think of accumulating, concatenating, or totaling values in an array, 
then think of inject. The main difference between select and inject is that 
inject gives you another variable for use in the block. This variable, 
referred to as the accumulator, is used to store the running total or 
concatenation of each iteration. The value added to the accumulator is the 
result of the logic you place in the block. At the end of each iteration, 
whatever that value is, can be added to the accumulator. 
For example, let’s sum all the numbers together in our array:
	
    a = [1,2,3,4]
    a.inject {|acc,n| acc + n}

This will return 10. The total value of all the elements in our array. 
The logic in our block is simple: add the current element to the accumulator. 
Remember, you must do something to the accumulator in each iteration. 
If we had simply placed n in the block the final value of the accumulator 
would have been 4. Why? Because its the last value in the array and 
since we did not add it to the accumulator explicitly the accumulator would be 
replaced in each iteration.

You can also use a parameter with the inject call to determine 
what the default value for the accumulator is:

    a = [1,2,3,4]
    a.inject(10) {|acc,n| acc + n}

If you need to return a string or an array from inject, then you will need 
to treat the accumulator variable that way. You can use the default value parameter of inject to do this:
	
    a = [1,2,3,4]
    a.inject([]) {|acc,n| acc << n+n}

In this example I add n to itself and then append it to the accumulator variable. I initialized the accumulator as an empty array using the default value parameter.

**Detect**

Use detect if you need to find an item in an array and it stops there once you find it

    a = [1,2,3,4]
    a.detect {|n| n == 3}

This returns 3. The value we were looking for. If the value had not been 
found, then the iterator returns nil.

**Group By**

Groups the collection by result of the block. Returns a hash where the keys are the evaluated result from the block and the values are arrays of elements in the collection that correspond to the key.

    names = %w(ben thom joe mark)   
    puts names.group_by { |names| names.length}
    output = {3=>["ben", "joe"], 4=>["thom", "mark"]}


**Partition**

"Returns two arrays, the first containing the elements of enum for which the block evaluates to true, the second containing the rest."

    (1..6).partition { |i| i.even? }
    #=> [[2, 4, 6], [1, 3, 5]]

**Collect vs Map**

    67] pry(main)> users = [1, 2, 3, 4, 5]
    => [1, 2, 3, 4, 5]
    [68] pry(main)> users.map { |user| [user, 'a'] }
    => [[1, "a"], [2, "a"], [3, "a"], [4, "a"], [5, "a"]]
    [69] pry(main)> users.collect { |user| [user, 'a'] }
    => [[1, "a"], [2, "a"], [3, "a"], [4, "a"], [5, "a"]]
    [70] pry(main)> users.map { |n| n*n }
    => [1, 4, 9, 16, 25]
    [71] pry(main)> users.colect { |n| n*n }
    NoMethodError: undefined method `colect' for [1, 2, 3, 4, 5]:Array
    from (pry):71:in `__pry__'
    [72] pry(main)> users.collect { |n| n*n }
    => [1, 4, 9, 16, 25]
    [73] pry(main)>

There is no difference

** flat_map **

Is there a single Enumerable method that will accomplish this?

    users.map { |user| [user.name, user.age] }.flatten
    #=> ["ben", 32, "chad", 50]

    users.flat_map { |user| [user.name, user.age] }
    #=> ["ben", 32, "chad", 50]

This can be done using flat map

**Any**

Passes each element of the collection to the given block. The method returns true if the block ever returns a value other than false or nil. If the block is not given, Ruby adds an implicit block of { |obj| obj } that will cause any? to return true if at least one of the collection members is not false or nil.

    %w[ant bear cat].all? { |word| word.length >= 3 } #=> true
    %w[ant bear cat].all? { |word| word.length >= 4 } #=> false
    [nil, true, 99].all?                              #=> false

**All**

Passes each element of the collection to the given block. The method returns true if the all the values return true otherwise false

    def all_are_admins?(users)
      users.all?(&:admin?)
    end

the above code sample is a simplification of this method

    def all_are_admins?(users)
      all_admins = true
    
      users.each do |user|
        all_admins = all_admins && user.admin?
      end
    
      all_admins
    end




















