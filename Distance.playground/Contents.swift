import Foundation

let first = vector(for: "Where are coffee beans grown?")
let second = vector(for: "Which country is the leading grower of coffee beans?")

let similarity = cosineSimilarity(a: first, b: second)
let difference = cosineDifference(a: first, b: second)

print(round(difference, to: 2))
