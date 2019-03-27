import UIKit

class ViewController: UIViewController {
    
    let beverages: [Beverage] = [
        Beverage(name: "코카콜라", imageName: "coke", price: 1500),
        Beverage(name: "쥬스", imageName: "juice", price: 1200),
        Beverage(name: "립톤", imageName: "lipton", price: 1700),
        Beverage(name: "펩시", imageName: "pepsi", price: 1300)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureAttribute()
    }
    
    func configureAttribute() {
        
    }
    
    func corner(to targetView: UIView, with radious: CGFloat) {
        targetView.layer.cornerRadius = radious
        targetView.clipsToBounds = true
        targetView.layer.masksToBounds = true
    }
}

