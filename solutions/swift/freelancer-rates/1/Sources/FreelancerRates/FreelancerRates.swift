func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate) * 8.0;
  fatalError("Please implement the dailyRateFrom(hourlyRate:) function")
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let workingDays = 22.0;
  let dailyWorkingRate = dailyRateFrom(hourlyRate:hourlyRate);
  let totalMonthlyRate = dailyWorkingRate * workingDays;
  let totalMonthlyDiscount = (discount/100) * totalMonthlyRate;//since discount is in percentage
  let actualMonthlyRate = totalMonthlyRate - totalMonthlyDiscount;
  return actualMonthlyRate.rounded();
  fatalError("Please implement the monthlyRateFrom(hourlyRate:withDiscount:) function")
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let dailyWorkingRate = dailyRateFrom(hourlyRate:hourlyRate);
  let dailyDiscountRate = (discount/100)*dailyWorkingRate;
  let actualDailyWorkingRate = dailyWorkingRate - dailyDiscountRate;
  let result = budget / actualDailyWorkingRate;
  return result.rounded(.down);
  fatalError("Please implement the workdaysIn(budget:hourlyRate:withDiscount:) function")
}
