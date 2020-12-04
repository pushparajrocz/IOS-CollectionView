//
//  ViewController.swift
//  myViews
//
//  Created by Pushparaj Selvam on 04/12/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var collectonView:UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectonView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: "MyCollectionViewCell")
        // Do any additional setup after loading the view.
        let layout = UICollectionViewFlowLayout()
        let collectionWidth = collectonView.bounds.width
        layout.itemSize = CGSize(width: (collectionWidth/3)-1.5, height: 120)
        collectonView.collectionViewLayout = layout
        collectonView.delegate = self
        collectonView.dataSource = self
    }

}
extension ViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Tapped..")
    }
}
extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as! MyCollectionViewCell
        cell.configure(with: UIImage(named: "image1")!)
        return cell
    }
}
extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionWidth = collectonView.bounds.width
        return CGSize(width: (collectionWidth/3)-1.5, height: 120)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return -25
    }
}
