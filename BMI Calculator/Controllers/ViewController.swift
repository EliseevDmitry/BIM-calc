import UIKit

class ViewController: UIViewController {
    var bmaLogic = BMICalculate()
    @IBOutlet weak var heightOutlet: UISlider!
    @IBOutlet weak var weightOutlet: UISlider!
    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var weightLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func getHeightSlider(_ sender: UISlider) {
        heightLable.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func getWeightSlider(_ sender: UISlider) {
        weightLable.text = "\(String(format: "%.2f", sender.value))kg"
    }
    
    @IBAction func presentResultBTN(_ sender: UIButton) {
        bmaLogic.BMI(height: heightOutlet.value, weight: weightOutlet.value)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmaLogic.sendBMI()
            destinationVC.advice = bmaLogic.getAdvice()
            destinationVC.color = bmaLogic.getColor()
        }
    }
}


