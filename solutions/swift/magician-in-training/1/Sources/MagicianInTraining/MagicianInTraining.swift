func getCard(at index: Int, from stack: [Int]) -> Int {
  return stack[index]
}
func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
  guard index >= 0 && index < stack.count else {
    return stack
  }
  var tempStack = stack
  tempStack[index] = newCard
  return tempStack
}
func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
  var tempStack = stack
  tempStack.append(newCard)
  return tempStack
}
func removeCard(at index: Int, from stack: [Int]) -> [Int] {
  guard index >= 0 && index < stack.count else {
    return stack
  }
  var modifiedStack = stack
  modifiedStack.remove(at: index)
  return modifiedStack
}
func insert(_ newCard: Int, at index: Int, from stack: [Int]) -> [Int] {
  guard index >= 0 && index <= stack.count else {
    return stack
  }
        var modifiedStack = stack
        modifiedStack.insert(newCard, at: index)
        return modifiedStack
}
func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  stack.count == size
}