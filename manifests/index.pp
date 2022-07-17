##tomcate sample index.pp file
class tomcat::index(
  String $environment,
  String $deploy_samplewar_path,

){

  file {"${deploy_samplewar_path}/index.html" :
  content => template('tomcat/index.erb'),
  notify  => Service['tomcat'],
}
}
