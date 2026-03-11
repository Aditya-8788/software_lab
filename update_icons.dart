import 'dart:io';

void main() {
  var dir = Directory('lib');
  for (var file in dir.listSync(recursive: true)) {
    if (file is File && file.path.endsWith('.dart')) {
      var content = file.readAsStringSync();
      var changed = false;
      
      var regex = RegExp(r"SvgPicture\.asset\('assets/icons/([^']+)'\)");
      if (regex.hasMatch(content)) {
        content = content.replaceAllMapped(regex, (match) {
          return "SvgPicture.asset('assets/icons/${match.group(1)}', height: 15, width: 15)";
        });
        changed = true;
      }

      var regex2 = RegExp(r'SvgPicture\.asset\("assets/icons/([^"]+)"\)');
      if (regex2.hasMatch(content)) {
        content = content.replaceAllMapped(regex2, (match) {
          return 'SvgPicture.asset("assets/icons/${match.group(1)}", height: 15, width: 15)';
        });
        changed = true;
      }
      
      var cameraRegex = RegExp(r"height:\s*40,\s*width:\s*40");
      if (cameraRegex.hasMatch(content)) {
          content = content.replaceAll(cameraRegex, "height: 15, width: 15");
          changed = true;
      }

      if (changed) {
        file.writeAsStringSync(content);
        print('Updated ${file.path}');
      }
    }
  }
}
