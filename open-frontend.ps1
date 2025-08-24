# Script to open the Smart Surplus Food frontend
Write-Host "🌐 Opening Smart Surplus Food Frontend..." -ForegroundColor Green

$frontendPath = Join-Path $PSScriptRoot "frontend\index.html"
$fullPath = Resolve-Path $frontendPath

Write-Host "Frontend location: $fullPath" -ForegroundColor Yellow
Write-Host "Make sure the backend server is running on http://localhost:5000" -ForegroundColor Yellow

# Open in default browser
Start-Process $fullPath

Write-Host "✅ Frontend opened in browser!" -ForegroundColor Green
Write-Host "`n📋 Quick Test Accounts:" -ForegroundColor Cyan
Write-Host "Admin:  admin@smartsurplus.com / admin123" -ForegroundColor White
Write-Host "Donor:  donor@test.com / donor123" -ForegroundColor White
Write-Host "User:   user@test.com / user123" -ForegroundColor White
