//
//  MockPresenter.swift
//  MockUIPOC
//
//  Created by Ankitha Kamath on 21/02/22.
//

import Foundation
import UIKit


class MockDatasource{
    
    lazy var mockInfo: MockModel? = {
       return getInformation()
    }()
    
    private func getInformation() -> MockModel?
    {
        var data:MockModel?
        guard let path = Bundle.main.path(forResource: "MockData", ofType: "json")
        else
        {return data}
        print(path)
       
            let url = URL(fileURLWithPath: path)
            do {
                let info = try Data.init(contentsOf: url, options: .mappedIfSafe)
                data = try JSONDecoder().decode(MockModel.self, from: info)
            }
            catch {
                print("Error ", error.localizedDescription)
            }
        
       
        print(data)
        return data
        
    }
}
