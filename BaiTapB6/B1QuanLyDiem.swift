//
//  B1QuanLyDiem.swift
//  BaiTapB6
//
//  Created by Nguyễn Ngọc Sơn on 09/07/2023.
//

import Foundation

struct Sinhvien {
    var tenSV: String
    var maSV: String
    var diemToan: Float
    var diemLy: Float
    var diemHoa: Float
    
    func inDanhSachSV() {
        var diemTB = (diemLy + diemHoa + diemToan)/3
        print("sinh viên \(tenSV) mã sinh viên: \(maSV), \(diemToan) \(diemLy) \(diemHoa) diểm trung bình 3 môn: \(diemTB) ")
        
    }
    
}

struct Quanly {
    var danhSachSV = [Sinhvien]()

   mutating func capNhatDiem(maSV: String, toan: Float, ly: Float, hoa: Float) {
        for (index, value) in danhSachSV.enumerated() {
            if value.maSV == maSV {
                danhSachSV[index].diemHoa = hoa
                danhSachSV[index].diemLy = ly
                danhSachSV[index].diemToan = toan
                print("-----cập nhật điểm cho sinh viên có mã: \(maSV) thành công")
                break
            } else {
                print("-----Nhập sai mã sinh viên")
                break
            }
        }
    }
    
    mutating func themSV(sinhvien: Sinhvien) {
        danhSachSV.append(sinhvien)
    }
    
    func inDanhSachSv() {
        for i in danhSachSV {
            i.inDanhSachSV()
        }
        print("-----In danh sách thành công")
    }
    
//    mutating func test() {
//        var x: [Array] = []
//        for (index, value) in danhSachSV.enumerated() {
//            for (index2, value2) in danhSachSV.enumerated() {
//                if value.diemToan  > value2.diemToan {
//                    x = danhSachSV[index]
//                    danhSachSV[index] = danhSachSV[index2]
//                    danhSachSV[index2] = x
//                }
//            }
//        }
//        inDanhSachSv()
//        print("-----In danh sách thành công")
//    }
}

var son = Sinhvien(tenSV: "Sơn", maSV: "AT150448", diemToan: 1  , diemLy: 2, diemHoa: 3)
var linh = Sinhvien(tenSV: "Linh", maSV: "45T150610", diemToan: 8.9, diemLy: 9.8, diemHoa: 8.3)

var quanLySV = Quanly(danhSachSV: [son])
