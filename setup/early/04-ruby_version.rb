if options[:rvm].include? 'system'
  step "Setting Ruby version to sytem default"
  on hosts, "rvm --default system" 
elsif options[:rvm].include? 'skip'
  Log.notify "Skipping set ruby version"
else 
  step "Setting Ruby version"
  on hosts, "rvm --default use #{options[:rvm]}"
end
