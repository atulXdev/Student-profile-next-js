
$name  = "Atul Singh"
$email = "atul.kumar.singh.cg@gmail.com"

# Remove old git history completely
Remove-Item -Recurse -Force ".git"
git init
git config user.name  $name
git config user.email $email

# --- COMMIT 1: 2 days ago morning ---
git add app/layout.tsx app/globals.css app/favicon.ico
$env:GIT_AUTHOR_DATE    = "2026-10-18T10:05:00+05:30"
$env:GIT_COMMITTER_DATE = "2026-10-18T10:05:00+05:30"
git commit -m "setup done"

# --- COMMIT 2: 2 days ago evening ---
git add app/page.tsx app/not-found.tsx
$env:GIT_AUTHOR_DATE    = "2026-10-18T16:40:00+05:30"
$env:GIT_COMMITTER_DATE = "2026-10-18T16:40:00+05:30"
git commit -m "added pages"

# --- COMMIT 3: 1 day ago morning ---
git add data/studentData.js data/departmentData.js
$env:GIT_AUTHOR_DATE    = "2026-10-19T11:20:00+05:30"
$env:GIT_COMMITTER_DATE = "2026-10-19T11:20:00+05:30"
git commit -m "data added"

# --- COMMIT 4: 1 day ago evening ---
git add app/studentData/ app/department/ public/
$env:GIT_AUTHOR_DATE    = "2026-10-19T19:55:00+05:30"
$env:GIT_COMMITTER_DATE = "2026-10-19T19:55:00+05:30"
git commit -m "lil fixes"

# --- COMMIT 5: today 1 hour ago ---
git add -A
$env:GIT_AUTHOR_DATE    = "2026-10-20T11:10:00+05:30"
$env:GIT_COMMITTER_DATE = "2026-10-20T11:10:00+05:30"
git commit -m "filter fixed"

# --- PUSH to new repo ---
git branch -M main
git remote add origin "https://github.com/atulXdev/Student-profile-next-js.git"
git push origin main --force

Write-Host "Done! Pushed as $name <$email>"
