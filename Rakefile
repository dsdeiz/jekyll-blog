namespace :site do
  desc "Generate site."
  task :generate do
    Dir.chdir("site") do
      sh 'jekyll build'
    end
  end

  # @see https://github.com/mojombo/jekyll/blob/master/Rakefile#L112-L146
  desc "Commit site to master branch."
  task :publish => [:generate] do
    Dir.chdir("generated-site") do
      sh "git pull origin master"
    end

    Dir.glob("site/*") do |path|
      next if path == "_site"
      sh "cp -R #{path} generated-site/"
    end

    sha = `git log`.match(/[a-z0-9]{40}/)[0]
    Dir.chdir('generated-site') do
      sh "git add ."
      sh "git commit -m 'Updating to #{sha}.'"
      sh "git push origin master"
    end
  end

end
