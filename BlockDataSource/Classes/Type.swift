//
//  Type.swift
//  Pods
//
//  Created by Adam Cumiskey on 5/2/17.
//
//

import Foundation


// MARK: - DataSourceType
/// A type which holds the data types for a data source
public protocol DataSourceType {
    associatedtype Container: UIView
    associatedtype Item: ItemProtocol
    associatedtype Decoration: ReusableProtocol
    associatedtype Middleware: MiddlewareProtocol
}

public struct List: DataSourceType {
    public typealias Container = UITableView
    public typealias Item = ListItem
    public typealias Decoration = ListSectionDecoration
    public typealias Middleware = ListMiddleware
}

public struct Grid: DataSourceType {
    public typealias Container = UICollectionView
    public typealias Item = GridItem
    public typealias Decoration = GridSectionDecoration
    public typealias Middleware = GridMiddleware
}

