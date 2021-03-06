Set-Location '~\Scan'
Get-ChildItem -Recurse -include *.jpg,*.jpeg,*.tif,*.tiff,*.png | ForEach-Object {
    & '~\AppData\Local\Programs\Tesseract-OCR\tesseract.exe' -l eng $_.Name ($_.BaseName) pdf
}
Set-Location '~\'
$wshell = New-Object -ComObject Wscript.Shell
$wshell.Popup("Your files have been converted and OCR'd!")
