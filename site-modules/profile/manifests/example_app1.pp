# Made-up app to demonstrate profile composition
class profile::example_app1 (
  Boolean   $enabled  =  true,
  String[1] $app_name = 'example01',
  String[1] $ensure   = 'latest'
){
  package{ 'example_app1': 
    ensure => $ensure,
  }
}

