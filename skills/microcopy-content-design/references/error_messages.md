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

```
[What went wrong]: [Why it happened]. [What to do next].
```

**Examples**:

```
"Can't save changes: Connection timeout. Check connection and retry."

"Invalid email address: Must include @ symbol. Enter a valid email."

"Upload failed: File size exceeds 5 MB limit. Choose a smaller file."
```

### Short Form (When Space Limited)

**Pattern**: Problem + Solution

**Examples**:

```
"Email must include @"
"Password too short (min 8 characters)"
"File must be under 5 MB"
```

## Error Types & Handling

### User Input Errors

**Cause**: User entered invalid or incomplete data
**Tone**: Helpful, instructive
**Response**: Guide to correct input

**Examples**:

**Empty Required Field**:

```
❌ "This field is required"
✅ "Email address is required"
```

**Invalid Format**:

```
❌ "Invalid input"
✅ "Email must include @ symbol (e.g., you@company.com)"

❌ "Wrong format"
✅ "Date format: MM/DD/YYYY (e.g., 01/15/2026)"
```

**Out of Range**:

```
❌ "Value too high"
✅ "Quantity must be between 1 and 100"

❌ "Invalid number"
✅ "Port number must be 1-65535"
```

**Password Requirements**:

```
❌ "Password doesn't meet requirements"
✅ "Password must be at least 8 characters and include one number"

Better:
✅ "Password requirements:
   • At least 8 characters
   • One number
   • One special character"
```

**Character Limitations**:

```
❌ "Invalid characters"
✅ "Project name can only contain letters, numbers, and hyphens"

❌ "Too long"
✅ "Description must be under 500 characters (currently 547)"
```

### System Errors

**Cause**: Technical failure, not user's fault
**Tone**: Apologetic but brief, focus on solution
**Response**: What happened + workaround if possible

**Examples**:

**Connection Failures**:

```
❌ "Error: ECONNREFUSED"
✅ "Can't connect to server. Check your connection or try again later."

❌ "Network error"
✅ "Connection lost. Reconnecting automatically..."
```

**Timeout Errors**:

```
❌ "Request timed out"
✅ "Request took too long. Simplify your query or try again."

❌ "Timeout"
✅ "Loading timed out after 30 seconds. [Retry] or [Cancel]"
```

**Server Errors**:

```
❌ "500 Internal Server Error"
✅ "Something went wrong on our end. Try refreshing the page."

❌ "Error occurred"
✅ "Unable to process request. Our team has been notified. [Retry]"
```

**Service Unavailable**:

```
❌ "503 Service Unavailable"
✅ "Service temporarily unavailable. Try again in a few minutes."
```

### Permission Errors

**Cause**: User lacks required access
**Tone**: Clear, not accusatory
**Response**: What's restricted + how to get access

**Examples**:

**Access Denied**:

```
❌ "Access denied"
✅ "You don't have permission to view this page. Contact your admin for access."

❌ "Forbidden"
✅ "This feature requires admin privileges. Contact support@company.com."
```

**Feature Restricted**:

```
❌ "Not available"
✅ "Advanced analytics requires Pro plan. [View Plans]"

❌ "Upgrade required"
✅ "This feature is available on the Enterprise plan. [Contact Sales]"
```

**Read-Only Mode**:

```
❌ "Cannot edit"
✅ "This document is read-only. Request edit access from the owner."
```

### Resource Not Found

**Cause**: Requested item doesn't exist
**Tone**: Matter-of-fact
**Response**: What's missing + possible alternatives

**Examples**:

**404 Errors**:

```
❌ "404 Not Found"
✅ "Page not found. The link may be broken or the page moved. [Go to Home]"

❌ "Page doesn't exist"
✅ "We can't find that page. Try searching or browse from home."
```

**Item Not Found**:

