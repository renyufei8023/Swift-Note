//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*:
结构体:
结构体是用于封装不同或相同类型的数据的, Swift中的结构体是一类类型, 可以定义属性和方法(甚至构造方法和析构方法等)
格式:
struct 结构体名称 {
结构体属性和方法
}
*/

struct Rect {
    var width:Double = 0.0
    var height:Double = 0.0
}

// 如果结构体的属性有默认值, 可以直接使用()构造一个结构体
// 如果结构体的属性没有默认值, 必须使用逐一构造器实例化结构体

var r = Rect()
print("width = \(r.width) height = \(r.height)")

r.width = 100
r.height = 99


print("width = \(r.width) height = \(r.height)")

/*:
结构体构造器
Swift中的结构体和类跟其它面向对象语言一样都有构造函数, 而OC是没有的
Swift要求实例化一个结构体或类的时候,所有的成员变量都必须有初始值, 构造函数的意义就是用于初始化所有成员变量的, 而不是分配内存, 分配内存是系统帮我们做的.
如果结构体中的所有属性都有默认值, 可以调用()构造一个结构体实例
如果结构体中的属性没有默认值, 可以自定义构造器, 并在构造器中给所有的属性赋值
其实结构体有一个默认的逐一构造器, 用于在初始化时给所有属性赋值
*/

struct Rect2 {
    var width:Double
    var height:Double = 0.0
}

//逐一构造器
var r1 = Rect2(width: 10.0, height: 10.0)
//var r2 = Rect2()//这样写会报错
var r2 = Rect.init()
r2.width

/*:
结构体中定义成员方法
在C和OC中结构体只有属性, 而Swift中结构体中还可以定义方法
*/

struct Rect3 {
    var width:Double
    var height:Double = 0.0
    // 给结构体定义一个方法, 该方法属于该结构体
    // 结构体中的成员方法必须使用某个实例调用
    // 成员方法可以访问成员属性
    func getWidth() ->Double {
        return width
    }
    
    func getHeight() ->Double {
        return height
    }
}

var r3 = Rect3(width: 15.0, height: 20.0)
print(r3.getWidth())


/*:
结构体是值类型
*/

struct Rect4 {
    var width:Double
    var height:Double = 0.0
    func show() {
        print("width = \(width) height = \(height)")
    }
}

var r4 = Rect4(width: 20.0, height: 12.0)
var r5 = r4

/*:
赋值有两种情况
1.指向同一块存储空间
2.两个不同实例, 但内容相同
*/

r4.show()
r5.show()
r4.width = 90.0

// 结构体是值类型, 结构体之间的赋值其实是将r1中的值完全拷贝一份到r2中, 所以他们是两个不同的实例
r4.show()
r5.show()
