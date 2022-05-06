--Câu 1:
--Mức 1:
read(terminal, $NgayKham);
select BN.MaBN, TenBN, sum(ThanhTien) into $MaBN, $TenBN, $TongTien
from BenhNhan BN, KhamBenh KB, ThuPhi TP
where BN.MaBN = KB.MaBN
	and KB.MaKB = TP.MaKB
	and	NgayKham = $NgayKham
group by BN.MaBN, TenBN;
if #FOUND then write(terminal, $MaBN, $TenBN, $TongTien);
else write(terminal, 'Not Found');

--Mức 2:
read(terminal, $NgayKham);
select BN.MaBN, TenBN, sum(ThanhTien) into $MaBN, $TenBN, $TongTien
from BenhNhan1_B BN, KhamBenh1 KB, ThuPhi TP
where BN.MaBN = KB.MaBN
	and KB.MaKB = TP.MaKB
	and	NgayKham = $NgayKham
group by BN.MaBN, TenBN;
if #FOUND then write(terminal, $MaBN, $TenBN, $TongTien);
select BN.MaBN, TenBN, sum(ThanhTien) into $MaBN, $TenBN, $TongTien
from BenhNhan2_B BN, KhamBenh2 KB, ThuPhi TP
where BN.MaBN = KB.MaBN
	and KB.MaKB = TP.MaKB
	and	NgayKham = $NgayKham
group by BN.MaBN, TenBN;
if #FOUND then write(terminal, $MaBN, $TenBN, $TongTien);
select BN.MaBN, TenBN, sum(ThanhTien) into $MaBN, $TenBN, $TongTien
from BenhNhan3 BN, KhamBenh3 KB, ThuPhi TP
where BN.MaBN = KB.MaBN
	and KB.MaKB = TP.MaKB
	and	NgayKham = $NgayKham
group by BN.MaBN, TenBN;
if #FOUND then write(terminal, $MaBN, $TenBN, $TongTien);

--Mức 3
read(terminal, $NgayKham);
select BN.MaBN, TenBN, sum(ThanhTien) into $MaBN, $TenBN, $TongTien
from BenhNhan1_B BN at site 1_B, KhamBenh1 KB at site 1_B, ThuPhi TP at site 1_B
where BN.MaBN = KB.MaBN
	and KB.MaKB = TP.MaKB
	and	NgayKham = $NgayKham
group by BN.MaBN, TenBN;
if #FOUND then write(terminal, $MaBN, $TenBN, $TongTien);
select BN.MaBN, TenBN, sum(ThanhTien) into $MaBN, $TenBN, $TongTien
from BenhNhan2_B BN at site 2, KhamBenh2 KB at site 2, ThuPhi TP at site 2
where BN.MaBN = KB.MaBN
	and KB.MaKB = TP.MaKB
	and	NgayKham = $NgayKham
group by BN.MaBN, TenBN;
if #FOUND then write(terminal, $MaBN, $TenBN, $TongTien);
select BN.MaBN, TenBN, sum(ThanhTien) into $MaBN, $TenBN, $TongTien
from BenhNhan3 BN at site 3, KhamBenh3 KB at site 3, ThuPhi TP at site 3
where BN.MaBN = KB.MaBN
	and KB.MaKB = TP.MaKB
	and	NgayKham = $NgayKham
group by BN.MaBN, TenBN;
if #FOUND then write(terminal, $MaBN, $TenBN, $TongTien);

--Câu 2:
--Mức 1:
read(terminal, $MaPK)
select BN.MaBN, TenBN into $MaBN, $TenBN
from BenhNhan BN, KhamBenh KB
where BN.MaBN = KB.MaBN
	and MaPK = $MaPK
	and NgayKham = '01/04/2016'
if #FOUND then write(terminal, $MaBN, $TenBN);
else write(terminal, 'Not Found');

--Mức 2:
read(terminal, $MaPK)
select BN.MaBN, TenBN into $MaBN, $TenBN
from BenhNhan1_B BN, KhamBenh1 KB
where BN.MaBN = KB.MaBN
	and MaPK = $MaPK
	and NgayKham = '01/04/2016';
if #FOUND then write(terminal, $MaBN, $TenBN);
else
begin
	select BN.MaBN, TenBN into $MaBN, $TenBN
	from BenhNhan2_B BN, KhamBenh2 KB
	where BN.MaBN = KB.MaBN
		and MaPK = $MaPK
		and NgayKham = '01/04/2016';
	if #FOUND then write(terminal, $MaBN, $TenBN);
	else
	begin
		select BN.MaBN, TenBN into $MaBN, $TenBN
		from BenhNhan3 BN, KhamBenh3 KB
		where BN.MaBN = KB.MaBN
			and MaPK = $MaPK
			and NgayKham = '01/04/2016';
		if #FOUND then write(terminal, $MaBN, $TenBN);
		else write(terminal, 'Not Found');
	end
end

--Mức 3:
read(terminal, $MaPK)
select BN.MaBN, TenBN into $MaBN, $TenBN
from BenhNhan1_B BN at site 1_B, KhamBenh1 KB at site 1_B
where BN.MaBN = KB.MaBN
	and MaPK = $MaPK
	and NgayKham = '01/04/2016';
