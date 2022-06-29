-- Nói về mức 1 trước:
-- Câu này đầu tiên em sẽ phải nhập vào MaTuyen, đọc lên từ terminal
read(terminal, $MaTuyen)
-- Sau đó kiểm tra MaTuyen có xuất phát từ KienGiang hay không?
SELECT *
FROM TUYEN T, BENXE BX
WHERE T.MABX = BX.MABX
	AND BX.DIACHI = 'KienGiang'
	AND T.MATUYEN = $MaTuyen
-- Nếu có kết quả thì tiến hành cập nhật giá vé
UPDATE TUYEN
SET GVMIN = GVMIN * 1.05
WHERE MATUYEN = $MaTuyen

-- HOẶC, mình có thể xử lý bằng 1 câu update có from cũng được:
UPDATE TUYEN
SET GVMIN = GVMIN * 1.05
FROM BENXE BX
WHERE TUYEN.MABX = BX.MABX
	AND BX.DIACHI = 'KienGiang'
	AND TUYEN.MATUYEN = $MaTuyen
	
--Mức 3 thì mình biết được thông tin mảnh và thông tin site, cần chỉ định rõ là mình làm việc trên mảnh nào và site nào.
-- Thêm các thông tin nữa là mình biết BENXE3 là bến xe xuất phát từ KienGiang và TUYEN3 là dẫn xuất từ BENXE3, do đó các tuyến xe trong TUYEN3 đều xuất phát từ KienGiang. Mình chỉ cần vào thao tác trực tiếp với mảnh đó thôi, không cần phải kiểm tra KienGiang nữa. Nếu $MaTuyen nhập vào không xuất phát từ KienGiang thì trong mảnh TUYEN3 không có, không thao tác update được, khỏi cần quan tâm.
-- Giá trị sửa đổi là giá trị GVMIN không liên quan đến vị từ định tính, nên không cần di chuyển mục dữ liệu giữa các mảnh.
-- Mảnh TUYEN3 thì có trong 2 site HCM, KienGiang; do đó, theo quy tắc read one write all thì thao tác write phải write ở cả 2 site.

UPDATE TUYEN3 at site HCM
SET GVMIN = GVMIN * 1.05
WHERE MATUYEN = $MaTuyen

UPDATE TUYEN3 at site KienGiang
SET GVMIN = GVMIN * 1.05
WHERE MATUYEN = $MaTuyen