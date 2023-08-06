import UIKit

struct BMICalculate {
    var bmiValue: BMA?
    
    mutating func BMI(height: Float, weight: Float){
        let bma = weight / (height * height)
        if bma < 18.5 {
            bmiValue = BMA(value: bma, advice: "Eat more pies", color: .blue)
        } else if bma < 24.9 {
            bmiValue = BMA(value: bma, advice: "normal weight", color: .green)
        } else {
            bmiValue = BMA(value: bma, advice: "overweight", color: .red)
        }
    }
    
    func sendBMI()->String{
        return String(format: "%.2f", bmiValue?.value ?? 0.0)
    }
    
    func getAdvice()->String{
        return bmiValue?.advice ?? "No advice"
    }
    
    func getColor()->UIColor{
        return bmiValue?.color ?? .white
    }
}
