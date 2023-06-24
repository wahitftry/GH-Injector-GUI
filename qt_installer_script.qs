var installer = new QInstaller();
installer.installationTarget = "@HomeDir@/Qt/5.15.2/msvc2019";
installer.setSilent(true);
installer.setInstallMode("Default");
installer.addRepository("qt.qt5.5152.win32_msvc2019");
installer.performInstallation();
