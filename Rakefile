require 'time'

# https://github.com/mojombo/jekyll/blob/master/Rakefile#L112-L146
# http://ixti.net/software/2013/01/28/using-jekyll-plugins-on-github-pages.html
# https://github.com/plusjade/jekyll-bootstrap/blob/master/Rakefile
namespace :site do

  # Usage: rake "site:post[some title, 2013-05-15]"
  desc "Create new post."
  task :post, [:title, :date] do |t, args|
    args.with_defaults(:title => 'New post...', :date => Time.now.strftime("%Y-%m-%d"))
    begin
      date = Time.parse(args.date).strftime("%Y-%m-%d")
    rescue
      puts "Date format must be YYYY-MM-DD."
      exit -1
    end

    filename = args.title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
    filename = "site/_posts/#{date}-#{filename}.md"

    if File.exist?(filename)
      puts "#{File.basename(filename)} already exists."
      exit -1
    end

    puts "Creating new post: #{filename}"
    open(filename, 'w') do |post|
      post.puts "---"
      post.puts "layout: post"
      post.puts "title: #{args.title}"
      post.puts "date: #{date}"
      post.puts "categories:"
      post.puts "tags:"
      post.puts "---"
    end
  end

  # Build jekyll.
  desc "Generate site."
  task :generate do
    Dir.chdir("site") do
      sh 'jekyll build'
    end
  end

  # Deploy site.
  desc "Commit site to master branch."
  task :publish => [:generate] do
    # Make sure we are up to date.
    Dir.chdir("generated-site") do
      sh "git pull origin master"
    end

    # Delete all contents of 'generated-site' directory.
    rm_r Dir.glob('generated-site/*')

    # Copy the contents of the generated site over to 'generated site'
    # directory.
    Dir.glob("site/*") do |path|
      next unless path == "site/_site"
      cp_r "#{path}/.", 'generated-site'
    end

    sha = `git log`.match(/[a-z0-9]{40}/)[0]
    Dir.chdir('generated-site') do
      sh "git add ."
      sh "git commit -am 'Updating to #{sha}.'"
      sh "git push origin master"
    end
  end

end
