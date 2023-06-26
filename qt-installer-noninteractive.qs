console.log("Running non-interactive Qt Installer...");

function Controller() {
    installer.autoRejectMessageBoxes();
    installer.installationFinished.connect(function() {
        gui.clickButton(buttons.NextButton);
    })
}

Controller.prototype.WelcomePageCallback = function() {
    console.log("Accepting license agreement...");
    gui.clickButton(buttons.NextButton, 3000);
}

Controller.prototype.CredentialsPageCallback = function() {
    console.log("Skipping credentials page...");
    gui.clickButton(buttons.NextButton, 3000);
}

Controller.prototype.ComponentSelectionPageCallback = function() {
    console.log("Selecting components...");
    // Modify the component selection as needed
    var widget = gui.currentPageWidget();
    widget.selectAll();
    gui.clickButton(buttons.NextButton, 3000);
}

Controller.prototype.LicenseAgreementPageCallback = function() {
    console.log("Accepting license agreement...");
    var widget = gui.currentPageWidget();
    widget.AcceptLicenseRadioButton.setChecked(true);
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.StartMenuDirectoryPageCallback = function() {
    console.log("Skipping Start Menu directory page...");
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.ReadyForInstallationPageCallback = function() {
    console.log("Ready to install...");
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.FinishedPageCallback = function() {
    console.log("Installation completed.");
    gui.clickButton(buttons.FinishButton);
}

var controller = new Controller();
