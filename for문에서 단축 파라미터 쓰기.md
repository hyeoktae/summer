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




