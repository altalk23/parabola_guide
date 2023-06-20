import 'package:http/http.dart' as http;

String mainUrl = "https://raw.githubusercontent.com/altalk23/parabola_guide/master/";

Future<String> getContent(String filePath) async {
    final response = await http.get(mainUrl + filePath);

    if (response.statusCode == 200) {
        // If the server did return a 200 OK response, then parse the JSON.
        return response.body;
    } else {
        // If the server did not return a 200 OK response, then throw an exception.
        throw Exception('Failed to load');
    }
}