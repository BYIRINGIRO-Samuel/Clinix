$files = git status --porcelain | ForEach-Object { $_.Substring(3).Trim() }
if ($files.Count -eq 0) {
    Write-Host "No changes to push."
    exit
}

$interval = 60 
Write-Host "Starting batch push for $($files.Count) files with $($interval)s interval."

foreach ($file in $files) {
    if ($file -match "push_batch.ps1" -or $file -match "mvnw" -or $file -match "target/" -or [string]::IsNullOrWhiteSpace($file)) {
        continue
    }
    
    Write-Host "--------------------"
    Write-Host "Processing: $file"
    git add "$file"
    git commit -m "chore: push updates to $file"
    git push
    
    Write-Host "Done pushing $file. Waiting $($interval) seconds before next file..."
    Start-Sleep -Seconds $interval
}

Write-Host "All files pushed successfully!"
