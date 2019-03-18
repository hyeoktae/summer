```swift
func combineString(str1: String?, str2: String?, str3: String?) -> String {
    
    var result: String = ""
    
    result += str1 == nil ? "" : str1!
    result += str2 == nil ? "" : str2!
    result += str3 == nil ? "" : str3!
    
    return result
}
```



* 이 함수를 클로져로 바꿔봄


```swift
let combineString2: (String?, String?, String?) -> String = {
    var result: String = ""
    
    let  arr = [$0, $1, $2]
    type(of: arr)
    for i in arr {
        result += i ?? ""
    }
    return result
}
```

* for문에서 $0 과 같은 단축 파라미터를 사용할땐 Array에 넣어서 사용한다. 
