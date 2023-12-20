//
// //Sorted Bubble
// void main() {
//    List<int> arr = [1,2,3,5,4,100,50,20];
//   // bubblesort(arr);
//   // print("Sorted array: ");
//   // printList(arr);
//   arrange(arr);
//   }
// void bubblesort(List<int> a){
//   int n=a.length;
//   bool swaap;
//   for(int i=0;i<n-1;i++){
//     for(int j=0;j<n-i-1;j++) {
//       if (a[j] > a[j + 1]) {
//         int box = a[j];
//         a[j] = a[j + 1];
//         a[j + 1] = box;
//         swaap = true;
//       }
//       if (swaap=false) {
//         break;
//       }
//     }
//   }
//
//   }
// void printList(List<int> arr) {
//   for (int i = 0; i < arr.length; i++) {
//     print(" ${arr[i]}");
//   }}
// //task 4
// void arrange(List<int>test) {
//   int size = test.length;
//   for (int i = 0; i < size; i++) {
//     print(test[size]);
//   }
// }
bool solution(List<int> a) {
  int n = a.length;
  List<int> b = [];

  for (int i = 0; i < n ~/ 2; i++) {
    b.add(a[i]);
    b.add(a[n - 1 - i]);
  }

  // If the length of a is odd, append the middle element to the end of b
  if (n % 2 == 1) {
    b.add(a[n ~/ 2]);
  }

  // Print the new list b
  print("New list b: $b");

  // Check if the new list b is sorted in strictly ascending order
  return List.generate(b.length - 1, (i) => b[i] <= b[i + 1]).every((bool element) => element);
}

void main() {
  // Example usage
  List<int> a1 = [1, 3, 5, 6, 4, 2];
  bool result1 = solution(a1);
  print(result1); // Output: true

  List<int> a2 = [1, 4, 5, 6, 3];
  bool result2 = solution(a2);
  print(result2); // Output: false
}
