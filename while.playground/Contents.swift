//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*:
while循环
格式:while(循环保持条件){需要执行的语句}
OC:
int i = 0;
int sum = 0;
while (i <= 10) {
sum = i++;
}

while (i <= 10)
sum = i++;

NSLog(@"%d", sum);
如果只有一条指令while后面的大括号可以省略

Swift:
0.while后的圆括号可以省略
1.只能以bool作为条件语句
2.如果只有条指令while后面的大括号不可以省略
*/

var i:Int = 0
var sum:Int = 0
while (i <= 10) {
    sum = i++
}
print(sum)
print(i)

var i1:Int = 0
var sum1:Int = 0
while i1 <= 10 {
    sum1 = i1++
}
print("i=\(i1)  sum=\(sum1)")

/*:
do while循环
格式:do while(循环保持条件) {需要执行的语句}
OC:
int i = 0;
int sum = 0;
do {
sum = i++;
} while (i <= 10);
NSLog(@"%d", sum);

int i = 0;
int sum = 0;
do
sum = i++;
while (i <= 10);
NSLog(@"%d", sum);
如果只有一条指令if后面的大括号可以省略

Swift2.0之后变为 repeat while, do用于捕捉异常
0.while后的圆括号可以省略
1.只能以bool作为条件语句
2.如果只有条指令do后面的大括号不可以省略
*/

var i2:Int = 0
var sum2:Int = 0
repeat{
    sum2 = i2++
}while(i2 <= 10)

print("i=\(i2)  sum=\(sum2)")

var i3:Int = 0
var sum3:Int = 0
repeat{
    sum3 = i3++;
}while i3 <= 10
print(sum3)
