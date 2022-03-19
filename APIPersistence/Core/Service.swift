//
//  Service.swift
//  APIPersistence
//
//  Created by Alley Pereira on 19/03/22.
//

import Foundation

protocol ServiceProtocol {

	func get<T: Decodable>(
		request: URLRequest,
		of type: T.Type,
		completion: @escaping (Result<T, Service.ServiceError>) -> Void)
}

final class Service: ServiceProtocol {

	let session: URLSession

	init(session: URLSession = .shared) {
		self.session = session
	}

	func get<T>(request: URLRequest, of type: T.Type, completion: @escaping (Result<T, ServiceError>) -> Void) where T : Decodable {
		
	}


}

