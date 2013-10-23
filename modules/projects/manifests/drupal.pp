class projects::drupal {
    include chrome
    include firefox
    include sequel_pro
    include virtualbox
    include vagrant

    vagrant::plugin { 'vagrant-mountcommand':
    }

    boxen::project { 'fcc-drupal-cms':
        source  => 'git@git.fccinteractive.com:fcc-drupal-cms'
    }

    boxen::project { 'vagrant-drupal-cms':
        source => 'openfcci/vagrant-drupal-cms'
    }
}
