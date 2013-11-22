class projects::drupal {
    include chrome
    include firefox
    include homebrew
    include sequel_pro
    include virtualbox
    include vagrant

    vagrant::plugin { 'vagrant-mountcommand':
    }

    vagrant::plugin { 'vagrant-cachier':
    }

    homebrew::tap { 'homebrew/binary': }

    package {
      'homebrew/binary/packer':
        ensure => '0.4.0';
      'siege':
        ensure => '3.0.5';
      'phantomjs':
        ensure => '1.9.2';
      'jmeter':
        ensure => '2.10';
    }

    boxen::project { 'fcc-drupal-cms':
        source  => 'git@git.fccinteractive.com:fcc-drupal-cms'
    }

    boxen::project { 'vagrant-drupal-cms':
        source => 'openfcci/vagrant-drupal-cms'
    }
}
