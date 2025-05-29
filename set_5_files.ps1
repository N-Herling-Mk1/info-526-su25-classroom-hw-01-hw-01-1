# Set the target directory here
$targetDir = "C:\Users\Mr_Green\OneDrive\Desktop\0_Sum_25\INFO_526\info-526-su25-classroom-hw-01-hw-01-1\q2_hold"

# Make sure the directory exists (create if not)
if (-Not (Test-Path $targetDir)) {
    New-Item -Path $targetDir -ItemType Directory
}

# Lines to write at the top of each file
$content = @(
    'pacman::p_load(here)'
    'source(here("q1_hold\\setup.R"))'
)

# Loop through 1 to 5 and create the files v1_.R ... v5_.R with content
for ($i = 1; $i -le 5; $i++) {
    $filename = "v${i}_.R"
    $filepath = Join-Path -Path $targetDir -ChildPath $filename

    # Write the lines to the file (overwrites if exists)
    $content | Out-File -FilePath $filepath -Encoding utf8
}

Write-Host "Files v1_.R to v5_.R created with header lines in $targetDir"
