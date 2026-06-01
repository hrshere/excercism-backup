class ArmstrongNumbers {
  bool isArmstrongNumber(String num) {
    final power = num.length;
    BigInt sum = BigInt.zero;

    for (final digitChar in num.split('')) {
      final digit = BigInt.from(int.parse(digitChar));
      sum += digit.pow(power);
    }

    return sum == BigInt.parse(num);
  }
}