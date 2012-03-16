require 'engine_yard_tools'

with_defaults :scope => ['source.ruby', 'project.rails'], :output => :discard, :working_directory => :current_project do
  command t(:deploy_app) do |cmd|
    cmd.invoke { EYCommand.run("deploy") }
  end

  command t(:open_ssh_session) do |cmd|
    cmd.invoke { EYCommand.run("ssh") }
  end

  command t(:list_environments) do |cmd|
    cmd.invoke { EYCommand.run("environments") }
  end

  command t(:retrieve_logs) do |cmd|
    cmd.invoke { EYCommand.run("logs") }
  end

  command t(:rebuild_environment) do |cmd|
    cmd.invoke { EYCommand.run("rebuild") }
  end

  command t(:rollback_app) do |cmd|
    cmd.invoke { EYCommand.run("rollback") }
  end
end
