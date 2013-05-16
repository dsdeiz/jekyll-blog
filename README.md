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
    <td>`rake site:generate`</td>
    <td> Run `jekyll build` on site directory.</td>
  </tr>
  <tr>
    <td>`rake site:publish`</td>
    <td> Commit changes to `master` branch.</td>
  </tr>
  <tr>
    <td>`rake "site:post[some title, 2013-05-15]"`</td>
    <td> Create new post.</td>
  </tr>
  <tr>
    <td>`rake "site:page[filename.ext]"`</td>
    <td> Create new page.</td>
  </tr>
</table>
