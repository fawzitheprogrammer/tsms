// Future<List<PhoneNumberModel>> fetchPhoneNumbers(String countryCode) async {
//   try {
//     final response =
//         await http.get(Uri.parse("https://smstome.com/country/$countryCode"));
//     if (response.statusCode == 200) {
//       var doc = parser.parse(response.body);
//       var elements = doc.querySelectorAll(".column .row .column");
//       print("AC SIZE: ${elements.length}"); // Example of logging

//       for (var element in elements) {
//         var rows = element.querySelectorAll(".row");

//         String origin = rows[0].querySelector("small")!.text;
//         var isNew = rows[1].querySelectorAll("strong");
//         String addedOn = rows[1].querySelector("small")!.text;
//         var urlElement = rows[2].querySelector("a")!;
//         String url = urlElement.attributes['href']!;
//         String phoneNumber = urlElement.text;

//         var phoneNumberModel =
//             PhoneNumberModel(origin, addedOn, url, phoneNumber);
//         if (isNew.isNotEmpty) {
//           phoneNumberModel.isNew = true;
//         }
//         phoneNumberModelsList.add(phoneNumberModel);
//       }
//     } else {
//       print(
//           "Failed to load the webpage with status code: ${response.statusCode}");
//     }
//   } catch (e) {
//     print("ERR: $e");
//   }
//   return phoneNumberModelsList;
// }



