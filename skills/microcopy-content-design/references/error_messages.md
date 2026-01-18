# Error Messages Reference

Comprehensive guide to writing effective error messages that help users recover and continue their work. Reference when writing or improving error handling copy.

## Error Message Principles

**1. Be Helpful, Not Apologetic**

- Focus on solution, not sorry
- User needs to know what to do
- Avoid over-apologizing

**2. Be Specific, Not Vague**

- "Email must include @" not "Invalid email"
- "File size must be under 5 MB" not "File too large"
- Name the problem clearly

**3. Be Actionable, Not Descriptive**

- Always tell user what to do next
- Provide specific steps when possible
- Link to help or support when relevant

**4. Be Human, Not Robotic**

- Write like talking to colleague
- Use plain language
- Avoid technical codes alone

**5. Be Calm, Not Alarming**

- Especially for critical errors
- Professional, measured tone
- Don't create panic

## Error Message Framework

### The Complete Error Message

**Pattern**: What happened + Why (optional) + What to do

**Template**:

```text
[What went wrong]: [Why it happened]. [What to do next].
```text

**Examples**:

```text
"Can't save changes: Connection timeout. Check connection and retry."

"Invalid email address: Must include @ symbol. Enter a valid email."

"Upload failed: File size exceeds 5 MB limit. Choose a smaller file."
```text

### Short Form (When Space Limited)

**Pattern**: Problem + Solution

**Examples**:

```text
"Email must include @"
"Password too short (min 8 characters)"
"File must be under 5 MB"
```text

## Error Types & Handling

### User Input Errors

**Cause**: User entered invalid or incomplete data
**Tone**: Helpful, instructive
**Response**: Guide to correct input

**Examples**:

**Empty Required Field**:

```text
BAD: "This field is required"
GOOD: "Email address is required"
```text

**Invalid Format**:

```text
BAD: "Invalid input"
GOOD: "Email must include @ symbol (e.g., you@company.com)"

BAD: "Wrong format"
GOOD: "Date format: MM/DD/YYYY (e.g., 01/15/2026)"
```text

**Out of Range**:

```text
BAD: "Value too high"
GOOD: "Quantity must be between 1 and 100"

BAD: "Invalid number"
GOOD: "Port number must be 1-65535"
```text

**Password Requirements**:

```text
BAD: "Password doesn't meet requirements"
GOOD: "Password must be at least 8 characters and include one number"

Better:
GOOD: "Password requirements:
   • At least 8 characters
   • One number
   • One special character"
```text

**Character Limitations**:

```text
BAD: "Invalid characters"
GOOD: "Project name can only contain letters, numbers, and hyphens"

BAD: "Too long"
GOOD: "Description must be under 500 characters (currently 547)"
```text

### System Errors

**Cause**: Technical failure, not user's fault
**Tone**: Apologetic but brief, focus on solution
**Response**: What happened + workaround if possible

**Examples**:

**Connection Failures**:

```text
BAD: "Error: ECONNREFUSED"
GOOD: "Can't connect to server. Check your connection or try again later."

BAD: "Network error"
GOOD: "Connection lost. Reconnecting automatically..."
```text

**Timeout Errors**:

```text
BAD: "Request timed out"
GOOD: "Request took too long. Simplify your query or try again."

BAD: "Timeout"
GOOD: "Loading timed out after 30 seconds. [Retry] or [Cancel]"
```text

**Server Errors**:

```text
BAD: "500 Internal Server Error"
GOOD: "Something went wrong on our end. Try refreshing the page."

BAD: "Error occurred"
GOOD: "Unable to process request. Our team has been notified. [Retry]"
```text

**Service Unavailable**:

```text
BAD: "503 Service Unavailable"
GOOD: "Service temporarily unavailable. Try again in a few minutes."
```text

### Permission Errors

**Cause**: User lacks required access
**Tone**: Clear, not accusatory
**Response**: What's restricted + how to get access

**Examples**:

**Access Denied**:

```text
BAD: "Access denied"
GOOD: "You don't have permission to view this page. Contact your admin for access."

BAD: "Forbidden"
GOOD: "This feature requires admin privileges. Contact support@company.com."
```text

**Feature Restricted**:

```text
BAD: "Not available"
GOOD: "Advanced analytics requires Pro plan. [View Plans]"

BAD: "Upgrade required"
GOOD: "This feature is available on the Enterprise plan. [Contact Sales]"
```text

**Read-Only Mode**:

```text
BAD: "Cannot edit"
GOOD: "This document is read-only. Request edit access from the owner."
```text

### Resource Not Found

**Cause**: Requested item doesn't exist
**Tone**: Matter-of-fact
**Response**: What's missing + possible alternatives

**Examples**:

**404 Errors**:

