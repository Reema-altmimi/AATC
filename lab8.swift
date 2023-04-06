/*:
 ## Exercise - Create Functions
 
 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the funtion and observe the printout.
 */
func introduceMyself() {
    print("I'm reema. Nice to meet you.")
}

introduceMyself()
/*:
 Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = arc4random_uniform(UInt32(5))` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts. Note that the random number generation will not work unless your function is declared after the `import Foundation` statement below. This is because the `arc4random_uniform(_:)` function is declared in the `Foundation` framework.
 */
import Foundation

func magicEightBall() {
    let randomNum = arc4random_uniform(UInt32(5))
    switch randomNum {
    case 0:
        print("This is a 0.")
    case 1:
        print("This is a 1.")
    case 2:
        print("This is a 2.")
    case 3:
        print("This is a 3.")
    case 4:
        print("This is a 4.")
    default:
        fatalError()
    }
}

magicEightBall()
magicEightBall()
magicEightBall()


/*A reoccurring process like this is a perfect candidate for a function. 
Write a function called incrementSteps after the declaration of steps below that will increment steps by one and then print its value.
Call the function multiple times and observe the printouts.*/
var steps = 0
func  incrementSteps (){
    steps += 1
    print(steps)
}
incrementSteps()
incrementSteps()
incrementSteps()

/*Similarly, if you want to regularly provide progress updates to your user, you can put your control flow statements that check on progress into a function. 
Write a function called progressUpdate after the declaration of goal below. The function should print "You're off to a good start." if steps is less than 10% of goal, 
"You're almost halfway there!" if steps is less than half of goal, "You're over halfway there!" if steps is less than 90% of goal, "You're almost there!" if steps is less than goal, and "You beat your goal!" otherwise. Call the function and observe the printout.*/
var steps = 0
let goal = 10000 
func progressUpdate(){
    if steps < goal/10{
        print("You're off to a good start.")
    }
    else if steps < goal/2{
        print("You're almost halfway there!")
    }
    else if steps < goal/90{
        print("You're over halfway there!")
    }
    else if steps < goal{
        print("You're almost there!")
    }
    else{
        print("You beat your goal!")
    }
}
progressUpdate()



/*:
## Exercise - Parameters and Argument Labels
 Write a new introduction function called `introduction`. It should take two `String` parameters, `name` and `home`, and one `Int` parameter, `age`. The function should print a brief introduction. I.e. if "Mary," "California," and 32 were passed into the function, it might print "Mary, 32, is from California." Call the function and observe the printout.
 */
func introduction(name: String, home: String, age: Int){
    print("I'm \(name), I live in \(home), I'm \(age) old.")
}


introduction(name: "Jhonny", home: "Taiwan", age: 32)
/*:
 Write a function called `almostAddition` that takes two `Int` arguments. The first argument should not require an argument label. The function should add the two arguments together, subtract 2, then print the result. Call the function and observe the printout.
 */
func almostAddition(_ number: Int, to: Int){
    print(number + to - 2)
}


almostAddition(14, to: 3)
/*:
 Write a function called `multiply` that takes two `Double` arguments. The function should multiply the two arguments and print the result. The first argument should not require a label, and the second argument should have an external label, "by", that differs from the internal label. Call the function and observe the printout.
 */
func multiply(_ first: Double, by second: Double){
    print(first * second)
}

multiply(10, by: 2)
multiply(4, by: 3)


//App Exercise - Progress Updates
/*Rewrite the function progressUpdate, only this time give it two parameters of type Int called steps and goal, respectively.
Like before, it should print "You're off to a good start." if steps is less than 10% of goal, "You're almost halfway there!" if steps is less than half of goal, "You're over halfway there!" if steps is less than 90% of goal, "You're almost there!" if steps is less than goal, and "You beat your goal!" otherwise. 
Call the function and observe the printout.*/

func progressUpdate(steps: Int, goal: Int){
    if steps < (goal * 10 / 100){
        print("You're off to a good start.")
    }else if steps < (goal / 2){
        print("You're almost halfway there!")
    }else if steps < (goal * 90 / 100){
        print("You're over halfway there!")
    }else if steps < goal{
        print("You're almost there!")
    }else{
        print("You beat your goal!")
    }
}


progressUpdate(steps: 500, goal: 1000)
progressUpdate(steps: 10, goal: 100)
progressUpdate(steps: 7000, goal: 8000)
/*:
 Your fitness tracking app is going to help runners stay on pace to reach their goals. Write a function called pacing that takes four `Double` parameters called `currentDistance`, `totalDistance`, `currentTime`, and `goalTime`. Your function should calculate whether or not the user is on pace to hit or beat `goalTime`. If yes, print "Keep it up!", otherwise print "You've got to push it just a bit harder!"
 */

func pacing(currentDistance: Double, totalDistance: Double, currentTime: Double, goalTime: Double){
    let pace = currentTime/(currentDistance/totalDistance)
    if pace < goalTime {
        print("Keep it up!")
    } else {
        print("You've got to push it just a bit harder!")
    }
}



/*:
 ## Exercise - Return Values and Tuples
 
 Write a function called `greeting` that takes a `String` argument called name, and returns a `String` that greets the name that was passed into the function. I.e. if you pass in "Dan" the return value might be "Hi, Dan! How are you?" Use the function and print the result.
 */
func greeting(name: String) -> String {
    return "Hi, \(name)! How are you?"
}

print(greeting(name: "Guillermo"))
/*:
 Write a function that takes two `Int` arguments, and returns an `Int`. The function should multiply the two arguments, add 2, then return the result. Use the function and print the result.
 */
func multiply(first: Int, second: Int) -> Int {
    return first * second + 2
}

print(multiply(first: 2, second: 4))


//{App Exercise - Separating Functions}
/*As an example, write a function that only does a portion of what your previous pacing function did. This function will be called calculatePace. It should take three Double arguments called currentDistance, totalDistance, and currentTime, and should return a Double that will represent the time at which the user will finish
the run based on the user's current distance and time. call the function and print the return value.*/

func calculatePace(currentDistance: Double, totalDistance: Double, currentTime: Double) -> Double {
    return currentTime * totalDistance / currentDistance
}
print(calculatePace(currentDistance: 12, totalDistance: 150, currentTime: 30))

/*Now write a function called pacing that takes four Double arguments called currentDistance, totalDistance, currentTime, and goalTime. The function should also return a String, which will be the message to show the user. 
The function should call calculatePace, passing in the appropriate values, and capture the return value. The function should then compare the returned value to goalTime and if the user is on pace return "Keep it up!", and return "You've got to push it just a bit harder!" otherwise.
Call the function and print the return value.*/

func pacing(currentDistance: Double, totalDistance: Double, currentTime: Double, goalTime: Double) -> String {
    let pace = calculatePace(currentDistance: currentDistance, totalDistance: totalDistance, currentTime: currentTime)
    if goalTime > pace {
        return "Keep it up!"
    } else {
        return "You've got to push it just a bit harder!"
    }
}
print(pacing(currentDistance: 12, totalDistance: 110, currentTime: 25, goalTime: 350))



