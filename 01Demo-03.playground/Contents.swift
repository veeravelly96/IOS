import UIKit

var greeting = "Hello, playground"

print("Hi",10,12.25) ///comma seperated gives a space in output

//string interpolation
// \(variableName)
var name = "sai"
var grade = 98.82
//hello, sai!
print("Hello, \(name) your grade is \(grade)")

var proLan = "Swift";
print("I like the \(proLan) programming language")

var age = 23
print("you are \(age) years old and in another \(age) years, you will be \(age * 2)")

print("""
hello
world!
sadadasdwe
Sdaedaed
sdaede
""")

// \r carriage return
print ("Hello all,\rwelcome to swift programming")


print("Welcome to Swift Programming")
print("Fall 2021")
print("*************")
print("Welcome to Swift Programming" , terminator : "-" )
print("Fall 2021")


print("The list of numbers are ")
print(1,2,3,4,5,6, terminator: "---")
print("The new pattern is" , terminator: "@")
print(1,2,3,4,5,6, separator: "-")

///worksheet 2 on constants and variables

var Bikemodel = "Bullet"
Bikemodel = "Bmw"
print(Bikemodel)

let kris = 9.12
print(kris)

//explicit declaration of a variable

var size : Int = 23
size = size * 3
print(size)

var saikrishna = "student of NWMSU"
print(saikrishna)
print("saikrishna")

var room1 = "horizons"
var room2 = "village0"
print(room1,room2)
print(room1, "--" , room2)
print("you are in \(room1) and wants to move to \(room2)")

print(10,20,30)
print(12.5,15.5)

//worksheet3 on tuples

var httpError  = (errorCode : 404  , errorMessage :"Page Not Found")
print(httpError)
print(httpError.errorCode , terminator : ": ")
print(httpError.errorMessage )

var label = ("sai","Krishna")
var flabel = label.0
var llabel = label.1
print(flabel , terminator : ",")
print(llabel)

var origin = (x : 0 , y : 0)
var point = origin
print(point)

let city = (name : "Maryville" , population : 11000)
let ( cityName ,cityPopulation ) = (city.0 , city.1)
print(cityName)
print(cityPopulation)

let groceries = ("bread","onions")
print(groceries.0)
print(groceries.1)
print(type(of: groceries))

var fname = "Joe"
var lname = "Root"
(fname , lname) = (lname , fname)
