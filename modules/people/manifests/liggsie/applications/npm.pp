class people::liggsie::applications::npm {

  notify { 'class people::liggsie::applications::npm declared': }

  nodejs::module {

    'coffee-script':
      node_version => 'v0.10';

    'coffeelint':
      node_version => 'v0.10';

    'jshint':
      node_version => 'v0.10';
  }

}
