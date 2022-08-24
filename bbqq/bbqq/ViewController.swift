//
//  ViewController.swift
//  bbqq
//
//  Created by cumulations on 20/07/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button: UIButton!
    var i:data?
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        anotherViewController.shared.one()
//        syncWork()
//        downloadmanager()
        print("fetched data")
        returnData.shared.fetchdata(parse: { d in
            self.i = d
            print(self.i?.author)
        })
    }
    @IBAction func buttonPressed(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: anotherViewController.shared.id)
        navigationController?.pushViewController(vc!, animated: true)
    }
//    func syncWork(){
//            let northZone = DispatchQueue(label: "perform_task_with_team_north")
//            let southZone = DispatchQueue(label: "perform_task_with_team_south")
//
//            northZone.async {
//                for numer in 1...3{ print("North \(numer)")}
//            }
//            southZone.async {
//                for numer in 1...3{ print("South \(numer)") }
//            }
//        }
//    func downloadmanager(){
//        let url = URL(string: "https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf")!
//
//        let task = URLSession.shared.downloadTask(with: url) { localURL, urlResponse, error in
//            guard let urlResponse = urlResponse else {
//                print("failed")
//                return
//            }
//
//            if let localURL = localURL {
//                if let string = try? String(contentsOf: localURL) {
//                    print(string)
//                }
//            }
//        }
//
//        task.resume()
//    }
    
    func showdata(){
        let o = mulda()
        print(o)
    }
    
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell()
        cell.textLabel?.text = ""
        return cell
    }
    
    
    
}
