# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "sthuraga"
client_key               "#{current_dir}/sthuraga.pem"
chef_server_url          "https://chefserver/organizations/chefm"
cookbook_path            ["#{current_dir}/../cookbooks"]
knife[:editor]="nano"
knife[:aws_access_key_id] = "AKIAIY2GHCWG7N442O4Q"
knife[:aws_secret_access_key] = "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"
