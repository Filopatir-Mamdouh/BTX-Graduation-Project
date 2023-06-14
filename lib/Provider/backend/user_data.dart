import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graduation_project/Provider/backend/client.dart';

import '../../Logic/database/user_data.dart';

final userDataProvider = Provider<UserData>((ref) {
  return UserData(ref.watch(clientProvider));
});
