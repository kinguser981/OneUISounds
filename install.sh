#
# Magisk Module Installer Script
#

SKIPMOUNT=false

PROPFILE=false

POSTFSDATA=false

LATESTARTSERVICE=false


REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"


REPLACE="
"

print_modname() {
  ui_print "*******************************"
  ui_print "*      One UI  6.1 Sounds     *"
  ui_print "*******************************"
  ui_print "*   Module by Samuel Kendall  *"
  ui_print "*******************************"
}


on_install() {

  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}


set_permissions() {

  set_perm_recursive $MODPATH 0 0 0755 0644


}

