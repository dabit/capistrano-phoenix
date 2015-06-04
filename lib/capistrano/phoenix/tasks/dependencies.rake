desc "Run mix deps.get on the server"
namespace :phoenix do
  task :dependencies do
    on roles(:all) do |host|
      within(current_path) do
        execute(:mix, "deps.get")
      end
    end
  end
end
