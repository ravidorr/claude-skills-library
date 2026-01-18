# Microcopy Patterns Reference

Comprehensive guide to common UI microcopy patterns for buttons, labels, tooltips, and interface text. Reference when writing or improving any interface copy.

## Core Microcopy Principles

**1. Every Word Earns Its Place**

- Ruthlessly edit
- No filler words
- Each word must serve purpose

**2. Action-Oriented Language**

- Lead with verbs
- Focus on outcomes
- Enable user action

**3. User-Centric Phrasing**

- "Your" not "The"
- Active voice preferred
- User perspective

**4. Contextually Appropriate**

- Match stress level
- Consider frequency
- Adapt to technical depth

**5. Scannable & Concise**

- Front-load important words
- Break up long text
- Use parallel structure

## Button Copy Patterns

### Primary Action Buttons

**Pattern**: Verb + Object (when clear)

**Examples**:

```text
Generic → Specific
"Submit" → "Create Account"
"Send" → "Send Message"
"Save" → "Save Changes"
"Go" → "Start Setup"
"OK" → "Apply Settings"
```

**Guidelines**:

- Start with action verb
- Be specific about outcome
- Keep under 3 words when possible
- Match user's mental model

**Context-Specific Examples**:

**Account Creation**:

- "Create Account"
- "Sign Up"
- "Join Now"

**Data Entry**:

- "Save Changes"
- "Update Profile"
- "Save Draft"

**Transactions**:

- "Complete Purchase"
- "Place Order"
- "Confirm Payment"

**Deployments**:

- "Deploy Now"
- "Start Deployment"
- "Push to Production"

### Secondary Action Buttons

**Pattern**: Clear alternative action

**Examples**:

```text
"Cancel" (standard)
"Go Back"
"Skip for Now"
"Not Now"
"Maybe Later"
"Remind Me Later"
```

**Guidelines**:

- Less prominent visually
- Clear what happens
- No guilt or pressure
- Honest about outcome

### Destructive Action Buttons

**Pattern**: Specific + Consequence (when needed)

**Examples**:

```text
Simple:
"Delete"
"Remove"
"Clear"

Specific:
"Delete Account"
"Remove User"
"Clear History"

With Consequence:
"Delete 24 Items"
"Remove Access"
"Permanently Delete"
```

**Guidelines**:

- Be explicit about action
- Mention count when relevant
- Use "Permanently" when no undo
- Require confirmation for critical actions

**Confirmation Dialog Buttons**:

```text
Generic: "Yes" / "No"
Better: "Delete Account" / "Keep Account"
Best: "Delete Permanently" / "Cancel"
```

### Link Text Patterns

**Pattern**: Descriptive phrase (not "click here")

**Examples**:

```text
BAD: "Click here for more information"
GOOD: "View pricing details"

BAD: "Learn more"
GOOD: "Read deployment guide"

BAD: "Go to settings"
GOOD: "Configure alert settings"
```

**Guidelines**:

- Links should describe destination
- Standalone understandable
- Avoid generic "Learn more" when possible
- Provide context

### Button States

**Normal State**:

- Clear action verb
- Specific outcome

**Loading State**:

```text
"Save Changes" → "Saving..."
"Deploy" → "Deploying..."
"Send" → "Sending..."
```

**Disabled State**:

- Same label as normal
- Tooltip explains why disabled
- Never change button text when disabled

**Success State** (if shown):

```text
"Save Changes" → "Saved" (briefly, then return)
"Deploy" → "Deployed Successfully"
```

## Label Patterns

### Form Field Labels

**Pattern**: Noun or noun phrase (clear and direct)

**Examples**:

```text
Input Type → Label
Text input → "Email Address"
Text input → "Full Name"
Number input → "Quantity"
Dropdown → "Country"
Date picker → "Birth Date"
Checkbox → "Remember me"
```

**Guidelines**:

- Use explicit labels (not placeholders only)
- Title case for labels
- Sentence case for help text
- Required fields marked clearly

**Label + Help Text Pattern**:

```text
Label: "API Key"
Help: "Found in your account settings"

Label: "Webhook URL"
Help: "Endpoint to receive notifications"
```

### Required vs Optional

**Pattern**: Mark exception (not the rule)

**If Most Fields Required**:

```text
Email Address *
Password *
Company Name (optional)
```

**If Most Fields Optional**:

```text
Email Address
Password
Company Name (optional)
```

**Guidelines**:

- Use * for required (with legend)
- "(optional)" for optional fields
- Be consistent throughout form

