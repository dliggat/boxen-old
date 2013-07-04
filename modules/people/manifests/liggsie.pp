class people::liggsie {

  include people::liggsie::config::loginitems
  include people::liggsie::config::osx
  notify { 'class people::liggsie declared': }

}