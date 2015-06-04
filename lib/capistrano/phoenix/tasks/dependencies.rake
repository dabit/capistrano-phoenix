desc "Run mix deps.get on the server"
namespace :phoenix do
  task :dependencies do
    on roles(:all) do |host|
      within(current_path) do
        execute(:mix, "deps.get")
      end
    end
  end

  desc "Run npm install on the server"
  namespace :node do
    task :dependencies do
      on roles(:all) do |host|
        within(current_path) do
          execute(:npm, "install")
        end
      end
    end
  end
end
