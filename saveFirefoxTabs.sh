#!/bin/bash

OUTPUT_FILE="$HOME/Desktop/firefox-tabs.md"

{
    echo "# Firefox Tabs - $(date '+%A, %d %B %Y at %H:%M')"
    echo ""
    echo "Saved Firefox tabs to resume later"
    echo ""
    
    osascript <<'APPLESCRIPT'
tell application "Firefox"
    set allText to ""
    try
        tell application "System Events"
            tell process "Firefox"
                set windowCount to count of windows
                repeat with w from 1 to windowCount
                    try
                        set tabCount to count of tabs of window w
                        repeat with t from 1 to tabCount
                            set tabURL to URL of tab t of window w
                            set tabTitle to name of tab t of window w
                            set allText to allText & "- [" & tabTitle & "](" & tabURL & ")" & linefeed
                        end repeat
                    end try
                end repeat
            end tell
        end tell
    end try
    return allText
end tell
APPLESCRIPT
} > "$OUTPUT_FILE"

TAB_COUNT=$(grep -c '^\- \[' "$OUTPUT_FILE" 2>/dev/null || echo "0")
echo "✅ Saved $TAB_COUNT Firefox tabs to ~/Desktop/firefox-tabs.md"