```
❌ "Not found"
✅ "Dashboard not found. It may have been deleted or you don't have access."

❌ "Item doesn't exist"
✅ "User 'john@company.com' not found. Check spelling or [Invite User]"
```

### Rate Limiting

**Cause**: Too many requests
**Tone**: Informative, not punishing
**Response**: Limit exceeded + when to retry

**Examples**:

**API Rate Limit**:

```
❌ "Too many requests"
✅ "Rate limit exceeded. Wait 60 seconds before trying again."

❌ "429 Error"
✅ "You've made 1,000 requests this hour (limit: 1,000/hour). Resets at 3:00 PM."
```

**Login Attempts**:

```
❌ "Locked out"
✅ "Too many failed login attempts. Try again in 15 minutes or [Reset Password]"
```

### Validation Errors

**Cause**: Data doesn't meet business rules
**Tone**: Explanatory
**Response**: Rule explained + how to comply

**Examples**:

**Duplicate Entry**:

```
❌ "Already exists"
✅ "Email address already in use. Use a different email or [Sign In]"

❌ "Duplicate"
✅ "Project name 'website-redesign' already exists. Choose a different name."
```

**Dependency Conflict**:

```
❌ "Cannot delete"
✅ "Can't delete user with active projects. Reassign projects first."

❌ "Conflict"
✅ "This alert is used by 3 dashboards. Remove from dashboards before deleting."
```

**Business Rule Violation**:

```
❌ "Invalid operation"
✅ "Can't schedule deployment during maintenance window (2-4 AM EST)."

❌ "Not allowed"
✅ "Projects require at least one admin. Assign another admin before removing yourself."
```

## Error Severity Levels

### Critical Errors (Blocks Work)

**Impact**: User cannot continue
**Display**: Prominent, requires action
**Tone**: Calm but direct

**Examples**:

```
"Service outage: All systems unavailable. Check status.company.com for updates."

"Account suspended: Payment failed. Update billing to restore access."

"Session expired: Sign in again to continue."
```

### High Priority Errors (Significant Impact)

**Impact**: Important feature unavailable
**Display**: Clear, dismissible
**Tone**: Apologetic, helpful

**Examples**:

```
"Export failed: File generation timed out. Try fewer records or smaller date range."

"Unable to save: Changes not synced to server. Check connection and retry."
```

### Medium Priority Errors (Inconvenience)

**Impact**: Minor feature issue
**Display**: Inline, unobtrusive
**Tone**: Matter-of-fact

**Examples**:

```
"Avatar upload failed: Image must be under 2 MB."

"Can't load preview: Refresh to try again."
```

### Low Priority Errors (Warning)

**Impact**: Future problem if not addressed
**Display**: Subtle, dismissible
**Tone**: Informative

**Examples**:

```
"Storage 90% full: Delete unused files or upgrade plan."

"Password expires in 7 days: Update in Settings > Security."
```

## Error Message Location

### Inline Errors (Field-Level)

**When**: Form validation
**Where**: Directly below field
**Style**: Red text with icon

**Example**:

```
[Email field with red border]
⚠️ Email must include @ symbol
```

### Banner Errors (Page-Level)

**When**: Operation affects entire page
**Where**: Top of page or content area
**Style**: Alert banner, dismissible

**Example**:

```
[Red banner at top]
⚠️ Unable to load dashboard: Connection failed. [Retry]
```

### Modal Errors (Blocking)

**When**: Critical operation failed
**Where**: Modal dialog
**Style**: Centered, requires dismissal

**Example**:

```
[Modal Dialog]
❌ Deployment Failed

Deployment to production failed after 2 of 8 servers.

Error: Connection timeout on servers 3-8.

[Rollback] [Retry] [View Logs]
```

### Toast Errors (Temporary)

**When**: Background operation failed
**Where**: Bottom or top corner
**Style**: Brief notification

**Example**:

```
[Toast notification]
❌ Auto-save failed [Retry]
```

## Progressive Error Messages

