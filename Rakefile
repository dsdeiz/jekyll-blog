# https://github.com/mojombo/jekyll/blob/master/Rakefile#L112-L146
# http://ixti.net/software/2013/01/28/using-jekyll-plugins-on-github-pages.html
namespace :site do
  desc "Generate site."
  task :generate do
    Dir.chdir("site") do
      sh 'jekyll build'
    end
  end

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