

import UIKit

class ViewController: UIViewController {

    //ラベル宣言
    @IBOutlet weak var mylavel1: UILabel!
    @IBOutlet weak var worktime: UIDatePicker!
    
    
///////////////////////////////////////////////////////////////

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
///////////////////////////////////////////////////////////////
    
    
    @IBAction func myBotton(_ sender: Any) {
 //勤務時間計算、「終業時間-始業8時」として計算
 //       let workstart = 60*8
        
        //Dateオブジェクトの作成
        let now = Date()
        let UIwork = worktime.date
        let formatter = DateFormatter()
        let jaLocale = Locale(identifier: "ja_JP")
        print(now.description(with: jaLocale))
        
        //日付表記変更
        formatter.dateFormat = "yyyy/MM/dd　HH:mm"
        let worknow = Date()
 //       let UIwork = worktime.time
        mylavel1.text = formatter.string(from:worknow)
        
        mylavel1.text = "あなたの残り勤務時間は" + formatter.string(from:UIwork) + "です"

        mylavel1.adjustsFontSizeToFitWidth = true

    }
}

