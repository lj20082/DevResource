//
//  CollectionViewLayout.swift
//  CollectionViewDemo
//
//  Created by 李建忠 on 2019/9/23.
//  Copyright © 2019 李建忠. All rights reserved.
//

import Cocoa

class CollectionViewLayout: NSCollectionViewLayout {
    
    var itemHeight: CGFloat = 50
    
    override var collectionViewContentSize: NSSize {
        get {
            let count = collectionView?.numberOfItems(inSection: 0)
            if count == 0 {
                return NSZeroSize
            }
            var size = collectionView!.superview!.bounds.size
            size.height = itemHeight * CGFloat(count!)
            return size
        }
    }
    
    override func layoutAttributesForElements(in rect: NSRect) -> [NSCollectionViewLayoutAttributes] {
        let count = collectionView?.numberOfItems(inSection: 0)
        var attributes = [NSCollectionViewLayoutAttributes]()
        for index in 0...(count! - 1) {
            let indexpath = IndexPath(item: index, section: 0)
            if let itemAttributes = layoutAttributesForItem(at: indexpath) {
                attributes.append(itemAttributes)
            }
        }
        return attributes
    }
    
    override func layoutAttributesForItem(at indexPath: IndexPath) -> NSCollectionViewLayoutAttributes? {
        let count = collectionView?.numberOfItems(inSection: 0)
        if (count == 0) {
            return nil
        }
        let frame = NSRect(x: 0, y: itemHeight * CGFloat(indexPath.item), width: collectionViewContentSize.width, height: itemHeight)
        let itemAttributes = NSCollectionViewLayoutAttributes(forItemWith: indexPath)
        itemAttributes.frame = frame
        return itemAttributes
    }
    
    override func shouldInvalidateLayout(forBoundsChange newBounds: NSRect) -> Bool {
        return true
    }
}
