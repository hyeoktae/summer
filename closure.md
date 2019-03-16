# summer
my puppy summer


# closure 정리


* function - named code block
* closure - unnamed code block


미지원: Fortran, Pascal, Java 8버전 미만, C++11 버전 미만 등
지원: Swift, Objective-c, Pytion, Java 8 이상, C++11 이상, Javascript 등 언어에 따라 Lambda, Block 등으로 불림


 Functions are actually special cases of closures.
 
 - Global functions: closures that have a name and do not capture any values.
 - Nested functions: closures that have a name and can capture values from their enclosing function.
 - Closure: unnamed closures written in a lightweight syntax that can capture values from their surrounding context.
 
 
 ```swift
 print("\n---------- [ Basic ] ----------\n")

func aFunction() {
  print("This is a function.")
}
aFunction()

({
  print("This is a closure.")
})()

func anotherFunction() {
  print("another function")
  ({
    print("another closure")
  })()
}
anotherFunction()
 ```
 
 
 그냥 코드 작성하는 것과의 차이는
 함수 이름이 없다, 괄호의 위치 차이?
 
 
 
 ```swift
 let closure = {
  print("This is a closure.")
}
closure()
 ```
 * 클로저도 변수에 담아서 사용 가능하다. 
 
 
 ```swift
 var function = aFunction
function()

function = closure
function()
 ```
 * 함수도 저장 가능하다.
 
 
 ## 클로저의 기본 형태
 ```swift
 { (parameters) -> return type in
   statements
 }
 ```
 
```swift
func funcWithParamAndReturnType(_ param: String) -> String {
  return param + "!"
}
print(funcWithParamAndReturnType("function"))
```
* 기본 함수

```swift
let closureWithParamAndReturnType1: (String) -> String = { param in
  return param + "!"
}
print(closureWithParamAndReturnType1("closure"))
```
* 기본 클로져, 변수의 타입을 미리 선언해줌. 

```swift
let closureWithParamAndReturnType2 = { (param: String) -> String in
  return param + "!"
}
print(closureWithParamAndReturnType2("closure"))
```
* 타입 선언을 파라미터에 해줌. 

```swift
let closureWithParamAndReturnType3 = { param in
  return param + "!"
}
print(closureWithParamAndReturnType3("closure"))
```
* 타입추론을 사용함
---


* 문자열을 입력받으면 그 문자열의 개수를 반환하는 클로져 구현

```swift
let countString = { (param: String) in return param.count}
countString("ddddfee")
```

* 숫자 하나를 입력받은 뒤 1을 더한 값을 반환하는 클로져 구현
```swift
let plusOne = { pm in return pm+1}
plusOne(4)
```























