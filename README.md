# Measure

⏲ A tiny package to measure code execution time.

```swift
Measure.start("create-user")
let user = User()
Measure.finish("create-user")
```
### Console

```swift
// ⏲ Measure [create-user]: 0.00521 sec.
```

### Async

```swift
Measure.start("request")
let url = URL(string: "https://httpbin.org/get")!
URLSession.shared.dataTask(with: url) { _, _, _ in
    if Measure.finish("request") > 10 {
        print("Too long request")
    }
}.resume()
```
        
### Swift Package Manager

```
https://github.com/mezhevikin/Measure.git
```
