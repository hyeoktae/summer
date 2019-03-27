import UIKit

class ViewController: UIViewController {
    
    let users: [User] = [
        User(name: "Mike", profileImageName: "person1", password: "abcd"),
        User(name: "Allen", profileImageName: "person2", password: "1122"),
        User(name: "Kevin", profileImageName: "person3", password: "1234"),
        User(name: "Joke", profileImageName: "person4", password: "4321"),
        User(name: "Hillary", profileImageName: "person5", password: "aaaa"),
        User(name: "Jenny", profileImageName: "person6", password: "dcba"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func corner(to targetView: UIView, with radious: CGFloat) {
        targetView.layer.cornerRadius = radious
        targetView.clipsToBounds = true
        targetView.layer.masksToBounds = true
    }
}

