// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase_flutter/supabase_flutter.dart';

//Discord Auth with Discord-Supabase
final supabase = SupaFlow.client;
const bool kIsWeb = bool.fromEnvironment('dart.library.js_util');
Future discordAuth() async {
  try {
    await supabase.auth.signInWithOAuth(
      OAuthProvider.discord,
      redirectTo: kIsWeb
          ? '{web_url}/home'
          : '{app}://{app}.com',
    );
  } catch (e) {
    return null;
  }
}
