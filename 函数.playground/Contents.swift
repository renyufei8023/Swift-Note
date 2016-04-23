//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/*:
函数: 完成某个特定任务的代码块, 给代码起一个合适的名称称之为函数名称. 以后需要执行代码块只需要利用函数名称调用即可, 好比每个人都有一个名字, 叫名字就能找到对应的人
格式:
func 函数名称(参数名:参数类型, 参数名:参数类型...) -> 函数返回值 {函数实现部分}

OC:
- (void)say
{
NSLog(@"hello");
}
- (void)sayWithName:(NSString *)name
{
NSLog(@"hello %@", name);
}
- (void)sayWithName:(NSString *)name age:(NSInteger)age
{
NSLog(@"hello %@ , I'm %tu years old", name, age);
}
- (NSString *)info
{
return @"name = lnj, age = 30";
}
- (NSString *)infoWithName:(NSString *)name age:(NSInteger)age
{
return [NSString stringWithFormat:@"name = %@, age = %tu", name, age];
}

Person *p = [[Person alloc] init];
[p say];
[p sayWithName:@"lnj"];
[p sayWithName:@"lnj" age:30];
NSLog(@"%@", [p info]);
NSLog(@"%@", [p infoWithName:@"lnj" age:30]);
*/

//无参无返回值
func say() -> Void {
    print("Hello World")
}

func say1() { // 如果没有返回值可以不写
    print("Hello World")
}
say1()

//有参无返回值
func sayWithName(name:String) {
    print("hello \(name)")
}

sayWithName("ryf")

func sayWithName1(name:String,age:Int) {
    print("hello \(name),i am\(age)year old")
}

sayWithName1("ryf", age: 20)

//无参有返回值
func info() -> String {
    return "hello ryf"
}

print(info())

//有参有返回值
func info(name:String,age:Int) ->String {
    return "name = \(name), age = \(age)"
}

info("ryf", age: 20)

func info(name name:String,age:Int) ->String {
    return "name = \(name), age = \(age)"
}

info(name: "ryf", age: 20)

//嵌套函数
func showArray(array:[Int])
{
    for number in array {
        print("\(number)")
    }
}

showArray([1,2,3])


var number = 998
func bubbleSort(inout array:[Int])
{
    print(number)
    func swap(inout a:Int,inout b:Int)
    {
        print(number)
        let temp = a
        a = b
        b = temp
    }
    
    let count = array.count
    for var i = 1; i < count; i++
    {
        for var j = 0; j < (count - i); j++
            {
                if array[j] > array[j + 1]
                {
                    swap(&array[j], b: &array[j + 1])
                    //                let temp = array[j]
                    //                array[j] = array[j + 1]
                    //                array[j + 1] = temp
                    
                }
        }

    }
}

var arr:Array<Int> = [31, 13, 52, 84, 5]
bubbleSort(&arr)
showArray(arr)

//输入输出参数,如果没有inout那个a是无法赋值为b的
func swap123(inout a:Int, inout b:Int)
{
    let temp = a
    a = b
    b = temp
    print("a = \(a) b = \(b)")
}
var a = 10
var b = 100
print(swap123(&a , b: &b))

/*:
内部函数: 默认情况下的参数都是内部参数
外部函数: 如果有多个参数的情况, 调用者并不知道每个参数的含义, 只能通过查看头文件的形式理解参数的含义
那么能不能和OC一样让调用者直观的知道参数的含义呢? 使用外部参数
外部参数只能外部用, 函数内部不能使用, 函数内部只能使用内部参数
*/

func divisionOpertaion1(a: Double, b:Double) -> Double{
    return a / b
}

func divisionOpertaion2(dividend: Double, divisor:Double) -> Double{
    return dividend / divisor
}

func divisionOpertaion3(dividend a: Double, divisor b:Double) -> Double{
    //    return dividend / divisor
    return a / b
}
print(divisionOpertaion3(dividend: 10, divisor: 3.5))

func divisionOpertaion4(a: Double, divisor b:Double) -> Double{
    return a / b
}
print(divisionOpertaion4(10, divisor: 3.5))

/*:
// Swift2.0过时
// 在参数前面加上#相当于该参数即是内部参数, 也是外部参数
// 等价于dividend dividend: Double, divisor divisor:Double
func divisionOpertaion5(#dividend: Double, #divisor:Double) -> Double{
return dividend / divisor
}
print(divisionOpertaion5(dividend: 10, divisor: 3.5))
*/

// 取而代之第二个参数开始默认既是外部又是内部
func divisionOpertaion5(dividend: Double, divisor:Double) -> Double{
    return dividend / divisor
}
print(divisionOpertaion5(10, divisor: 3.5))

