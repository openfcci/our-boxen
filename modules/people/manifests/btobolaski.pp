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

	repository { $dotfiles:
	  source => 'git@code.tobolaski.com:btobolaski/dotfiles.git'
	}

}
