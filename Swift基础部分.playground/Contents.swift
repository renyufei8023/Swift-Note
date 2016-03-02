//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

///
typealias heihei = Int

let hehe:heihei = 10

let cuowu = false
let dui = true

if cuowu {
    print("错误了")
}else{
    print("duile")
}

let http404Error = (404,"Not Found")
print(http404Error)
print(http404Error.0)
print(http404Error.1)


let wohenshuai = (19920123,"renyufei","大帅比")
print(wohenshuai.2)

let (shengri,name,miaoshu) = wohenshuai
print(shengri)
print(name)
print(miaoshu)

let renyufei = (name:"renyufei",birthday:"19920123")
print(renyufei.name)
print(renyufei.birthday)

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
print(convertedNumber)

let helloWorld = "Hello World"
let hello = Int(helloWorld)
print(hello)


var serverResponseCode: Int? = 404
serverResponseCode = nil

if serverResponseCode != nil{
    print("不是空的")
    print("convertedNumber是什么\(convertedNumber!)")
}else{
    print("是空的")
    print("convertedNumber是什么\(convertedNumber)")
}

if let linshi = Int(possibleNumber){
    print("\(linshi)的是\(possibleNumber)")
}

if var yozhi = Int(helloWorld){
    print("\(yozhi)是啥玩意\(helloWorld)")
}else{
    print("是啥玩意\(helloWorld)")
}

let possibleString: String? = "kexuan"
print("\(possibleString)shi")

let assumedString: String! = "heihei"
print("\(assumedString)shi")

if assumedString != nil{
    print("youzhi")
}

if assumedString == nil{
    print("kongde")
}

if let definitestring = assumedString{
    print(definitestring)
}

func canThrowAnError() throws{
    
}
do{
   try canThrowAnError()
}catch{
    
}


let age = -3

assert(age < 0, "断言触发了")
//assert(age > 0)

var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty{
    print("字符串是空的")
}

for character in "Dog!🐶".characters{
    print(character)
}

let zifuchuan:Character = "!"
print(zifuchuan)

let zifuchuanzuhe: [Character] = ["A","B","C","D","E","F"]
print(zifuchuanzuhe)

let zifuchuan1 = String(zifuchuanzuhe)
print(zifuchuan1)

var instruction = "look over"
instruction += zifuchuan1

print(instruction)

let gantanhao: Character = "!"
instruction.append(gantanhao)
print("\(instruction.characters.count)")


let sparklingHeart = "\u{1F496}"
print("\(zifuchuan1.startIndex.predecessor)")
print("\(zifuchuan1.endIndex)")

var greeting = "Gutten tag!"
greeting[greeting.startIndex]
greeting[greeting.startIndex .successor()]
greeting[greeting.startIndex.successor().predecessor()]
greeting[greeting.endIndex.predecessor()]
let index = greeting.startIndex.advancedBy(3)
greeting[index]

for index in greeting.characters.indices{
    print("\(greeting[index])")
}

greeting.insert("h", atIndex: greeting.endIndex)
greeting.insertContentsOf("haha".characters, at: greeting.endIndex)
greeting.removeAtIndex(greeting.endIndex.predecessor())
//greeting.removeRange(greeting.endIndex.advancedBy(1)..<greeting.endIndex)

var someInts = [Int]()
someInts.append(3)
print(someInts)
var threeDoubles = [Double](count: 3, repeatedValue: 0.0)
var anotherThreeDoubles = Array(count: 3, repeatedValue: 2.5)
var sixDoubles = threeDoubles + anotherThreeDoubles
print(sixDoubles)

var shoppingList: [String] = ["ren","yu","fei"]
var shuzi: [Int] = [1,4,2,3]
shoppingList = ["Eggs","Milk"]
shoppingList.count
if shoppingList.isEmpty{
    print("空的")
}else{
    print(shoppingList)
}

shoppingList += ["hahha"]
shoppingList[2]
shoppingList[0] = "heihei"
//shoppingList[1...6] = ["bushi","ba","hahah"]
print(shoppingList)
print(shoppingList.count)

shoppingList.insert("wocao", atIndex: 2)

print(shoppingList)
shoppingList.removeAtIndex(1)
shoppingList.removeLast()

for item in shoppingList {
    print(item)
}

for (index,value) in shoppingList.enumerate(){
    print("Item \(String(index + 1)): \(value)")
}

var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")

letters.insert("a")

var favoriteGenres: Set<String> = ["Rock","Classical","Hip hop"]
favoriteGenres.count
if favoriteGenres.isEmpty {
    print("kongde")
}else{
    print(favoriteGenres)
}

favoriteGenres.remove("Rock")
if favoriteGenres.contains("Hip hop") {
    print("you")
}else{
    
}

for genre in favoriteGenres {
    print("\(genre)")
}

for genre in favoriteGenres.sort() {
    print(genre)
}

var namesOfIntegers = [Int: String]()
namesOfIntegers[16] = "sixteen"
namesOfIntegers[10] = "ten"
print(namesOfIntegers)

var airports: [String: String] = ["YYZ":"Toronto","Dub":"Dub","DubLin":"DubLin"]
print(airports)

airports.count
airports.updateValue("hehe", forKey: "YYZ")

print(airports)

if let airportName = airports["Dub"] {
    print(airportName)
}else{
    print("没i有")
}

airports.removeValueForKey("Dub")
print(airports)

for (airportCode,airportName) in airports{
    print("\(airportCode)  \(airportName)")
}

var dict: Dictionary = ["":""]
dict["heihei"] = "nimei"
dict["hehe"] = "nima"
print(dict)

let someCharacter: Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
"n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter) is a consonant")
default:
    print("\(someCharacter) is not a vowel or a consonant")
}

let anotherCharacter: Character = "a"
switch anotherCharacter {
case "a":break
case "A":
    print("The letter A")
default:
    print("Not the letter A")
}
// this will report a compile-time error

let approximateCount = 62
let countedThings = "moons orbiting Saturn"

var naturalCount: String
switch approximateCount{
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "several123"
default:
    naturalCount = "many"
}

let somePoint = (1,1)
switch somePoint{
    case (0, 0):
    print("(0, 0) is at the origin")
    case (_, 0):
    print("(\(somePoint.0), 0) is on the x-axis")
    case (0, _):
    print("(0, \(somePoint.1)) is on the y-axis")
    case (-2...2, -2...2):
    print("(\(somePoint.0), \(somePoint.1)) is inside the box")
    default:
    print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
}

func sayHello(personName: String) -> String{
    let greeting = "Hello" + personName + "!"
    return greeting;
}

print(sayHello("renyufei"))

func sayHelloWorld() ->String {
    return "Hello world"
}

print(sayHelloWorld())

//func sayHello(personName:String,alreadyGreeted:Bool) ->String {
//    if alreadyGreeted {
//        return sayHelloWorld()
//    }
//}


