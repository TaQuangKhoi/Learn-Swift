//
//  ViewController.swift
//  Boi-Tinh-Yeu-Bang-Ten
//
//  Created by BVU on 4/1/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfdTenTrai: UITextField!
    @IBOutlet weak var tfdTenGai: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    @IBOutlet weak var switchBoiTheoTen: UISwitch!
    @IBOutlet weak var switchBoiTheoPhanTram: UISwitch!
    @IBOutlet weak var switchBoiTheoNgaySinh: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionClickSwitchBoiTheoTen(_ sender: Any) {
        
        switchBoiTheoTen.setOn(true, animated: true)
        
        switchBoiTheoPhanTram.setOn(false, animated: true)
        
        switchBoiTheoNgaySinh.setOn(false, animated: true)
        
    }

    
    @IBAction func actionClickSwitchBoiTheoPhanTram(_ sender: Any) {
        
        switchBoiTheoPhanTram.setOn(true, animated: true)
        
        switchBoiTheoTen.setOn(false, animated: true)
        switchBoiTheoNgaySinh.setOn(false, animated: true)
        
        
    }
    
    
    @IBAction func actiobSwitchBoiTheoNgaySinh(_ sender: Any) {
        switchBoiTheoPhanTram.setOn(false, animated: true)
        
        switchBoiTheoTen.setOn(false, animated: true)
        switchBoiTheoNgaySinh.setOn(true, animated: true)
    }
    
    @IBAction func actionMakeResult(_ sender: Any) {
        let tenTrai = tfdTenTrai.text!
        let tenNu = tfdTenGai.text!
        let result = TinhKetQua(tenNam: tenTrai, tenNu: tenNu)
        lblResult.text = "Kết quả: \(result)"
    }
    func LetterToNumber(letter : Character) -> Int {
        
        switch letter.uppercased() {
        case "A", "K", "U":
            return 1
        case "B", "S", "J":
            return 2
        case "C", "L", "T":
            return 3
        case "D", "N", "X":
            return 4
        case "E", "M", "W":
            return 5
        case "F", "O", "V":
            return 6
        case "G", "Q", "Z":
            return 7
        case "H", "P", "Y":
            return 8
        case "I", "R":
            return 9
        default:
            return 0
        }
    }

    func NameNumber(name: String) -> Array<Int> {
        var dayso : [Int] = []
        for _letter in name {
            let number: Int = LetterToNumber(letter: _letter)
            dayso.append(number)
        }
        return dayso
        
    }
    
    func TongDaySo(dayso: Array<Int>) -> Int {
        var tong = 0
        for so in dayso {
            tong += so
        }
        return tong
    }
    
    func TongHaiBan(daySoNam: Array<Int>, daySoNu : Array<Int>) -> Int {
        let tongSoNam = TongDaySo(dayso: daySoNam)
        let tongSoNu = TongDaySo(dayso: daySoNu)
        return tongSoNu + tongSoNam
    }
    
//    func TurnNumberToArrayOfIndividualNumber(number: Int) -> [Int]{
//        let string = String(number)
//
//        var daySoRiengLe : [Int] = []
//
//        for l in string {
//            let number = () .integerValue
//            daySoRiengLe.append()
//        }
//
//        return daySoRiengLe
//    }
    
    // Tách số thành các số con của nó
    func PhanTichSo(so:Int) -> [Int] {
        var dayso: [Int] = []
        
        var soMoi = so
        
        while (soMoi > 10) {
            dayso.append(so%10)
            soMoi = so / 10
        }
        dayso.append(soMoi)
        
        return dayso
    }
    
    
    // Tổng cộng dồn cho số bất kỳ, dù lớn hơn 100
    func TongCongDon (cacSo: Array<Int>) -> Int {
        var tong = 0
        for so in cacSo {
            tong += so
        }
        if tong > 10 {
            return TongCongDon(cacSo: PhanTichSo(so: tong))
        } else {
            return tong
        }
    }
    
    func TinhKetQua(tenNam:String, tenNu:String) -> Int {
        let daySoNam = NameNumber(name: tenNam)
        let daySoNu = NameNumber(name: tenNu)
        
        let tongHaiBan = TongHaiBan(daySoNam: daySoNam, daySoNu: daySoNu)
        
        if tongHaiBan > 10 {
            return TongCongDon(cacSo: PhanTichSo(so: tongHaiBan))
        } else {
            return tongHaiBan
        }
    }

}

