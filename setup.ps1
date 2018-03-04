$vscode_user_settings_path = "$env:APPDATA\Code\User"
$git_settings_path = $env:HOME

$config_files = @{
    "vscode\settings.json" = "$vscode_user_settings_path\settings.json"
    "vscode\keybindings.json" = "$vscode_user_settings_path\keybindings.json"
    "git\.gitconfig" = "$git_settings_path\.gitconfig"
}

Write-Output "Setting up symlinks to config files"

$config_files.GetEnumerator() | ForEach-Object {
    $src = $_.Key # $_.Key doesn't interpolate properly in the cmd statement.
    $dest = $_.Value
    Write-Output "Linking $src to $dest"
    cmd /c mklink $dest %cd%\$src
    Write-Output "-----"
}
