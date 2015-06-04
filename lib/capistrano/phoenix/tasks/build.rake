namespace :phoenix do
  desc "Run brunch build and mix phoenix.digest ond the server"
  task :assets do
    on roles(:all) do |host|
      within(current_path) do
        execute(:brunch, "build", "--#{fetch(:mix_env)}")
        execute(:mix, "phoenix.digest")
      end
    end
  end

  desc "Run mix release on the server"
  task :build do
    on roles(:all) do |host|
      within(current_path) do
        execute(:mix, "release")
      end
    end
  end

  desc "Run mix deps.clean on the server"
  task :clean do
    on roles(:all) do |host|
      within(current_path) do
        execute(:mix, "deps.clean", "--all")
      end
    end
  end

  desc "Run mix ecto.migrate on the server"
  task :migrations do
    on roles(:all) do |host|
      within(current_path) do
        execute(:mix, "ecto.migrate")
      end
    end
  end
end
