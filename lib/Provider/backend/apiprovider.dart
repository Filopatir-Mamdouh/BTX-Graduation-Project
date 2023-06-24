import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graduation_project/Provider/backend/client.dart';

import '../../Logic/database/database.dart';

final apiProvider = Provider((ref) => ApiFunctions(ref.watch(clientProvider)));
