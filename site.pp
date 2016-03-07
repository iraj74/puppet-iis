file { ['c:/inetpub', 'c:/inetpub/wwwroot', 'c:/inetpub/wwwroot/mysite']:
        ensure => 'directory',
}

file { 'c:/inetpub/wwwroot/mysite/index.html':
    require       => File['c:/inetpub/wwwroot/mysite'],
    content => '<html><head><title>My Website</title></head><body>This is My Website</body></html>',
}

iis::manage_app_pool {'my_application_pool':
    enable_32_bit           => true,
    managed_runtime_version => 'v4.0',
}

iis::manage_site {'ec2-52-62-158-41.ap-southeast-2.compute.amazonaws.com':
    site_path     => 'C:\inetpub\wwwroot\mysite',
    port          => '80',
    ip_address    => '*',
    host_header   => 'ec2-52-62-158-41.ap-southeast-2.compute.amazonaws.com',
    app_pool      => 'my_application_pool',
    require       => File['c:/inetpub/wwwroot/mysite'],
  }
