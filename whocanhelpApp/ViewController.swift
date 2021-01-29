import UIKit


let showImages  = ["01","02","03"]
let showLabel = ["肥皂勤洗手","出門戴口罩","少出門少去人多場所"]

class ViewController: UIViewController {
    //圖片
    @IBOutlet weak var changeImage: UIImageView!
    
    //文字
    @IBOutlet weak var changeLabel: UILabel!
    //SegmrntedController outlet
    @IBOutlet weak var changeSegmentalControl: UISegmentedControl!
    
    var num = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
     
    }
    

    
    //SegmrntedController action
    @IBAction func SegmrntedController(_ sender: UISegmentedControl)
    {
        num = Int(sender.selectedSegmentIndex)
        changeImage.image = UIImage(named: showImages[num])
        changeLabel.text = showLabel[num]
    }
    
    @IBAction func randomNumber(_ sender: UIButton)
    {
        num = Int.random(in:0...2)
        changeImage.image = UIImage(named: showImages[num])
        changeLabel.text = showLabel[num]
        //SegmrntedController更改
        changeSegmentalControl.selectedSegmentIndex = num
    }
    
}

