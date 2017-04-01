//: Playground - noun: a place where people can play

import UIKit

let image = #imageLiteral(resourceName: "bear.jpeg")



let cubeMap = createCubeMap(210,240)

let data = NSData(bytesNoCopy: cubeMap.data, length: Int(cubeMap.length),
                  freeWhenDone: true)

//消除某种颜色
let colorCubeFilter = CIFilter(name: "CIColorCube")!
colorCubeFilter.setValue(cubeMap.dimension, forKey: "inputCubeDimension")
colorCubeFilter.setValue(data, forKey: "inputCubeData")
colorCubeFilter.setValue(CIImage(image: originalImage), forKey: kCIInputImageKey)
let outputImage = colorCubeFilter.outputImage

let cgImage = context.createCGImage(outputImage!, fromRect: outputImage!.extent)
imageView.image = UIImage(CGImage: cgImage)
