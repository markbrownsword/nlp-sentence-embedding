import Foundation

/// Dot Product
private func dot(_ a: [Double], _ b: [Double]) -> Double {
    assert(a.count == b.count, "Vectors must have the same dimension")
    let result = zip(a, b)
        .map { $0 * $1 }
        .reduce(0, +)

    return result
}

/// Magnitude
private func mag(_ vector: [Double]) -> Double {
    // Magnitude of the vector is the square root of the dot product of the vector with itself.
    return sqrt(dot(vector, vector))
}

/// Returns the similarity between two vectors
///
/// - Parameters:
///     - a: The first vector
///     - b: The second vector
public func cosineSimilarity(a: [Double], b: [Double]) -> Double {
    return dot(a, b) / (mag(a) * mag(b))
}

/// Returns the difference between two vectors. Cosine distance is defined as `1 - cosineSimilarity(a, b)`
///
/// - Parameters:
///     - a: The first vector
///     - b: The second vector
public func cosineDifference(a: [Double], b: [Double]) -> Double {
    return 1 - cosineSimilarity(a: a, b: b)
}
