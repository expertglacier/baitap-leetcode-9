class Solution {
  int calPoints(List<String> operations) {
    // List record ghi lại các hành động tương ứng với điều kiện đã cho.
    List<String> record = [];
    int result = 0;

    // Lấy từng phần tử trong list operations.
    for (int i = 0; i < operations.length; i++) {
      // Nếu phần tử hiện tại là "C".
      if (operations[i] == "C") {
        // Xoá phần tử cuối cùng trong list record.
        record.removeLast();
      } else if (operations[i] == "D") {
        // Nếu phần tử hiện tại là "D".
        // Lấy phần tử cuối cùng trong list record nhân 2.
        int temp = 2 * int.parse(record.last);
        // Thêm kết quả phép toán nhân vào cuối list record.
        record.add(temp.toString());
      } else if (operations[i] == "+") {
        // Nếu phần tử hiện tại là "+".
        // Lấy phần tử cuối cùng và phần tử liền kề phía trước của nó cộng với nhau.
        int temp = int.parse(record.last) + int.parse(record[record.length - 2]);
        // Thêm kết quả phép toán cộng vào cuối list record.
        record.add(temp.toString());
      } else {
        // Nếu phần tử hiện tại là các chữ số.
        // Thêm các chữ số vào cuối list record.
        record.add(operations[i]);
      }
    }

    // Nếu list record rỗng, trả về kết quả bằng 0.
    if (record.isEmpty) {
      return result;
    }

    // Nếu list record không rỗng, cộng tổng của các chữ số trong list record.
    for (int i = 0; i < record.length; i++) {
      result += int.parse(record[i]);
    }

    // Trả về kết quả.
    return result;
  }
}