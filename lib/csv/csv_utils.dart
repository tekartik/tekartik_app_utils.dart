// Fields containing line breaks (CRLF), double quotes, and commas should be enclosed in double-quotes.
// If double-quotes are used to enclose fields, then a double-quote appearing inside a field must be escaped by preceding it with another double quote. For example:
String escapeString(String text) {
  if (text == null) {
    return null;
  }
  var needEnclose = false;
  if (text.contains('"')) {
    text = text.replaceAll('"', '""');
    needEnclose = true;
  }
  if (text.contains('\r') || text.contains('\n') || text.contains(',')) {
    needEnclose = true;
  }

  if (needEnclose) {
    text = '"$text"';
  }
  return text;
}
