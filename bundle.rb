require 'ruble.rb'

bundle t(:bundle_name) do |bundle|
  bundle.author = 'Allen Yeung'
  bundle.copyright = 'Copyright 2010 Aptana Inc. Distributed under the MIT license.'
  bundle.description = 'Easy deployment with Engine Yard from within Studio 3' 
  bundle.repository = "git://github.com/aptana/engineyard.ruble.git"
  
  bundle.menu t(:bundle_name) do |menu|
    menu.scope = [ "source.ruby", "project.rails" ]

    menu.command t(:deploy_app)
    menu.separator
    menu.command t(:open_ssh_session)

    menu.menu t(:deployment) do |deploy|
      deploy.command t(:list_environments)
      deploy.command t(:retrieve_logs)
      deploy.command t(:rebuild_environment)
      deploy.command t(:rollback_app)
    end
    menu.menu t(:recipes) do |recipe|
      recipe.command t(:apply_recipes)
      recipe.command t(:upload_recipes)
      recipe.command t(:download_recipes)
    end
    menu.menu t(:maintenance) do |web|
      web.command t(:turn_maintenance_on)
      web.command t(:turn_maintenance_off)
    end
  end
end

