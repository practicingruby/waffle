# Waffle

Waffle will eventually be a generic table datastructure, but is now just an 
experiment, kicked off by Practicing Ruby Issue 2.2. 

I am trying to build out an open source library via "Use case driven development", 
in which only features that fulfill a demonstrated need will be implemented.

## How to participate

Each feature request / patch to Waffle must come with an example use case.
This use case should answer a particular question about a particular realistic
data set.

### Feature Requests

If you want to suggest a feature, please follow the examples in the use_cases
folder, and at a minimum, check in your dataset and the question you want answered.
Ideally, also add some imaginary code for how you would like to see the problem
solved.

The example code should only demonstrate the use of *essential* features, but can
contain a comment about nice-to-have features. Once you've done this, submit
a pull request so that your feature can be considered before you spend too much
time working on its implementation.

### Implementing Features

You do not need to implement your feature, or write formal unit tests for it, 
but you are of course welcome to do so.

Your tests should (when possible) work against the same data set that the
use case was written against. Your implementation code should only satisfy
the needs of that use case. This doesn't mean you should write trivial stubbed
out methods, but it does mean you can cut corners when it comes to things
like validations or edge cases. We can wait for another use case to drive
those features.

## Questions

Contact gregory.t.brown@gmail.com
