import UIKit

/* 목차
1. 배열의 계산을 쉽게 해주는 .reduce(초기값,연산자)라는 것이 있다.
2. 배열의 길이 자체를 파라미터로 넘겨서 배열의 합을 계산하는 함수.
3. 배열 자체를 파라미터로 넘겨서 배열의 합을 계산하는 함수.
*/





print("1번")
// 1. 배열의 계산을 쉽게 해주는 .reduce(초기값,연산자)라는 것이 있다.
var array1 = [5,6,7,8]
var array2 = [55,3]

print(array1.reduce(0, +))           // (0) + (5 + 6 + 7 + 8) 연산만 한다. 배열 자체를 없애지는 않음.
print(array1.reduce(0, -))
print(array1.reduce(1, *))           // (1) * (5 * 6 * 7 * 8) = 1680
print(array1.reduce(16800, /))       // (16800) / (5 /6 /7 /8) = 10
print(array2.reduce(777, %))         // (777 = 55 * 14 + 7) -> 나머지 7 / (7 = 3 * 2 + 1) -> 나머지 1
print(array1, array2)

// 튜플은 안 됨.(튜플은 .count도 안 됨) .을 찍어봐서 나오는게 없는걸 보면 아마 튜플은 이런식의 함수 이용되는게 없는지도...


// 내용 : A와 B를 입력받아 A부터 B까지 합을 구하는 등비급수 함수
// 파라미터 : startNum:Int, endNum:Int
// 목적 : 재귀함수를 이용해 A to B 구간의 등비급수를 구한다.

// Step 1. 입력 파라미터를 정수로 받아 넘긴다.
// Step 2. B 순서로 할꺼니 마지막 1이 나오면 종료하는 조건을 설정한다.
// Step 3. 그 외의 경우에는 리턴에 자기 자신을 -1씩 소환하며 더하는 수식을 적는다.
//func arithmeticSeriesAtoB(startNum:Int, endNum:Int) -> (Int) { // Step 1. 입력 파라미터로 정수를 받아 넘긴다.
//    if endNum == startNum {    // Step 2. 마지막 입력 파라미터 A to B 조건이 만족하면 startNum을 반환하며 종료하는 조건을 설정한다.
//        return startNum
//    } else {      // Step 3. 이곳에 수식을 적는다. (자기 자신 endNum) + (자기 자신 endNum-1)무한 호출
//        return endNum + arithmeticSeriesAtoB(startNum: startNum, endNum: endNum-1)
//    }
//}
//
//print(arithmeticSeriesAtoB(startNum: 200, endNum: 300))


// Q) 그림과 같이 주어진 배열의 총합을 구하는 재귀함수를 작성하고, 그 결과를 출력하시오.
var intArray = Array(1...100)
intArray.append(contentsOf: stride(from: 101, to: 202, by: 2))
// print(intArray)          // (디버깅용) 추가된 배열의 값을 확인.
// print(intArray.count)    // (디버깅용) 배열의 길이를 확인.





print("\n2번")
// 2. 배열의 길이 자체를 파라미터로 넘겨서 배열의 합을 계산하는 함수. (급한대로 풀어본 intArray.count를 파라미터로 넘기기.)

// 내용 : 배열 모든 값의 합을 재귀함수로 구하는 함수.
// 파라미터 : arrayLength: Int
// 목적 : 규칙성 없는 값이 들어오더라도 배열에 담은 다음 for, while 루프 없이 재귀함수만으로 그 합을 구한다.

// Step 1. 입력 파라미터를 배열의 길이를 이용해 정수로 받아 넘긴다.
// Step 2. 재귀함수 탈출 조건을 먼저 설정한다. 배열의 길이가 n 이니까 -1씩 해서 n==0이 되면 탈출한다.
// Step 3. 인덱스는 제로베이스니 배열의 길이보다 1씩 작다. 배열의 길이라 n이라면, 배열명[n-1]+배열명[n-2]+...+배열명[0]을 재귀함수 식을 리턴으로 구현한다.
//func arraySum (arrayLength: Int) -> (Int) {
//    if arrayLength == 0 {     // Step 2. 재귀함수 탈출 조건을 먼저 설정한다.
//        return 0
//    } else {
//        var number = intArray[arrayLength - 1]
//        return number + arraySum(arrayLength: arrayLength - 1)    // Step 3. 재귀함수 리턴에 합을 구하는 공식을 구현한다.
//    }
//
//}
//print(arraySum(arrayLength: intArray.count))    // 답 : 12751 // Step 1. 입력 파라미터를 배열의 길이를 이용해 정수로 받아 넘긴다.





print("\n3번")
// 3. 배열 자체를 파라미터로 넘겨서 배열의 합을 계산하는 함수.

// 내용 : 배열 모든 값의 합을 배열 자체를 파라미터로 넘겨받아 재귀함수로 구하는 함수.
// 파라미터 : arrayName: [Int] -> 배열 자체를 넘겨받음.
// 목적 : 숫자로 이뤄진 배열 자체를 파라미터로 넘겨 받아 for, while 루프 없이 재귀함수만으로 그 합을 구한다.

// Step 1.1. 배열 자체를 입력 파라미터로 넘겨 받는다.
// Step 1.2. 계산을 구현할 함수에 함수의 파라미터로 넘기기 위해 입력 받은 배열의 길이를 구한다.
// Step 1.3. 재귀함수를 실행시켜 리턴 받아온 숫자를 다시 리턴하는 아웃풋 파라미터를 설정한다.

// Step 2.1. Step 1.1.에서 입력 받은 배열과 Step 1.2.에서 구한 배열의 길이를 Step 1.3.을 통해 파라미터로 넘겨 받아 합을 구하는 재귀함수를 구현한다.
// Step 2.2. 재귀함수 탈출 조건을 먼저 설정한다. 배열의 길이가 n 이니까 -1씩 해서 총 n번 실행한 후 n==0이 되면 탈출한다.
// Step 2.3. 인덱스는 제로베이스니 배열의 길이보다 1씩 작다. 배열의 길이 -1번째 인덱스의 값을 추출한다.
// Step 2.4. 리턴에 Step 2.3에서 추출한 배열의 마지막 인덱스 값부터 시작해 -1씩 줄어들며 0번 인덱스까지 그 합을 구하는 공식을 구현한다.

func arraySum (arrayName: [Int]) -> (Int) { // Step 1.1 배열 자체를 입력 파라미터로 넘겨 받는다.
    let arrayLength = arrayName.count       // Step 1.2. 계산 함수에 파라미터로 넣을 배열의 길이를 구함.
    
    func calculation (arrayName: [Int], arrayLength: Int) -> (Int) {    // Step 2.1. Step 1.3.이 구현되는 재귀함수를 구현.
        if arrayLength == 0 {       // Step 2.2 재귀함수 탈출 조건을 먼저 설정한다.
            return 0
        } else {
            let number = arrayName[arrayLength - 1]     // Step 2.3. 배열의 값을 추출한다.
            return number + calculation(arrayName: arrayName, arrayLength: arrayLength - 1)     // Step 2.4. 재귀함수 리턴에 합을 구하는 공식을 구현한다.
        }
        
    }
    return calculation(arrayName: arrayName, arrayLength: arrayLength)  // Step 1.3. 재귀함수를 실행시켜 리턴 받아온 숫자를 다시 리턴하는 아웃풋 파라미터를 설정한다.
        
}
print(arraySum(arrayName: intArray))    // 답 : 12751
