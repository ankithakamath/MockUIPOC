//
//  File.swift
//  MockUIPOC
//
//  Created by Ankitha Kamath on 21/02/22.
//

import Foundation
import UIKit

protocol MockPresenterDelegate
{
   func infofetched()
}

class MockPresenter
{
    var presenter: MockPresenterDelegate!
    var datasource = MockDatasource()
    var viewController = UIViewController?.self
    var info: MockModel?
    {
        return datasource.mockInfo
    }
    
}
