# Add your own tasks in files placed in libs/tasks ending in .rake,
# for example libs/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

TemplateApp::Application.load_tasks

desc "API Routes"
task :routes do
  puts "API Routes:"
  API.routes.each do |api|
    method = api.route_method.ljust(10)
    path = api.route_path.gsub(':version',api.route_version)
    desc = api.route_description
    puts "#{method} #{path.ljust(30)} #{desc}"
    puts "           params: #{api.route_params.to_json}"
    puts ""
  end
end
