# My Jekyll blog

1. `bundle install`
2. `librarian-chef install`
3. `vagrant up`
4. `foreman start`

### Rake Tasks

<table>
  <tr>
    <th>Command</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><code>rake site:generate</code></td>
    <td> Run <code>jekyll build</code> on site directory.</td>
  </tr>
  <tr>
    <td><code>rake site:publish</code></td>
    <td> Commit changes to <code>master</code> branch.</td>
  </tr>
  <tr>
    <td><code>rake "site:post[some title, 2013-05-15]"</code></td>
    <td> Create new post.</td>
  </tr>
  <tr>
    <td><code>rake "site:page[filename.ext]"</code></td>
    <td> Create new page.</td>
  </tr>
</table>
