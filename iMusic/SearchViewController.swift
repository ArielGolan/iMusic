//
//  SearchViewController.swift
//  iMusic
//
//  Created by Ariel Golan on 20.09.2022.
//

import UIKit

struct TrackModel {
    var trackName: String
    var artistName: String
}

class SearchViewController: UITableViewController {
    
    let tracks = [TrackModel(trackName: "bad guy", artistName: "Billie Eilish"),
                 TrackModel(trackName: "bury a friend", artistName: "Billie Eilish")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        let track = tracks[indexPath.row]
        cell.textLabel?.text = "\(track.trackName)\n\(track.artistName)"
        cell.imageView?.image =
        return cell
    }
    
}
