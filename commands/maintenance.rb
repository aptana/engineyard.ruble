require 'engine_yard_tools'

with_defaults :scope => ['source.ruby', 'project.rails'], :output => :discard, :working_directory => :current_project do
  command t(:turn_maintenance_on) do |cmd|
    cmd.invoke { EYCommand.run("web disable") }
  end

  command t(:turn_maintenance_off) do |cmd|
    cmd.invoke { EYCommand.run("web enable") }
  end
end
