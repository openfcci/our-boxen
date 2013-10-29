class people::btobolaski {
	include adium
	include alfred
	include clipmenu
	include crashplan
  include keyremap4macbook
	include iterm2::dev
	include notational_velocity::nvalt
	include rdio
	include sourcetree
	include textexpander
	include zsh

	include projects::drupal

	$dotfiles = "/Users/${::boxen_user}/.dotfiles"

  include php::5_4
  include php::composer

  class { 'php::global':
    version => "5.4"
  }

	repository { $dotfiles:
	  source => 'git@code.tobolaski.com:btobolaski/dotfiles.git'
	}

}