### Toggle/Checkbox Labels

**Pattern**: Action or state description

**Examples**:

```text
Action-oriented:
"Enable notifications"
"Send weekly reports"
"Allow team access"

State-oriented:
"Notifications enabled"
"Weekly reports active"
"Team access allowed"
```

**Recommendation**: Use action-oriented for toggles users change frequently, state-oriented for settings that persist.

## Tooltip Patterns

### When to Use Tooltips

**Good Uses**:

- Brief explanation of unfamiliar terms
- Additional context for icons
- Keyboard shortcuts
- Truncated text full version
- Why field is disabled

**Bad Uses**:

- Essential information (should be visible)
- Long explanations (use help text)
- Repeating visible label
- Mobile interfaces (hover doesn't work)

### Tooltip Copy Length

**Guideline**: Under 100 characters

**Examples**:

```text
Icon tooltip:
"Delete alert" (not "Delete this alert")

Technical term:
"SLA: Service Level Agreement defining uptime commitments"

Disabled field:
"Requires admin permissions to edit"

Keyboard shortcut:
"Save (Cmd+S)"
```

### Tooltip Structure

**Pattern**: Direct explanation or short phrase

**For Icons**:

```text
BAD: "This icon allows you to delete"
GOOD: "Delete"

BAD: "Click to export data"
GOOD: "Export to CSV"
```

**For Technical Terms**:

```text
BAD: "RPO stands for Recovery Point Objective which is..."
GOOD: "RPO: Maximum acceptable data loss measured in time"
```

**For Disabled Elements**:

```text
BAD: "You can't do this because you don't have the right permissions"
GOOD: "Requires admin permissions"
```

## Status Indicator Patterns

### Loading States

**Pattern**: Present continuous verb + context

**Examples**:

```text
Short:
"Loading..."
"Processing..."
"Saving..."

With Context:
"Loading dashboard..."
"Processing 1,200 records..."
"Deploying to 8 servers..."

With Progress:
"Analyzing logs... 45% complete"
"Uploading file... 2 of 5 MB"
```

**Guidelines**:

- Use ellipsis (...) for ongoing actions
- Include progress when available
- Provide time estimate for >5 seconds
- Be specific about what's loading

### Success Messages

**Pattern**: Past tense verb + what succeeded

**Examples**:

```text
Minimal:
"Saved"
"Sent"
"Updated"

Clear:
"Changes saved"
"Message sent"
"Profile updated"

Detailed:
"Alert configuration saved successfully"
"Report sent to team@company.com"
"User permissions updated"
```

**Guidelines**:

- Brief and positive
- Confirm what happened
- Auto-dismiss after 3-5 seconds
- Include next action if relevant

**With Next Action**:

```text
"Deployment complete. [View Logs]"
"Report generated. [Download] [Share]"
"Invitation sent. [Send Another]"
```

### Progress Indicators

**Pattern**: Action + progress metric

**Examples**:

```text
Percentage:
"Installing updates... 45%"
"Analyzing data... 67% complete"

Count:
"Processing 3 of 12 files..."
"Deploying to server 2 of 8..."

Time Remaining:
"Backup in progress... 5 minutes remaining"
"Download starting... 2:30 remaining"
```

**Guidelines**:

- Show progress when possible
- Include time estimate when >10 seconds
- Be honest about uncertainty
- Allow cancellation when feasible

## Empty State Patterns

### First Use Empty States

**Pattern**: What's empty + How to fill + Call to action

**Structure**:

```text
Heading: [What's empty]
Body: [Why empty / How to get started]
Action: [Primary CTA button]
```

**Examples**:

**No Content Yet**:

```text
Heading: "No dashboards yet"
Body: "Create your first dashboard to visualize your metrics"
Action: [Create Dashboard]
```

**No Items**:

```text
Heading: "No alerts configured"
Body: "Set up alerts to get notified about system issues"
Action: [Add Alert]
```

**No Team Members**:

```text
Heading: "You're the only team member"
Body: "Invite colleagues to collaborate on projects"
Action: [Invite Team]
```

### Zero Results Empty States

**Pattern**: No results + Why + How to fix

**Examples**:

**Filtered Results**:

```text
Heading: "No alerts match your filters"
Body: "Try adjusting your date range or severity level"
Action: [Clear Filters]
```

**Search Results**:

```text
Heading: "No results for 'production-api'"
Body: "Check spelling or try different keywords"
Action: [Clear Search]
```

### Error Empty States

**Pattern**: What failed + Why + How to fix

**Examples**:

**Failed to Load**:

```text
Heading: "Unable to load dashboards"
Body: "Connection to server failed. Check your network and try again."
Action: [Retry]
```

**Permission Denied**:

```text
Heading: "Access denied"
Body: "You don't have permission to view this page. Contact your admin."
Action: [Go to Home]
```

### Success Empty States

**Pattern**: All done + Positive message

**Examples**:

**Inbox Zero**:

```text
Heading: "All caught up!"
Body: "No new alerts in the last 24 hours"
Action: [View History]
```

**Tasks Complete**:

```text
Heading: "All tasks complete"
Body: "Great work! You've completed all pending tasks"
Action: [View Archive]
```

## Navigation & Menu Patterns

### Menu Item Labels

**Pattern**: Noun (what you'll see) or Verb (what you'll do)

**Examples**:

```text
Navigation (Nouns):
"Dashboard"
"Alerts"
"Settings"
"Team"
"Reports"

Actions (Verbs):
"Create New"
"View All"
"Export Data"
"Manage Users"
```

**Guidelines**:

- Parallel structure (all nouns or all verbs)
- Specific, not generic
- One or two words maximum
- Title case for nav items

### Breadcrumbs

**Pattern**: Hierarchy path with separators

**Examples**:

```text
Home > Projects > Website Redesign > Assets
Dashboard > Alerts > Critical > Alert Details
Settings > Team > User Permissions
```

**Guidelines**:

- Start with home/root
- Each level clickable (except current)
- Current page not linked
- Use ">" or "/" separator
- Truncate middle levels if >5 deep

### Tab Labels

**Pattern**: Short category name (1-2 words)

**Examples**:

```text
User Profile Tabs:
"Profile" "Security" "Notifications" "Billing"

System Settings Tabs:
"General" "Integrations" "API Keys" "Advanced"

Alert Details Tabs:
"Overview" "History" "Related" "Logs"
```

**Guidelines**:

- Scannable at a glance
- Parallel structure
- No punctuation
- Title case

## Data Display Patterns

### Table Column Headers

**Pattern**: Noun or noun phrase (what data shows)

**Examples**:

```text
"Name"
"Status"
"Last Updated"
"Created By"
"Alert Count"
"Response Time (ms)"
```

**Guidelines**:

- Title case
- Sortable columns have indicator
- Units in header when applicable
- Abbreviate carefully (ms, %, etc.)

### Data Values

**Pattern**: Raw value or formatted with units

**Examples**:

```text
Timestamps:
"2 minutes ago"
"Jan 15, 2026"
"Today at 3:45 PM"

Numbers:
"1,234" (with commas)
"1.2K" (abbreviated)
"$49.99" (with currency)

Status:
"Active" (not "is active")
"Running" (not "currently running")
```

### Empty Data Cells

**Pattern**: Dash or "N/A" (consistent)

**Examples**:

```text
Preferred: em dash character
Alternative: "N/A"
Avoid: Empty cell
Avoid: "None"
```

## Placeholder Text Patterns

### Input Placeholders

**Pattern**: Example or format (not instructions)

**Examples**:

```text
Email Input:
"you@company.com" (example format)

Phone Number:
"(555) 123-4567" (format shown)

Search:
"Search alerts..." (hint what to search)

URL:
"https://example.com" (protocol included)
```

**Guidelines**:

- Show format/example
- Don't use as label
- Gray text, clear it's placeholder
- Disappears on focus

### Search Placeholders

**Pattern**: "Search [what]..."

**Examples**:

```text
"Search alerts..."
"Search team members..."
"Search documentation..."
"Filter by name or email..."
```

## Help Text Patterns

### Inline Help Text

**Pattern**: Additional context or instructions

**Examples**:

```text
Password Field:
Label: "Password"
Help: "Must be at least 8 characters"

API Key Field:
Label: "API Key"
Help: "Found in Settings > API Access"

Webhook URL:
Label: "Webhook URL"
Help: "Endpoint to receive real-time notifications"
```

**Guidelines**:

- Below label
- Sentence case
- Explain requirements
- Link to docs when helpful

### Validation Messages

**Pattern**: What's wrong + How to fix

**Examples**:

```text
BAD: "Invalid email"
GOOD: "Email must include @ symbol"

BAD: "Error in password"
GOOD: "Password must be at least 8 characters"

BAD: "Field required"
GOOD: "Email address is required"
```

## Modal Dialog Patterns

### Modal Titles

**Pattern**: Action or question

**Examples**:

```text
Confirmation:
"Delete Account?"
"Discard Changes?"
"Leave Page?"

Action:
"Create New Dashboard"
"Invite Team Member"
"Configure Alert"

Information:
"Deployment Details"
"System Status"
"Feature Preview"
```

**Guidelines**:

- Title case
- Clear purpose
- No punctuation (except ?)
- Specific, not generic

### Modal Body Text

**Pattern**: Clear explanation + consequences

**Examples**:

```text
Destructive Action:
"This will permanently delete your account and all associated data. 
This action cannot be undone."

Information:
"Your session will expire in 5 minutes due to inactivity. 
Would you like to extend your session?"
```

### Modal Buttons

**Pattern**: Specific actions (not Yes/No)

**Examples**:

```text
BAD: "Yes" / "No"
GOOD: "Delete Account" / "Cancel"

BAD: "OK" / "Cancel"
GOOD: "Save Changes" / "Discard"

BAD: "Are you sure?"
GOOD: "Continue" / "Go Back"
```

## Notification Patterns

### Toast Notifications

**Pattern**: What happened (past tense) + Optional action

**Examples**:

```text
Success:
"Changes saved"
"Message sent"
"Team member added"

With Action:
"File uploaded [View]"
"Report generated [Download]"
"Invitation sent [Send Another]"

Error:
"Failed to save changes [Retry]"
"Connection lost [Reconnect]"
```

**Guidelines**:

- Brief (under 60 characters)
- Auto-dismiss (3-5 seconds for success, manual for errors)
- One action maximum
- Clear what happened

### Alert Banners

**Pattern**: Issue + Impact + Action

**Examples**:

```text
Warning:
"Your trial ends in 3 days. [Upgrade Now]"
"Storage is 90% full. [Manage Storage]"

Info:
"New features available. [See What's New]"
"Scheduled maintenance tonight. [View Details]"

Error:
"Connection lost. We'll retry automatically. [Retry Now]"
```

## Microcopy Antipatterns

### Avoid These

**1. Redundant Words**:

```text
BAD: "Please enter your email address"
GOOD: "Email address"

BAD: "Click the button below to continue"
GOOD: [Continue Button]
```

**2. Apologetic Language**:

```text
BAD: "Sorry, but you must enter a valid email"
GOOD: "Email must include @ symbol"

BAD: "Unfortunately, we couldn't save your changes"
GOOD: "Changes not saved. Check connection and retry."
```

**3. Vague Instructions**:

```text
BAD: "Click here"
GOOD: "View documentation"

BAD: "Learn more"
GOOD: "Read setup guide"
```

**4. Technical Jargon (Without Context)**:

```text
BAD: "Error: ECONNREFUSED"
GOOD: "Can't connect to server. Check connection and retry."

BAD: "NullPointerException occurred"
GOOD: "Something went wrong loading this data. [Retry]"
```

**5. Passive Voice**:

```text
BAD: "Your changes have been saved"
GOOD: "Changes saved"

BAD: "The file has been uploaded"
GOOD: "File uploaded"
```

## Word Choice Guidelines

### Preferred Terms

**Actions**:

- "Sign in" (not "log in")
- "Sign up" (not "register")
- "Email" (verb and noun)
- "Set up" (verb), "setup" (noun)

**States**:

- "Unavailable" (not "not available")
- "Turned off" (not "disabled")
- "Required" (not "mandatory")

**Numbers**:

- "0" or "No items" (not "zero")
- "One" in copy, "1" in UI
- Spell out one-ten in prose

### Contractions

**Use Contractions For**:

- Friendly, conversational tone
- Regular messages
- Help text

**Avoid Contractions For**:

- Error messages
- Legal text
- Formal communications

## Length Guidelines

**Button Labels**: 1-3 words (max 25 characters)
**Tooltips**: Under 100 characters
**Help Text**: 1-2 sentences
**Error Messages**: 1-2 sentences
**Notifications**: Under 60 characters
**Modal Body**: 2-3 sentences maximum

## Testing Microcopy

**Questions to Ask**:

1. Is it immediately understandable?
2. Can it be shorter without losing meaning?
3. Is it action-oriented?
4. Does it work when read by screen reader?
5. Is it consistent with other copy?
6. Does it reduce or add cognitive load?

**Read Aloud Test**:

- Does it sound natural?
- Would you say it this way?
- Any awkward phrasing?

**Context Test**:

- Makes sense standalone?
- Works in stressed situation?
- Clear at 2 AM?
