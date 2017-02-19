import Foundation

let stockPricesYesterday: [UInt] = [10, 4, 7, 5, 1, 9, 6, 12]

func calculateMaxProfit(prices: [UInt]) -> Int? {
    guard prices.count >= 2 else { return nil }

    var buyPrice = prices.first!
    var maxProfit: Int = Int.min

    for price in prices.suffix(from: 1) {
        let profit = Int(price) - Int(buyPrice)

        maxProfit = profit > maxProfit ? profit : maxProfit
        "buy at \(buyPrice) and sell at \(price) making a profit of \(maxProfit)"
        
        if price < buyPrice {
            buyPrice = price
        }
    }

    return maxProfit
}

calculateMaxProfit(prices: stockPricesYesterday)

// assert(calculateMaxProfit(prices: stockPricesYesterday) == 6)
