

import 'package:flutter_riverpod/flutter_riverpod.dart';

final sIProvider = Provider<SI>(
  (ref) => SI(),
);


class SI{
  double simpleinterest( principal,  time,  rate){
     return (principal * time* rate)/100;
    
  }
}