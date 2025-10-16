#!/bin/bash

# PII Log Scanner Script
# Scans device logs for potential PII leakage
# Output: full_logcat.txt, pii_candidates.txt
#
# Usage: ./scan_logs_for_pii.sh [--help] [--package PKG]
#
# Requirements:
# - adb in PATH
# - Android device connected

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOGCAT_FILE="$SCRIPT_DIR/full_logcat.txt"
PII_CANDIDATES_FILE="$SCRIPT_DIR/pii_candidates.txt"
PACKAGE_NAME="com.ocrmobilesdk"

show_help() {
    echo "PII Log Scanner Script"
    echo ""
    echo "Usage: $0 [--help] [--package PKG]"
    echo ""
    echo "Scans device logs for potential PII leakage:"
    echo "- Turkish ID numbers (TC Kimlik)"
    echo "- Phone numbers"
    echo "- Email addresses"
    echo "- Credit card numbers"
    echo "- Long alphanumeric tokens"
    echo "- Personal names patterns"
    echo ""
    echo "Options:"
    echo "  --package PKG   Filter logs for specific package (default: com.ocrmobilesdk)"
    echo "  --help          Show this help message"
    echo ""
    echo "Output:"
    echo "  full_logcat.txt      - Complete device logs"
    echo "  pii_candidates.txt   - Potential PII matches with line numbers"
    echo ""
    echo "Requirements:"
    echo "- adb in PATH"
    echo "- Android device connected"
}

while [[ $# -gt 0 ]]; do
    case $1 in
        --help)
            show_help
            exit 0
            ;;
        --package)
            PACKAGE_NAME="$2"
            shift 2
            ;;
        *)
            echo "Unknown option: $1"
            show_help
            exit 1
            ;;
    esac
done

echo "🔍 Scanning logs for PII leakage..."

# Check prerequisites
if ! command -v adb &> /dev/null; then
    echo "❌ Error: adb not found in PATH"
    exit 1
fi

if ! adb devices | grep -q "device$"; then
    echo "❌ Error: No Android device connected"
    exit 1
fi

echo "✅ Prerequisites met"

# Collect logs
echo "📝 Collecting device logs..."
adb logcat -d > "$LOGCAT_FILE"

LOG_LINES=$(wc -l < "$LOGCAT_FILE")
echo "📊 Collected $LOG_LINES log lines"

# Initialize PII candidates file
cat > "$PII_CANDIDATES_FILE" << EOF
# PII Candidates Report
# Generated: $(date -u +"%Y-%m-%dT%H:%M:%SZ")
# Package: $PACKAGE_NAME
# Total log lines: $LOG_LINES
#
# Format: LINE_NUMBER:PATTERN_TYPE:MATCHED_TEXT:FULL_LINE
#
EOF

echo "🔍 Scanning for PII patterns..."

PII_COUNT=0

# Pattern 1: Turkish ID Numbers (11 digits)
echo "  🔍 Scanning for Turkish ID numbers..."
TC_MATCHES=$(grep -n -E "\b[0-9]{11}\b" "$LOGCAT_FILE" | grep -v "timestamp\|uid\|pid\|tid" || true)
if [[ -n "$TC_MATCHES" ]]; then
    echo "$TC_MATCHES" | while IFS= read -r line; do
        LINE_NUM=$(echo "$line" | cut -d: -f1)
        MATCHED_TEXT=$(echo "$line" | grep -o -E "\b[0-9]{11}\b" | head -1)
        echo "$LINE_NUM:TC_NUMBER:$MATCHED_TEXT:$line" >> "$PII_CANDIDATES_FILE"
    done
    TC_COUNT=$(echo "$TC_MATCHES" | wc -l)
    echo "    Found $TC_COUNT potential TC number matches"
    PII_COUNT=$((PII_COUNT + TC_COUNT))
fi

