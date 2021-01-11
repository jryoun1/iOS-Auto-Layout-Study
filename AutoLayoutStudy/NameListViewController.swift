import UIKit

class NameListViewController: UIViewController {

    @IBOutlet weak var messageView: UIView!
    @IBOutlet weak var callView: UIView!
    @IBOutlet weak var facetimeView: UIView!
    @IBOutlet weak var mmsView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageView.layer.cornerRadius = 10
        callView.layer.cornerRadius = 10
        facetimeView.layer.cornerRadius = 10
        mmsView.layer.cornerRadius = 10
    }
}
