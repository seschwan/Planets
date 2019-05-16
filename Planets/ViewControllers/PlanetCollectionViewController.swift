//
//  PlanetCollectionViewController.swift
//  Planets
//
//  Created by Seschwan on 5/15/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

import UIKit

private let reuseIdentifier = "PlanetCell"

class PlanetCollectionViewController: UICollectionViewController {
    
    let planetController = PlanetController()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.collectionView.reloadData()
    }


    // MARK: - UICollectionViewDataSource


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return planetController.planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PlanetCollectionViewCell
    
        // Configure the cell
    
        let planet = self.planetController.planets[indexPath.row]
        cell.planetLabel.text = planet.name
        cell.planetImageView.image = planet.image
        
        
        return cell
    }


}
