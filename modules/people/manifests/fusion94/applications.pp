class people::fusion94::applications {
  include iterm2::stable
  include onepassword
  include dropbox
  include chrome
  include firefox
  include alfred
  include evernote
  include googledrive
  include hipchat
  include skype
  include sourcetree
  include vagrant
  include packer
  include vmware_fusion
  include virtualbox
  include java
  include transmit
  include omnigraffle::pro
  include heroku
  include skitch
  include linkinus
  include osx::finder::show_hard_drives_on_desktop
  include osx::disable_app_quarantine

  package {
  "Google Hangout Plugin":
  source => "http://dl.google.com/googletalk/googletalkplugin/GoogleVoiceAndVideoSetup.dmg",
  provider => pkgdmg;
  }

}
