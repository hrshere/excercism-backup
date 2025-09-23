func getName(_ item: (name: String, amount: Int)) -> String {
  return item.name
  fatalError("Please implement the getName(_:) function")
}

func createToy(name: String, amount: Int) -> (name: String, amount: Int) {
  return (name, amount)
  fatalError("Please implement the createToy(name:amount:) function")
}

func updateQuantity(_ items: [(name: String, amount: Int)], toy: String, amount: Int) ->  [(name: String, amount: Int)] {
  var updatedItems:[(name: String, amount: Int)] = []
    for (name, quantity) in items {
        if name == toy {
            updatedItems.append((name: name, amount: amount))
        } else {
            updatedItems.append((name: name, amount: quantity))
        }
    }

   return updatedItems
  fatalError("Please implement the updateQuantity(_:toy:amount) function")
}

func addCategory(_ items: [(name: String, amount: Int)], category: String) -> [(name: String, amount: Int, category: String)] {
  var updatedToysList: [(name: String, amount: Int, category: String)] = []

  for item in items {
    updatedToysList.append((name: item.name, amount: item.amount, category: category))
  }
  return updatedToysList
  fatalError("Please implement the addCategory(_:category:) function")
}
