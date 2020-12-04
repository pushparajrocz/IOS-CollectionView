//
//  MyCollectionViewCell.swift
//  myViews
//
//  Created by Pushparaj Selvam on 04/12/20.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    @IBOutlet var imageview:UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    public func configure(with imag: UIImage){
        imageview.image = imag
    }
    static func nib() -> UINib{
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
}
