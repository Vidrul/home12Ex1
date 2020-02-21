
import UIKit

class MainViewController: UIViewController {
    
    
    @IBOutlet var allView: [UIView]!
    
    @IBOutlet weak var blueViewOne: UIView!
    @IBOutlet weak var blueViewTwo: UIView!
    @IBOutlet weak var greenViewTwo: UIView!
    @IBOutlet weak var greenViewOne: UIView!
    @IBOutlet weak var redView: UIView!
    var colorsArray: [UIColor] = [.systemBlue, .red, .systemBlue, .systemGreen, .systemGreen]
    
    @IBOutlet weak var TextFieldCornerRadius: UITextField!
    
    var roundet = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.backgroundColor = .red
    }
    @IBAction func buttonDIdClickOne(_ sender: UIButton) {
        roundet = !roundet
        for view in allView {
            view.layer.cornerRadius = roundet ? 20.0 : 0.0
        }
    }
    
    @IBAction func buttonDidClickTwo(_ sender: UIButton) {
        if redView.backgroundColor == .red {
            for view in allView {
                view.backgroundColor = .black
            }
        } else {
            for i in 0..<allView.count {
                allView[i].backgroundColor = colorsArray[i]
            }
        }

    }
    
    
}


