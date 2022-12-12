//
//  ViewController.swift
//  CarList
//
//  Created by Antonio Vuono on 12/12/22.
//

import UIKit

class ViewController: UITableViewController {
    var carList: [CarList] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    
    func loadData() {
        let fileUrl = Bundle.main.url(forResource: "data", withExtension: "json")!
        
        let jsonData = try! Data(contentsOf: fileUrl)
        
        do {
            let data = try JSONDecoder().decode(Home.self, from: jsonData)
            carList = data.results
        } catch {
            print("Error ===> \(error.localizedDescription)")
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CarListCell
        
        let carListData = carList[indexPath.row]
        cell.prepare(with: carListData)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Show my index path when a click ===> \(indexPath.row)")
    }
}

