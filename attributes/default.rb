default["collectd"]["version"]            = "5.3.0"
default["collectd"]["dir"]                = "/opt/collectd"
default["collectd"]["url"]                = "http://repo.sendgrid.net/collectd-5.3.0.tar.gz"
default["collectd"]["checksum"]           = "f84edbd78a00c8614956d44f2f53a435a8d981b62323b94fda88cfa50964dbc3"
default["collectd"]["interval"]           = 10
default["collectd"]["read_threads"]       = 5
default["collectd"]["name"]               = node["fqdn"]
default["collectd"]["plugins"]            = Mash.new
default["collectd"]["graphite_role"]      = "graphite"
default["collectd"]["graphite_ipaddress"] = ""
