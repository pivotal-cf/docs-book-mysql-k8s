# Redirect all production http traffic to https
r301 %r{.*}, 'https://docs.pivotal.io$&', :if => Proc.new { |rack_env|
  rack_env['SERVER_NAME'] == 'docs.pivotal.io' && rack_env['HTTP_X_FORWARDED_PROTO'] == 'http'
}

r301 '/tanzu-mysql-kubernetes/1-n/bind-app.html', '/tanzu-mysql-kubernetes/1-n/connecting-apps.html'

r301 %r{/tanzu-mysql-kubernetes/(?![\d-]+)(.*)}, "/tanzu-mysql-kubernetes/1-0/$1"
