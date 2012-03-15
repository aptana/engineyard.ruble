require 'engine_yard_tools'

with_defaults :scope => ['source.ruby', 'project.rails'], :output => :discard, :working_directory => :current_project do

  command t(:apply_recipes) do |cmd|
    cmd.invoke { EYCommand.run("recipes apply") }
  end

  command t(:upload_recipes) do |cmd|
    cmd.invoke { EYCommand.run("recipes upload") }
  end

  command t(:download_recipes) do |cmd|
    cmd.invoke { EYCommand.run("recipes download") }
  end

end
