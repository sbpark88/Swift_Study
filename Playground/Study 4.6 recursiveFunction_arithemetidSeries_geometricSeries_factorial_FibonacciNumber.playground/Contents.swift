import UIKit

/* 목차
 Quiz 1. 재귀함수로 1 ~ n의 합을 구하는 등차급수 만들기.
 Quiz 2. 재귀함수로 A to B의 합을 구하는 등차급수 만들기.
 Quiz 3. 재귀함수로 등비급수 만들기.
 Quiz 4. 재귀함수로 팩토리얼 만들기.
 Quiz 5. 재귀함수로 피보나치 수 만들기.
 Quiz 6. 반복문(while)으로 피보나치 수 만들기. (재귀함수 X. 하지만 효율이 매우 좋다. 빠름!!)
 7. 엑셀 시트 계산하듯 while문을 이용해 정말 빠르고 효율적이게 피보나치 수 출력하기.
 */



print("1번")
// Quiz 1. 재귀함수로 1 ~ n의 합을 구하는 등차급수 만들기.
// Analysis 1. 100을 입력 받으면 1~100까지 합은 1+2+3+...+99+100
// Analysis 2. 반복문 방식 카운팅 하는 변수와 그 합을 담을 sum이라는 변수 2개가 필요하다. 따라서 사용 불가능하다. 또한 입력 받은 파라미터는 let(상수)로 함수 내부에서 변경이 불가능하다.
// Analysis 3. 재귀함수 내에 다른 변수를 선언하면 그 변수는 재귀함수가 돌 때마다 초기화되어 사용 불가능하다.
// Analysis 4. 리턴으로 내보낼 값은 하나뿐이니 재귀함수의 리턴값에 계산할 수식을 넣어 재귀함수를 이어 붙인다.
// Analysis 5. 1+2+3+...+99+100 은 100+99+...+3+2+1 이니까 입력 받은 수를 1씩 빼면서 재귀함수를 이어 붙인다.


// 내용 : 1부터 입력받은 수까지 합을 구하는 등비급수 함수
// 파라미터 : endNum:Int
// 목적 : 재귀함수를 이용해 등비급수를 구한다.

// Step 1. 입력 파라미터를 정수로 받아 넘긴다.
// Step 2. endNum + (endNum-1) + ... + 3 + 2 + 1 순서로 할꺼니 마지막 1이 나오면 종료하는 조건을 설정한다.
// Step 3. 그 외의 경우에는 리턴에 자기 자신을 -1씩 소환하며 더하는 수식을 적는다.
func arithmeticSeries(endNum:Int) -> (Int) { // Step 1. 입력 파라미터로 정수를 받아 넘긴다.
    if endNum == 1 {    // Step 2. 마지막 입력 파라미터 1이 나오면 1을 반환하며 종료하는 조건을 설정한다.
        return 1
    } else {      // Step 3. 이곳에 수식을 적는다. (자기 자신) + (자기 자신 -1)무한 호출
        return endNum + arithmeticSeries(endNum: endNum-1)
    }
}


print(arithmeticSeries(endNum: 1))        // 결과 : 1
print(arithmeticSeries(endNum: 2))        // 결과 : 3
print(arithmeticSeries(endNum: 10))        // 결과 : 55
print(arithmeticSeries(endNum: 100))    // 결과 : 5050
print(arithmeticSeries(endNum: 1000))    // 결과 : 500500






print("/n2번")
// Quiz 2. 재귀함수로 A to B의 합을 구하는 등차급수 만들기.
// 내용 : A와 B를 입력받아 A부터 B까지 합을 구하는 등비급수 함수
// 파라미터 : startNum:Int, endNum:Int
// 목적 : 재귀함수를 이용해 A to B 구간의 등비급수를 구한다.

// Step 1. 입력 파라미터를 정수로 받아 넘긴다.
// Step 2. B 순서로 할꺼니 마지막 1이 나오면 종료하는 조건을 설정한다.
// Step 3. 그 외의 경우에는 리턴에 자기 자신을 -1씩 소환하며 더하는 수식을 적는다.
func arithmeticSeriesAtoB(startNum:Int, endNum:Int) -> (Int) { // Step 1. 입력 파라미터로 정수를 받아 넘긴다.
    if endNum == startNum {    // Step 2. 마지막 입력 파라미터 A to B 조건이 만족하면 startNum을 반환하며 종료하는 조건을 설정한다.
        return startNum
    } else {      // Step 3. 이곳에 수식을 적는다. (자기 자신 endNum) + (자기 자신 endNum-1)무한 호출
        return endNum + arithmeticSeriesAtoB(startNum: startNum, endNum: endNum-1)
    }
}

print(arithmeticSeriesAtoB(startNum: 100, endNum: 200))

//결과 :
//15150