# Pattern 2: Phone Numbers (Turkish format)
echo "  📞 Scanning for phone numbers..."
PHONE_MATCHES=$(grep -n -E "\b(0[0-9]{3}[0-9]{3}[0-9]{2}[0-9]{2}|\+90[0-9]{3}[0-9]{3}[0-9]{2}[0-9]{2})\b" "$LOGCAT_FILE" || true)
if [[ -n "$PHONE_MATCHES" ]]; then
    echo "$PHONE_MATCHES" | while IFS= read -r line; do
        LINE_NUM=$(echo "$line" | cut -d: -f1)
        MATCHED_TEXT=$(echo "$line" | grep -o -E "\b(0[0-9]{3}[0-9]{3}[0-9]{2}[0-9]{2}|\+90[0-9]{3}[0-9]{3}[0-9]{2}[0-9]{2})\b" | head -1)
        echo "$LINE_NUM:PHONE:$MATCHED_TEXT:$line" >> "$PII_CANDIDATES_FILE"
    done
    PHONE_COUNT=$(echo "$PHONE_MATCHES" | wc -l)
    echo "    Found $PHONE_COUNT potential phone number matches"
    PII_COUNT=$((PII_COUNT + PHONE_COUNT))
fi

# Pattern 3: Email Addresses
echo "  📧 Scanning for email addresses..."
EMAIL_MATCHES=$(grep -n -E "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b" "$LOGCAT_FILE" || true)
if [[ -n "$EMAIL_MATCHES" ]]; then
    echo "$EMAIL_MATCHES" | while IFS= read -r line; do
        LINE_NUM=$(echo "$line" | cut -d: -f1)
        MATCHED_TEXT=$(echo "$line" | grep -o -E "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b" | head -1)
        echo "$LINE_NUM:EMAIL:$MATCHED_TEXT:$line" >> "$PII_CANDIDATES_FILE"
    done
    EMAIL_COUNT=$(echo "$EMAIL_MATCHES" | wc -l)
    echo "    Found $EMAIL_COUNT potential email matches"
    PII_COUNT=$((PII_COUNT + EMAIL_COUNT))
fi

# Pattern 4: Credit Card Numbers (basic pattern)
echo "  💳 Scanning for credit card numbers..."
CC_MATCHES=$(grep -n -E "\b[0-9]{4}[[:space:]-]?[0-9]{4}[[:space:]-]?[0-9]{4}[[:space:]-]?[0-9]{4}\b" "$LOGCAT_FILE" || true)
if [[ -n "$CC_MATCHES" ]]; then
    echo "$CC_MATCHES" | while IFS= read -r line; do
        LINE_NUM=$(echo "$line" | cut -d: -f1)
        MATCHED_TEXT=$(echo "$line" | grep -o -E "\b[0-9]{4}[[:space:]-]?[0-9]{4}[[:space:]-]?[0-9]{4}[[:space:]-]?[0-9]{4}\b" | head -1)
        echo "$LINE_NUM:CREDIT_CARD:$MATCHED_TEXT:$line" >> "$PII_CANDIDATES_FILE"
    done
    CC_COUNT=$(echo "$CC_MATCHES" | wc -l)
    echo "    Found $CC_COUNT potential credit card matches"
    PII_COUNT=$((PII_COUNT + CC_COUNT))
fi

# Pattern 5: Long Alphanumeric Tokens (potential session tokens, IDs)
echo "  🔑 Scanning for long tokens..."
TOKEN_MATCHES=$(grep -n -E "\b[A-Za-z0-9]{20,}\b" "$LOGCAT_FILE" | grep -v "timestamp\|build\|version\|android" || true)
if [[ -n "$TOKEN_MATCHES" ]]; then
    echo "$TOKEN_MATCHES" | while IFS= read -r line; do
        LINE_NUM=$(echo "$line" | cut -d: -f1)
        MATCHED_TEXT=$(echo "$line" | grep -o -E "\b[A-Za-z0-9]{20,}\b" | head -1)
        # Skip common false positives
        if [[ ! "$MATCHED_TEXT" =~ ^(android|system|framework|build) ]]; then
            echo "$LINE_NUM:TOKEN:$MATCHED_TEXT:$line" >> "$PII_CANDIDATES_FILE"
        fi
    done
    TOKEN_COUNT=$(echo "$TOKEN_MATCHES" | wc -l)
    echo "    Found $TOKEN_COUNT potential token matches"
    PII_COUNT=$((PII_COUNT + TOKEN_COUNT))
fi

