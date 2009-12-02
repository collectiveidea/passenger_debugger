namespace :passenger do
  desc "Restart passenger"
  task :restart do
    system("touch tmp/restart.txt")
  end
  
  desc "Restart passenger in debug mode"
  task :debug do
    system("touch tmp/debug.txt")
    Rake::Task['passenger:restart'].invoke
  end
end