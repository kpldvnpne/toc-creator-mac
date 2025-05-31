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
        print("For |", tocItem.label, "| Page number used: ", pageNum)
        pdfOutline.destination = PDFDestination(page: document.page(at: pageNum)!, at: CGPoint(x: 0.0, y: 0.0))
        
        for (index, child) in tocItem.children.enumerated() {
            let childOutline = child.toPdfOutline(document: document)
            pdfOutline.insertChild(childOutline, at: index)
        }
        return pdfOutline
    }
}
