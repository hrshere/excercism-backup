// TODO: define the 'ranks' constant
// TODO: define the 'files' constant
  let ranks = 1...8
  let files = "A"..."H"


func isValidSquare(rank: Int, file: String) -> Bool {
return ranks.contains(rank) && files.contains(file)
  fatalError("Please implement the isValidSquare(rank:file:) function")
}

func getRow(_ board : [String], rank: Int) -> [String] {
      guard ranks.contains(rank) else { return [] }
    
    let startIndex = (rank - 1) * 8
    let endIndex = startIndex + 8
    return Array(board[startIndex..<endIndex])
  fatalError("Please implement the getRow(_:rank:) function")
}
