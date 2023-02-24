class Solution {
  // Nếu số lượng đá chia hết cho 4 sẽ thua, ngược lại là thắng.
  bool canWinNim(int n) {
    if (n % 4 != 0) {
      return true;
    } else {
      return false;
    }
  }
}
