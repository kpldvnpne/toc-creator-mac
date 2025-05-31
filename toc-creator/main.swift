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

let newOutlineRoot = PDFOutline()
newOutlineRoot.label = "Root Label"

let firstChild = PDFOutline()
firstChild.label = "First Child"
let page = document.page(at: 100)!
firstChild.destination = PDFDestination(page: page, at: CGPoint(x: 0.0, y: 0.0))
 
newOutlineRoot.insertChild(firstChild, at: 0)

document.outlineRoot = newOutlineRoot

print("Number of children", document.outlineRoot?.numberOfChildren ?? "No children")

// Save the pdf back
document.write(toFile: "/Users/kapildev/Downloads/ielts 15 academic/Cambridge 15 - Full Version - Edited.pdf")
