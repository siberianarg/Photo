//
//  PholtosCollectionViewController.swift
//  MyPhoto
//
//  Created by Perizat Omar on 30.04.2023.
//

import UIKit

class PhotosCollectionViewController: UICollectionViewController {
    
    let myPhotos = [#imageLiteral(resourceName: "dog15"), #imageLiteral(resourceName: "dog7"), #imageLiteral(resourceName: "dog5"), #imageLiteral(resourceName: "dog10"), #imageLiteral(resourceName: "dog6"), #imageLiteral(resourceName: "dog11"), #imageLiteral(resourceName: "dog9"), #imageLiteral(resourceName: "dog1"), #imageLiteral(resourceName: "dog8"), #imageLiteral(resourceName: "dog12"), #imageLiteral(resourceName: "dog3"), #imageLiteral(resourceName: "dog2"), #imageLiteral(resourceName: "dog14"), #imageLiteral(resourceName: "dog4"), #imageLiteral(resourceName: "dog13")]
    let photos = ["dog1", "dog2", "dog3", "dog4", "dog5", "dog6", "dog7", "dog8", "dog9", "dog10", "dog11", "dog12", "dog13", "dog14", "dog15"]
    let itemsPerRow: CGFloat = 2
    let sectionInserts = UIEdgeInsets(top: 10, left: 2, bottom: 10, right: 2)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
//
//        layout.itemSize = CGSize(width: 70, height: 70)
//        layout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
//        layout.minimumLineSpacing = 1
//        layout.minimumInteritemSpacing = 1
//        layout.scrollDirection = .vertical
//
//        collectionView.showsVerticalScrollIndicator = true
//
    }
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCell
        
        let imageName = photos[indexPath.item]
        let image = UIImage(named: imageName)
        
        cell.dogImageView.image = image
        
        return cell
    }
}

extension PhotosCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let paddingWidth = sectionInserts.left * (itemsPerRow + 1)
        let availableWidth = collectionView.frame.width - paddingWidth
        let widthPerItem = availableWidth / itemsPerRow
        return CGSize(width: widthPerItem, height: widthPerItem)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInserts
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInserts.left
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInserts.left
    }
}

