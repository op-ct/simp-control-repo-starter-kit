class profile::base (
  Simplib::Netlist  $trusted_nets  = simplib::lookup( 'simp_options::trusted_nets' ),
  Boolean           $base_packages = true
){
  if $base_packages {
    package{[
      'htop',
      'btop',
      'tree',
    ]:
      ensure => latest,
    }
  }

}