```text
BAD: "404 Not Found"
GOOD: "Page not found. The link may be broken or the page moved. [Go to Home]"

BAD: "Page doesn't exist"
GOOD: "We can't find that page. Try searching or browse from home."
```text

**Item Not Found**:

```text
BAD: "Not found"
GOOD: "Dashboard not found. It may have been deleted or you don't have access."

BAD: "Item doesn't exist"
GOOD: "User 'john@company.com' not found. Check spelling or [Invite User]"
```text

### Rate Limiting

**Cause**: Too many requests
**Tone**: Informative, not punishing
**Response**: Limit exceeded + when to retry

**Examples**:

**API Rate Limit**:

```text
BAD: "Too many requests"
GOOD: "Rate limit exceeded. Wait 60 seconds before trying again."

BAD: "429 Error"
GOOD: "You've made 1,000 requests this hour (limit: 1,000/hour). Resets at 3:00 PM."
```text

**Login Attempts**:

```text
BAD: "Locked out"
GOOD: "Too many failed login attempts. Try again in 15 minutes or [Reset Password]"
```text

### Validation Errors

**Cause**: Data doesn't meet business rules
**Tone**: Explanatory
**Response**: Rule explained + how to comply

**Examples**:

**Duplicate Entry**:

```text
BAD: "Already exists"
GOOD: "Email address already in use. Use a different email or [Sign In]"

BAD: "Duplicate"
GOOD: "Project name 'website-redesign' already exists. Choose a different name."
```text

**Dependency Conflict**:

```text
BAD: "Cannot delete"
GOOD: "Can't delete user with active projects. Reassign projects first."

BAD: "Conflict"
GOOD: "This alert is used by 3 dashboards. Remove from dashboards before deleting."
```text

**Business Rule Violation**:

```text
BAD: "Invalid operation"
GOOD: "Can't schedule deployment during maintenance window (2-4 AM EST)."

BAD: "Not allowed"
GOOD: "Projects require at least one admin. Assign another admin before removing yourself."
```text

## Error Severity Levels

### Critical Errors (Blocks Work)

**Impact**: User cannot continue
**Display**: Prominent, requires action
**Tone**: Calm but direct

**Examples**:

```text
"Service outage: All systems unavailable. Check status.company.com for updates."

"Account suspended: Payment failed. Update billing to restore access."

"Session expired: Sign in again to continue."
```text

### High Priority Errors (Significant Impact)

**Impact**: Important feature unavailable
**Display**: Clear, dismissible
**Tone**: Apologetic, helpful

**Examples**:

```text
"Export failed: File generation timed out. Try fewer records or smaller date range."

"Unable to save: Changes not synced to server. Check connection and retry."
```text

### Medium Priority Errors (Inconvenience)

**Impact**: Minor feature issue
**Display**: Inline, unobtrusive
**Tone**: Matter-of-fact

**Examples**:

```text
"Avatar upload failed: Image must be under 2 MB."

"Can't load preview: Refresh to try again."
```text

### Low Priority Errors (Warning)

**Impact**: Future problem if not addressed
**Display**: Subtle, dismissible
**Tone**: Informative

**Examples**:

```text
"Storage 90% full: Delete unused files or upgrade plan."

"Password expires in 7 days: Update in Settings > Security."
```text

## Error Message Location

### Inline Errors (Field-Level)

**When**: Form validation
**Where**: Directly below field
**Style**: Red text with icon

**Example**:

```text
[Email field with red border]
WARNING: Email must include @ symbol
```text

### Banner Errors (Page-Level)

**When**: Operation affects entire page
**Where**: Top of page or content area
**Style**: Alert banner, dismissible

**Example**:

```text
[Red banner at top]
WARNING: Unable to load dashboard: Connection failed. [Retry]
```text

### Modal Errors (Blocking)

**When**: Critical operation failed
**Where**: Modal dialog
**Style**: Centered, requires dismissal

**Example**:

```text
[Modal Dialog]
BAD: Deployment Failed

Deployment to production failed after 2 of 8 servers.

Error: Connection timeout on servers 3-8.

[Rollback] [Retry] [View Logs]
```text

### Toast Errors (Temporary)

**When**: Background operation failed
**Where**: Bottom or top corner
**Style**: Brief notification

**Example**:

```text
[Toast notification]
BAD: Auto-save failed [Retry]
```text

## Progressive Error Messages

### First Occurrence

**Show**: Brief, friendly

```text
"Email must include @ symbol"
```text

### Repeated Error

**Show**: More detail, stronger guidance

```text
"Email must include @ symbol

Valid format: you@company.com"
```text

### Multiple Failures

**Show**: Comprehensive help, contact option

```text
"Email validation failed 3 times

Required format: username@domain.com
Examples: 
• john@company.com
• sarah.smith@example.org

[Need help? Contact Support]"
```text

## Error Recovery Actions

### Immediate Recovery

**Provide**: Quick action to fix

