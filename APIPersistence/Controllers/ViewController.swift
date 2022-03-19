//
//  ViewController.swift
//  APIPersistence
//
//  Created by Alley Pereira on 19/03/22.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()

		debug()
	}

	// MARK: DEBUG
	func debug() {

		let api = GetMusicService()

		api.fetchAlbuns({ result in
			result?.results.forEach({ resultModel in
				print(resultModel.artistID)
				print(resultModel.artistName)
			})
		})
	}
}

