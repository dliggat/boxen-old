class people::liggsie {

  notify { 'class people::liggsie declared': }

  include people::liggsie::applications::main
  include people::liggsie::config::loginitems
  include people::liggsie::config::osx

}