//
//  OrderFeedbackViewController.swift
//  scaffold
//
//  Created by sl-mini on 28/07/21.
//

import UIKit

class OrderFeedbackViewController: UIViewController {

    @IBOutlet weak var cvProblemList: UICollectionView!
    @IBOutlet weak var uvVoucher: UIView!
    @IBOutlet weak var uvRefund: UIView!
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var btnRefundState: UIButton!
    @IBOutlet weak var btnVoucherState: UIButton!
    @IBOutlet weak var tvFeedback: UITextView!
    
    var isAnyOptionSelected =  false
    
    override func viewDidLoad() {
        super.viewDidLoad()

       style()
    }
    
    func style() {
        btnNext.setOvalButtonWithShadow()
        btnRefundState.setImage(UIImage(), for: .normal)
        btnVoucherState.setImage(UIImage(), for: .normal)
        setBorderToView(viewId: uvVoucher)
        setBorderToView(viewId: uvRefund)
        
        tvFeedback.clipsToBounds = false
        tvFeedback.layer.cornerRadius = 10
        tvFeedback.layer.shadowRadius = 10.0
        tvFeedback.layer.shadowColor = UIColor.gray.cgColor
        tvFeedback.layer.shadowOffset = CGSize(width: 4.0, height: 8.0)
        tvFeedback.layer.shadowOpacity = 0.8
        tvFeedback.textColor = UIColor.black
    }
    
    func setBorderToView(viewId: UIView) {
        viewId.layer.cornerRadius = 4
        viewId.layer.borderWidth = 1
        viewId.layer.borderColor =  #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
    }
    
    @IBAction func onBtnBackTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onbtnVoucherTapped(_ sender: Any) {
        btnRefundState.setImage(UIImage(), for: .normal)
        btnVoucherState.setImage(#imageLiteral(resourceName: "selected"), for: .normal)
    }
    
    @IBAction func onBtnRefundTapped(_ sender: Any) {
        btnVoucherState.setImage(UIImage(), for: .normal)
        btnRefundState.setImage(#imageLiteral(resourceName: "selected"), for: .normal)
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
extension OrderFeedbackViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // swiftlint:disable force_cast
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OrderFeedbackCollectionViewCell", for: indexPath) as! OrderFeedbackCollectionViewCell
        // swiftlint:enable force_cast
        return cell
    }
    
}
