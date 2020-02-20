
import UIKit

class MainViewController: UIViewController {
    
    
    @IBOutlet var allView: [UIView]!
    @IBOutlet weak var TextFieldCornerRadius: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//                TextFieldCornerRadius.delegate = self
        
    }
    @IBAction func buttonDIdClickOne(_ sender: UIButton) {
        cornerRadius()
        returnValue()
    }
    
    @IBAction func buttonDidClickTwo(_ sender: UIButton) {
        changeColorToBlack()
    }
    
    
}


private extension MainViewController {
    
    func showAlert (textAlert text: String) {
        let alertViewControler = UIAlertController(title: "Error",
                                                   message: text,
                                                   preferredStyle: .alert)
        alertViewControler.addAction(UIAlertAction(title: "Back", style: .default))
        self.present(alertViewControler, animated: true, completion: nil)
    }
    func cornerRadius() {
        let textFieldValue = TextFieldCornerRadius.text
        for view in allView {
            if let value = textFieldValue {
                let floatValue = Float(value)
                if let cgFloatValue = floatValue {
                    view.layer.cornerRadius = CGFloat(cgFloatValue)
                }
                if floatValue == nil {
                    showAlert(textAlert: "Please add value for corner radius")
                    view.layer.cornerRadius = 0
                }
            }
        }
    }
    func returnValue(){
        TextFieldCornerRadius.text = nil
    }
    
    func changeColorToBlack() {
        for view in allView {
            if view.backgroundColor != .black {
                view.backgroundColor = .black
            } else if view.backgroundColor == .black {
                allView[0].backgroundColor = .blue
                allView[1].backgroundColor = .red
                allView[2].backgroundColor = .blue
                allView[3].backgroundColor = .green
                allView[4].backgroundColor = .green
            }
        }
        
        
        
}
}

//extension MainViewController: UITextFieldDelegate {
//    func textFieldRetrun(_ textFiled: UITextField) {
//        switch textFiled {
//        case TextFieldCornerRadius:
//            TextFieldCornerRadius.resignFirstResponder()
//        default:
//            break
//        }
//    }
//}

