bind 'tcp://0.0.0.0:9292'

sock_file = File.expand_path('puma.sock', File.dirname(__FILE__))
bind "unix://#{sock_file}"

directory File.dirname(__FILE__)

activate_control_app 'auto'
state_path 'puma.state'
pidfile 'puma.pid'

daemonize true
