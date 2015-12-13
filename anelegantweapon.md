#Best of SWIFT features　

An elegant weapon in a more civilized age
![an elegant weapon] (https://upload.wikimedia.org/wikipedia/commons/1/14/Lightsaber,_silver_hilt,_blue_blade.png)

##Optional
This is my favorite feature. I want to write more codes with it, and write an appreciation thread for it.
Although obj-c already had similar mechanisms, which may be described as "skip it when null reference is accessed", 
Swift refined this idea and pushed it even further. 

Swift introduces an optional type and exlcudes nil from normal types,
i.e.; nil references are not allowed, unless it is of optional type. 

You may wonder if this only complicates things? What benefits does it bring? 

By separating out nil references to a new type, non-optional types (or just "normal" types) is not suppsed to be nil at any given time.
When it does, it is clearly an error and may be swiftly dealt with.

On the other hand, optional types may be nil. You know it and compiler knows it. 
By following an elegant set of rules, your code flow would be very much the same as that of non-optional types, except unwrapping processes and some question and exclamation marks sprinked in between.

Unwrapping, as you might have guessed, is a process of checking whether an optional tyoe is nil and it turns it into non-optional types in a scope for you to use it safely. How is that different from a "if p != nil" check? In Swift unwrapping looks like this:
"if let v = p". In first looks, it may seem that it's just a rephrase, and it doesn't elimate the nil checks. This requires elaboration.

The difference betwwen a nil check and unwrapping is that there is type conversion involved, as described by "if let v = p". 
Here you declare a non-optional type variable v that is just p if p is not nil. By turning it into non-optional type, you eliminate 
the possibility that v may be nil in its scope. Type checking would ensure that you do not accidently assign nil references to v, 
thus preventing errors like variable becoming nil at certain point without nil checks. It is more strict than just a nil check,
but whether or not strictness helps you or not depends on your coding style or application.

From my experience, to fully exploit the advantages brought by optionals, some aspects of code thinking need to be adjusted.
For example, it is customary to just return nil when operation is not defined. But in Swift, this would make return type to become
an optional type. This has an implication that it would often introduce more optionals, e.g.; to store a return value requires an optional type. However I'm not saying optionals are bad and best to be avoided. It means that you no longer enjoy the benefit that it cannot be nil, which is usually less complicated, and you need to start considering strict type checkings that compiler enforces to 
prevent some human errors. 

I have to emphasis that Swift optionals work great in its own right, especially when in cases where you 
want to access properties of a variable that may be nil. Instead of nil checks every time you wish to access it, you may add question
mark(?) to access it as usual without nil checks and prevent nil refeence exception when it's nil because ? checks for you and automatically skip accessing. Or you may just unwrap it and treat it as non-optionals. The code would look a lot cleaner and readable without the constant nil checks and usually you may avoid these complications by determing whether a variable is optional or not in the variable declaration and let compiler aid you all the way in avoiding nil reference exceptions without you worrying about it in every line.

My experice with Swift optionals so far has been great. In fact it's so great that even python with all its syntax candies pales in comparison. The only problem for me is that it takes some time to getting used to. But it is well worth it. 

Macbookpro + Swift playground + leetcode + Swift is my recommend setup for maximum coding pleasure.
