//
//  CarListCell.swift
//  CarList
//
//  Created by Antonio Vuono on 12/12/22.
//

import UIKit

class CarListCell: UITableViewCell {
    
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var year: UILabel!
    @IBOutlet weak var color: UILabel!
    @IBOutlet weak var shift: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        carImage.layer.borderWidth = 1
        carImage.layer.cornerRadius = 6

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    func prepare(with carList: CarList) {
        carImage.image = UIImage(named: "lambo")
        title.text = carList.name
        year.text = "Ano: \(carList.ano)"
        color.text = "Cor: \(carList.cor)"
        shift.text = "Câmbio: \(carList.cambio)"
    }
    
    @IBAction func handleOk(_ sender: Any) {
        print("Cliquei no botão OK")
    }
    
    @IBAction func handleNot(_ sender: Any) {
        print("Cliquei no not!")
    }
    
}
