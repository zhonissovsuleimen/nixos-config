{ ... }:
{
  programs.plasma = {
    configFile = {
      plasmanotifyrc."Applications/@other".ShowInHistory = false;
      plasmanotifyrc."Applications/@other".ShowPopups = false;
      plasmanotifyrc."Applications/firefox".Seen = true;
      plasmanotifyrc."Applications/firefox".ShowPopups = false;
      plasmanotifyrc."Applications/org.kde.spectacle".ShowBadges = false;
      plasmanotifyrc."Applications/org.kde.spectacle".ShowPopups = false;
      plasmanotifyrc."Applications/org.telegram.desktop".Seen = true;
      plasmanotifyrc."Applications/vesktop".Seen = true;
      plasmanotifyrc."Applications\x5b@other\x5d".ShowInHistory = false;
      plasmanotifyrc."Applications\x5b@other\x5d".ShowPopups = false;
      plasmanotifyrc.Badges.InTaskManager = false;
      plasmanotifyrc.Jobs.InNotifications = false;
      plasmanotifyrc.Notifications.LowPriorityPopups = false;
      plasmanotifyrc."Services/akonadi_etesync_resource".ShowPopups = false;
      plasmanotifyrc."Services/akonadi_ews_resource".ShowPopups = false;
      plasmanotifyrc."Services/akonadi_google_resource".ShowPopups = false;
      plasmanotifyrc."Services/akonadi_imap_resource".ShowPopups = false;
      plasmanotifyrc."Services/akonadi_maildispatcher_agent".ShowPopups = false;
      plasmanotifyrc."Services/akonadi_newmailnotifier_agent".ShowPopups = false;
      plasmanotifyrc."Services/donationmessage".ShowInHistory = false;
      plasmanotifyrc."Services/donationmessage".ShowPopups = false;
      plasmanotifyrc."Services/kaccess".ShowPopups = false;
      plasmanotifyrc."Services/ksecretd".ShowPopups = false;
      plasmanotifyrc."Services/ksmserver".ShowPopups = false;
      plasmanotifyrc."Services/kwin".ShowPopups = false;
      plasmanotifyrc."Services/kwin-x11".ShowPopups = false;
      plasmanotifyrc."Services/kwrited".ShowPopups = false;
      plasmanotifyrc."Services/libnotificationmanager".ShowPopups = false;
      plasmanotifyrc."Services/org.kde.kded.inotify".ShowPopups = false;
      plasmanotifyrc."Services/phonon".ShowPopups = false;
      plasmanotifyrc."Services/polkit-kde-authentication-agent-1".ShowPopups = false;
      plasmanotifyrc."Services/xdg-desktop-portal-kde".ShowPopups = false;
      plasmanotifyrc.applications.other = false;
    };
  };
}
