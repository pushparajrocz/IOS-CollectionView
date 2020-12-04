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
        // Setting the custom item layout for each cell
        let layout = UICollectionViewFlowLayout()
        let collectionWidth = collectonView.bounds.width
        layout.itemSize = CGSize(width: (collectionWidth/3)-1.5, height: 120)
        collectonView.collectionViewLayout = layout
        // delegate and datasource instance
        collectonView.delegate = self
        collectonView.dataSource = self
    }

}
// This protocol is used for delegate
extension ViewController: UICollectionViewDelegate{
    // When the item in the cell is tapped, this function called
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Tapped..")
    }
}
// This protocol is used for DataSource
extension ViewController: UICollectionViewDataSource{
    // Assigning the number of cells in the collection view
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    // This is used for setting properties of each cell in the collection view
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as! MyCollectionViewCell
        cell.configure(with: UIImage(named: "image1")!)
        return cell
    }
}
// This protocol is used to assign the FlowLayout
extension ViewController: UICollectionViewDelegateFlowLayout{
    // Set the size of each item
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionWidth = collectonView.bounds.width
        return CGSize(width: (collectionWidth/3)-1.5, height: 120)
    }
    // Set the inter line spacing of each cell              
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    // Set the lineSpacing of each cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return -25
    }
}
