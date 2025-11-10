{ ... }:
{
  programs.plasma = {
    configFile = {
      baloofilerc.General.dbVersion = 2;
      baloofilerc.General."exclude filters" = "*~,*.part,*.o,*.la,*.lo,*.loT,*.moc,moc_*.cpp,qrc_*.cpp,ui_*.h,cmake_install.cmake,CMakeCache.txt,CTestTestfile.cmake,libtool,config.status,confdefs.h,autom4te,conftest,confstat,Makefile.am,*.gcode,.ninja_deps,.ninja_log,build.ninja,*.csproj,*.m4,*.rej,*.gmo,*.pc,*.omf,*.aux,*.tmp,*.po,*.vm*,*.nvram,*.rcore,*.swp,*.swap,lzo,litmain.sh,*.orig,.histfile.*,.xsession-errors*,*.map,*.so,*.a,*.db,*.qrc,*.ini,*.init,*.img,*.vdi,*.vbox*,vbox.log,*.qcow2,*.vmdk,*.vhd,*.vhdx,*.sql,*.sql.gz,*.ytdl,*.tfstate*,*.class,*.pyc,*.pyo,*.elc,*.qmlc,*.jsc,*.fastq,*.fq,*.gb,*.fasta,*.fna,*.gbff,*.faa,po,CVS,.svn,.git,_darcs,.bzr,.hg,CMakeFiles,CMakeTmp,CMakeTmpQmake,.moc,.obj,.pch,.uic,.npm,.yarn,.yarn-cache,__pycache__,node_modules,node_packages,nbproject,.terraform,.venv,venv,core-dumps,lost+found";
      baloofilerc.General."exclude filters version" = 9;

      dolphinrc."KFileDialog Settings"."Places Icons Auto-resize" = false;
      dolphinrc."KFileDialog Settings"."Places Icons Static Size" = 22;

      kded5rc.Module-browserintegrationreminder.autoload = false;
      kded5rc.Module-device_automounter.autoload = false;

      kiorc.Confirmations.ConfirmDelete = true;

      kscreenlockerrc.Daemon.LockGrace = 0;

      ksmserverrc.General.confirmLogout = false;
      ksmserverrc.General.loginMode = "emptySession";

      ksplashrc.KSplash.Engine = "none";
      ksplashrc.KSplash.Theme = "None";

      plasma-localerc.Formats.LANG = "en_US.UTF-8";
      plasma-localerc.Translations.LANGUAGE = "en_US";

      plasmarc.OSD.Enabled = false;
      plasmarc.OSD.kbdLayoutChangedEnabled = false;
    };
  };
}
