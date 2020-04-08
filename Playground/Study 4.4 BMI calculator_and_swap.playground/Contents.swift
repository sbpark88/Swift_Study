import UIKit

/* 목차
 1. BMI 계산기
 2. Swap
 */



print("1번")
// Q. 인풋 파라미터와 아웃풋 파라미터를 이용해 BMI 계산기를 만들어라.
//
// BMI는 몸무게를 (키 / 100)을 제곱한 것으로 나누어 계산한다.
// Step 1. A = 키 / 100
// Step 2. 몸무게 / A^2

// 방법 1.
func calBMI(height:Double, weight:Double) -> Double {
    let calHeight:Double = height / 100     // Step 1. A = 키 / 100
    return weight / (calHeight * calHeight) // Step 2. BMI = 몸무게 / A^2
}

print("당신의 BMI지수는 : \(calBMI(height: 170, weight:50))")


// 방법 2.
func calBMI2(height:Double, weight:Double) -> Double {
    return weight / ((height / 100) * (height / 100))
}

print("당신의 BMI지수는 : \(calBMI2(height: 170, weight:50))")


// 결과 :
// 당신의 BMI지수는 : 17.301038062283737







print("\n2번")
// 함수로 만들어본 스위프트 Swap. 구세대 언어와 달리 임시 변수를 선언할 필요가 없다.
//func swap(a:Int,b:Int) -> (Int,Int) {
//    return (b,a)
//}

// 하지만 스위프트에서는 Swap을 기본 제공한다.
var a = 1000
var b = 500
print(a,b)        // 결과 : 1000, 500

// 1. 스위프트의 변수 Swap 방법 1
(a,b) = (b,a)
print(a,b)        // 결과 : 500, 1000

// 2. 스위프트의 Swap 방법 2
swap(&a,&b)
print(a,b)        // 결과 : 1000, 500

// 3. 배열의 값도 변수 Swap이 가능하다.
var arr = [0,1,2,3,4]
arr.swapAt(1,2)
print(arr)        // 결과 : [0, 2, 1, 3, 4]
