Set-PSReadLineOption -Colors @{ Command = 'Red' } | Add-Content $Profile

# initialize starship
try { Invoke-Expression (&starship init powershell) } catch {}

# yt-dlp
function yt([string]$URL) {
    yt-dlp --add-chapters --write-subs --write-auto-subs --sub-langs en* --embed-subs --compat-options no-keep-subs --sponsorblock-mark all $URL
}
function yt1080([string]$URL) {
    yt-dlp -S "res:1080,fps" --add-chapters --write-subs --write-auto-subs --sub-langs en* --embed-subs --compat-options no-keep-subs --sponsorblock-mark all $URL
}
function yta([string]$URL) {
    yt-dlp --extract-audio --audio-format mp3 --audio-quality 0 $URL
}

# find
New-Alias -Name "find" -Value "where.exe"
# shutdown
New-Alias -Name "sd" -Value "Stop-Computer -ComputerName localhost -Confirm -Force"
# restart
New-Alias -Name "rs" -Value "Restart-Computer -Confirm -Force"
