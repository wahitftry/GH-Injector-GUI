var components = ["qt.qt5.5152.win32_msvc2019", "qt.qt5.5152.win64_msvc2019"];
for (var i = 0; i < components.length; i++) {
    console.log("Selecting component: " + components[i]);
    installer.selectComponent(components[i]);
}
installer.autoRejectMessageBoxes();
installer.installationFinished.connect(function() {
    gui.clickButton(buttons.NextButton);
});
