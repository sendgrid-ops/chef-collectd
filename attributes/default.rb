default["collectd"]["version"]            = "5.1.0"
default["collectd"]["dir"]                = "/opt/collectd"
default["collectd"]["url"]                = "http://collectd.org/files/collectd-#{node["collectd"]["version"]}.tar.gz"
default["collectd"]["checksum"]           = "521d4be7df5bc1124b7b9ea88227e95839a5f7c1b704a5bde0f60f058ec6eecb"
default["collectd"]["interval"]           = 10
default["collectd"]["read_threads"]       = 5
default["collectd"]["name"]               = node["fqdn"]
default["collectd"]["plugins"]            = Mash.new

default["collectd"]["graphite_role"]      = "graphite"
default["collectd"]["graphite_ipaddress"] = ""
