module TumblelogHelper
  def get_post_body(post)
    type = post['type']
    body = case type
    when 'video' then
        "<% begin %>
        <td><%= post['player'][2]['embed_code'].html_safe %></td>
        <% rescue %>
        <td>Something went wrong with this post's html.</td>
        <% end %>"

    when 'photo' then
        "<% begin %>
        <td><img src='<%= post['original_size']['url'] %>'><td>
        <% rescue %>
        <td>Something went wrong with this post's html.</td>
        <% end %>"
    end
  end
end
