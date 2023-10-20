import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'app/app.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://ztzgyhrwtfxcurdvngcb.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inp0emd5aHJ3dGZ4Y3VyZHZuZ2NiIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTExNjk2NjUsImV4cCI6MjAwNjc0NTY2NX0.fFL4JnlYMgO986_Puifm2N9AqQkL5WIFiyuO7yaOep8',
    authFlowType: AuthFlowType.pkce
  );
  runApp(const App());
}

final supabase = Supabase.instance.client;
