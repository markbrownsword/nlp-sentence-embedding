import Foundation
import NaturalLanguage

public func vector(for string: String) -> [Double] {
    guard let sentenceEmbedding = NLEmbedding.sentenceEmbedding(for: .english),
          let vector = sentenceEmbedding.vector(for: string) else {
        fatalError()
    }
    
    return vector
}
