object Bob {
    fun hey(input: String): String {
val text = input.trim()

val isQuestion = text.endsWith("?")
val isYelling = text.any {it.isLetter() } && text == text.uppercase()

return when{
    text.isEmpty() ->
    return "Fine. Be that way!"

    isQuestion && isYelling ->
    return "Calm down, I know what I'm doing!"

    isYelling ->
    "Whoa, chill out!" 

    isQuestion ->
    "Sure."

    else ->
    "Whatever."
}
    }
}
