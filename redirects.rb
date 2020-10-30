# Redirect all production http traffic to https
r301 %r{.*}, 'https://docs.pivotal.io$&', :if => Proc.new { |rack_env|
  rack_env['SERVER_NAME'] == 'docs.pivotal.io' && rack_env['HTTP_X_FORWARDED_PROTO'] == 'http'
}

r301 %r{/p-mysql/([\d-]+)/minor-overview.html}, '/p-mysql/$1/index.html'
r301 %r{/p-mysql/([\d-]+)/modify-apps-tls.html}, '/p-mysql/$1/using-tls.html'
r301 %r{/p-mysql/([\d-]+)/installing.html}, '/p-mysql/$1/install-config.html'
r301 %r{/p-mysql/([\d-]+)/backup-and-restore.html}, '/p-mysql/$1/backup-restore.html'
r301 %r{/p-mysql/([\d-]+)/backup.html}, '/p-mysql/$1/automated-backup.html'
r301 %r{/p-mysql/([\d-]+)/maintain-leader-follower.html}, '/p-mysql/$1/about-leader-follower.html'
