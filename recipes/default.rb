node[:applications].each do |app, data|
  pidfile = "/var/www/#{app}/tmp/pids/#{app}_resque.pid"

  template "/etc/monit.d/#{app}_resque.conf" do
    owner 'root'
    group 'root'
    mode 0644
    source 'monitrc.erb'

    variables({
      :app_name => app,
      :pidfile  => pidfile
    })
  end

  template "/etc/init.d/#{app}_resque" do
    owner 'root'
    group 'root'
    mode 0744
    source 'initd.erb'

    variables({
      :rails_env => node.chef_environment.downcase,
      :app_name => app,
      :pidfile  => pidfile
    })
  end

  service "#{app}_resque" do
    action :enable
  end

  execute 'Start Resque' do
    command "/etc/init.d/#{app}_resque start"

    creates pidfile
  end

  execute 'Reload Monit' do
    command 'monit reload'
  end

  execute 'Validate all monitored services' do
    command "monit restart #{app}_resque"
  end
end
