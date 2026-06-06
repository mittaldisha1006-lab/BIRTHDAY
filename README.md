# Naman's Birthday Site

This folder contains a static birthday site (HTML/CSS/JS). To publish a permanent shareable link using GitHub Pages, follow these steps.

## Recommended: Publish via GitHub Pages (automatic)
1. Create a new repository on GitHub (public) named e.g. `naman-birthday`.
2. On your machine, open PowerShell in this folder (`d:\python`).
3. Run these commands (replace `USERNAME` and `REPO`):

```powershell
git init
git add .
git commit -m "Initial site"
git branch -M main
# Use HTTPS or SSH remote URL depending on your setup:
git remote add origin https://github.com/USERNAME/REPO.git
git push -u origin main
```

4. The repository includes a GitHub Actions workflow that will automatically deploy the site to GitHub Pages on push to `main`. Wait a few minutes and then open:

https://USERNAME.github.io/REPO/

If you prefer a custom domain or want to adjust settings, visit the repository `Settings > Pages`.

## Alternative: Quick test with `ngrok` (temporary link)
If you only need a temporary link for WhatsApp quickly, install `ngrok`, run a simple local server, and expose it:

```powershell
# run a simple static server (Python needed)
python -m http.server 8000
# in another terminal run ngrok
ngrok http 8000
```

Copy the `https://...` URL from ngrok and share it — note this is temporary.

---
If you want, I can:
- Create the GitHub repo for you (requires your GitHub permission and `gh` CLI / credentials).
- Or provide a PowerShell script to run the push steps automatically.

Which would you like me to do next?