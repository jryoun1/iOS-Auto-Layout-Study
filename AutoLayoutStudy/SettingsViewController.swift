import UIKit

class SettingsViewController: UITableViewController {
    
    var lastContentOffset: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if (self.lastContentOffset <= 0 || self.lastContentOffset > scrollView.contentOffset.y) {
            self.navigationController?.isNavigationBarHidden = true
        }

        else if (self.lastContentOffset < scrollView.contentOffset.y) {
            self.navigationController?.isNavigationBarHidden = false
        }

        self.lastContentOffset = scrollView.contentOffset.y
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

