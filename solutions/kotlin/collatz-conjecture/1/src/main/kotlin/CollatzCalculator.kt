object CollatzCalculator {
    fun computeStepCount(start: Int): Int {
        require(start > 0)
        var number = start
        var count: Int = 0;
        while(number != 1){
                    number = when {
            ((number % 2) == 0) -> number / 2
            else -> (number * 3) + 1
        }
        count++
        }
        return count
    }
}
