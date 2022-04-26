$title = "Compile CV"
$message = "which language?"

$es = New-Object System.Management.Automation.Host.ChoiceDescription "&Spanish", `
    "Spanish"

$en = New-Object System.Management.Automation.Host.ChoiceDescription "&English", `
    "English"

$options = [System.Management.Automation.Host.ChoiceDescription[]]($en, $es)
$howToProcess = $host.ui.PromptForChoice($title, $message, $options, 0)

if($howToProcess -eq 0) {
    Invoke-Expression -Command "lualatex cv.tex"
}

if($howToProcess -eq 1) {
    Invoke-Expression -Command "lualatex cv.tex es"
}