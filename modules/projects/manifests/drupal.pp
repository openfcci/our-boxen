class projects::drupal {
    include chrome
    include firefox
    include homebrew
    include sequel_pro
    include virtualbox
    include vagrant

    vagrant::plugin { 'vagrant-mountcommand':
    }

    homebrew::tap { 'homebrew/binary': }

    package {
      'homebrew/binary/packer':
        ensure => '0.3.10';
    }

    boxen::project { 'fcc-drupal-cms':
        source  => 'git@git.fccinteractive.com:fcc-drupal-cms'
    }

    boxen::project { 'vagrant-drupal-cms':
        source => 'openfcci/vagrant-drupal-cms'
    }
}