```text
"Can't load data [Retry Now]"
"Connection lost [Reconnect]"
"Changes not saved [Save Again]"
```text

### Alternative Path

**Provide**: Different way to proceed

```text
"Import failed [Try Manual Entry] or [Contact Support]"
"Upload timed out [Reduce File Size] or [Upload to Drive]"
```text

### Workaround

**Provide**: Temporary solution

```text
"Real-time sync unavailable. Changes save locally and sync when connection restores."
```text

### Support Contact

**Provide**: Human help option

```text
"If this persists, contact support@company.com with error code: ERR_DB_4521"
```text

## Error Message Patterns by Context

### E-commerce/Checkout

```text
Payment Declined:
"Payment declined by bank. Verify card details or try different payment method."

Inventory Issue:
"Item no longer available. Removed from cart."

Promo Code:
"Promo code 'SAVE20' expired. Browse current offers."
```text

### Authentication

```text
Login Failed:
"Email or password incorrect. [Forgot Password?]"

Account Locked:
"Account locked after 5 failed attempts. [Reset Password] or wait 15 minutes."

Session Timeout:
"Session expired for security. Sign in to continue."
```text

### File Operations

```text
Upload Failed:
"Upload failed: File 'report.pdf' exceeds 10 MB limit. Compress file or upload to Drive."

Delete Failed:
"Can't delete: File is currently open. Close file and try again."

Permission Issue:
"Can't edit: File is read-only. Request edit access from owner."
```text

### API/Integration

```text
API Error:
"API request failed: Invalid API key. Check key in Settings > API Access."

Rate Limit:
"API rate limit reached: 1,000/hour. Resets in 45 minutes."

Webhook Failed:
"Webhook delivery failed to https://api.example.com. Retry or check endpoint."
```text

### Data Operations

```text
Query Timeout:
"Query timed out after 30 seconds. Add filters to narrow results."

Export Too Large:
"Export exceeds 100,000 rows. Add date range or column filters."

Import Error:
"Import failed: Row 247 missing required field 'email'. Fix CSV and retry."
```text

## Error Message Anti-Patterns

### Don't Do These

**1. Blame the User**:

```text
BAD: "You entered invalid data"
GOOD: "Email must include @ symbol"
```text

**2. Use Technical Jargon Alone**:

```text
BAD: "NullPointerException at line 247"
GOOD: "Something went wrong loading this data [Retry]"

BAD: "ERR_CONNECTION_REFUSED"
GOOD: "Can't connect to server. Check connection and retry."
```text

**3. Be Vague**:

```text
BAD: "Error occurred"
GOOD: "Can't save changes: Connection timed out"

BAD: "Invalid input"
GOOD: "Password must be at least 8 characters"
```text

**4. Over-Apologize**:

```text
BAD: "We're terribly sorry for the inconvenience this has caused..."
GOOD: "Changes not saved. Check connection and retry."
```text

**5. Use ALL CAPS**:

```text
BAD: "ERROR: FILE NOT FOUND"
GOOD: "File not found"
```text

**6. Multiple Errors at Once (If Avoidable)**:

```text
BAD: "Email invalid, password too short, name required"
GOOD: "Email must include @ symbol"
    [Fix this first, then validate others]
```text

## Error Message Checklist

Before Publishing, Verify:

- [ ] Describes what went wrong specifically
- [ ] Explains why (if helpful)
- [ ] Tells user what to do next
- [ ] Uses plain language (no jargon)
- [ ] Appropriate severity/tone
- [ ] Offers recovery action
- [ ] Under 2-3 sentences
- [ ] Tested with actual users
- [ ] Works when read by screen reader
- [ ] Consistent with other errors

## Error Message Testing

**Test Scenarios**:

1. Read error out loud - does it sound natural?
2. Show to non-technical person - do they understand?
3. Test screen reader - is it clear when announced?
4. Stress test - would you understand at 2 AM during incident?
5. Compare to similar errors - is wording consistent?

## Error Code Usage

**When to Include Error Codes**:

- For support reference
- For technical users
- In logs (not always in UI)

**How to Include**:

```text
User-Friendly + Code:
"Can't load data. Try refreshing the page. (Error: DB_TIMEOUT_001)"

Technical Users:
"Connection failed: ERR_SSL_HANDSHAKE_FAILED. Verify SSL certificate."
```text

**Where to Put Codes**:

- End of message (parentheses)
- Support contact info
- Copy to clipboard option
- Never as only message

## Localization Considerations

**For Translated Errors**:

- Keep messages simple (easier to translate)
- Avoid idioms or cultural references
- Test with actual translations
- Consider text expansion (German ~30% longer)
- Date/time formats vary by locale

## Further Reading

- Nielsen Norman Group: Error Message Guidelines
- Material Design: Error States
- Voice & Tone Guide: Mailchimp
- Microsoft Writing Style Guide: Error Messages
