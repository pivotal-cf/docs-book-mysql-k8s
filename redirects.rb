# Redirect all production http traffic to https
r301 %r{.*}, 'https://docs.pivotal.io$&', :if => Proc.new { |rack_env|
  rack_env['SERVER_NAME'] == 'docs.pivotal.io' && rack_env['HTTP_X_FORWARDED_PROTO'] == 'http'
}

r301 %r{/latest/(.*)}, '/tanzu-mysql-kubernetes/1-1/$1'
r301 '/', '/tanzu-mysql-kubernetes/1-1/index.html'
r301 '/index.html', '/tanzu-mysql-kubernetes/1-1/index.html'
r301 '/1-1', '/tanzu-mysql-kubernetes/1-1/index.html'
r301 '/1-0', '/tanzu-mysql-kubernetes/1-1/index.html'
r301 '/tanzu-mysql-kubernetes/1-n/bind-app.html', '/tanzu-mysql-kubernetes/1-n/connecting-apps.html'
