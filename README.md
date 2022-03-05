# IS211.M21 - Distributed Databases


IS211.M21 - Cơ Sở Dữ Liệu Phân Tán 

Học kỳ 2 Năm 3 Năm học 2021-2022 

**Giảng Viên:** 
- Nguyễn Hồ Duy Tri

## Nội Dung Môn Học

| Buổi | Ngày | Nội Dung | Tóm Tắt | LT/TH | Slide | Code | Video Record |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| 01 | 25/02/2022 | Tổng Quan Về Cơ Sở Dữ Liệu Phân Tán |  | LT-01 | [1. Tong quan CSDL phan tan](https://github.com/PhamThe-KHDL/IS211.M21-Distributed-Databases/blob/main/L%C3%9D%20THUY%E1%BA%BET/Slide%20b%C3%A0i%20gi%E1%BA%A3ng/1.%20Tong%20quan%20CSDL%20phan%20tan.pdf) |  | [01 - Tổng Quan Về Cơ Sở Dữ Liệu Phân Tán](https://youtu.be/Ew1Kjng9tYk) |
| 02 |  |  |  |  |  |  |  |
| 03 |  |  |  |  |  |  |  |
| 04 |  |  |  |  |  |  |  |
| 05 |  |  |  |  |  |  |  |
| 06 |  |  |  |  |  |  |  |
| 07 |  |  |  |  |  |  |  |
| 08 |  |  |  |  |  |  |  |
| 09 |  |  |  |  |  |  |  |
| 10 |  |  |  |  |  |  |  |
| 11 |  |  |  |  |  |  |  |
| 12 |  |  |  |  |  |  |  |
| 13 |  |  |  |  |  |  |  |
| 14 |  |  |  |  |  |  |  |
| 15 |  |  |  |  |  |  |  |
| 16 |  |  |  |  |  |  |  |
| 17 |  |  |  |  |  |  |  |
| 18 |  |  |  |  |  |  |  |
| 19 |  |  |  |  |  |  |  |
| 20 |  |  |  |  |  |  |  |




## Môi Trường/Công Cụ Thực Hành

### Cài đặt Oracle: [Oracle Database 19c](https://www.oracle.com/database/technologies/oracle-database-software-downloads.html#19c)



### Cài đặt SQL Developer: [SQL Developer](https://www.oracle.com/tools/downloads/sqldev-downloads.html#license-lightbox)


### Cài đặt máy ảo: [Download VirtualBox](https://www.virtualbox.org/wiki/Downloads)



### Cài đặt Oracle VM VirtualBox Extension Pack [Download Oracle VM VirtualBox Extension Pack](https://www.virtualbox.org/wiki/Downloads)
**Note**: Chọn phiên bản phù hợp với phiên bản của VirtualBox đã cài đặt.


### Cài đặt máy ảo: [Link tải máy ảo Virtual Box](https://drive.google.com/file/d/1AlxL2t9DpuGW79hVkj1YUaapSQvDIlER/view)

Windows XP SP3 + Windows Powershell 2.0 + Oracle 11gR2 

(Password user sys: Oracle123456)

MD5: F22E8AEA0DB5B2C217E6EA4F65EE9CBA

Sau khi đã tải đầy đủ các file cần thiết, chúng ta sẽ tiến hành cài đặt máy ảo Cloudera:

- **Bước 1**: Từ giao diện VirtualBox ta chọn vào **Import** (Tools -> Import)

<center>
    <img src="https://github.com/PhamThe-KHDL/IS211.M21-Distributed-Databases/blob/main/Image/0%20-%20GiaoDienVirtualBox.PNG" width="800" alt="GiaoDienVirtualBox" />
</center>

- **Bước 2**: Màn hình sẽ xuất hiện như hình dưới. Tiếp theo, chúng ta sẽ chọn file máy ảo.

<center>
    <img src="https://github.com/PhamThe-KHDL/IS211.M21-Distributed-Databases/blob/main/Image/1%20-%20Import.PNG" width="800" alt="Import" />
</center>

- **Bước 3**: Tìm đến đường dẫn chứa file máy ảo, nhấn chọn vào file và nhấn **Open**.

<center>
    <img src="https://github.com/PhamThe-KHDL/IS211.M21-Distributed-Databases/blob/main/Image/2%20-%20TimFileImport.PNG" width="800" alt="TimFileImport" />
</center>

- **Bước 4**: Sau khi đã chọn được file, ta nhấn **Next**.

<center>
    <img src="https://github.com/PhamThe-KHDL/IS211.M21-Distributed-Databases/blob/main/Image/3%20-%20CaiDat.PNG" width="800" alt="CaiDat" />
</center>

- **Bước 5**: VirtualBox sẽ hiện ra các thông tin máy ảo như hình dưới và chúng ta tiến hành cài đặt bằng cách nhấn vào **Import**.

<center>
    <img src="https://github.com/PhamThe-KHDL/IS211.M21-Distributed-Databases/blob/main/Image/4%20-%20TongTinMayAo.PNG" width="800" alt="TongTinMayAo" />
</center>

- **Bước 6**: Màn hình sẽ xuất hiện ra như hình dưới, ta chọn **Agree**.

<center>
    <img src="https://github.com/PhamThe-KHDL/IS211.M21-Distributed-Databases/blob/main/Image/5%20-%20Agree.PNG" width="800" alt="Agree" />
</center>

- **Bước 7**: Chờ 1 khoảng thời gian để máy ảo cài đặt. Sau khi đã cài đặt xong, ta tiến hành mở máy ảo lên để chạy thử.

<center>
    <img src="https://github.com/PhamThe-KHDL/IS211.M21-Distributed-Databases/blob/main/Image/6%20-%20Finish.PNG" width="800" alt="Finish" />
</center>

- **Bước 8**: Giao diện của máy ảo Windows XP như hình dưới. Đến đây là chúng ta đã cài đặt xong máy ảo để thực hành **Cơ Sở Dữ Liệu Phân Tán**.

<center>
    <img src="https://github.com/PhamThe-KHDL/IS211.M21-Distributed-Databases/blob/main/Image/7%20-%20Done.PNG" width="800" alt="Done" />
</center>



### **Note**: Nếu chưa có tài khoản Oracle thì đăng ký tài khoản Oracle tại -> [Sign up](https://profile.oracle.com/myprofile/account/create-account.jspx)

## Tham Khảo Thêm


## Thực hiện

```
Phạm Đức Thể

Thể ~/~
```



