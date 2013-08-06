logrotate_app "collectd" do
  cookbook "logrotate"
  path ["/var/log/collectd.log"]
  options ["missingok", "delaycompress", "notifempty"]
  size "200m"
  rotate 7
  create "644 root root"
end
