//
//  FilterViewController.swift
//  scaffold
//
//  Created by sl-mini on 26/07/21.
//

import UIKit
import MultiSlider

class FilterViewController: UIViewController {
    
    @IBOutlet weak var uvFilter: UIView!
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var tblDietary: UITableView!
    @IBOutlet weak var slider: MultiSlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
    }
    
    @IBAction func onbtnCloseTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
    }
    
    func style() {
        uvFilter.roundCorners(corners: [.topLeft, .topRight], radius: 13)
        btnNext.setOvalButtonWithShadow()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension FilterViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
}
