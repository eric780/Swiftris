//
//  SquareShape.swift
//  Swiftris
//
//  Created by Eric Lin on 1/7/15.
//  Copyright (c) 2015 Eric Lin. All rights reserved.
//

import Foundation
class SquareShape: Shape{
    /*
        |0*|1 |
        |2 |3 |
    */
    
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff:Int, rowDiff:Int)>]{
        return [
            Orientation.Zero: [(0,0), (1,0), (0,1), (1,1)],
            Orientation.OneEighty: [(0, 0), (1, 0), (0, 1), (1, 1)],
            Orientation.Ninety: [(0, 0), (1, 0), (0, 1), (1, 1)],
            Orientation.TwoSeventy: [(0, 0), (1, 0), (0, 1), (1, 1)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation: Array<Block>]{
        return [
            Orientation.Zero:       [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.OneEighty:  [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety:     [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]]
        ]
    }
}