import Foundation

func sEquation(A: Double, B: Double, C: Double) -> String {
    let D = B * B - 4 * A * C;
    if D >= 0 {
        
        let x1 =  (-B + sqrt(D)) / (2*A)
        let x2 = (-B + sqrt(D)) / (2*A)
        
        return "x1 = \(x1), x2 = \(x2) "
        
    } else {
        
        return "x1 = \(-B/(2*A)) + \(sqrt(abs(D))/(2*A))i, x2 = \(-B/(2*A)) - \(sqrt(abs(D))/(2*A))i"
    }
}



func printFibRow(n: Int) {
    var x = 1
    var y = 1
    print("1 1 ", terminator:"")
    
    for _ in 2..<n {
        
        y = x + y
        x = y - x
        print("\(y) ", terminator:"")
        
    }
}



func insertionSort(array: [Int]) -> [Int] {
    
    guard array.count > 1 else { return array }
    
    var j: Int
    var aCopy = array
    for i in 1..<aCopy.count {
        j = i
        while(j > 0 && aCopy[j] < aCopy[j - 1]) {
            swap(&aCopy[j - 1], &aCopy[j])
            j -= 1
        }
    }
    
    return aCopy
}








