//: Playground - noun: a place where people can play

import UIKit

/*:
 字典定义: 键值对
 OC:
 NSDictionary *dict = [NSDictionary dictionaryWithObject:@"ryf" forKey:@"name"];
 NSLog(@"%@", dict);
 
 NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"name", @"ryf", @"age", @30, nil];
 NSLog(@"%@", dict);
 
 NSDictionary *dict = @{@"name":@"ryf", @"age":@30};
 NSLog(@"%@", dict);
 */

var dict = ["name":"ryf","age":20]
print(dict)

var dict1:Dictionary = ["name":"ryf","age":20]
print(dict1)

var dict2:Dictionary<String,Any> = ["name":"ryf","age":20]
print(dict2)

var dict3 :[String:Any] = ["name":"ryf","age":20]
print(dict3)

var dict4:[String:Any] = Dictionary(dictionaryLiteral: ("name","ryf"),("age", 30))
print(dict4)

//不可变数组
var dict5 = [:]

//可变数组
let dict6 = [:]

/*:
 字典操作
 OC:
 1.获取
 NSDictionary *dict = @{@"name":@"ryf", @"age":@30};
 NSLog(@"%@", dict[@"name"]);
 
 2.修改
 NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"name", @"ryf", @"age", @30, nil];
 dict[@"name"] = @"iversion";
 NSLog(@"%@", dict[@"name"]);
 
 NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"name", @"ryf", @"age", @30, nil];
 [dict setObject:@"iversion" forKey:@"name"];
 NSLog(@"%@", dict[@"name"]);
 */

//获取
var dict7 = ["name":"ryf","age":"20"]
print(dict7["name"]!)

//修改
var dict8 = ["name":"ryf","age":20]
dict8["name"] = "nidaye"
print(dict8["name"])

var  dict9 = ["name":"ryf","age":20]
dict9.updateValue("你大爷", forKey: "name")
print(dict9)

//更新
// updateValue返回一个可选类型, 如果字典中不存在需要更新的key, 那么返回nil, 如果存在返回原始值
var dict10 = ["name":"ryf","age":20]
if let orignal = dict10.updateValue("你大爷", forKey: "name") {
    print(dict10["name"])
    print(orignal)
}

var dict11 = ["name":"ryf","age":20]
if let orignal = dict10.updateValue("你大爷", forKey: "hehe") {
    print(dict11["hehe"])
    print(orignal)
}
print(dict11)

/*:
 4.添加
 OC:
 NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"name", @"ryf", @"age", @30, nil];
 dict[@"height"] = @175;
 NSLog(@"%@", dict);
 
 
 NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"name", @"ryf", @"age", @30, nil];
 [dict setObject:@175 forKey:@"height"];
 NSLog(@"%@", dict);
 */
var  dict12 = ["name":"ryf","age":20]
dict12["height"] = 180
print(dict12)

/*:
 5.删除
 OC:
 NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"ryf", @"name", @30, @"age", nil];
 [dict removeObjectForKey:@"name"];
 NSLog(@"%@", dict);
 
 NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"ryf", @"name", @30, @"age", nil];
 [dict removeAllObjects];
 NSLog(@"%@", dict);
 */
var dict13 = ["name":"ryf","age":20]
dict13.removeValueForKey("name")
print(dict13)

// removeValueForKey返回一个可选类型, 如果字典中不存在需要删除的key, 那么返回nil并且不会执行任何操作, 如果存在则删除key对应的值, 并且返回被删除的值
var dict14 = ["name":"ryf","age":20]
if let orignal = dict14.removeValueForKey("name") {
    print(dict14)
    print(orignal)
}
print(dict14)

var dict15 = ["name":"ryf","age":20]
dict15.removeAll(keepCapacity: true)

/*:
 遍历字典
 OC:
 NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"ryf", @"name", @30, @"age", nil];
 [dict enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
 NSLog(@"key = %@ value = %@", key, obj);
 }];
 
 NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"ryf", @"name", @30, @"age", nil];
 NSArray *keys = [dict allKeys];
 for (NSString *key in keys) {
 NSLog(@"%@", key);
 }
 
 NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"ryf", @"name", @30, @"age", nil];
 NSArray *values = [dict allValues];
 for (NSString *value in values) {
 NSLog(@"%@", value);
 }
 */

var dict16 = ["name":"ryf","age":20]
for (key,value) in dict16 {
    print("key = \(key) value = \(value)")
}

var dict17 = ["name":"ryf","age":20]
for key in dict17.keys {
    print(key)
}

var dict18 = ["name":"ryf","age":20]
for value in dict18.values {
    print(value)
}







        
