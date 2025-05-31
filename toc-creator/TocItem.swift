//
//  TocItem.swift
//  toc-creator
//
//  Created by Kapildev Neupane on 5/30/25.
//

import PDFKit

struct TocItem {
    var label: String = ""
    var pageNum: Int = 0
    var children: [TocItem] = []
    
    func toPdfOutline(document: PDFDocument) -> PDFOutline {
        let tocItem = self
        let pdfOutline = PDFOutline()
        pdfOutline.label = tocItem.label
        let pageNum = (tocItem.pageNum == 0) ? 0 : tocItem.pageNum - 1
        let page = document.page(at: pageNum)!
        let pageSize = page.bounds(for: PDFDisplayBox.artBox)
        print(pageNum, pageSize.width, pageSize.height)
        
        let atPoint = NSPoint(x: pageSize.width, y: pageSize.height)
//        let min = min(pageSize.width, pageSize.height)
//        let max = max(pageSize.width, pageSize.height)
//        let atPoint = NSPoint(x: min, y: max)
        pdfOutline.destination = PDFDestination(page: page, at: atPoint)
        
        for (index, child) in tocItem.children.enumerated() {
            let childOutline = child.toPdfOutline(document: document)
            pdfOutline.insertChild(childOutline, at: index)
        }
        return pdfOutline
    }
}