print("/n3번")
// Quiz 3. 재귀함수로 등비급수 만들기.
// 내용 : 초항과 공비, 반복횟수를 입력 받아 등비급수를 계산한다.
// 파라미터 : firstTerm(초항):Double, ratio(공비):Double, endNum:Double
// 목적 : 재귀함수를 이용해 등비급수를 구한다.

// Step 1. 입력 파라미터를 실수로 받아 넘긴다.
// Step 2. ar^(n-1) + ar^(n-2) + ... + ar + a 순서로 할꺼니 마지막에 초항이 나오면 종료하는 조건을 설정한다.
// Step 3. 그 외의 경우에는 리턴에 자기 자신을 -1항씩 소환하며 더하는 수식을 적어 넣는다.
//         ar^(n-1) + ar^(n-2)만 넣으면 재귀함수가 알아서 아래를 호출할거다. 즉, ar^(n-1) + func(-1항) 을 넣는다.
//         등비수열의 합 공식과 달리 직접 n차항을 더하는 구조라 공비 r = 1인 경우를 생각할 필요가 없다.
func geometricSeries(firstTerm:Double, ratio:Double, endNum:Double) -> (Double) { // Step 1. 입력 파라미터로 정수를 받아 넘긴다.
    if endNum == 1 {    // Step 2. 마지막 입력 파라미터 1이 나오면 1을 반환하며 종료하는 조건을 설정한다.
        return firstTerm
    } else {      // Step 3. 이곳에 수식을 적는다. ar^n + ar^(n-1) 무한 호출
        return firstTerm * pow(ratio, endNum - 1) + geometricSeries(firstTerm: firstTerm, ratio: ratio, endNum: endNum - 1)
    }
}


print(geometricSeries(firstTerm: 2, ratio: 3, endNum: 5))

//결과 :
//242.0






print("/n4번")
// Quiz 4. 재귀함수로 팩토리얼 만들기.
// 내용 : 입력 받은 숫자를 이용해 팩토리얼을 계산한다.
// 파라미터 : endNum:Double
// 목적 : 재귀함수를 이용해 팩토리얼을 구한다.

// Step 1. 입력 파라미터를 실수로 받아 넘긴다.
// Step 2. 100*99*...*3*2*1 순서로 할꺼니 마지막 1이 나오면 종료하는 조건을 설정한다.
// Step 3. 그 외의 경우에는 리턴에 자기 자신을 -1항씩 소환하며 곱하는 수식을 적는다.
func factorial(endNum:Double) -> (Double) { // Step 1. 입력 파라미터로 Double을 받아 넘긴다.
    if endNum == 0 {    // Step 2. 마지막 입력 파라미터 1이 나오면 1을 반환하며 종료하는 조건을 설정한다.
        return 1
    } else {      // Step 3. 이곳에 수식을 적는다. (자기 자신) * (자기 자신 -1)무한 호출
        return endNum * factorial(endNum: endNum-1)
    }
}

print("1! =", factorial(endNum: 1))
print("2! =", factorial(endNum: 2))
print("10! =", factorial(endNum: 10))
print("20! =", factorial(endNum: 20))
print("34! =", factorial(endNum: 34))        // 21! 부터는 숫자가 너무 커서 Int에는 담기지 않아 Float에 담는다.
print("100! =", factorial(endNum: 100))      // 35! 부터는 숫자가 너무 커서 Float에는 담기지 않아 Double에 담는다.
print("1000! =", factorial(endNum: 1000))    // 숫자가 너무 커서 Double로도 담을 수 없다.


//결과 :
//1! = 1.0
//2! = 2.0
//10! = 3628800.0
//20! = 2.43290200817664e+18
//34! = 2.9523279903960412e+38
//100! = 9.33262154439441e+157
//1000! = inf






print("\n5번")
// Quiz 5. 재귀함수로 피보나치 수 만들기.
// 내용 : 입력 받은 숫자를 이용해 피보나치 수를 계산한다.
// 파라미터 : Nth:Int
// 목적 : 재귀함수를 이용해 피보나치 수를 구한다.
//
// Step 1. 입력 파라미터로 정수로 받아 넘긴다.
// Step 2. Fn = F(n-1)+F(n-2), F(n-1) = F(n-2)+F(n-3), ... , F3 = F2+F1, F2 = F1+1, F1 = 1 순서로 할꺼니 마지막 1이 나오면 종료하는 조건을 설정한다.
// Step 3. 그 외의 경우에는 리턴에 (-1항) + (func(-2항))을 소환하는 수식을 적는다.
func FibonacciNumber(Nth:Int) -> (Int) { // Step 1. 입력 파라미터로 정수를 받아 넘긴다.
    if Nth == 1 || Nth == 2 {    // Step 2. F1=F2=1 이니까 초기 조건과 종료 조건을 동시에 설정한다.
        return 1
    } else {      // Step 3. 이곳에 계산 식을 적는다. Fn = F(n-1) + F(n-2)
        return FibonacciNumber(Nth: Nth - 1) + FibonacciNumber(Nth: Nth - 2)
    }
}

