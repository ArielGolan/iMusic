//
//  SearchResponse.swift
//  iMusic
//
//  Created by Ariel Golan on 23.09.2022.
//

import Foundation
import UIKit

struct SearchResponse: Decodable {
    var resultCount: Int
    var results: [Track]
}

struct Track: Decodable {
    var trackName: String
    var collectionCensoredName: String?
    var artistName: String
    var artworkUrl100: String?
}
