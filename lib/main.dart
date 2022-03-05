import 'package:courses_app/ui/login.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

Future<void> main() async {
  //--setting up parse initially at the main
  //init widget binding for platform bridge
  WidgetsFlutterBinding.ensureInitialized();

  var keyParseApplicationId = "xkcOF1AWeiUwHfowYZasVbbvqIf6j4A2UJQeVNO6";
  var keyParseServerUrl = "https://parseapi.back4app.com";
  var keyParseClientKey = "zMp6PjXCfsNDI4r4RQ3iGyHE79b82Vx3SsiJkGxD";
  var store = await CoreStoreSembastImp.getInstance(password: "Pwani");
  await Parse().initialize(
      keyParseApplicationId,
      keyParseServerUrl,
      clientKey: keyParseClientKey,
      autoSendSessionId: true,
      coreStore: store);
  //--
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is  the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
    );
  }
}
