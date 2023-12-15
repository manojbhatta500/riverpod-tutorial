import 'package:flutter_riverpod/flutter_riverpod.dart';

final count = StateProvider((ref) => 0);

//name provider

final nameprovider = StateProvider((ref) => '');

// school provider

final schoolprovider = StateProvider((ref) => '');

// bool value to show the codes

final boolprovider = StateProvider((ref) => false);
