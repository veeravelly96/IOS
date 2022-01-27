import UIKit

var greeting = "Hello, playground"


var fact = "Swift is a type safe language"
var dev = "Development of Swift began in 2010"
var author = "Swift was created by Chris Lattner"

fact.count

fact += ",it has a better memory management"

dev.append(" by Apple")

author.lowercased()

author.uppercased()

author[author.startIndex]


print(author[author.index(before:author.endIndex)])

dev[dev.startIndex]

dev[dev.index(before:dev.endIndex)]

author[author.index(after: author.startIndex)]

dev[dev.index(dev.startIndex,offsetBy: 5)]

dev[dev.index(dev.endIndex,offsetBy: -5)]

fact[fact.index(fact.endIndex,offsetBy: -4)]


/////worksheet2

var shoppingList = "The shopping list contains: "
var foodItems = "Cheese, Butter, Chocolate Spread"
var clothes = "Socks, T-shirts"

if clothes.hasPrefix("Socks") {
     print("The first item in clothes is socks")
}else{
    print("socks is not the first item in clothes")
}

print(foodItems.split(separator: ","))

if clothes.contains(",") {
print("Clothes contains more than one item")
}else{
    print("Clothes contain only one item")
}

foodItems[foodItems.startIndex..<foodItems.index(foodItems.endIndex,offsetBy: -7)]

shoppingList +=
foodItems[foodItems.index(foodItems.startIndex, offsetBy:
8)..<foodItems.endIndex]

clothes.remove(at: clothes.firstIndex(of: "T")!)

clothes.remove(at: clothes.firstIndex(of: "-")!)


