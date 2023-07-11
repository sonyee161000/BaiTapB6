//
//  B2QuanLySanPham.swift
//  BaiTapB6
//
//  Created by Nguyễn Ngọc Sơn on 09/07/2023.
//

import Foundation

class SanPham {
    var tenSP: String
    var maSP: String
    var giaBan: Int
    var soLuong: Int
    
    init(tenSP: String, maSP: String, giaBan: Int, soLuong: Int) {
        self.tenSP = tenSP
        self.maSP = maSP
        self.giaBan = giaBan
        self.soLuong = soLuong
    }
    func inSanPham() {
        print("sản phẩm \(tenSP) có mã là \(maSP) giá bán \(giaBan) VNĐ số lượng còn lại trong kho \(soLuong)")
    }
    
    func timSanPham() {
        print("sản phẩm \(tenSP) còn \(soLuong) trong kho")
    }

}


class QuanLy {
    var danhSachSanPham: [SanPham]
    
    init(danhSachSanPham: [SanPham]) {
        self.danhSachSanPham = danhSachSanPham
    }
    
    func themSanPham(sanpham: SanPham) {
        danhSachSanPham.append(sanpham)
    }
    
    func inSanPham() {
        for i in danhSachSanPham {
            i.inSanPham()
        }
        print("-----in danh sách sản phẩm thành công-----")
    }
    
    func timSanPham(ten: String) {
        for sanpham in danhSachSanPham {
            if ten == sanpham.tenSP {
                sanpham.timSanPham()
                break
            } else {
                print("không có sản phẩm \(ten)")
                break
            }
        }
    }

}


var kem = SanPham(tenSP: "kem", maSP: "kem123", giaBan: 3000, soLuong: 12)
var banh = SanPham(tenSP: "bánh", maSP: "banh12", giaBan: 12000, soLuong: 13)
var keo = SanPham(tenSP: "kẹo", maSP: "keo123", giaBan: 4000, soLuong: 34)
var bim = SanPham(tenSP: "bim bim", maSP: "bim123", giaBan: 8000, soLuong: 131)


var danhSach = QuanLy(danhSachSanPham: [kem, banh])


