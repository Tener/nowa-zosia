atom_feed do |feed|
    feed.title("Zosia 2011")
    feed.updated(@posts.first.created_at)

    for post in @posts
      feed.entry(post) do |entry|
        entry.title(post.title)
        entry.content(post.content, :type => 'html')

        entry.author do |author|
          author.name("KSI")
        end
      end
    end
  end