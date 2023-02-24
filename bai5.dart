class Solution {
  bool isPowerOfFour(int n) {
    // Kiểm tra điều kiện, nếu điều kiện không đúng thực hiện đệ quy.
    if (n < 1) return false;
    if (n == 1) return true;
    if (n % 4 != 0) return false;

    return isPowerOfFour(n ~/ 4);
  }
}