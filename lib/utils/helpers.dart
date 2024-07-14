
var checkValidEmail = (String email) {
  if (email.isEmpty) {
    return 'Email is required';
  }
  if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
    return 'Please enter a valid email';
  }
  return null;
};

var checkValidCameraLink = (String link) {
  if (link.isEmpty) {
    return 'Camera link is required';
  }
  if (!RegExp(r'^https://www\.youtube\.com/watch\?v=[\w-]{11}$').hasMatch(link)) {
    return 'Please enter a valid camera link';
  }
  return null;
};

