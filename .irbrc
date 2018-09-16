IRB.conf[:SAVE_HISTORY] = 100

%w{ yaml pp }.each do |lib|
  begin
    require lib
  rescue LoadError => err
    $stderr.puts "Couldn't load #{lib}: #{err}"
  end
end

class Object
  def local_methods
    (methods - Object.instance_methods).sort
  end
end

class Class
  def class_methods
    (methods - Class.instance_methods - Object.methods).sort
  end

  def defined_methods
    methods = {}

    methods[:instance] = new.local_methods
    methods[:class] = class_methods

    methods
  end
end

alias q exit
