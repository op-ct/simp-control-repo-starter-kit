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
#
# Tenant-specific Hiera data
#mod 'tenant',
#    :install_path => 'data',
#    :local        => true
#
#deploy_tenant = ENV.fetch('DEPLOY_TENANT','').split(/, */) 
#deploy_sites  = ENV.fetch('DEPLOY_SITE','').split(/, */)
#
#if deploy_tenant.empty?
#  fail('ERROR: This Puppetfile requires the environment variable DEPLOY_TENANT to deploy tenant-specific modules')
#end
#tenant_puppetfile = File.join(__dir__,"Puppetfile.#{deploy_tenant}") 
#unless File.exist?(tenant_puppetfile)
#  fail("ERROR: Tenant Puppetfile does not exist: '#{tenant_puppetfile}'")
#end
#instance_eval(File.read(tenant_puppetfile))
#
#if deploy_sites.empty?
#  fail('ERROR: This Puppetfile requires the environment variable DEPLOY_SITE to deploy site-specific hiera data')
#end
#
#unless deploy_sites.first =~ /none/i
#  deploy_sites.each do |deploy_site|
#    git_url = "git@git.example.tld:group/puppet_hiera_#{deploy_tenant}_#{deploy_site}.git"
#    default_branch = "#{deploy_tenant}_#{deploy_site}"
#    puts "----- Deploying site data for #{deploy_site} (default branch: #{default_branch})..."
#    puts "-----    #{git_url}"
#
#    mod "sites/#{deploy_site}",
#      :git            => git_url,
#      :install_path   => 'data/sites',
#      :branch         => :control_branch,
#      :default_branch => default_branch
#
#  end
#end
