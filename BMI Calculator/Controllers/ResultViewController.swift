import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var resultLable: UILabel!
    @IBOutlet weak var comintLable: UILabel!
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLable.text = bmiValue
        view.backgroundColor = color
        comintLable.text = advice
    }
    
    @IBAction func goToBack(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
