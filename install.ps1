$installedFonts = @(Get-ChildItem c:\windows\fonts | Where-Object {$_.PSIsContainer -eq $false} | Select-Object -ExpandProperty basename)
if($installedFonts -notcontains "Ubuntu") 
{
    $FontFolder = "fonts"
    $FontItem = Get-Item -Path $FontFolder
    $FontList = Get-ChildItem -Path "$FontItem\*" -Include ('*.fon','*.otf','*.ttc','*.ttf')
 
    foreach ($Font in $FontList) 
    {
        Copy-Item $Font "C:\Windows\Fonts"
        New-ItemProperty -Name $Font.BaseName -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Fonts" -PropertyType string -Value $Font.name         
    }
}