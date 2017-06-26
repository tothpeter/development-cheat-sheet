# Measure the allocated memory for a variable
a = []
"#{ObjectSpace.memsize_of(a)/1024} Kb"

# Collect RSS and Object count on the heap for the current process for drawing 
file_name = "mem_stat.data"
file_path = ENV['HOME'] + "/tmp/memory_reporting/#{file_name}"

open(file_path, 'w') { |f|
  f.puts "date, RSS, Object count on heap"
  f.puts Time.now.to_i.to_s + ", 0, 0"
}

Thread.new do
  pid = Process.pid

  while true
    rss = `ps -eo pid,rss | grep #{pid} | awk '{print $2}'`.to_i / 1024

    open(file_path, 'a') { |f|
      f.puts [Time.now.to_i, rss, GC.stat[:heap_live_slots]].join(', ')
    }

    sleep 1
  end
end
