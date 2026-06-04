# ProgrammingParadigm
The programming paradigm chosen was the Functional. To represent it I will complete a problem in 
Codeforces implementing this programming paradigm. To understand furthermore what is the functional programming paradigm, we use the definition provided by LLinformatics:"A programming paradigm that encourages program development to be done purely with functions is called the Functional Programming paradigm (FP)."(Pedro Paranhos, 2025).

This means that functional programming uses only functions as the procedures to develop programs that solve the problems needed to resolve. The benefits of functional programming are several. The most important benefits are:
- Recursion
- Hierarchy in functions
- Concurrency
- Modular Estructure
- Error prevention
- Lambda Calculus Implementation

### What is Lambda Calculus?
Lambda Calculus is  using functions and abstraction to apply procedures without the need of stating variables. Usign elegance in code, we can implement lambda calculus as functional programming by creating complex procedures into simple steps. As represent in the following: " The main ideas are applying a function to an argument and forming functions by abstraction"(The Lambda Calculus (Stanford Encyclopedia of Philosophy), 2023)."
## Description
To develop this paradigm, I will resolve the following problem in CodeForces. The problem chosen is 1077C. Which has the title of Good Array. In this problem it is stated the following. You are given an array of n integers, find all the indices in the array such that after removing the indices. the array becomes good. A condition is that an array is good if there exists an element equal to the sum of all the other elements. There is a following diagram to explain the problem better.
![ Imagen 1:Diagrama de flujo del problema](Diagram_problem.png)

## Models
To develop this solution, functional programming will be fundamental into the implementation of this problem. By using this paradigm we splid the work into five functions. By using recursion we will be able to parse through the array present it and recollect the good indices that an array has. 
- is-in: This function search through the list to see if an element exists in the array. It parse through the list and searches an element.
- sum-list: It sums all the elements on the list. It uses an accumulator to save the sum in each step.
- good?: It verifies the list as good if an element is equal to the sum of all the other elements. This is made by the calculating the total sum with sum-list. If the sum is unpair it is impossible,, if it is pair it looks for sum/2 to exist in the list.
- remove-at: It returns a new list without an element. It parses through the list to reach the position i. Then it creates a new temporary list without that position.
- find-nice: <strong>PRIMARY FUNCTION</strong> It parses the indexes from 1 to n. For each one it calls remove-at, to remove that indeces and verify if it is good with good?. If it is, it saves the indeces in cons.

Why does the paradigm is used.
- Recursion
- Pure functions
- Function composition
- Mutable variables.
## Implementation
Implement your solution in a language that supports the programming paradigm.

## Tests
Implement and document a set of tests.

## Analysis
Explain the time complexity of your solution.
Explain what other possible paradigms could have been used and the possible tradeoffs, including time complexities.

### Differente Possible Solution

### References.
- The Lambda Calculus (Stanford Encyclopedia of Philosophy). (2023, July 25). https://plato.stanford.edu/entries/lambda-calculus/
- Functional Programming Paradigm – All You need to know | LLLNFormatics. (n.d.). https://www.llinformatics.com/blog/functional-programming-paradigm
