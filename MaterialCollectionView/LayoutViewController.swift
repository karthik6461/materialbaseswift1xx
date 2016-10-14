
import UIKit
import Material

class LayoutViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
        //prepareAlignToParentHorizontallyAndVerticallyExample()
        //prepareCenterExample()
        addScrollView()
    }
    
    /// General preparation statements.
    private func prepareView() {
        view.backgroundColor = MaterialColor.white
    }
    
    private func addScrollView(){
        let myframe : CGRect = CGRect(origin: CGPoint(x: 0,y: 0), size: CGSize(width: 1000,height: 2000))
        let scrollview : UIScrollView = UIScrollView(frame: myframe)
        scrollview.backgroundColor = MaterialColor.white
        print("\(view.frame.height) \(scrollview.frame.height) \(view.frame.width) \(scrollview.frame.width)")
        
        let label1: UILabel = UILabel()
        label1.backgroundColor = MaterialColor.red.base
        label1.text = "A"
        label1.textAlignment = .Center
        
        let label2: UILabel = UILabel()
        label2.backgroundColor = MaterialColor.green.base
        label2.text = "B"
        label2.textAlignment = .Center
        
        let label3: UILabel = UILabel()
        label3.backgroundColor = MaterialColor.blue.base
        label3.text = "C"
        label3.textAlignment = .Center
        
        let label4: UILabel = UILabel()
        label4.backgroundColor = MaterialColor.yellow.base
        label4.text = "D"
        label4.textAlignment = .Center
        
        let children: Array<UIView> = [label1, label2, label3, label4]
        
        // Align the labels horizontally with an equal width and vertically with an equal height.
        scrollview.layout.horizontally(children, left: 30, right: 30, spacing: 30).vertically(children, top: 100, bottom: 100)
        
        
        // Print out the dimensions of the labels.
        for v in children {
            v.layoutIfNeeded()
            print(v.frame)
        }
        
        
        view.addSubview(scrollview)
        print("\(view.frame.height) \(scrollview.frame.height) \(view.frame.width) \(scrollview.frame.width)")

        
    }
    
    /// Layout views horizontally with equal width.
    private func prepareAlignToParentHorizontallyAndVerticallyExample() {
        let label1: UILabel = UILabel()
        label1.backgroundColor = MaterialColor.red.base
        label1.text = "A"
        label1.textAlignment = .Center
        
        let label2: UILabel = UILabel()
        label2.backgroundColor = MaterialColor.green.base
        label2.text = "B"
        label2.textAlignment = .Center
        
        let label3: UILabel = UILabel()
        label3.backgroundColor = MaterialColor.blue.base
        label3.text = "C"
        label3.textAlignment = .Center
        
        let label4: UILabel = UILabel()
        label4.backgroundColor = MaterialColor.yellow.base
        label4.text = "D"
        label4.textAlignment = .Center
        
        let children: Array<UIView> = [label1, label2, label3, label4]
        
        // Align the labels horizontally with an equal width and vertically with an equal height.
        view.layout.horizontally(children, left: 30, right: 30, spacing: 30).vertically(children, top: 100, bottom: 100)
        
        
        // Print out the dimensions of the labels.
        for v in children {
            v.layoutIfNeeded()
            print(v.frame)
        }
    }
    
    // Lays out test views to the center of different axes
    private func prepareCenterExample() {
        let length: CGFloat = 100
        
        let labelCX = UILabel()
        labelCX.backgroundColor = MaterialColor.grey.base
        labelCX.text = "centerX"
        labelCX.textAlignment = .Center
        labelCX.layer.cornerRadius = length / 2.0
        labelCX.clipsToBounds = true
        
        view.layout(labelCX).width(length).height(length).centerHorizontally()
        
        let labelCY = UILabel()
        labelCY.backgroundColor = MaterialColor.grey.base
        labelCY.text = "centerY"
        labelCY.textAlignment = .Center
        labelCY.layer.cornerRadius = length / 2.0
        labelCY.clipsToBounds = true
        
        view.layout(labelCY).width(length).height(length).centerVertically()
        
        let labelCXY = UILabel()
        labelCXY.backgroundColor = MaterialColor.grey.base
        labelCXY.text = "centerXY"
        labelCXY.textAlignment = .Center
        labelCXY.layer.cornerRadius = length / 2.0
        labelCXY.clipsToBounds = true
        
        view.layout(labelCXY).width(length).height(length).center()		
    }
}