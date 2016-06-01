//  main.swift
//  Func02
//  Created by XCODE on 2015/10/15.
//  Copyright © 2015年 Nick. All rights reserved.

import Foundation

// func 回傳多個值
func number(num:Int) -> (Ten:Int,Single:Int)
{//回傳值的命名 與 區域變數的命名不一樣
    let ten:Int = num / 10
    let single:Int = num % 10
    return (ten,single)
}
print("\(number(85))\n")

var value = number(43)
print("十位數:\(value.Ten),個位數:\(value.Single)\n")


//外部名稱,讓user知道所要傳入參數的意思
func valueResult(original a:Int, toAdd b:Int, toSub c:Int) -> Int
{
        return a + b - c
}

var result_ = valueResult(original: 10, toAdd: 4, toSub: 1)
print("\(result_)\n")


func filterVip(id:String,vip:Bool) -> String
{
    let newId:String = (vip ? "VIP " : "") + id
    return newId
}

print(filterVip("Alex\n", vip: true))


//default value
func test01(var name_:String, member:Bool = false) -> String
{
    name_ = (member ? "Member" : "") + name_
    return name_
}

print(test01("Baby\n"))

//inout 一個記憶體供傳遞使用,無需再複製
func changeValue(inout A:Int,inout B:Int)   // -> void 可寫可不寫
{
    var C = A
    C = A
    A = B
    B = C
}
var a_ = 10
var b_ = 20
changeValue(&a_, B: &b_)  // & 取址符號
print("a = \(a_),b = \(b_)\n")

func swapValue(var a:Int,var b:Int) {
    
    let temp:Int = a
    a = b
    b = temp
}


var aa = 1000
var bb = 6000
swapValue(aa, b: bb)
print("aa:\(aa),bb:\(bb)")















