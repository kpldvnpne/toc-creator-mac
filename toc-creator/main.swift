//
//  main.swift
//  toc-creator
//
//  Created by Kapildev Neupane on 5/30/25.
//

import Foundation
import PDFKit

let pdfPath = "/Users/kapildev/Downloads/ielts 15 academic/Cambridge 15 - Full Version.pdf"
let pdfUrl = URL(filePath: pdfPath)
let document = PDFDocument(url: pdfUrl)!

let outlineRoot = document.outlineRoot
print("Number of children", outlineRoot?.numberOfChildren ?? "No children")

struct TocItem {
    var label: String = ""
    var pageNum: Int = 0
    var children: [TocItem] = []
}

let outline: TocItem = TocItem(children: [
    TocItem(
        label: "Cover",
        pageNum: 1
    ),
    TocItem(
        label: "Contents",
        pageNum: 5
    ),
    TocItem(
        label: "Introduction",
        pageNum: 6
    ),
    TocItem(
        label: "Test 1",
        pageNum: 12,
        children: [
            TocItem(
                label: "Listening",
                pageNum: 12,
            ),
            TocItem(
                label: "Reading",
                pageNum: 18,
            ),
        ],
    ),
])

func toPdfOutline(tocItem: TocItem, document: PDFDocument) -> PDFOutline {
    let pdfOutline = PDFOutline()
    pdfOutline.label = tocItem.label
    let pageNum = (tocItem.pageNum == 0) ? 0 : tocItem.pageNum - 1
    pdfOutline.destination = PDFDestination(page: document.page(at: pageNum)!, at: CGPoint(x: 0.0, y: 0.0))
    
    for (index, child) in tocItem.children.enumerated() {
        let childOutline = toPdfOutline(tocItem: child, document: document)
        pdfOutline.insertChild(childOutline, at: index)
    }
    return pdfOutline
}

let newOutlineRoot = toPdfOutline(tocItem: outline, document: document)

document.outlineRoot = newOutlineRoot

print("Number of children", document.outlineRoot?.numberOfChildren ?? "No children")

// Save the pdf back
document.write(toFile: "/Users/kapildev/Downloads/ielts 15 academic/Cambridge 15 - Full Version - Edited.pdf")
