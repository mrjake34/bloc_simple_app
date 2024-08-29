enum RoutePath {
  splash('/'),
  home('/home'),
  detail('/detail_page'),
  edit('/edit_page'),

  simpleOne('/simple_one/'),
  simpleTwo('/simple_two/'),
  ;

  const RoutePath(this.path);
  final String path;
}
