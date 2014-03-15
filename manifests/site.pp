# https://github.com/jantman/workstation-bootstrap/blob/production/manifests/site.pp

###########################################################
# global config - stuff that should be useful to everyone #
###########################################################
if $::operatingsystem == 'Archlinux' or $::osfamily == 'Archlinux' or $::lsbdistid == 'Arch' {
  # Arch-specific stuff

  if $::type == 'Notebook' or $::type == 'Portable' or $::type == 'LapTop' or $::type == 'Sub Notebook' {
    # Arch laptop specific
  }

}

if $::type == 'Notebook' or $::type == 'Portable' or $::type == 'LapTop' or $::type == 'Sub Notebook' {
  # laptop, non-Arch-specific
}

if $::bios_version =~ 'MBP101.+' or $::productname == 'MacBookPro10,1' {
  # MacBookPro Retina 10,1-specific
}

#################################################
# personal config - probably only useful to me, #
#  or relatively custom                         #
#################################################

include jantman
