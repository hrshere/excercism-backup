// TODO: define the 'birthday' String constant
let birthday : String = "Birthday";
// TODO: define the 'valentine' String constant
let valentine : String = "Valentine\'s Day";

// TODO: define the 'anniversary' String constant
let anniversary : String = "Anniversary";

// TODO: define the 'space' Character constant
let  space : Character = " ";

// TODO: define the 'exclamation' Character constant
let exclamation : Character = "!";

func buildSign(for occasion: String, name: String) -> String {
  return "Happy" + String(space) + occasion + String(space) + name + String(exclamation);
  fatalError("Please implement the buildSign(for:name:) function")
}

func graduationFor(name: String, year: Int) -> String {
  return "Congratulations \(name)!\nClass of \(year)";
  fatalError("Please implement the graduationFor(name:year:) function")
}

func costOf(sign: String) -> Int {
   return 20 + (sign.count * 2);
  fatalError("Please implement the costOf(sign:) function")
}
