import UIKit

/* 목차
 1. 배열 선언 및 추가(append), 제거(remove), 삽입(insert)하기
 2. 배열의 모든 값을 확인하는 방법 & 배열의 길이를 확인하는 방법
 3. 빈 배열 만들기 (빈 배열은 스위프트가 자료형을 스스로 판단하지 못하기 때문에 자료형을 명시해 선언하는게 필수!!)
 4. 배열 정렬하기
 5. 배열은 합연산이 가능하다.
 6. 딕셔너리 & 예외처리
 7. 딕셔너리의 모든 값을 확인하는 방법 & 딕셔너리의 길이를 확인하는 방법
 8. 튜플 : 배열과 유사하나 다른 종류의 데이터를 함께 사용 가능하다!
 9. 튜플로 여러 변수 한 번에 선언하기 & 짝퉁 딕셔너리 튜플(네임드 튜플) 선언하기
 */





// 1. 배열 선언 및 추가(append), 제거(remove), 삽입(insert)하기

var intArray1_1:[Int] = [1,2,3,4,5]     // 'var ABC:Int =' 구조와 'var ABC:[Int] =' 구조의 차이점을 이해한다. 배열로 선언.
var intArray1_2 = [1,2,3,4,5]     // 생략하면 스위프트가 알아서 판단한다.

intArray1_1.append(-3)        // 배열 마지막에 '값'을 추가한다.    [1,2,3,4,5,-3]
intArray1_1.remove(at:3)      // 3번 인덱스를 지우겠다.        [1,2,3,5,-3]
intArray1_1.insert(7, at: 3)    // 3번 인덱스에 7을 끼워넣겠다.    [1,2,3,7,5,-3]

print("\n\n")
// 2. 배열의 모든 값을 확인하는 방법 & 배열의 길이를 확인하는 방법

var intArray2_1 = [1,2,3,7,5,-3]

// 배열의 모든 값을 확인하는 방법 1.
for i in intArray2_1 {          // 파이썬과 스타일이 같다.
    print(i, terminator:", ") // intArray1 범위에서 0번, 1번, 2번...을 프린트 하겠다.
}                  // 즉, intArray1[0], intArray1[1], intArray1[2]...
print("")

// 배열의 모든 값을 확인하는 방법 2. 위와 결과는 같다.
for i in 0..<intArray2_1.count {
    print(intArray2_1[i], terminator:", ")
}
print("")

//결과 :
//1, 2, 3, 7, 5, -3,
//1, 2, 3, 7, 5, -3,


// 배열의 길이를 확인하는 방법 1.
print(intArray2_1.count)    // 파이썬의 len(ABC) 함수와 같은 기능을 한다.

// 배열의 길이를 확인하는 방법 2.
var intArray2_1Length = intArray2_1.count
print(intArray2_1Length)

//결과 :
//6
//6

print("\n\n")
// 3. 빈 배열 만들기 (빈 배열은 스위프트가 자료형을 스스로 판단하지 못하기 때문에 자료형을 명시해 선언하는게 필수!!)

var intArray3_1:[Int] = []    // 빈 배열을 생성할 때는 스위프트가 자료형을 스스로 판단하지 못하기 때문에
var intArray3_2:[String] = []    // 반드시 자료형을 배열 이름 뒤에 붙여줘야한다!!

// 같은 초기값이 들어있는 배열 만들기
var intArray3_3 = Array(repeating: 5, count: 8)
var strArray3_4 = Array(repeating: "A", count: 5)
print("\(intArray3_3)\n\(strArray3_4)")

//결과 :
//[5, 5, 5, 5, 5, 5, 5, 5]
//["A", "A", "A", "A", "A"]


// repeating 말고 repeatElement로도 가능하다

var intArray3_5 = Array(repeatElement(7, count: 6))
var strArray3_6 = Array(repeatElement("B", count: 4))
print("\(intArray3_5)\n\(strArray3_6)")

//결과 :
//[7, 7, 7, 7, 7, 7]
//["B", "B", "B", "B"]


// 등차수열 초기값이 들어있는 배열 만들기
var intArray3_7:[Int] = Array(1...100)
print(intArray3_7)

//결과 :
//[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100]


var intArray3_8:[Int] = Array(stride(from: 1, through: 100, by: 3))
print(intArray3_8)

//결과 :
//[1, 4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46, 49, 52, 55, 58, 61, 64, 67, 70, 73, 76, 79, 82, 85, 88, 91, 94, 97, 100]



// 기존 배열에 추가하기
var intArray3_9:[Int] = []
intArray3_9.append(contentsOf: 1...100)
print(intArray3_9)

//결과 :
//[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100]


var intArray3_10:[Int] = []
intArray3_10.append(contentsOf: stride(from: 1, through: 100, by: 3))
print(intArray3_10)

//결과 :
//[1, 4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46, 49, 52, 55, 58, 61, 64, 67, 70, 73, 76, 79, 82, 85, 88, 91, 94, 97, 100]

