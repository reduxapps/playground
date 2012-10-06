app_path = "/apps/playground"
working_directory app_path
listen 8080 # by default Unicorn listens on port 8080
worker_processes 2 # this should be >= nr_cpus
pid "#{app_path}/tmp/pids/unicorn.pid"
stderr_path "#{app_path}/log/unicorn.log"
stdout_path "#{app_path}/log/unicorn.log"
