// Mezhevikin Alexey: https://github.com/mezhevikin/Measure
import Foundation

public class Measure {
    static private var starts = [String: Double]()
    
    static public func start(_ key: String) {
        starts[key] = CFAbsoluteTimeGetCurrent()
    }

    @discardableResult
    static public func finish(_ key: String) -> Double {
        guard let start = starts[key] else {
            print("🛑 Key [\(key)] not found")
            return 0
        }
        let time = CFAbsoluteTimeGetCurrent() - start
        print(String(format: "⏲ Measure [\(key)]: %.5f sec.", time))
        starts.removeValue(forKey: key)
        return time
    }
}
