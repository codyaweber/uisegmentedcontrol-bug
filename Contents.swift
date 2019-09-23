//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
    private var segmentedControl : UISegmentedControl?
    private var button : UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        addSegmentedControl()
        addButton()
    }
    
    private func addSegmentedControl() {
        let frame = CGRect(x: 50, y: 100, width: 200, height: 40)
        let segmentedControl = UISegmentedControl(frame: frame)
        segmentedControl.insertSegment(withTitle: "One", at: 0, animated: true)
        segmentedControl.insertSegment(withTitle: "Two", at: 1, animated: true)
        
        segmentedControl.backgroundColor = .lightGray
//        segmentedControl.selectedSegmentTintColor = .orange
        view.addSubview(segmentedControl)
        
        self.segmentedControl = segmentedControl
    }
    
    private func addButton() {
        let frame = CGRect(x: 50, y: 150, width: 120, height: 40)
        let button = UIButton(type: .system)
        button.frame = frame
        
        button.setTitle("Set No Segment", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .lightGray
        button.addTarget(self, action: #selector(setNoSegment), for: .touchUpInside)
        view.addSubview(button)
        
        self.button = button
    }
    
    @objc func setNoSegment() {
        self.segmentedControl?.selectedSegmentIndex = UISegmentedControl.noSegment
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
