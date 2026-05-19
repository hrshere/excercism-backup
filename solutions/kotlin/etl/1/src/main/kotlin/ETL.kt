object ETL {
    fun transform(source: Map<Int, Collection<Char>>): Map<Char, Int> {
        /*
Research Notes

Kotlin Maps
mutableMapOf()

Iterating maps:
for ((key, value) in map) {
    println("$key -> $value")
}

Collection iteration:
for (item in items) {
    println(item)
}

Destructuring:
(key, value)

Char lowercase:
ch.lowercaseChar()
*/
        val result = mutableMapOf<Char, Int>()
        for((point,collection) in source){
            for(item in collection){
                result[item.lowercaseChar()] = point
            }
        }
        return result
    }
}
