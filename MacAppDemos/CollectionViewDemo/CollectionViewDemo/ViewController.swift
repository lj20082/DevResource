//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by 李建忠 on 2019/9/22.
//  Copyright © 2019 李建忠. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var collectionView: NSCollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        collectionView.backgroundColors = [NSColor .gray]
//        let layout = NSCollectionViewGridLayout()
//        layout.maximumNumberOfColumns = 1
////        layout.maximumNumberOfRows = 5
//        layout.minimumItemSize = NSMakeSize(50, 50)
//        collectionView.collectionViewLayout = layout
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

extension ViewController: NSCollectionViewDataSource {
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        let item = collectionView.makeItem(withIdentifier: NSUserInterfaceItemIdentifier.init("ImageCollectionViewItem"), for: indexPath)
        return item
    }
    
    func collectionView(_ collectionView: NSCollectionView, viewForSupplementaryElementOfKind kind: NSCollectionView.SupplementaryElementKind, at indexPath: IndexPath) -> NSView {
        var nibName: String?
        if kind == NSCollectionView.elementKindSectionHeader {
            nibName = "Header"
        }else if kind == NSCollectionView.elementKindSectionFooter {
            nibName = "Footer"
        }
        let view = collectionView.makeSupplementaryView(ofKind: kind, withIdentifier: NSUserInterfaceItemIdentifier.init(nibName!), for: indexPath)
        
        if let view = view as? HeaderView {
            view.titleField?.stringValue = "CustomHeader"
        } else if let view = view as? FooterView {
            view.titleField?.stringValue = "CustomFooter"
        }
        
        return view
    }
}

extension ViewController: NSCollectionViewDelegate {
    func collectionView(_ collectionView: NSCollectionView, didSelectItemsAt indexPaths: Set<IndexPath>) {
        print(indexPaths)
    }
    
    func collectionView(_ collectionView: NSCollectionView, didDeselectItemsAt indexPaths: Set<IndexPath>) {
        
    }
}

extension ViewController: NSCollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> NSSize {
        return NSSize(width:0, height: 20)
    }
    
    func collectionView(_ collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, referenceSizeForFooterInSection section: Int) -> NSSize {
        return NSSize(width: 0, height: 20)
    }
}
