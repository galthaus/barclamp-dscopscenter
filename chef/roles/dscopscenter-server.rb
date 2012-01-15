
name "dscopscenter-server"
description "DSC Ops Center Server Role - DSC Ops Center for the cloud"
run_list(
  "recipe[dscopscenter]"
)
default_attributes()
override_attributes()

