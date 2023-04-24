class DisplayNameModel{
  var lstName = ["Manisha", "Aarati", "Dinesh"];

  String displayName(var index) => lstName[((index % lstName.length))];
}