/// Passing in a word would return the first letter capitalised
/// Passing in multiple words separated by a space, would only
/// return the first letter of 1st and last words in the string
///
/// Eg:
/// Martin => M
/// Andrey Aggasi => AA
/// Tony John Dexter => TD
String extractShortRepr(String name) {
  var splitStrings = name.split(' ');
  var result = splitStrings[0][0];

  if (splitStrings.length > 1) {
    result += splitStrings[splitStrings.length - 1][0];
  }

  return result.toUpperCase();
}
