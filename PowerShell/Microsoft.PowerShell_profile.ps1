

Import-Module posh-git



# ▶ ➤ » ᐅ ❯ ⍣
#        
#        
#        
#          

# https://github.com/microsoft/cascadia-code/blob/main/sources/nerdfonts/NerdfontsPL-Regular.ufo/glyphs/contents.plist
# "\uE0A0 \uE0A1 \uE0A2 \uE0A3 \uE0B0 \uE0B1 \uE0B2 \uE0B3 \uE0B4 \uE0B5 \uE0B6 \uE0B7 \uE0B8 \uE0B9 \uE0BA \uE0BB \uE0BC \uE0BD \uE0BF"
# '                  '
# "\uE0C0 \uE0C1 \uE0C2 \uE0C3 \uE0C4 \uE0C5 \uE0C6 \uE0C7 \uE0C8 \uE0C9 \uE0CA \uE0CB \uE0CC \uE0CD \uE0CF"
# '              '
# "\uE0D0 \uE0D1 \uE0D2 \uE0D4"
# '   '


# Default prompt layout:
# {DPPrefix}{DPPath}{PathStatusSeparator}<{BeforeStatus}{Status}{AfterStatus}>{DPMiddle}<{DPDebug}><{DPTimingFormat}>{DPSuffix}




# Prompt layout when DefaultPromptWriteStatusFirst is set to $true:
# {DPPrefix}<{BeforeStatus}{Status}{AfterStatus}>{PathStatusSeparator}{DPPath}{DPMiddle}<{DPDebug}><{DPTimingFormat}>{DPSuffix}




$GitPromptSettings.DefaultPromptAbbreviateHomeDirectory = $false
# $GitPromptSettings.DefaultPromptEnableTiming = $true








#$SegmentBg = 'DimGray'
#$SegmentFg = 'AliceBray'

# AdventureTime
# $SegmentBg = 0x0f0e21
# $SegmentFg = 0xf8dcc0
$ConsoleBg = 0x1F1D45
$SegmentBg = 0x1E91FF
$SegmentFg = 0xFFF380




# $GitPromptSettings.DefaultPromptPrefix.Text = '`n$(Get-Date -f "HH:mm:ss") '
$GitPromptSettings.DefaultPromptPrefix.Text = '`n'
$GitPromptSettings.DefaultPromptPrefix.ForegroundColor = $SegmentFg


# This is not working )
# $GitPromptSettings.DefaultPromptPrefix.Text = '`n'
# $GitPromptSettings.DefaultPromptPrefix.BackgroundColor = $SegmentBg
# $GitPromptSettings.DefaultPromptPrefix.ForegroundColor = 'OrangeRed'


$GitPromptSettings.DefaultPromptPath.Text = ' $(Get-PromptPath) '
$GitPromptSettings.DefaultPromptPath.ForegroundColor = $SegmentBg
$GitPromptSettings.DefaultPromptPath.BackgroundColor = $SegmentFg




$GitPromptSettings.PathStatusSeparator.Text = "1"
$GitPromptSettings.PathStatusSeparator.ForegroundColor = $SegmentFg
$GitPromptSettings.PathStatusSeparator.BackgroundColor = $SegmentBg




$GitPromptSettings.DelimStatus.BackgroundColor = $SegmentBg
$GitPromptSettings.BeforeStash.BackgroundColor = $SegmentBg
$GitPromptSettings.AfterStash.BackgroundColor = $SegmentBg
$GitPromptSettings.BranchColor.BackgroundColor = $SegmentBg
$GitPromptSettings.BranchColor.BackgroundColor = $SegmentBg




$GitPromptSettings.IndexColor.BackgroundColor = $SegmentBg
$GitPromptSettings.WorkingColor.BackgroundColor = $SegmentBg
$GitPromptSettings.StashColor.BackgroundColor = $SegmentBg
$GitPromptSettings.ErrorColor.BackgroundColor = $SegmentBg




$GitPromptSettings.BeforeStatus.Text = '   '
$GitPromptSettings.BeforeStatus.BackgroundColor = $SegmentBg
$GitPromptSettings.AfterStatus.Text = ' '
$GitPromptSettings.AfterStatus.BackgroundColor = $SegmentBg
$GitPromptSettings.LocalDefaultStatusSymbol.Text = '✔'
$GitPromptSettings.LocalDefaultStatusSymbol.BackgroundColor = $SegmentBg
$GitPromptSettings.LocalWorkingStatusSymbol.Text = "✎"
$GitPromptSettings.LocalWorkingStatusSymbol.BackgroundColor = $SegmentBg
$GitPromptSettings.LocalStagedStatusSymbol.Text = '✱'
$GitPromptSettings.LocalStagedStatusSymbol.BackgroundColor = $SegmentBg
$GitPromptSettings.BranchGoneStatusSymbol.Text = '✘'
$GitPromptSettings.BranchGoneStatusSymbol.BackgroundColor = $SegmentBg


$GitPromptSettings.DefaultPromptBeforeSuffix.Text = '2 `n'
$GitPromptSettings.DefaultPromptBeforeSuffix.ForegroundColor = $SegmentFg


# $GitPromptSettings.DefaultPromptTimingFormat.Text = '{0}ms '
$GitPromptSettings.DefaultPromptSuffix.Text = '$("❯>" * ($nestedPromptLevel + 1)) '
$GitPromptSettings.DefaultPromptSuffix.ForegroundColor = 'Green'








# ## Displaying file status in the git prompt for a very large repo can be prohibitively slow.
# ## Rather than turn off file status entirely ($GitPromptSettings.EnableFileStatus = $false),
# ## you can disable it on a repo-by-repo basis by adding individual repository paths
# ## to $GitPromptSettings.RepositoriesInWhichToDisableFileStatus.
$GitPromptSettings.EnableFileStatus = $false
$GitPromptSettings.LocalDefaultStatusSymbol.Text = ''




# # Chocolatey profile
# $ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
# if (Test-Path($ChocolateyProfile)) {
# Import-Module "$ChocolateyProfile"
# }
