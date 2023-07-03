# Measure

⏱️ A tiny package to measure code execution time.

```swift
let measure = Measure(key: "create-user")
let user = User()
measure.finish()
```
### Console

```swift
// ⏱️ Measure [create-user]: 0.00521 sec.
```

### Measure async request

```swift
let measure = Measure(key: "request")
let url = URL(string: "https://httpbin.org/get")!
URLSession.shared.dataTask(with: url) { _, _, _ in
    let time = measure.finish()
    Analytics.send(event: "request", ["time" => time])
}.resume()
```
        
### Swift Package Manager

```
https://github.com/mezhevikin/Measure.git
```
