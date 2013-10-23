class projects::drupal {
    include virtualbox
    include vagrant

    boxen::project { 'fcc-drupal-cms':
        source  => 'git@git.fccinteractive.com:fcc-drupal-cms'
    }

    boxen::project { 'vagrant-drupal-cms':
        source => 'openfcci/vagrant-drupal-cms'
    }
}
