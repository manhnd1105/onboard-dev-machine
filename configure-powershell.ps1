$Content = @"
if (Test-Path ~/.bash_profile) {
    `$bashEnvVars = bash -c 'source ~/.bash_profile && env'
    `$bashEnvVars -split "``n" | ForEach-Object {
        `$key, `$value = `$_ -split '=', 2
        if (`$key -and `$value) { [Environment]::SetEnvironmentVariable(`$key, `$value, [System.EnvironmentVariableTarget]::Process) }
    }
}
"@

Add-Content -Path $PROFILE.AllUsersAllHosts -Value $Content
