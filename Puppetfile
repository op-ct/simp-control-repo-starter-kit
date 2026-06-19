# ==============================================================================
# SIMP Puppet modules
# ==============================================================================
# The line below enables this Puppetfile to deploy all of SIMP's modules from a
# neighboring 'Puppetfile.smp' file:
SIMP_PUPPETFILE=File.join(__dir__,ENV['SIMP_PUPPETFILE']||'Puppetfile.simp')
fail("Puppetfile not found: '#{SIMP_PUPPETFILE}'") unless File.exist?(SIMP_PUPPETFILE)
instance_eval(File.read(SIMP_PUPPETFILE))

# ==============================================================================
# Multi-tenant x Multi-site  example code and data
# ------------------------------------------------------------------------------
#
# Enterprise-level (all tenants and sites share) 
# ------------------------------------------------------------------------------
# Hiera data: Checkout out into subdirectory under data/
#
# Enterprise baseline: hiera data layet
# mod 'baseline',
#     :git          => '',
#     :install_path => 'data',
#     :tag          => '20260616.1'
#
# Enterprise baseline: roles and profiles
# mod 'baseline',
#     : git         => ''
#     :install_path => 'enterprise-modules'
#     :tag          => '20250616.1'
#
# Tenant-level (all tenants and sites share) 
# ------------------------------------------------------------------------------
# Environment variable is set to deploy the correct repo for tenant, site
# deploy_tenant = ENV.fetch('DEPLOY_TENANT','').split(/, /) 
# deploy_site   = ENV.fetch('DEPLOY_SITE','').split(/, */)
#
# if deploy_tenant.empty?
#   fail('ERROR: This Puppetfile requires the environment variable DEPLOY_TENANT to deploy tenant-specific modules')
# end
# tenant_puppetfile = File.join(__dir__,"Puppetfile.#{deploy_tenant}") 
# unless File.exist?( tenant_puppetfile )
#   fail("ERROR: Tenant Puppetfile 
# end
#
# if deploy_site,empty?
#   fail('ERROR: This Puppetfile requires the environment variable DEPLOY_TENANT to deploy site-specific hiera data')
# end
