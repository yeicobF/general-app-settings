# oh-my-posh --init --shell pwsh --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/v$(oh-my-posh --version)/themes/jandedobbeleer.omp.json | Invoke-Expression

# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json" | Invoke-Expression
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\json.omp.json" | Invoke-Expression
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\material.omp.json" | Invoke-Expression
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\spaceship.omp.json" | Invoke-Expression
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\tokyonight_storm.omp.json" | Invoke-Expression

# Autocompletado para winget.
# 
# Register-ArgumentCompleter -Native -CommandName winget -ScriptBlock {
#     param($wordToComplete, $commandAst, $cursorPosition)
#         [Console]::InputEncoding = [Console]::OutputEncoding = $OutputEncoding = [System.Text.Utf8Encoding]::new()
#         $Local:word = $wordToComplete.Replace('"', '""')
#         $Local:ast = $commandAst.ToString().Replace('"', '""')
#         winget complete --word="$Local:word" --commandline "$Local:ast" --position $cursorPosition | ForEach-Object {
#             [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
#         }
# }
