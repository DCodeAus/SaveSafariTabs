# Save Safari Tabs

Automatically save all your open Safari tabs to a markdown file before an exam, hackathon, or study session.

## Problem

You've got 30+ Safari tabs open as references, but exam invigilators or hackathon rules require a clean machine. You need to close everything but can't lose your resources.

## Solution

Run one command. All tabs saved to a markdown file. Safari cleared. Resume later.

Perfect for:
- **Exam prep** — Save your last-minute YouTube tutorials and notes, then close Safari completely
- **Hackathons** — Clean browser, but all your reference links saved for during the event
- **Study sessions** — Stop browser clutter mid-study without losing context

## Installation

1. Clone this repo:
```bash
git clone https://github.com/yourusername/SaveSafariTabs.git
cd SaveSafariTabs
```

2. Make the script executable:
```bash
chmod +x saveSafariTabs.sh
chmod +x saveFirefoxTabs.sh
```

3. (Optional) Add alias to your shell config for quick access:
```bash
echo "alias savetabs='~/path/to/saveSafariTabs.sh'" >> ~/.zshrc
source ~/.zshrc
```

## Usage

Run the script:
```bash
./saveSafariTabs.sh
./saveFirefoxTabs.sh
```

Or if you added the alias:
```bash
savetabs
```

A markdown file (`safari-tabs.md`) appears on your Desktop with all open tabs as clickable links.

## Options

### Bash Script (Recommended)
**File:** `saveSafariTabs.sh`

- Modern, reliable
- Works on macOS Monterey+
- Better error handling
- Output: Clean markdown format

### AppleScript (Legacy)
**File:** `SaveSafariTabs.scpt`

- Older approach
- Still works, but less flexible
- Use this only if bash script has issues

## Example Output

```markdown
# Safari Tabs - Thursday, 3 July 2026 at 15:45

Saved tabs to resume later

- [UNI_CLASS  Course Materials](https://example.com)
- [Networking Tutorial - YouTube](https://youtube.com/...)
- [RFC 3986 - URI Spec](https://tools.ietf.org/...)
```

## Notes

- Requires macOS (uses AppleScript + Bash)
- Safari must have permission in System Settings → Privacy & Security → Automation (Automatically done if you are the admin)
- Creates/overwrites `safari-tabs.md` on your Desktop each time you run it (point it where you want the file put, obsidian vault/drive/dropbox etc.)

## Use Cases

I built this for:
- **Exams** — Study right up until the invigilator says go, then save + close
- **Hackathons** — Keep your workspace clean without losing reference materials
- **Study sessions** — Stay organised without browser tab chaos

## License