for i in 1...30 {
    print(FibonacciNumber(Nth: i))
}


//결과 : 1~20까지는 실행 즉시 되는데 21부터 1초 22부터 2초 이런식으로 늘어나다 28부터는 급속도로 시간이 길어진다. 피보나치 수 1~30을 모두 구하는데 함수를 총 2,178,278회 반복.
//
//1
//1
//2
//3
//5
//8
//13
//21
//34
//55
//89
//144
//233
//377
//610
//987
//1597
//2584
//4181
//6765
//10946
//17711
//28657
//46368
//75025
//121393
//196418
//317811
//514229
//832040





print("\n6번")
//Quiz 6. 반복문(while)으로 피보나치 수 만들기. (재귀함수 X. 하지만 효율이 매우 좋다. 빠름!!)
// 내용 : 입력 받은 숫자를 이용해 피보나치 수를 계산한다.
// 파라미터 Nth:Int
// 목적 : 재귀함수를 사용하지 않고 엑셀 시트 행렬로 계산하듯 while함수를 통해 피보나치 수를 구한다.
//
// Step 1. 입력 파라미터를 정수로 받아 넘긴다.
// Step 2. F1=1, F2=1 초기값을 변수로 선언하고 이를 엑셀 시트 A,B열로 활용한다. FN을 선언해 이를 누적해 더할 엑셀 시트 C열로 활용한다.
// Step 3. 엑셀 시트에서 아래로 끌어 누적하는 행동을 while문을 이용해 구현한다.
func FibonacciNumberUsingWhile(Nth:Int) -> (Int){
    var F1 = 1  // F1 초항 및 Fn = F(n-1) + F(n-2) 에서 작은 값 F(n-2)를 담당.
    var F2 = 1  // F1 초항 및 Fn = F(n-1) + F(n-2) 에서 큰 값 F(n-1)를 담당.
    var FN = 1  // Fn을 담은 변수 선언
    var i = 1   // while문을 돌리기 위해 시작 변수 선언

    while i <= Nth {
        if i == 1 || i == 2 {
            i += 1
            continue    // F1, F2 까지는 i를 1씩 더해 반복문 조건만 채우고 나옴. (if문을 while 앞으로 빼고 var i = 3으로 시작해도 됨.
        } else {
            FN = F2 + F1 // F3부터 F(n-1) + F(n-2)를 수행.
            F1 = F2        // 다음번 계산할 작은 값 F(n-2)에 현재의 큰 값 F(n-1)항 값을 넣는다.
            F2 = FN    // 다음번 계산할 큰 값 F(n-1)에 현재의 작은 값 F(n-2)항 값을 넣는다.
            i += 1        // N번째 항까지 수행하기 위한 조건.
        }
    }
    return FN
}

for i in 1...30 {
    print(FibonacciNumberUsingWhile(Nth: i))
}


//결과 : 재귀함수랑은 비교도 안 될 정도로 빠르다...
//
//1
//1
//2
//3
//5
//8
//13
//21
//34
//55
//89
//144
//233
//377
//610
//987
//1597
//2584
//4181
//6765
//10946
//17711
//28657
//46368
//75025
//121393
//196418
//317811
//514229
//832040






print("\n7번")
// 7. 엑셀 시트 계산하듯 while문을 이용해 정말 빠르고 효율적이게 피보나치 수 출력하기.
func FibonacciNumberUsingWhile(Nth:Double) {
    var F1:Double = 1  // F1 초항 및 Fn = F(n-1) + F(n-2) 에서 작은 값 F(n-2)를 담당.
    var F2:Double = 1  // F1 초항 및 Fn = F(n-1) + F(n-2) 에서 큰 값 F(n-1)를 담당.
    var FN:Double = 1  // Fn을 담은 변수 선언
    var i:Double = 1   // while문을 돌리기 위해 시작 변수 선언

    while i <= Nth {
        if i == 1 || i == 2 { // F1, F2 까지는 i를 1씩 더해 반복문 조건만 채우고 나옴. (if문을 while 앞으로 빼고 var i = 3으로 시작해도 됨.
            print(F1)       // F1, F2일 때는 바로 F1의 값 1을 출력.
        } else {
            FN = F2 + F1    // F3부터 F(n-1) + F(n-2)를 수행.
            print(FN)   // 다음번 계산할 작은 값 F(n-2)에 현재의 큰 값 F(n-1)항 값을 넣는다.
            F1 = F2 // 다음번 계산할 큰 값 F(n-1)에 현재의 작은 값 F(n-2)항 값을 넣는다.
            F2 = FN // N번째 항까지 수행하기 위한 조건.
        }
    i += 1
    }
}

FibonacciNumberUsingWhile(Nth: Double(1000))

//결과 : 1초만에 피보나치 수 1~1000번째 까지 모두 프린트 수행...
