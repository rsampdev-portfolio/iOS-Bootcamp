import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var responseLabel: UILabel!
    @IBOutlet weak var askButton: UIButton!
    @IBOutlet weak var questionField: UITextField!
    
    let questionAnswerer = MyQuestionAnswerer()

    override func viewDidLoad() {
        super.viewDidLoad()
        questionField.becomeFirstResponder()
    }

    func respondToQuestion(question: String) {
        let answer = questionAnswerer.responseToQuestion(question)

        displayAnswerTextOnScreen(answer)
        questionField.placeholder = "Ask another question..."
        questionField.text = nil
        askButton.enabled = false
    }

    @IBAction func askButtonTapped(sender: AnyObject) {
        guard questionField.text != nil else {
            return
        }
        questionField.resignFirstResponder()
    }
    
    func displayAnswerTextOnScreen(answer: String) {
        responseLabel.text = answer
    }

    lazy var speechSynthesizer = AVSpeechSynthesizer()

    private func readAnswerAloud(answer: String) {
        let answerUtterance = AVSpeechUtterance(string: answer)
        answerUtterance.pitchMultiplier = 1.3

        speechSynthesizer.speakUtterance(answerUtterance)
    }

}

extension ViewController: UITextFieldDelegate {

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }

    func textFieldDidEndEditing(textField: UITextField) {
        guard let text = textField.text else {
            return
        }
        
        respondToQuestion(text)
    }
    
    @IBAction func editingChanged(textField: UITextField) {
        guard let text = textField.text else {
            askButton.enabled = false
            return
        }
        
        askButton.enabled = !text.isEmpty
    }
}