# Pattern 6: Names (Turkish names pattern)
echo "  👤 Scanning for potential names..."
NAME_MATCHES=$(grep -n -E "\b[A-ZÇĞIÖŞÜ][a-zçğıöşü]{2,}\s+[A-ZÇĞIÖŞÜ][a-zçğıöşü]{2,}\b" "$LOGCAT_FILE" | grep -v "Android\|System\|Framework" || true)
if [[ -n "$NAME_MATCHES" ]]; then
    echo "$NAME_MATCHES" | while IFS= read -r line; do
        LINE_NUM=$(echo "$line" | cut -d: -f1)
        MATCHED_TEXT=$(echo "$line" | grep -o -E "\b[A-ZÇĞIÖŞÜ][a-zçğıöşü]{2,}\s+[A-ZÇĞIÖŞÜ][a-zçğıöşü]{2,}\b" | head -1)
        echo "$LINE_NUM:NAME:$MATCHED_TEXT:$line" >> "$PII_CANDIDATES_FILE"
    done
    NAME_COUNT=$(echo "$NAME_MATCHES" | wc -l)
    echo "    Found $NAME_COUNT potential name matches"
    PII_COUNT=$((PII_COUNT + NAME_COUNT))
fi

# Pattern 7: IBAN Numbers
echo "  🏦 Scanning for IBAN numbers..."
IBAN_MATCHES=$(grep -n -E "\bTR[0-9]{2}[0-9]{4}[0-9]{4}[0-9]{4}[0-9]{4}[0-9]{4}[0-9]{2}\b" "$LOGCAT_FILE" || true)
if [[ -n "$IBAN_MATCHES" ]]; then
    echo "$IBAN_MATCHES" | while IFS= read -r line; do
        LINE_NUM=$(echo "$line" | cut -d: -f1)
        MATCHED_TEXT=$(echo "$line" | grep -o -E "\bTR[0-9]{2}[0-9]{4}[0-9]{4}[0-9]{4}[0-9]{4}[0-9]{4}[0-9]{2}\b" | head -1)
        echo "$LINE_NUM:IBAN:$MATCHED_TEXT:$line" >> "$PII_CANDIDATES_FILE"
    done
    IBAN_COUNT=$(echo "$IBAN_MATCHES" | wc -l)
    echo "    Found $IBAN_COUNT potential IBAN matches"
    PII_COUNT=$((PII_COUNT + IBAN_COUNT))
fi

# Filter for package-specific logs if requested
if [[ -n "$PACKAGE_NAME" ]]; then
    echo "🔍 Filtering for package: $PACKAGE_NAME"
    PACKAGE_PII_FILE="$SCRIPT_DIR/pii_candidates_${PACKAGE_NAME##*.}.txt"
    grep "$PACKAGE_NAME" "$PII_CANDIDATES_FILE" > "$PACKAGE_PII_FILE" 2>/dev/null || echo "# No PII found for package $PACKAGE_NAME" > "$PACKAGE_PII_FILE"
    PACKAGE_PII_COUNT=$(grep -v "^#" "$PACKAGE_PII_FILE" | wc -l || echo "0")
    echo "📊 Package-specific PII candidates: $PACKAGE_PII_COUNT"
fi

echo ""
echo "📊 PII Scan Results:"
echo "  📝 Total log lines scanned: $LOG_LINES"
echo "  🔍 Total PII candidates found: $PII_COUNT"
echo ""

if [[ $PII_COUNT -eq 0 ]]; then
    echo "✅ No PII candidates found in logs"
    echo "📄 Clean log report saved to: $PII_CANDIDATES_FILE"
else
    echo "⚠️ Found $PII_COUNT potential PII candidates"
    echo "📄 Detailed report saved to: $PII_CANDIDATES_FILE"
    echo ""
    echo "🔍 Top 10 PII candidates:"
    head -20 "$PII_CANDIDATES_FILE" | grep -v "^#" | head -10 || echo "  (No candidates to display)"
    echo ""
    echo "⚠️ IMPORTANT: Review all candidates manually"
    echo "   Many matches may be false positives (timestamps, IDs, etc.)"
fi

echo ""
echo "📄 Output files:"
echo "  📝 Full logs: $LOGCAT_FILE"
echo "  🔍 PII candidates: $PII_CANDIDATES_FILE"
if [[ -n "$PACKAGE_NAME" && -f "$PACKAGE_PII_FILE" ]]; then
    echo "  📦 Package PII: $PACKAGE_PII_FILE"
fi

# Return appropriate exit code
if [[ $PII_COUNT -eq 0 ]]; then
    echo ""
    echo "✅ PII scan completed - No issues found"
    exit 0
else
    echo ""
    echo "⚠️ PII scan completed - Manual review required"
    exit 2  # Warning exit code
fi
