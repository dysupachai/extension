import UIKit
extension UIButton{
    func toCornerRadius(_ size:CGFloat = 8.0){
        self.layer.cornerRadius = size;
        self.clipsToBounds = true
    }
}
