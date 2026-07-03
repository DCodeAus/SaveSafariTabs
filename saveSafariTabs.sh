#!/bin/bash

OUTPUT_FILE="$HOME/Desktop/safari-tabs.md"

osascript > "$OUTPUT_FILE" << 'APPLESCRIPT'
tell application "Safari"
    set allText to "# Safari Tabs - " & (current date as text) & linefeed & linefeed & "Saved tabs to resume later" & linefeed & linefeed
    set windowCount to count of windows
    repeat with w from 1 to windowCount
        set tabCount to count of tabs of window w
        repeat with t from 1 to tabCount
            set tabURL to URL of tab t of window w
            set tabTitle to name of tab t of window w
            set allText to allText & "- [" & tabTitle & "](" & tabURL & "]" & linefeed
        end repeat
    end repeat
    return allText
end tell
APPLESCRIPT

TAB_COUNT=$(grep -c '^\- \[' "$OUTPUT_FILE" 2>/dev/null || echo "0")
echo "✅ Saved $TAB_COUNT tabs to ~/Desktop/safari-tabs.md"