/*:
默认参数:
可以在定义函数的时候给某个参数赋值, 当外部调用没有传递该参数时会自动使用默认值
*/

func joinString(s1:String,toSTring s2:String,jooner s3:String) ->String {
    return s1 + s2 + s3
}

func joinString1(s1:String,toSTring s2:String,jooner s3:String = "❤️") ->String {
    return s1 + s2 + s3
}

print(joinString1("hi", toSTring: "beauty"))

//如果指定了默认参数, 但是确没有声明外部参数时, 系统会自动把内部参数名称既作为内部参数也作为外部参数名称, 并且在调用时如果需要修改默认参数的值必须写上外部参数名称
func joinString3(s1:String ,toString s2:String, jioner:String = "❤️") ->String
{
    return s1 + jioner + s2;
}
print(joinString3("hi", toString:"beauty", jioner:"🐔"))

//在其它语言中默认参数只能出现在参数列表的最后面, 但是在Swift中可以出现在任何位置
func joinString4(s1:String , jioner:String = "❤️",toString s2:String) ->String
{
    return s1 + jioner + s2;
}
print(joinString4("hi", jioner:"🐔", toString:"beauty"))

/*:
常量参数和遍历参数:
默认情况下Swift中所有函数的参数都是常量参数, 如果想在函数中修改参数, 必须在参数前加上var
OC: (OC中函数的参数是便利参数)
- (void)swap:(int)a b:(int)b
{
NSLog(@"交换前:%d %d", a, b);
int temp = a;
a = b;
b = temp;
NSLog(@"交换后:%d %d", a, b);
}
*/

func swap(var a:Int, var b:Int)
{
    print("交换前 a = \(a) b = \(b)")
    let temp = a;
    a = b;
    b = temp;
    print("交换后 a = \(a) b = \(b)")
}

swap(10, b: 20)

/*:
inout参数, 如果想在函数中修改外界传入的参数, 可以将参数的var换成inout, 这回会传递参数本身而不是参数的值
OC:
- (void)swap:(int *)a b:(int *)b
{
int temp = *a;
*a = *b;
*b = temp;

}

Swift:
// 在以前的语法中是不能传递指针的, 必须把参数的var换成inout才可以

func swap2(var a:Int, var b:Int)
{
let temp = a;
a = b;
b = temp;
}
var x = 10;
var y = 20;
print("交换前 a = \(x) b = \(y)")
swap2(&x, b: &y) // 会报错
print("交换后 a = \(x) b = \(y)")
*/

func swap3(inout a:Int, inout b:Int)
{
    let temp = a;
    a = b;
    b = temp;
}
var x1 = 10;
var y1 = 20;
print("交换前 a = \(x1) b = \(y1)")
swap3(&x1, b: &y1)
print("交换后 a = \(x1) b = \(y1)")

/*:
变参函数
如果没有变参函数 , 并且函数的参数个数又不确定那么只能写多个方法或者用将函数参数改为集合
变参只能放到参数列表的最后一位, 变参必须指定数据类型, 变参只能是同种类型的数据
*/

func add(num1:Int,num2:Int,num3:Int) ->Int {
    let sum = num1 + num2 + num3
    return sum
}
print(add(10, num2: 10, num3: 10))

func add(nums:[Int]) -> Int {
    var sum = 0
    for num in nums {
        sum += num
    }
    return sum
}

print(add([1,2,3,4]))

func add(nums:Int...) ->Int {
    var sum = 0
    for num in nums {
        sum += num
    }
    return sum
}

print(add(1,2,3,4,5,6))

func add(other:Int,nums:Int...) ->Int {
    var sum = 0
    for num in nums {
        sum += num
    }
    return sum
}
print(add(99, nums: 1,2,3))

/*:
函数类型:
类似于C语言的指向函数的指针
类似于OC语言的block
函数类型是由函数的参数类型和返回值类型组成的
*/

// 这两个函数的类型是 (Int, Int) -> Int

func sum(a:Int,b:Int) ->Int {
    return a + b
}

func sub(a:Int,b:Int) ->Int {
    return a - b
}

var funcP:(Int,Int) ->Int = sum
funcP = sub
print(funcP(10,20))


func calFunc(a:Int,b:Int,option:(Int,Int) ->Int) ->Int {
    return option(a,b)
}

print(calFunc(105, b: 10, option: sum))

print(calFunc(12, b: 30, option: sub))

//函数类型可有作为函数返回值
func max(a:Int,b:Int) ->Int {
    return a > b ? a : b
}
func min(a:Int,b:Int) ->Int {
    return a < b ? a : b
}

func chooseFunc(getMax:Bool) -> (Int,Int) -> Int{
    return getMax ? max : min
}

var funcp2:(Int,Int) -> Int = chooseFunc(false)
print(funcp2(10,20))

