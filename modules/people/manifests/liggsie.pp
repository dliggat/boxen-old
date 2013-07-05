class people::liggsie {

  notify { 'class people::liggsie declared': }

  include people::liggsie::params

  include people::liggsie::applications::gems
  include people::liggsie::applications::main
  include people::liggsie::applications::npm
  include people::liggsie::applications::sublime_text_2

  include people::liggsie::config::dotfiles
  include people::liggsie::config::loginitems
  include people::liggsie::config::osx

  include projects::all
}
