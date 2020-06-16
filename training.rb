<!DOCTYPE html>
<html>
  <head>
    <title>TweetApp</title>
    <%= csrf_meta_tags %>

    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
  </head>

  <body>
    <header>
      <div class="header-logo">
        <!-- 以下のリンクをlink_toメソッドを用いて変更してください -->
        <%= link_to("TweetApp", "/")%>
      </div>
      <ul class="header-menus">
        <li>
          <!-- 以下のリンクをlink_toメソッドを用いて変更してください -->
          <%= link_to("TweetAppとは", "/about") %>
        </li>
        <li>
          <!-- ここにlink_toメソッドを用いて投稿一覧ページへのリンクを作成してください -->
          <%= link_to("投稿一覧", "/posts/index") %>
        </li>
      </ul>
    </header>
    <%= yield %>
  </body>
</html>

