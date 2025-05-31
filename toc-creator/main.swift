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

print("Number of pages", document.pageCount)

//// TODO: Let's assign outline based on this
//for i in 0..<document.pageCount {
//    let _ = document.page(at: i)
//    print("Page \(i) could be accessed")
//}

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
        pageNum: 6 // TODO: Fix this issue
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

let newOutlineRoot = outline.toPdfOutline(document: document)

document.outlineRoot = newOutlineRoot

print("Number of children", document.outlineRoot?.numberOfChildren ?? "No children")

// Save the pdf back
document.write(toFile: "/Users/kapildev/Downloads/ielts 15 academic/Cambridge 15 - Full Version - Edited.pdf")
