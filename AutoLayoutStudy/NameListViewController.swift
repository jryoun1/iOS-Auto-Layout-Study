import UIKit

class NameListViewController: UIViewController {

    @IBOutlet weak var messageView: UIView!
    @IBOutlet weak var callView: UIView!
    @IBOutlet weak var facetimeView: UIView!
    @IBOutlet weak var mmsView: UIView!
    @IBOutlet weak var phoneNumberView: UIView!
    @IBOutlet weak var memoView: UIView!
    @IBOutlet weak var emergencyView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeRoundCorner()
    }
    
    func makeRoundCorner() {
        messageView.layer.cornerRadius = 10
        callView.layer.cornerRadius = 10
        facetimeView.layer.cornerRadius = 10
        mmsView.layer.cornerRadius = 10
        phoneNumberView.layer.cornerRadius = 10
        memoView.layer.cornerRadius = 10
        emergencyView.layer.cornerRadius = 10
    }
}
