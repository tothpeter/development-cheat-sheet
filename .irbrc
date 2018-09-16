IRB.conf[:SAVE_HISTORY] = 100

%w{ yaml pp }.each do |lib|
  begin
    require lib
  rescue LoadError => err
    $stderr.puts "Couldn't load #{lib}: #{err}"
  end
end

alias q exit
