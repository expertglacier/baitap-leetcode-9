class Solution {
  bool judgeCircle(String moves) {
    // Biến temp đếm số lần xuất hiện của các chữ
    // "R", "L", "U", "D" trong chuỗi moves.
    Map<String, int> temp = {
      "R": 0,
      "L": 0,
      "U": 0,
      "D": 0,
    };

    // Lấy từng chữ cái trong chuỗi moves.
    for (int i = 0; i < moves.length; i++) {
      // Tăng số lần xuất hiện của chữ hiện tại thêm 1.
      temp[moves[i]] = temp[moves[i]]! + 1;
    }

    // Nếu số lần đi sang trái bằng số lần đi sang phải,
    // số lần đi lên trên bằng số lần đi xuống, thì trả về
    // true, ngược lại trả về true.
    return (temp["R"] == temp["L"] && temp["U"] == temp["D"]);
  }
}
