# My Jekyll blog

1. `bundle install`
2. `librarian-chef install`
3. `vagrant up`
4. `foreman start`

### Rake Tasks

`rake site:generate`                       | Run `jekyll build` on site directory.
`rake site:publish`                        | Commit changes to `master` branch.
`rake "site:post[some title, 2013-05-15]"` | Create new post.
`rake "site:page[filename.ext]"`           | Create new page.
