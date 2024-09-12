import UIKit

class ResultViewController: UIViewController {
    
    var bFResult: Int = 0
    var advise: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bradFordResultLabel.text = String(bFResult)
        
        switch bFResult {
        case 0...25:
            advise = "No problem"
            view.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        case 26...100:
            advise = "Employee needs attention"
            view.backgroundColor = #colorLiteral(red: 0.9995340705, green: 0.988355577, blue: 0.4726552367, alpha: 1)
        case 101...500:
            advise = "Employee needs punishment"
            view.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        case 501...:
            advise = "Employee needs hard punishment"
            view.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        default:
            advise = ""
        }
        adviseLabel.text = advise
        
    }
    
    @IBOutlet weak var bradFordResultLabel: UILabel!
    @IBOutlet weak var adviseLabel: UILabel!
    
    @IBAction func calculateAgainPressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
}
