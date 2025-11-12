void main(){
  var students = ["ahmed kanzar", "hamza","samad","rayyan adi","moiz"];

  for (var student in students){
    print(student);
  }

  print("Array length: ${students.length}");
  for (int i = 0; i <= students.length-1; i++){
    print("student $i: ${students[i]}");
  }
}