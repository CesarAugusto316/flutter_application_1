import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/chat/chat_screen.dart';
import 'package:flutter_application_1/presentation/providers/chat_provider.dart';
import 'package:flutter_application_1/presentation/theme/app_theme.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme().theme(selectColor: 0, theme: Brightness.light),
          home: const ChatScreen()),
    );
  }
}
