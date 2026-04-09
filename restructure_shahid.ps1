# Flutter Clean Architecture Restructurer
# Project: shahid-koraa
# Usage: .\restructure_shahid.ps1

$ProjectPath = "C:\Users\mhmed\Downloads\shahid-koraa-main-main"
$LibPath = "$ProjectPath\lib"
$BackupPath = "$ProjectPath\lib_backup"

Write-Host "================================================"
Write-Host "  Flutter Clean Architecture Restructurer"
Write-Host "  Project: shahid-koraa"
Write-Host "================================================"

$confirm = Read-Host "This will reorganize your lib folder. Continue? (type yes)"
if ($confirm -ne "yes") { Write-Host "Cancelled."; exit }

# Backup
Write-Host "Creating backup..."
if (Test-Path $BackupPath) { Remove-Item $BackupPath -Recurse -Force }
Copy-Item $LibPath $BackupPath -Recurse
Write-Host "  Backup created at lib_backup/"

# Create Folders
Write-Host "Creating folder structure..."

$folders = @(
    "core\utils",
    "core\widgets",
    "core\theme",
    "core\firebase",

    "features\auth\presentation\screens",
    "features\auth\presentation\widgets",
    "features\auth\domain\usecases",
    "features\auth\domain\entities",
    "features\auth\domain\repositories",
    "features\auth\data\datasources",
    "features\auth\data\models",
    "features\auth\data\repositories",

    "features\matches\presentation\screens",
    "features\matches\presentation\widgets",
    "features\matches\domain\usecases",
    "features\matches\domain\entities",
    "features\matches\domain\repositories",
    "features\matches\data\datasources",
    "features\matches\data\models",
    "features\matches\data\repositories",

    "features\channels\presentation\screens",
    "features\channels\presentation\widgets",
    "features\channels\domain\usecases",
    "features\channels\domain\entities",
    "features\channels\domain\repositories",
    "features\channels\data\datasources",
    "features\channels\data\models",
    "features\channels\data\repositories",

    "features\movies\presentation\screens",
    "features\movies\presentation\widgets",
    "features\movies\domain\usecases",
    "features\movies\domain\entities",
    "features\movies\domain\repositories",
    "features\movies\data\datasources",
    "features\movies\data\models",
    "features\movies\data\repositories",

    "features\series\presentation\screens",
    "features\series\presentation\widgets",
    "features\series\domain\usecases",
    "features\series\domain\entities",
    "features\series\domain\repositories",
    "features\series\data\datasources",
    "features\series\data\models",
    "features\series\data\repositories",

    "features\anime\presentation\screens",
    "features\anime\presentation\widgets",
    "features\anime\domain\usecases",
    "features\anime\domain\entities",
    "features\anime\domain\repositories",
    "features\anime\data\datasources",
    "features\anime\data\models",
    "features\anime\data\repositories",

    "features\leagues\presentation\screens",
    "features\leagues\presentation\widgets",
    "features\leagues\domain\usecases",
    "features\leagues\domain\entities",
    "features\leagues\domain\repositories",
    "features\leagues\data\datasources",
    "features\leagues\data\models",
    "features\leagues\data\repositories"
)

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Path "$LibPath\$folder" -Force | Out-Null
}
Write-Host "  Folders created!"

# Move File Function
function Move-FlutterFile($srcRelative, $destRelative) {
    $src = "$LibPath\$srcRelative"
    $dest = "$LibPath\$destRelative"
    if (Test-Path $src) {
        $destDir = Split-Path $dest -Parent
        New-Item -ItemType Directory -Path $destDir -Force | Out-Null
        Copy-Item $src $dest -Force
        Write-Host "  OK: $srcRelative -> $destRelative"
    } else {
        Write-Host "  SKIP: $srcRelative (not found)"
    }
}

# Core
Write-Host "Moving core files..."
Move-FlutterFile "firebase_options.dart"                        "core\firebase\firebase_options.dart"
Move-FlutterFile "sp.dart"                                      "core\utils\shared_prefs.dart"
Move-FlutterFile "widget\appbar.dart"                           "core\widgets\app_bar.dart"
Move-FlutterFile "widget\custom_Nav_Bar.dart"                   "core\widgets\custom_nav_bar.dart"
Move-FlutterFile "widget\install.dart"                          "core\widgets\install_widget.dart"
Move-FlutterFile "widget\splash.dart"                           "core\widgets\splash_screen.dart"

# Auth (removed - kept for reference)
Write-Host "Moving auth screens..."
Move-FlutterFile "removed\login.dart"                           "features\auth\presentation\screens\login_screen.dart"
Move-FlutterFile "removed\register.dart"                        "features\auth\presentation\screens\register_screen.dart"

