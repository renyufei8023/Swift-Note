//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*:
存储属性
其实Swift中的存储属性就是以前学习OC中的普通属性, 在结构体或者类中定义的属性, 默认就是存储属性
*/

struct Person {
    var name:String
    var age:Int
}

var p:Person = Person(name: "ryf", age: 20)
p.name = "nidaye"
p.age = 80

print(p.name)

/*:
常量存储属性
常量存储属性只能在定义时或构造时修改, 构造好一个对象之后不能对常量存储属性进行修改
*/

struct Person2 {
    var name:String
    var age:Int
    let card:String
}

var p2 = Person2(name: "ryf", age: 20, card: "123456")
p2.name = "dayede"
p2.age = 26
// 构造好对象之后不能修改常量存储属性
//p2.card = "shabi"

/*:
结构体和类常量与存储属性的关系
结构体和枚举是值类型
类是引用类型
*/

struct Person3 {
    var name:String
    var age:Int
}

let p3 = Person3(name: "ryf", age: 20)
// 因为结构体是值类型, 所以不能修改结构体常量中的属性
// 不能修改结构体/枚举常量对象中的值, 因为他指向的对象是一个常量
//p3.name = "hm"
// 不能修改结构体常量对象的值
//p3 = Person(name: "hm", age: 50)

class Person4 {
    var name:String = "ryf"
    var age: Int = 20
}

let p4 = Person4()
p4.name = "hehe"
//p4 = Person4()
