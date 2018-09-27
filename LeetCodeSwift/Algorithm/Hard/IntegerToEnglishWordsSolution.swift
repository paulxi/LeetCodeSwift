//
// Created by Xi, Paul on 9/26/18.
// Copyright (c) 2018 LeetCode. All rights reserved.
//

import Foundation

class IntegerToEnglishWordsSolution {
    private let valueMap: [Int: String] = [1_000_000_000: "Billion",
                                           1_000_000: "Million",
                                           1000: "Thousand",
                                           100: "Hundred",
                                           90: "Ninety",
                                           80: "Eighty",
                                           70: "Seventy",
                                           60: "Sixty",
                                           50: "Fifty",
                                           40: "Forty",
                                           30: "Thirty",
                                           20: "Twenty",
                                           19: "Nineteen",
                                           18: "Eighteen",
                                           17: "Seventeen",
                                           16: "Sixteen",
                                           15: "Fifteen",
                                           14: "Fourteen",
                                           13: "Thirteen",
                                           12: "Twelve",
                                           11: "Eleven",
                                           10: "Ten",
                                           9: "Nine",
                                           8: "Eight",
                                           7: "Seven",
                                           6: "Six",
                                           5: "Five",
                                           4: "Four",
                                           3: "Three",
                                           2: "Two",
                                           1: "One",
                                           0: "Zero"];

    func numberToWords(_ num: Int) -> String {
        if num == 0 {
            return valueMap[0]!
        }

        return convertToWords(num)
    }

    private func convertToWords(_ num: Int) -> String {
        if (num == 0) {
            return ""
        }

        var div = num / 1_000_000_000
        var remainder = num % 1_000_000_000

        var result: String = ""
        if div > 0 {
            result = convertToWords(div) + " " + valueMap[1_000_000_000]!
        } else {
            div = num / 1_000_000
            remainder = num % 1_000_000
            if div > 0 {
                result = convertToWords(div) + " " + valueMap[1_000_000]!
            } else {
                div = num / 1_000
                remainder = num % 1_000
                if div > 0 {
                    result = convertToWords(div) + " " + valueMap[1_000]!
                } else {
                    div = num / 100
                    remainder = num % 100
                    if div > 0 {
                        result = convertToWords(div) + " " + valueMap[100]!
                    } else {
                        if num >= 20 {
                            remainder = num % 10
                            result = valueMap[num - remainder]!
                        } else {
                            remainder = 0
                            result = valueMap[num]!
                        }
                    }
                }
            }
        }

        if remainder > 0 {
            if div > 0 || num < 100 {
                result += " "
            }

            result += convertToWords(remainder)
        }

        return result
    }
}
