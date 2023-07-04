# Unit 1.1: Boolean Logic 


* Internally, computers only have 0s and 1s



* Boolean Values 
    - True and False 
    - Yes and No
    - 1 and 0 

    
* What can we do with just 0s and 1s?
    - Boolean Operations!
        - Truth tables are helpful for these

        - (x AND y)  --> 1 if x and y are True, 0 else
        - (x OR y) --> 1 if x or y are True, 0 if both are 0
        - NOT(x) --> 1 if x is 0, 0 if x is 1

    - Boolean Expressions!
        - We can combine boolean operations to create boolean expressions

        - NOT(0 OR (1 AND 1)) = 0


    - Boolean Functions
        - f(x,y,z) = (x AND y) OR (NOT(x) AND z)
        - Bc there are 3 binary inputs, # of possible outputs = 2^3 = 8
    



* Boolean Identities 
    - (x AND y) = (y AND x)  --> (Commutative) --> Order doesn't matter
    - (x OR y)  = (y OR x)   --> (Commutative) --> Order doesn't matter

    - (x AND (y AND z)) = ((x AND y) AND z) --> (Associative)
    - (x OR (y OR z))   = ((x OR y) OR z)   --> (Associative)

    - (x AND (y OR z)) = (x AND y) OR (x AND z) --> (Distributive)
    - (x OR (y AND z)) = (x OR y) AND (x OR z)  --> (Distributive)


* De Morgan's Laws
    - NOT(x AND y) = NOT(x) OR NOT(y)
    - NOT(x OR y) = NOT(x) AND NOT(y)
    
    - Just distribute the NOT to all terms and expressions
        - Opposite of Not is None (or Not Not)
        - Opposite of Or is And 
        - Opposite of And is Or


    - From these laws, (and a few others we didn't mention) you can do boolean
      algebra to simplify boolean functions


- When building hardware, we usually know what we want a function to do, but we have
  to create a boolean function that satisfies our desired ouputs for given inputs.
  This will be the focus of the next unit



# Unit 1.2: Boolean Functions Synthesis 












