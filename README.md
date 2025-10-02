# Iosevka SC Nerd Font

Custom build of [Iosevka](https://github.com/be5invis/Iosevka) patched with [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts).

This repository automatically builds new releases when upstream Iosevka releases are published, applies the custom build plan, and patches the fonts with Nerd Fonts symbols.

## Installation

### macOS (Homebrew)

```bash
brew tap smchunn/iosevka-sc
brew install iosevka-sc-nerd-font
```

### Arch Linux (AUR)

1. First, publish the PKGBUILD to AUR (see [Publishing to AUR](#publishing-to-aur) below)
2. Then install using your AUR helper:

```bash
yay -S iosevka-sc-nerd-font
# or
paru -S iosevka-sc-nerd-font
```

### Manual Installation

1. Download the latest release from the [Releases](https://github.com/smchunn/homebrew-iosevka-sc/releases) page
2. Extract the archive
3. Install the `.ttf` files:
   - **macOS**: Double-click each font file and click "Install Font", or copy to `~/Library/Fonts/`
   - **Linux**: Copy to `~/.local/share/fonts/` or `/usr/share/fonts/`
   - **Windows**: Right-click each font file and select "Install"

## Customization

The build plan is defined in `private-build-plans.toml`. To customize:

1. Fork this repository
2. Edit `private-build-plans.toml` with your desired variant options
3. Update the repository URLs in:
   - `.github/workflows/build-release.yml`
   - `Formula/iosevka-sc-nerd-font.rb`
   - `PKGBUILD`
4. Commit and push to trigger the workflow

See the [Iosevka customization guide](https://github.com/be5invis/Iosevka/blob/main/doc/custom-build.md) for all available options.

## How It Works

1. **GitHub Actions Workflow** (`.github/workflows/build-release.yml`):
   - Runs daily to check for new Iosevka releases
   - Can also be triggered manually
   - Builds Iosevka with the custom build plan
   - Patches fonts with Nerd Fonts glyphs
   - Creates a GitHub release with archives
   - Auto-updates Homebrew formula and AUR PKGBUILD

2. **Homebrew Tap**:
   - Formula stored in `Formula/iosevka-sc-nerd-font.rb`
   - Auto-updated by GitHub Actions on new releases
   - Users can install with `brew tap` + `brew install`

3. **AUR Package**:
   - PKGBUILD stored in this repository
   - Auto-updated by GitHub Actions on new releases
   - Must be manually published to AUR (see below)

## Publishing to AUR

The PKGBUILD is auto-updated in this repo, but you need to manually publish to AUR:

1. Clone the AUR repository:
   ```bash
   git clone ssh://aur@aur.archlinux.org/iosevka-sc-nerd-font.git aur-iosevka-sc
   cd aur-iosevka-sc
   ```

2. Copy the updated PKGBUILD:
   ```bash
   cp /path/to/this/repo/PKGBUILD .
   ```

3. Generate .SRCINFO:
   ```bash
   makepkg --printsrcinfo > .SRCINFO
   ```

4. Commit and push:
   ```bash
   git add PKGBUILD .SRCINFO
   git commit -m "Update to version X.X.X"
   git push
   ```

Alternatively, set up a GitHub Action to auto-publish to AUR using SSH keys (see [Publishing to the AUR](https://wiki.archlinux.org/title/AUR_submission_guidelines)).

## Manual Build Trigger

To manually trigger a build for a specific Iosevka version:

1. Go to the [Actions](../../actions) tab
2. Select "Build and Release Iosevka SC"
3. Click "Run workflow"
4. Enter the Iosevka version tag (e.g., `v32.3.1`)
5. Click "Run workflow"

## License

- Iosevka: [SIL Open Font License 1.1](https://github.com/be5invis/Iosevka/blob/main/LICENSE.md)
- Nerd Fonts: [MIT License](https://github.com/ryanoasis/nerd-fonts/blob/master/LICENSE)