if #FOUND then write(terminal, $MaBN, $TenBN);
else
begin
	select BN.MaBN, TenBN into $MaBN, $TenBN
	from BenhNhan2_B BN at site 2, KhamBenh2 KB at site 2
	where BN.MaBN = KB.MaBN
		and MaPK = $MaPK
		and NgayKham = '01/04/2016';
	if #FOUND then write(terminal, $MaBN, $TenBN);
	else
	begin
		select BN.MaBN, TenBN into $MaBN, $TenBN
		from BenhNhan3 BN at site 3, KhamBenh3 KB at site 3
		where BN.MaBN = KB.MaBN
			and MaPK = $MaPK
			and NgayKham = '01/04/2016';
		if #FOUND then write(terminal, $MaBN, $TenBN);
		else write(terminal, 'Not Found');
	end
end

--Câu 3:
--Mức 1:
select MaPK into $MaPK
from PhongKham
where ThanhPho = 'TP.HCM';
update KhamBenh
set MaPK = $MaPK
where MaBN = 'BN10';

--Mức 2:
select MaPK into $MaPK
from PhongKham1;

--Chuyển thông tin bệnh nhân từ mảnh 3 sang mảnh 1 A và B
select TenBN, NgaySinh, DiaChi, DienThoai, GioiTinh into $TenBN, $NgaySinh, $DiaChi, $DienThoai, $GioiTinh
from BenhNhan3
where MaBN = 'BN10';

insert into BenhNhan1_A (MaBN, DienThoai) values ('BN10', $DienThoai);
insert into BenhNhan1_B (MaBN, TenBN, NgaySinh, DiaChi, GioiTinh) values ('BN10', $TenBN, $NgaySinh, $DiaChi, $GioiTinh);

--Chuyển thông tin khám bệnh của bệnh nhân từ mảnh 3 sang mảnh 1
select MaKB, YeuCauKham, NgayKham, KetLuan, MaBS into $MaKB, $YeuCauKham, $NgayKham, $KetLuan, $MaBS
from KhamBenh3
where MaBN = 'BN10';

insert into KhamBenh1 (MaKB, MaBN, YeuCauKham, NgayKham, KetLuan, MaBS, MaPK) values ($MaKB, 'BN10', $YeuCauKham, $NgayKham, $KetLuan, $MaBS, $MaPK);

--Xóa các thông tin cũ sau khi đã copy xong
delete from KhamBenh3 where MaBN = 'BN10'; 
delete from BenhNhan3 where MaBN = 'BN10';

--Mức 3:
select MaPK into $MaPK
from PhongKham1 at site 1_A;

--Chuyển thông tin bệnh nhân từ mảnh 3 sang mảnh 1 A và B
select TenBN, NgaySinh, DiaChi, DienThoai, GioiTinh into $TenBN, $NgaySinh, $DiaChi, $DienThoai, $GioiTinh
from BenhNhan3 at site 3
where MaBN = 'BN10';

send $DienThoai from site 3 to site 1_A;
insert into BenhNhan1_A at site 1_A (MaBN, DienThoai) values ('BN10', $DienThoai);

send $TenBN, $NgaySinh, $DiaChi, $GioiTinh from site 3 to site 1_B
insert into BenhNhan1_B at site 1_B (MaBN, TenBN, NgaySinh, DiaChi, GioiTinh) values ('BN10', $TenBN, $NgaySinh, $DiaChi, $GioiTinh);

--Chuyển thông tin khám bệnh của bệnh nhân từ mảnh 3 sang mảnh 1
select MaKB, YeuCauKham, NgayKham, KetLuan, MaBS into $MaKB, $YeuCauKham, $NgayKham, $KetLuan, $MaBS
from KhamBenh3 at site 3
where MaBN = 'BN10';

send $MaKB, $YeuCauKham, $NgayKham, $KetLuan, $MaBS from site 3 to site 1_A;
insert into KhamBenh1 at site 1_A (MaKB, MaBN, YeuCauKham, NgayKham, KetLuan, MaBS, MaPK) values ($MaKB, 'BN10', $YeuCauKham, $NgayKham, $KetLuan, $MaBS, $MaPK);

send $MaKB, $YeuCauKham, $NgayKham, $KetLuan, $MaBS from site 3 to site 1_B;
send $MaPK from site 1_A to site 1_B;
insert into KhamBenh1 at site 1_B (MaKB, MaBN, YeuCauKham, NgayKham, KetLuan, MaBS, MaPK) values ($MaKB, 'BN10', $YeuCauKham, $NgayKham, $KetLuan, $MaBS, $MaPK);

--Xóa các thông tin cũ sau khi đã copy xong
delete from KhamBenh3 at site 3 where MaBN = 'BN10'; 
delete from KhamBenh3 at site 4 where MaBN = 'BN10'; 
delete from BenhNhan3 at site 3 where MaBN = 'BN10';
delete from BenhNhan3 at site 4 where MaBN = 'BN10';