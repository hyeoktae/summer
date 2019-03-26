import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
  override func loadView() {
    let view = UIView()
    view.backgroundColor = .white
    self.view = view
  }
  
  func setupSuperview() -> UIView {
    let greenView = UIView()
    greenView.frame = CGRect(x: 50, y: 50, width: 200, height: 200)
    greenView.backgroundColor = .green
    view.addSubview(greenView)
    return greenView
  }
  
  func setupSubview(superView: UIView) -> UIView {
    let redView = UIView()
    redView.frame = CGRect(x: 100, y: 100, width: 80, height: 80)
    redView.backgroundColor = .red
    superView.addSubview(redView)
    return redView
  }
  
  override func viewDidLoad() {
    let gView = setupSuperview()
    let rView = setupSubview(superView: gView)
    
    let topView: UIView = UIView()
    topView.frame = CGRect(x: 15, y: 15, width: 345, height: 100)
    topView.backgroundColor = .blue
    view.addSubview(topView)
    
    topView.frame.origin = CGPoint(x: 30, y: 30)
    topView.frame.size = CGSize(width: 315, height: 100)
//    topView.frame = CGRectEdge.maxXEdge
    CGRectEdge.maxXEdge
    CGRectEdge.maxYEdge
    
//        gView.frame.origin = CGPoint(x: 0, y: 0)
//        gView.frame.origin = CGPoint(x: 100, y: 100)
//        gView.frame.origin = CGPoint(x: 200, y: 200)
    
//        gView.bounds.origin = CGPoint(x: 0, y: 0)
//        gView.bounds.origin = CGPoint(x: 50, y: 50)
//        gView.bounds.origin = CGPoint(x: 150, y: 150)
  }
}

PlaygroundPage.current.liveView = MyViewController()
