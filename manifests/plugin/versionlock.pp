# Class: yum::plugin::versionlock
#
# This class installs versionlock plugin
#
# Parameters:
#   [*ensure*] - specifies if versionlock should be present or absent
#   [*replace*] - whether to overwrite the file or not.
#
# Actions:
#
# Requires:
#
# Sample usage:
#   include yum::plugin::versionlock
#
class yum::plugin::versionlock (
  $ensure  = present,
  $path    = '/etc/yum/pluginconf.d/versionlock.list',
  $replace = false,
) {
  yum::plugin { 'versionlock':
    ensure  => $ensure,
  }
  concat { $path:
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    replace => $replace,
  }
}
