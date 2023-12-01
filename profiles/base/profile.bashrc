openjema_stack_bashrc() {
  local cfg cfgd

  cfgd="/mnt/host/source/src/overlays/project-openjema/${CATEGORY}/${PN}"
  for cfg in ${PN} ${P} ${PF} ; do
    cfg="${cfgd}/${cfg}.bashrc"
    [[ -f ${cfg} ]] && . "${cfg}"
  done

  export OPENJEMA_BASHRC_FILESDIR="${cfgd}/files"

  cfgd_patches="/mnt/host/source/src/overlays/project-openjema-patches/${CATEGORY}/${PN}"
  for cfg in ${PN} ${P} ${PF} ; do
    cfg="${cfgd_patches}/${cfg}.bashrc"
    [[ -f ${cfg} ]] && . "${cfg}"
  done

  export OPENJEMA_PATCHES_BASHRC_FILESDIR="${cfgd_patches}/files"
}

openjema_stack_bashrc
