import UIKit

// Q) 2개의 숫자 파라미터와 1개의 연산자 파라미터를 입력 받아 계산하여 값을 반환하는 함수를 만드시오.

func mycalc (num1: Int, op: String, num2: Int) -> (String, Double) {
    if op == "+" {
        return ("Success", Double(num1 + num2))
    } else if op == "-" {
        return ("Success", Double(num1 - num2))
    } else if op == "*" {
        return ("Success", Double(num1 * num2))
    } else if op == "/" {
        if num2 == 0 {
            return ("Fail", 0)
        } else {
            return ("Success", Double(num1) / Double(num2))
        }
    } else if op == "%" {
        if num2 == 0 {
            return ("Fail", 0)
        } else {
            return ("Success", Double(num1 % num2))
        }
    } else {
        return ("Fail", 0)
    }
    
}

print(mycalc(num1: 2398, op: "+", num2: 382))
print(mycalc(num1: 2398, op: "-", num2: 382))
print(mycalc(num1: 2398, op: "*", num2: 382))
print(mycalc(num1: 2398, op: "/", num2: 382))
print(mycalc(num1: 2398, op: "/", num2: 0))
print(mycalc(num1: 2398, op: "%", num2: 382))
print(mycalc(num1: 2398, op: "%", num2: 0))


