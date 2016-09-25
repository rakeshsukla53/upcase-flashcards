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

In this example I add n to itself and then append it to the accumulator variable. 
I initialized the accumulator as an empty array using the default value parameter.

**Detect**

Use detect if you need to find an item in an array and it stops there once you find it

    a = [1,2,3,4]
    a.detect {|n| n == 3}

This returns 3. The value we were looking for. If the value had not been 
found, then the iterator returns nil.
















