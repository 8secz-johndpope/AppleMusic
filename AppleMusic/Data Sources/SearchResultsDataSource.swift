//
//  SearchResultsDataSource.swift
//  AppleMusic
//
//  Created by Hao Wu on 24.07.19.
//  Copyright © 2019 Hao Wu. All rights reserved.
//

import UIKit

class SearchResultsDataSource: NSObject, UITableViewDataSource {
    
    private var data = [ItunesArtist]()

    override init() {
        super.init()
    }
    
    func update(with artits: [ItunesArtist]) {
        data = artits
    }
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultCell", for: indexPath)
        let artist = data[indexPath.row]
        cell.textLabel?.text = artist.artistName
        
        return cell
    }
    
    // MARK: - Helper Methods
    func artist(at indexPath: IndexPath) -> ItunesArtist {
        return data[indexPath.row]
    }
}
