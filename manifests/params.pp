class oracleprereq::params {

  $glibc = $::architecture ? {
    i386      => $::operatingsystemrelease ? {
                  /^5.*$/ => ['glibc-devel.i386'],
                  /^6.*$/ => ['glibc-devel.i686'],
    },
    x86_64    => $::operatingsystemrelease ? {
                  /^5.*$/ => ['glibc-devel.i386','glibc-devel.x86_64','unixODBC.i386','unixODBC.x86_64'],
                  /^6.*$/ => ['glibc-devel.i686','glibc-devel.x86_64','unixODBC.i686','unixODBC.x86_64'],
    },
  }

  $libpackages = ['libaio',
                  'glibc-headers',
                  'libaio-devel',
                  'numactl-devel',
                  'elfutils-libelf-devel',
                  'unixODBC-devel',
                  'xorg-x11-xauth']
  $buildpackages = ['make',
                  'cpp',
                  'libstdc++-devel',
                  'gcc',
                  'gcc-c++',
                  'compat-libstdc++-33',
                  'compat-db']
  $systemtools = ['ksh',
                  'pdksh',
                  'bind-utils',
                  'smartmontools',
                  'ftp',
                  'libgomp',
                  'unzip',
                  'sysstat',
                  'device-mapper-multipath']
}