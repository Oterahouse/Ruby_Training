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
        <%= link_to("TweetApp", "/") %>
      </div>
      <ul class="header-menus">
        <!-- 以下の1行を削除してください -->
        <% current_user = User.find_by(id: session[:user_id]) %>
        
        <!-- @current_userに書き換えてください -->å
        <% if current_user %>
          <li>
            <!-- @current_userに書き換えてください -->
            <%= link_to(current_user.name, "/users/#{current_user.id}") %>
          </li>
          <li>
            <%= link_to("投稿一覧", "/posts/index") %>
          </li>
          <li>
            <%= link_to("新規投稿", "/posts/new") %>
          </li>
          <li>
            <%= link_to("ユーザー一覧", "/users/index") %>
          </li>
          <li>
            <%= link_to("ログアウト", "/logout", {method: :post}) %>
          </li>
        <% else %>
          <li>
            <%= link_to("TweetAppとは", "/about") %>
          </li>
          <li>
            <%= link_to("新規登録", "/signup") %>
          </li>
          <li>
            <%= link_to("ログイン", "/login") %>
          </li>
        <% end %>
      </ul>
    </header>

    <% if flash[:notice] %>
      <div class="flash">
        <%= flash[:notice] %>
      </div>
    <% end %>
    
    <%= yield %>
  </body>
</html>