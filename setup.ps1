
Write-Output "VS Code config ..."
$vscode_user_settings_path = "$env:APPDATA\Code\User"
mkdir $vscode_user_settings_path
("settings.json", "keybindings.json") | ForEach-Object {
    Remove-Item $vscode_user_settings_path\$_
    cmd /c mklink $vscode_user_settings_path\$_ %cd%\vscode\$_
}

Write-Output "Git config ..."
$git_config_dest = $env:HOME
Remove-Item $git_config_dest\.gitconfig 
cmd /c mklink $git_config_dest\.gitconfig %cd%\git\.gitconfig