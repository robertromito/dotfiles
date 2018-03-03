
Write-Output "Setting up VSCode config files"
$vscode_user_settings_path = "$env:APPDATA\Code\User"
mkdir $vscode_user_settings_path
("settings.json", "keybindings.json") | ForEach-Object {
    Remove-Item $vscode_user_settings_path\$_
    cmd /c mklink $vscode_user_settings_path\$_ %cd%\vscode\$_
}
