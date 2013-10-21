maintainer       "Chris Fordham"
maintainer_email "chris.fordham@rightscale.com"
license          "Apache 2.0"
description      "Installs/Configures freeswitch"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.1"

recipe "freeswitch", "Installs/configures FreeSWITCH."
recipe "freeswitch::security", "Installs OS level security requirements for FreeSWITCH."

#attribute 'freeswitch/fqdn',
#:display_name => "FreeSwitch FQDN",
#:description => "The FQDN for the FreeSwitch Server",
#:type => "string",
#:required => "required",
#:recipes => ["freeswitch"]

attribute 'freeswitch/external_ip',
:display_name => "External IP Address",
:description => "The external IP address for the instance",
:type => "string",
:required => "required",
:recipes => "freeswitch"

attribute 'freeswitch/callerid_name',
:display_name => "Caller ID Name",
:description => "The Caller ID Name",
:type => "string",
:required => "required",
:recipes => "freeswitch"

attribute 'freeswitch/callerid_num',
:display_name => "Caller ID Number",
:description => "Caller ID Number",
:type => "string",
:required => "required",
:recipes => "freeswitch"

attribute 'freeswitch/provider_domain',
:display_name => "SIP Provider domain",
:description => "SIP Provider domain",
:type => "string",
:required => "required",
:recipes => "freeswitch"

attribute 'freeswitch/provider_username',
:display_name => "SIP Provider Username",
:description => "SIP Provider Username",
:type => "string",
:required => "required",
:recipes => "freeswitch"

attribute 'freeswitch/provider_password',
:display_name => "SIP Provider Password",
:description => "SIP Provider Password",
:type => "string",
:required => "required",
:recipes => "freeswitch"

attribute 'freeswitch/provider_fromdomain',
:display_name => "SIP Provider From Domain",
:description => "SIP Provider From Domain",
:type => "string",
:required => "required",
:recipes => "freeswitch"
