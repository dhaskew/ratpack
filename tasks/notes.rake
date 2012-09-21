desc "find TODO,FIXME, and related"
task :notes => ['notes:todo','notes:fixme']

namespace :notes do
  desc "find #TODO"
  task :todo do
    puts "-"*87
    sh %{grep -rn '#TODO' * --exclude Rakefile --exclude notes.rake --exclude-dir coverage | awk -F'#' '{printf "%-30s %s\\n" ,$1, $2;}'} do |ok,res|
      #if ! ok
      #    puts "No #TODO notes found (grep status = #{res.exitstatus})"
      #end
    end
  end
  desc "find #FIXME"
  task :fixme do
    puts "-"*87
    sh %{grep -rn '#FIXME' * --exclude Rakefile --exclude notes.rake --exclude-dir coverage | awk -F'#' '{printf "%-30s %s\\n" ,$1, $2;}'} do |ok,res|
      #if ! ok
      #    puts "No #FIXME notes found (grep status = #{res.exitstatus})"
      #end
    end
  end
end
