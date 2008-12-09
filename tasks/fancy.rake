def local_run(cmd)
  puts " [localhost] executing: #{cmd}"
  system(cmd)
end


desc "Arbitrary task system."
rule "" do |t|
  subtask_dir = File.dirname(__FILE__) + '/../subtasks'
  subtask, arg = t.name.split(/\:/, 2)
puts "#{subtask_dir}/#{subtask}.rb"
  if File.exist?("#{subtask_dir}/#{subtask}.rb")
    $arg = arg
    puts "Running #{subtask_dir}/#{subtask}.rb"
    load "#{subtask_dir}/#{subtask}.rb"
  end

end
