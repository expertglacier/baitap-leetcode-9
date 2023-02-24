class Solution {
  int dayOfYear(String date) {
    // Lấy số ngày của date.
    int day = int.parse(date.split('-')[2]);
    
    // Lấy số tháng của date.
    int month = int.parse(date.split('-')[1]);

    // Lấy số năm của date.
    int year = int.parse(date.split('-')[0]);
    int result = 0;

    // Tạo số ngày của các tháng.
    Map<int, int> days = {
      1: 31,
      2: 28,
      3: 31,
      4: 30,
      5: 31,
      6: 30,
      7: 31,
      8: 31,
      9: 30,
      10: 31,
      11: 30,
      12: 31,
    };

    // Nếu là năm nhuận đổi tháng 2 thành 29 ngày.
    if (year % 4 == 0 && year % 100 != 0 ||
        year % 100 == 0 && year % 400 == 0) {
      days[2] = 29;
    }

    // Tính tổng số ngày của các tháng liền trước tháng đã cho.
    for (int i = 1; i < month; i++) {
      result += days[i]!;
    }

    // Cộng số ngày của tháng đã cho.
    result += day;

    return result;
  }
}