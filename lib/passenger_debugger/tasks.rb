namespace :passenger do
  desc "Restart passenger"
  task :restart do
    system("touch tmp/restart.txt")
  end
  
  desc "Restart passenger in debug mode"
  task :debug do
    system("touch tmp/debug.txt")
    Rake::Task['passenger:restart'].invoke
    puts "Restarting app in debugging mode…\n"
    puts "You must refresh your browser to load the app. Then press ENTER to continue…"
    STDIN.gets
    system 'rdebug -c'
  end
end