print("\n\n")
// 4. 배열 정렬하기
var intArray4_1 = [100,2,6,7,4,10,1,6,24,30,42,68]

print(intArray4_1.sort())     // ()을 출력. null값이 된다.

intArray4_1.sort()            // intArray4_1 배열을 오름차순 정렬해서 저장한다.
print(intArray4_1)            // [1, 2, 4, 6, 6, 7, 10, 24, 30, 42, 68, 100]
intArray4_1.sort(by:>)        // intArray4_1 배열을 내림차순 정렬해서 저장한다.
print(intArray4_1)            // [100, 68, 42, 30, 24, 10, 7, 6, 6, 4, 2, 1]
intArray4_1.sort(by:<)        // intArray4_1 배열을 오름차순 정렬해서 저장한다.
print(intArray4_1)            // [1, 2, 4, 6, 6, 7, 10, 24, 30, 42, 68, 100]


var strArray4_1 = ["A","C","D","K","T","B","E"]

print(strArray4_1.sort())     // ()을 출력. null값이 된다.

strArray4_1.sort()            // strArray4_1 배열을 오름차순 정렬해서 저장한다.
print(strArray4_1)            // ["A", "B", "C", "D", "E", "K", "T"]
strArray4_1.sort(by:>)        // strArray4_1 배열을 내림차순 정렬해서 저장한다.
print(strArray4_1)            // ["T", "K", "E", "D", "C", "B", "A"]
strArray4_1.sort(by:<)        // strArray4_1 배열을 오름차순 정렬해서 저장한다.
print(strArray4_1)            // ["A", "B", "C", "D", "E", "K", "T"]


//---------------------------------- 위/아래 비교 ----------------------------------


var intArray4_2 = [100,2,6,7,4,10,1,6,24,30,42,68]

print(intArray4_2.sorted())   // 오름차순 정렬해서 반환한 값을 출력. [1, 2, 4, 6, 6, 7, 10, 24, 30, 42, 68, 100]

intArray4_2.sorted()          // intArray4_2 배열을 오름차순 정렬한다. (저장 X  메모리에 정렬된 값만 반환)
print(intArray4_2)            // [100, 2, 6, 7, 4, 10, 1, 6, 24, 30, 42, 68]
intArray4_2.sorted(by:>)      // intArray4_2 배열을 내림차순 정렬한다. (저장 X  메모리에 정렬된 값만 반환)
print(intArray4_2)            // [100, 2, 6, 7, 4, 10, 1, 6, 24, 30, 42, 68]
intArray4_2.sorted(by:<)      // intArray4_2 배열을 오름차순 정렬한다. (저장 X  메모리에 정렬된 값만 반환)
print(intArray4_2)            // [100, 2, 6, 7, 4, 10, 1, 6, 24, 30, 42, 68]


var strArray4_2 = ["A","C","D","K","T","B","E"]

print(strArray4_2.sorted())   // 오름차순 정렬해서 반환한 값을 출력. ["A", "B", "C", "D", "E", "K", "T"]

strArray4_2.sorted()          // strArray4_2 배열을 오름차순 정렬한다. (저장 X  메모리에 정렬된 값만 반환)
print(strArray4_2)            // ["A", "C", "D", "K", "T", "B", "E"]
strArray4_2.sorted(by:>)      // strArray4_2 배열을 내림차순 정렬한다. (저장 X  메모리에 정렬된 값만 반환)
print(strArray4_2)            // ["A", "C", "D", "K", "T", "B", "E"]
strArray4_2.sorted(by:<)      // strArray4_2 배열을 오름차순 정렬한다. (저장 X  메모리에 정렬된 값만 반환)
print(strArray4_2)            // ["A", "C", "D", "K", "T", "B", "E"]



// 즉, ABC.sort() 는 var ABC = ABC.sorted() 와 같다. 스위프트의 .sorted()는 파이썬의 .sort()와 같다. 배열 자체를 바꾸지 않는다.
// 따라서, ABC.sort() 는 'var ABC = ABC.sort()', 'print(ABC.sort())' 와 같은 식으로 쓸 수 없다.

print("\n\n")
// 5. 배열은 합연산이 가능하다.
var intArray5_1 = [1,2,3,4,5,6,7,8,9,10]
var intArray5_2 = [1000,1001,1002,1003,1004]
intArray5_1 += intArray5_2
print(intArray5_1)

//결과 :
//[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1000, 1001, 1002, 1003, 1004]



var strArray5_1 = ["A","B","C","D","E"]
var strArray5_2 = ["Apple","Banana","Cherry"]
strArray5_1 += strArray5_2
print(strArray5_1)

//결과 :
//["A", "B", "C", "D", "E", "Apple", "Banana", "Cherry"]

print("\n\n")
// 6. 딕셔너리 & 예외처리
var dataDict6_1:[String:Int] = ["생년월일":920417, "우편번호":48123]