# Matches
Write-Host "Moving matches screens..."
Move-FlutterFile "screens\match_screens\matches.dart"           "features\matches\presentation\screens\matches_screen.dart"
Move-FlutterFile "screens\match_screens\widget\match_card.dart" "features\matches\presentation\widgets\match_card.dart"

# Channels
Write-Host "Moving channels screens..."
Move-FlutterFile "screens\chanal_screens\Channel.dart"          "features\channels\presentation\screens\channel_screen.dart"
Move-FlutterFile "screens\chanal_screens\cahanal_card.dart"     "features\channels\presentation\widgets\channel_card.dart"

# Movies (removed)
Write-Host "Moving movies screens..."
Move-FlutterFile "removed\film_screens\filmPage.dart"           "features\movies\presentation\screens\movies_screen.dart"
Move-FlutterFile "removed\film_screens\film_deitels.dart"       "features\movies\presentation\screens\movie_details_screen.dart"

# Series (removed)
Write-Host "Moving series screens..."
Move-FlutterFile "removed\serias_screens\SeriesPage.dart"       "features\series\presentation\screens\series_screen.dart"
Move-FlutterFile "removed\serias_screens\series_detiels.dart"   "features\series\presentation\screens\series_details_screen.dart"
Move-FlutterFile "removed\serias_screens\finalBage.dart"        "features\series\presentation\screens\final_screen.dart"

# Anime (removed)
Write-Host "Moving anime screens..."
Move-FlutterFile "removed\anime_screens\AnimePage.dart"         "features\anime\presentation\screens\anime_screen.dart"

# Leagues (removed)
Write-Host "Moving leagues screens..."
Move-FlutterFile "removed\leges\leges_page.dart"                "features\leagues\presentation\screens\leagues_screen.dart"

# Barrel Files
Write-Host "Creating barrel files..."
$featuresList = @("auth", "matches", "channels", "movies", "series", "anime", "leagues")
foreach ($feature in $featuresList) {
    $barrelPath = "$LibPath\features\$feature\$feature.dart"
    $screensPath = "$LibPath\features\$feature\presentation\screens"
    $widgetsPath = "$LibPath\features\$feature\presentation\widgets"
    $exports = "// $feature Feature Exports`r`n"
    if (Test-Path $screensPath) {
        Get-ChildItem $screensPath -Filter "*.dart" | ForEach-Object {
            $exports += "export 'presentation/screens/$($_.Name)';`r`n"
        }
    }
    if (Test-Path $widgetsPath) {
        Get-ChildItem $widgetsPath -Filter "*.dart" | ForEach-Object {
            $exports += "export 'presentation/widgets/$($_.Name)';`r`n"
        }
    }
    [System.IO.File]::WriteAllText($barrelPath, $exports, [System.Text.Encoding]::UTF8)
    Write-Host "  Created: features\$feature\$feature.dart"
}

# app.dart
$appDart = "// App Exports - Clean Architecture`r`n`r`n"
$appDart += "// Core`r`n"
$appDart += "export 'core/firebase/firebase_options.dart';`r`n"
$appDart += "export 'core/utils/shared_prefs.dart';`r`n"
$appDart += "export 'core/widgets/app_bar.dart';`r`n"
$appDart += "export 'core/widgets/custom_nav_bar.dart';`r`n"
$appDart += "export 'core/widgets/splash_screen.dart';`r`n`r`n"
$appDart += "// Features`r`n"
$appDart += "export 'features/auth/auth.dart';`r`n"
$appDart += "export 'features/matches/matches.dart';`r`n"
$appDart += "export 'features/channels/channels.dart';`r`n"
$appDart += "export 'features/movies/movies.dart';`r`n"
$appDart += "export 'features/series/series.dart';`r`n"
$appDart += "export 'features/anime/anime.dart';`r`n"
$appDart += "export 'features/leagues/leagues.dart';`r`n"
[System.IO.File]::WriteAllText("$LibPath\app.dart", $appDart, [System.Text.Encoding]::UTF8)
Write-Host "  Created: lib\app.dart"

Write-Host ""
Write-Host "================================================"
Write-Host "DONE! Clean Architecture Structure:"
Write-Host ""
Write-Host "lib/"
Write-Host "|- main.dart"
Write-Host "|- app.dart"
Write-Host "|- core/"
Write-Host "   |- firebase/   utils/   widgets/"
Write-Host "|- features/"
Write-Host "   |- auth/"
Write-Host "   |- matches/"
Write-Host "   |- channels/"
Write-Host "   |- movies/"
Write-Host "   |- series/"
Write-Host "   |- anime/"
Write-Host "   |- leagues/"
Write-Host ""
Write-Host "Backup saved at: lib_backup/"
Write-Host "Open VS Code and check your lib folder!"
Write-Host "================================================"
