import UIKit

class ViewController: UIViewController {

    var sDays = 0
    var tDays = 0
    var bradFoardFactor = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func sStepperChanged(_ sender: UIStepper) {
        sDaysLabel.text = String(Int(sender.value))
        sDays = Int(sender.value)
    }
    
    @IBAction func tStepperChanged(_ sender: UIStepper) {
        tDaysLabel.text = String(Int(sender.value))
        tDays = Int(sender.value)
    }
    
    @IBOutlet weak var sDaysLabel: UILabel!
    @IBOutlet weak var tDaysLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func calcBradfordPressed(_ sender: UIButton) {
    
        bradFoardFactor = sDays * sDays * tDays
        
        resultLabel.text = String(bradFoardFactor)
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let resultVC = segue.destination as! ResultViewController
        
        resultVC.bFResult = self.bradFoardFactor
        
    }
    
    
}