### First Occurrence

**Show**: Brief, friendly

```
"Email must include @ symbol"
```

### Repeated Error

**Show**: More detail, stronger guidance

```
"Email must include @ symbol

Valid format: you@company.com"
```

### Multiple Failures

**Show**: Comprehensive help, contact option

```
"Email validation failed 3 times

Required format: username@domain.com
Examples: 
• john@company.com
• sarah.smith@example.org

[Need help? Contact Support]"
```

## Error Recovery Actions

### Immediate Recovery

**Provide**: Quick action to fix

```
"Can't load data [Retry Now]"
"Connection lost [Reconnect]"
"Changes not saved [Save Again]"
```

### Alternative Path

**Provide**: Different way to proceed

```
"Import failed [Try Manual Entry] or [Contact Support]"
"Upload timed out [Reduce File Size] or [Upload to Drive]"
```

### Workaround

**Provide**: Temporary solution

```
"Real-time sync unavailable. Changes save locally and sync when connection restores."
```

### Support Contact

**Provide**: Human help option

```
"If this persists, contact support@company.com with error code: ERR_DB_4521"
```

## Error Message Patterns by Context

### E-commerce/Checkout

```
Payment Declined:
"Payment declined by bank. Verify card details or try different payment method."

Inventory Issue:
"Item no longer available. Removed from cart."

Promo Code:
"Promo code 'SAVE20' expired. Browse current offers."
```

### Authentication

```
Login Failed:
"Email or password incorrect. [Forgot Password?]"

Account Locked:
"Account locked after 5 failed attempts. [Reset Password] or wait 15 minutes."

Session Timeout:
"Session expired for security. Sign in to continue."
```

### File Operations

```
Upload Failed:
"Upload failed: File 'report.pdf' exceeds 10 MB limit. Compress file or upload to Drive."

Delete Failed:
"Can't delete: File is currently open. Close file and try again."

Permission Issue:
"Can't edit: File is read-only. Request edit access from owner."
```

### API/Integration

```
API Error:
"API request failed: Invalid API key. Check key in Settings > API Access."

Rate Limit:
"API rate limit reached: 1,000/hour. Resets in 45 minutes."

Webhook Failed:
"Webhook delivery failed to https://api.example.com. Retry or check endpoint."
```

### Data Operations

```
Query Timeout:
"Query timed out after 30 seconds. Add filters to narrow results."

Export Too Large:
"Export exceeds 100,000 rows. Add date range or column filters."

Import Error:
"Import failed: Row 247 missing required field 'email'. Fix CSV and retry."
```

## Error Message Anti-Patterns

### Don't Do These

**1. Blame the User**:

```
❌ "You entered invalid data"
✅ "Email must include @ symbol"
```

**2. Use Technical Jargon Alone**:

```
❌ "NullPointerException at line 247"
✅ "Something went wrong loading this data [Retry]"

❌ "ERR_CONNECTION_REFUSED"
✅ "Can't connect to server. Check connection and retry."
```

**3. Be Vague**:

```
❌ "Error occurred"
✅ "Can't save changes: Connection timed out"

❌ "Invalid input"
✅ "Password must be at least 8 characters"
```

**4. Over-Apologize**:

```
❌ "We're terribly sorry for the inconvenience this has caused..."
✅ "Changes not saved. Check connection and retry."
```

**5. Use ALL CAPS**:

```
❌ "ERROR: FILE NOT FOUND"
✅ "File not found"
```

**6. Multiple Errors at Once (If Avoidable)**:

```
❌ "Email invalid, password too short, name required"
✅ "Email must include @ symbol"
    [Fix this first, then validate others]
```

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

```
User-Friendly + Code:
"Can't load data. Try refreshing the page. (Error: DB_TIMEOUT_001)"

Technical Users:
"Connection failed: ERR_SSL_HANDSHAKE_FAILED. Verify SSL certificate."
```

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
