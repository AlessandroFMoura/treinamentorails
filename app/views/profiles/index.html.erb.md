<h1></h1>

<% @profiles.each do |profile| %>
    <%= link_to "Ver profile" , profiles_index_path %>
<% end %>