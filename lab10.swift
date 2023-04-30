///Lab 10
// App Exercise Workout Tracking

/*Create a RunningWorkout struct. It should have variables properties 
for distance, time, and elevation. All three properties should have 
default values of 0.0.*/
struct RunningWorkout {
    var distance: Double = 0.0
    var time: Double = 0.0
    var elevation: Double = 0.0
}


/*Create a variable instance of RunningWorkout called firstRun without 
supplying any arguments. Print out all three properties of firstRun. 
This is a good example of when using default values is appropriate, 
seeing as all running workouts start with a distance, time, and 
elevation change of 0.*/ 
var firstRun = RunningWorkout()
print(firstRun.distance)
print(firstRun.time)
print(firstRun.elevation)


/*Now imagine that throughout the course of the run, you go a distance 
of 2,396 meters in 15.3 minutes, and gain 94 meters of elevation. 
Update the values of firstRun's properties accordingly. Print a 
statement about your run using the values of each property.*/ 
firstRun.distance = 2396
firstRun.time = 15.3
firstRun.elevation = 94
print("In my first run i reached \(firstRun.time). I run \(firstRun.distance) and i get \(firstRun.elevation)")