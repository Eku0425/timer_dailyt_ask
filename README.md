# Button task
<img src="https://github.com/Eku0425/timer_dailyt_ask/assets/149374328/2f45a3d4-e2b2-4f55-840d-8b17c1f76377" width=20% height=20%>

# Clock task

<img src="https://github.com/Eku0425/timer_dailyt_ask/assets/149374328/71fd4911-3821-4bef-b458-8546014a0e9c" width=20% height=20%>



https://github.com/Eku0425/timer_dailyt_ask/assets/149374328/7c1c6ae7-a87d-468d-88ea-a291f2030ad8



# analog clock
<img src="https://github.com/Eku0425/timer_dailyt_ask/assets/149374328/30568d66-3978-4430-82ab-c918f21733d3" width =20% height =20%>




https://github.com/Eku0425/timer_dailyt_ask/assets/149374328/2094055e-92a8-495b-8a65-51c899180ee2



# Que&Ans:-
# What is  Asynchronous Programming?

Asynchronous programming is a programming paradigm that allows tasks or operations to run independently and concurrently, without waiting for each other to complete before moving on to the next task. In traditional synchronous programming, tasks are executed one after another, and the program waits for each task to finish before proceeding to the next one.

# What is Future Class ?

 the Future class represents a future result of an asynchronous computation. This result will eventually appear in the Future after the processing is complete. Let's see how to write methods that create and return a Future instance.
 

# What is Duration class & Future.delayed() constructor with Example ?
 
Delayed Flutter is a constructor that creates a future which runs its computation after a delay. The Future. delayed constructor has two arguments. The first argument is a Duration object which specifies the delay before the callback function is executed, and the second argument is the callback function.



# # Code Example:-

Clone the project

```bash
 void main() {
  Future.delayed(
    Duration(seconds: 3),
    
    () {
      print("Jay Mogal");

     }
  );
  
}

```
# What is Recursion ? With Example. 

Recursion is a programming technique where a function calls itself directly or indirectly in order to solve a problem. In recursive functions, the function keeps calling itself with smaller instances of the problem until it reaches a base case where the solution can be directly computed without further recursion. Recursion is commonly used in problems that can be broken down into smaller, similar subproblems.

## CODE

```bash
void main() {  
  int factorial(int num){  
    
 if(num<=1) { // base case  
       return 1;  
 else{  
        return n*fact(n-1);  
     }  
   }      
  }  
}  
```
# What is Timer class with example ?

The Timer class is a utility class in many programming languages that allows you to schedule tasks to be executed at a specified time or after a specified delay. It's commonly used in scenarios where you need to perform an action periodically or after a certain interval.

## CODE Example:-

```bash
import 'dart:async';

void main(){

 print("Hello Android!");

 Timer(Duration(seconds: 3), () { 
   print("Hello Dart!");
 });

 print("Hello Flutter!");
}
```
# What is Timer.periodic and use with Example?

Timer.periodic is a feature available in some programming languages and libraries that allows you to schedule a task to be executed repeatedly at fixed intervals. It's similar to Timer, but it automatically reschedules itself to run at the specified interval after each execution.

## CODE Example:-

```bash
import 'dart:async';

void main() {
  Future.delayed(
    Duration(seconds: 3),
    
    () {
      print("Jay Mogal");

     }
  );
  Timer.periodic(Duration(seconds: 1), (timer) { 
    print("JAY MAA MOGAL");
  }
  );
  
}
```
<img src= "https://github.com/Eku0425/timer_dailyt_ask/assets/149374328/928efa2d-200c-44f6-9478-7902099fb1e7" height=25% width=25%>
<img src="https://github.com/Eku0425/timer_dailyt_ask/assets/149374328/779e9557-9ed4-4c90-b4a9-079d10e9f8c1" height=25% width=25%>
<img src="https://github.com/Eku0425/timer_dailyt_ask/assets/149374328/8c80b1f6-6090-4920-ae50-ffb2706e31fc" height=25% width=25%>








