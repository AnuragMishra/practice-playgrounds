import Foundation

func getProductsOfAllIntsExceptAtIndex(integers: [Int]) -> [Int] {
    var productsBefore: [Int] = Array(repeating: 0, count: integers.count)
    var productsAfter: [Int] = Array(repeating: 0, count: integers.count)

    integers.enumerated().reduce(1) { (result, pair) -> Int in
        productsBefore[pair.offset] = result
        
        "product of all numbers before position \(pair.offset) is \(result)"

        return result * pair.element
    }
    
    integers.enumerated().reversed().reduce(1) { (result, pair) -> Int in
        productsAfter[pair.offset] = result
        
        "product of all numbers after position \(pair.offset) is \(result)"
        
        return result * pair.element
    }

    let products = integers.indices.map { i -> Int in
        productsBefore[i]
        productsAfter[i]
        
        let result = productsBefore[i] * productsAfter[i]
        
        "\(productsBefore[i]) x \(productsAfter[i]) = \(result)"
        
        return result
    }

    return products
}

getProductsOfAllIntsExceptAtIndex(integers: [2, 1, 5, 3])