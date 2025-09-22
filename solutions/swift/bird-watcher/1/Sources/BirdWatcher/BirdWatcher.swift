func totalBirdCount(_ birdsPerDay: [Int]) -> Int {
  var totalBirds = 0;
  for birds in birdsPerDay {
    totalBirds = birds + totalBirds
  }
  return totalBirds;
  fatalError("Please implement the totalBirdCount(_:) function")
}

func birdsInWeek(_ birdsPerDay: [Int], weekNumber: Int) -> Int {
    let actualWeekNumber = weekNumber - 1
    let startIndex = actualWeekNumber * 7
    let endIndex = min(startIndex + 7, birdsPerDay.count) // avoid out-of-bounds
    var total = 0
    for i in startIndex..<endIndex {
        total += birdsPerDay[i]
    }
    return total
}

func fixBirdCountLog(_ birdsPerDay: [Int]) -> [Int] {
    var fixedBirds = birdsPerDay
    for i in stride(from: 0, to: fixedBirds.count, by: 2) {
        fixedBirds[i] += 1
    }
    return fixedBirds
}