print(dataDict6_1["주민번호"])             // 결과 : nil

print(dataDict6_1["생년월일"])             // 결과 : Optional(920417)
print(dataDict6_1["생년월일"]!)            // 결과 : 920417  // 1. ! 강제실행
print(dataDict6_1["생년월일"] ?? "None")   // 결과 : 920417  // 2. ?? 예외처리
if let myValue = dataDict6_1["생년월일"] { // 결과 : 920417  // 3. if else 예외처리
    print(myValue)
} else {
    print("None")
}

//Optional 조건부를 없애는 방법에는 3가지가 있다. (위 코드 참고)
//
//    1) ! 강제실행
//    2) ?? 예외처리
//    3) if else 예외처리
//
//1번의 경우 강제실행 했는데 코드에 문제가 있으면 앱이 죽는다. 2번과 3번의 예외처리의 경우 안전장치를 했기 때문에 조건부 실행을 하지 않으면서도 앱이 죽는것을 막을 수 있다.

print("\n\n")
// 7. 딕셔너리의 모든 값을 확인하는 방법 & 딕셔너리의 길이를 확인하는 방법
// 딕셔너리의 모든 값을 확인하는 방법. (위에 배열의 모든 값을 확인하는 방법 1.과 같다. 단, 배열의 방법 2.는 딕셔너리는 인덱스가 없기 때문에 사용할 수 없다.)
var dataDict7_1:[String:String] = ["생년월일":"920417", "우편번호":"48123"]

for (key,value) in dataDict7_1 {
    print("dataDict7_1[\(key)]=\(value)", terminator:" ")

}

//결과 :
//
//dataDict7_1[우편번호]=48123 dataDict7_1[생년월일]=920417

print("")
// 딕셔너리의 길이를 확인하는 방법 1.
print(dataDict7_1.count)

// 딕셔너리의 길이를 확인하는 방법 2.
var dataDictLength7_1 = dataDict7_1.count
print(dataDictLength7_1)

//결과 :
//2
//2

print("\n\n")
// 8. 튜플 : 배열과 유사하나 다른 종류의 데이터를 함께 사용 가능하다!
var testTuple8_1 = (134,"서울",809,"경기",394,"인천")

print(testTuple8_1.0)    // 스위프트의 배열이나 파이썬은 모두 변수명[i]인데
print(testTuple8_1.1)    // 스위프트의 튜플은 변수명.i 다.
print(testTuple8_1.3)

//결과 :
//134
//서울
//경기

// print(testTuple.count)  // 튜플은 딕셔너리와 다르게 인덱스 개념은 있지만 문자열과 숫자가 섞여 있을 경우 .count로 길이 확인이 불가능하다.
                  //Value of tuple type '(Int, String, Int, String, Int, String)' has no member 'count'

print("\n\n")
// 9. 튜플로 여러 변수 한 번에 선언하기 & 짝퉁 딕셔너리 튜플(네임드 튜플) 선언하기
// 1. 튜플을 이용해 여러개의 변수 한 번에 선언하기.
var testTuple9_1 = ("Seoul","010-2233-3333",12345) // 1) 튜플에 n개의 값을 생성한다.
var (addr, tel, coin) = testTuple9_1                  // 2) n개의 변수를 선언하고 그걸 튜플에 연결한다.
//var (addr, tel, coin) = ("Seoul","010-2233-3333",12345) 이것과 같다. <아래의 짝퉁 딕셔너리 튜플과 비교>

print(testTuple9_1)                // 결과 : ("Seoul", "010-2233-3333", 12345)
print(addr, tel, coin)          // 결과 : Seoul 010-2233-3333 12345


print("--------------------------------------------------")
// 2. 짝퉁 딕셔너리 튜플 만들기.
var namedTestTuple9_1 = (addr:"Bucheon",phone:"010-4455-3215",coin:23498)
// 딕셔너리 같지만 딕셔너리는 아니다. 인덱스가 있다!!
// 하지만 딕셔너리의 Key : Value 쌍처럼 사용이 가능하다!!
// 짝퉁 딕셔너리라 위에 1. 처럼 단순 변수로 이용은 불가능하다. (print(addr)을 하면 오류가 난다.
// 딕셔너리처럼 print(namedTestTuple9_1.addr) 혹은 print(namedTestTuple9_1.0)으로 사용이 가능하다.) <위의 변수 한 번에 선언하기랑 비교>
// 굳이 따지자면 각각의 변수명에 각각의 값이고 이런 n개를 하나의 튜플로 묶은거라 보면 된다.

print(namedTestTuple9_1)           // 결과 : (addr: "Bucheon", phone: "010-4455-3215", coin: 23498)
print(namedTestTuple9_1.addr)    // 결과 : Bucheon
print(namedTestTuple9_1.0)        // 결과 : Bucheon  위에랑 같지만 숫자로 쓰는건 지양하자. 가독성이 떨어져 유지보수에 불리하다.
