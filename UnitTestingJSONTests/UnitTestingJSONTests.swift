//
//  UnitTestingJSONTests.swift
//  UnitTestingJSONTests
//
//  Created by Pursuit on 8/29/19.
//  Copyright © 2019 Nphilippe. All rights reserved.
//

import XCTest
@testable import UnitTestingJSON

class UnitTestingJSONTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLoadPlanets() {
        let data = getPlanetDataFromJSON()
        let eachPlanet = Planets.getPlanets(from: data)
        XCTAssertTrue(eachPlanet.message != nil, "Not sure what to put here")
    }
    
    
    private func getPlanetDataFromJSON() -> Data {
        guard let pathToData = Bundle.main.path(forResource: "testingstarwars", ofType: "json")else {fatalError("couldn't find file")}
        let url = URL(fileURLWithPath: pathToData)
        do {
            let data = try Data(contentsOf: url)
            return data
        }catch{
            fatalError("didn't work")
        }
    }
    
    
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
