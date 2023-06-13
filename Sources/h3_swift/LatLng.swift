//
//  LatLng.swift
//  
//
//  Created by Nish on 2023-06-13.
//

import h3lib

extension H3.LatLng {
    
    public init(lat: Double, lng: Double) {
        self.init(lat:h3lib.degsToRads(lat), lng: h3lib.degsToRads(lng))
    }
    
    public func toH3Index(resolution: Int32) -> H3.Index {
        var coord = self
        var index: H3.Index
        h3lib.latLngToCell(&coord, resolution, &index)
        return index
    }
    
}
