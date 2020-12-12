import 'dart:io';
import 'package:ansicolor/ansicolor.dart';

void main() {
  final rootDir = Directory.current;
  final textAmber400 = AnsiPen()..rgb(r: 251, g: 191, b: 36);
  final textViolet500 = AnsiPen()..rgb(r: 139, g: 92, b: 246);
  final textRed600 = AnsiPen()..rgb(r: 220, g: 38, b: 38);

  final commitFile = File(rootDir.path + '/.git/COMMIT_EDITMSG');
  final commitMessage = commitFile.readAsStringSync();

  final regExp = RegExp(
    // r'(fix|feat|wip|none|chore|refactor|doc|style|test)\(\w+\):\s?(\[\DEV-\d+])?.+',
    '^(revert: )?(feat|fix|docs|dx|style|refactor|perf|test|workflow|build|ci|chore|types|wip|release)(\(.+\))?: .{1,50}',
  );

  final valid = regExp.hasMatch(commitMessage);

  if (!valid) {
    print(textRed600('\nInvalid commit message format'));
    print(textAmber400(
        '\nProper commit message format is required for automated changelog generation\nExamples:\n'));
    print(textViolet500('feat(compiler): add comments option`)\n'));
    print(textViolet500('fix(reducer): handle events on blur (close #28)\n'));
    exitCode = 1;
  }
}
