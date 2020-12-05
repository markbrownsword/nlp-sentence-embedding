import Foundation

public func round(_ input: Double, to places: Int = 1) -> Double {
    let divisor = pow(10.0, Double(places))
    return (input * divisor).rounded() / divisor
}
