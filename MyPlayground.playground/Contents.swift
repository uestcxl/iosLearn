//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

var intVar : Int = 10

var floatVar : Float = 1.1

var strVar : String = "Hello, I am Lei Xu"

// variable in string
let name = "xl"

let age = 20


let sayHello = "Hello, I am \(name),and I am \(age) years old"

//Collections

//array:

var names : [String] = ["xl" , "xulei" , "xulei09"]

names.append("Lei Xu")

names.insert("xl", atIndex: 3)

//directory

var home : [String: Int] = ["home1":1 , "home2":2]

home["home3"] = 3

home["home2"] = nil

home

for(var count = 0; count < 5; count++){
    home["name\(count)"] = count
}

for oneName in name {
    println("Hello I am \(oneName)")
}

for index in 1...5{
    println("Current number is \(index)")
}


class House {
    var size = 100
    var owner = "xl"
    
    func getInDoor(name : String = "")->Bool{
        if(name == owner){
            return true
        }
        else{
            return false
        }
    }
}

var myHouse : House = House()

if(myHouse.getInDoor(name: "xl")){
    println("Welcome Home")
}
else{
    println("Get out!")
}

class GogeHouse : House{
    override init() {
        super.init()
        owner = "doge"
    }
    
    override func getInDoor(#name: String) -> Bool {
        if(name == "doge"){
            return true
        }
        else{
            return false
        }
    }
}

var dogeHouse : GogeHouse = GogeHouse()












