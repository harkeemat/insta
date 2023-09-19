// TODO Implement this library.
class UrlsBase {
  static String urlGetFollows(
      String username, String password, String getInsta) {
        //print($username);
    return getInsta;
  }

  static String urlLikeAndComment(String username, String password,
      String getInsta, String comment, String limit) {
    return 'https://api-online.herokuapp.com/instaCommentAllFeed?name=$username&password=$password&userinsta=$getInsta&comment=$comment&limit=$limit';
  }
}