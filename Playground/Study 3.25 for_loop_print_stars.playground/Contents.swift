import UIKit

/* Q1. 4x4 행렬
 
 ****
 ****
 ****
 ****
 
 */
for _ in 0...3 {
    for _ in 0...3 {
        print("*", terminator:"")
    }
    print("")
}

print("")
// 단일 for문으로 할 수도 있다! 4x4니까 금방 돌지 100x100 행렬이면 이중 for문보다 속도가 빠를 것이라 함!

for i in 1...20 {
    if i%5 == 0{
        print()
    }else{
        print("*", terminator:"")
    }
}

print("")
/* Q2. 삼각형
 
 *
 **
 ***
 ****
 
 */
for i in 0...3 {
    for _ in 0...i {
        print("*", terminator:"")
    }
    print("")
}

print("")
/* Q3. 역삼각형

 ****
 ***
 **
 *

*/
for i in 0...3 {
    for _ in stride(from: 3, through: i, by: -1) {
        print("*", terminator:"")
        
    }
    print("")
}

print("")
/* Q4. 삼각형 트리

    *
   ***
  *****
 *******

 */
for i in 0...3 {
    for _ in stride(from: 2, through: i, by: -1) {
        print(" ", terminator:"")
    }
    for _ in stride(from: 0, through: 2*i, by: 1) {
        print("*", terminator:"")
    }
    print("")
}

print("")
/* Q5. 역삼각형 트리
 
 *******
  *****
   ***
    *
 
 */
for i in 0...3 {
    for _ in stride(from: 1, through: i, by: 1) {
        print(" ", terminator:"")
    }
    for _ in stride(from: 6, through: 2*i, by: -1) {
        print("*", terminator:"")
    }
    print("")
}

print("")
// Q6. 다이아몬드
/*
 
    *
   ***
  *****
 *******
  *****
   ***
    *
 
 */
var m = 0

for _ in 0...1 {
if m == 0 {
    for p in 0...3 {
        for _ in stride(from: 2, through: p, by: -1) {
            print(" ", terminator:"")
        }
        for _ in stride(from: 0, through: 2*p, by: 1) {
            print("*", terminator:"")
        }
        print("")
        m = m + 1
    }
} else if m != 0 {
    for q in 0...2 {
        for _ in stride(from: 0, through: q, by: 1) {
            print(" ", terminator:"")
        }
        for _ in stride(from: 4, through: 2*q, by: -1) {
            print("*", terminator:"")
        }
        print("")
    }
    print("")
}
}
