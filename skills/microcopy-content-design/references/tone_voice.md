# Tone & Voice Reference

Comprehensive guide to defining, maintaining, and applying consistent tone and voice across your product. Reference when establishing brand voice or ensuring consistency.

## Voice vs Tone

### Voice (What You Say)

**Definition**: Your brand's personality and character - consistent across all contexts

**Characteristics**:

- Unchanging core identity
- Brand personality traits
- Values and beliefs
- Communication style

**Example**:

```text
Mailchimp's Voice:
- Clever, not silly
- Confident, not cocky
- Informal, not sloppy
- Helpful, not overbearing
- Expert, not bossy
```

### Tone (How You Say It)

**Definition**: Emotional inflection adapted to context - varies by situation

**Characteristics**:

- Changes with context
- Adapts to user emotion
- Responds to situation
- Matches urgency level

**Example**:

```text
Same Voice, Different Tones:

Success (Encouraging):
"Great! Your deployment completed successfully."

Error (Helpful, Calm):
"Deployment failed. Check logs and retry when ready."

Critical (Direct, Urgent):
"Production service down. 1,200 users affected. Act now."
```

## Voice Dimensions Framework

### Dimension 1: Formality

**Formal** ←→ **Casual**

**Formal Voice**:

```text
"Your request has been submitted successfully."
"Please contact support for assistance."
"An error occurred during processing."
```

**Casual Voice**:

```text
"Request submitted!"
"Need help? Contact support."
"Oops, something went wrong."
```

**Balanced** (Most Enterprise/B2B):

```text
"Request submitted successfully."
"Contact support for help."
"Something went wrong. Try again."
```

**When to Use**:

- Formal: Legal, financial, healthcare, government
- Casual: Consumer apps, creative tools, social platforms
- Balanced: B2B SaaS, enterprise tools, professional apps

### Dimension 2: Enthusiasm

**Serious** ←→ **Enthusiastic**

**Serious Voice**:

```text
"Account created."
"Changes saved."
"Configuration updated."
```

**Enthusiastic Voice**:

```text
"Welcome aboard!"
"Awesome! Changes saved."
"You're all set!"
```

**Balanced**:

```text
"Account created. Let's get started."
"Changes saved successfully."
"Configuration updated."
```

**When to Use**:

- Serious: Operational systems, critical tools, data analysis
- Enthusiastic: Consumer products, creative apps, onboarding
- Balanced: Professional tools, productivity apps

### Dimension 3: Technical Depth

**Simple** ←→ **Technical**

**Simple Voice**:

```text
"Connection lost. Check your internet."
"File too large. Use smaller file."
"Not enough space. Delete old files."
```

**Technical Voice**:

```text
"WebSocket connection terminated (ERR_CONNECTION_RESET)."
"File exceeds 5 MB maximum payload."
"Insufficient storage quota: 95% utilized."
```

**Balanced**:

```text
"Connection lost. Check network and retry."
"File exceeds 5 MB limit. Choose smaller file."
"Storage 95% full. Delete unused files."
```

**When to Use**:

- Simple: Consumer apps, first-time users, non-technical audience
- Technical: Developer tools, CLI, APIs, technical users
- Balanced: Enterprise SaaS, mixed audience

### Dimension 4: Directness

**Descriptive** ←→ **Direct**

**Descriptive Voice**:

```text
"We noticed you haven't completed your profile yet."
"It looks like something went wrong."
"We're working on fixing this issue."
```

**Direct Voice**:

```text
"Complete your profile."
"Error occurred."
"Issue being fixed."
```

**Balanced**:

```text
"Profile incomplete. Add details to continue."
"Something went wrong. Retry or contact support."
"Working on fix. Check status page."
```

**When to Use**:

- Descriptive: Onboarding, tutorials, help content
- Direct: Operational systems, power users, time-critical
- Balanced: Most professional applications

## Tone Adaptation by Context

### Context 1: Success States

**Tone**: Positive, confirming, brief

**Scenarios & Examples**:

**Task Completion**:

```text
Low-stakes: "Saved!"
Medium: "Changes saved successfully."
High-stakes: "Deployment complete. All 8 servers updated."
```

**Account Creation**:

```text
"Account created. Check your email to verify."
"Welcome to [Product]! Let's get you started."
```

**Purchase Complete**:

```text
"Order confirmed. You'll receive tracking info soon."
"Payment successful. Receipt emailed to you@company.com."
```

**Principles**:

- Acknowledge success clearly
- Brief and positive
- Include next step if relevant
- Match user's investment level

### Context 2: Error States

**Tone**: Helpful, calm, solution-focused

**Scenarios & Examples**:

**User Error (Low Stress)**:

```text
"Email must include @ symbol."
"Password must be at least 8 characters."
"File size must be under 5 MB."
```

**System Error (Medium Stress)**:

```text
"Can't connect to server. Check connection and retry."
"Request timed out. Try again or simplify query."
"Something went wrong. Our team has been notified."
```

**Critical Error (High Stress)**:

```text
"Service outage: All systems unavailable. Check status.company.com."
"Deployment failed after 2 of 8 servers. Rollback initiated."
"Payment processing down. We're working on it. Check back soon."
```

**Principles**:

- Don't over-apologize
- State problem clearly
- Provide solution or next step
- Match urgency to severity
- Stay calm (especially critical errors)

### Context 3: Warning States

**Tone**: Informative, preventative, non-alarmist

**Examples**:

**Preventative Warning**:

```text
"Unsaved changes. Save before leaving?"
"This will delete all data. Continue?"
"Storage 90% full. Consider deleting old files."
```

**Time-Sensitive**:

```text
"Trial ends in 3 days. Upgrade to continue."
"Session expires in 5 minutes. Extend session?"
"Backup scheduled in 10 minutes. Save your work."
```

**Destructive Action**:

```text
"Delete account? This can't be undone."
"Permanently delete 24 items?"
"Remove admin access for 5 users?"
```

**Principles**:

- Clear consequences
- No scare tactics
- Give user control
- Specific, not vague

### Context 4: First-Time User

**Tone**: Welcoming, helpful, patient

**Examples**:

**Onboarding**:

```text
"Welcome! Let's set up your account in 3 steps."
"New to [Product]? Start with our quick guide."
"First dashboard? Add your first metric to begin."
```

**Empty States**:

```text
"No projects yet. Create your first project to get started."
"Your inbox is empty. Great! Check back later."
"No team members invited. Invite colleagues to collaborate."
```

**Help Offered**:

```text
"Need help getting started? [View Tutorial]"
"Stuck? Check our docs or contact support."
"Pro tip: Keyboard shortcuts speed up your workflow."
```

**Principles**:

- Patient, not condescending
- Offer guidance without forcing
- Celebrate first actions
- Make help easy to find

### Context 5: Expert/Power User

**Tone**: Efficient, technical, respectful

**Examples**:

**Advanced Features**:

```text
"Configure webhook endpoint for real-time notifications."
"Set cron expression for scheduled execution."
"Define custom SQL query for data extraction."
```

**Keyboard Shortcuts**:

```text
"⌘K to search"
"⌘⇧P for command palette"
"? for keyboard shortcuts"
```

**Technical Details**:

```text
"API rate limit: 1,000 requests/hour"
"Webhook payload format: JSON with UTF-8 encoding"
"Max query execution time: 30 seconds"
```

**Principles**:

- Respect expertise
- Technical precision
- Skip explanations
- Enable efficiency

### Context 6: Loading/Processing

**Tone**: Informative, patient, transparent

**Examples**:

**Short Wait (<3 seconds)**:

```text
"Loading..."
"Processing..."
"Saving..."
```

**Medium Wait (3-10 seconds)**:

```text
"Loading dashboard..."
"Processing 1,200 records..."
"Deploying to 8 servers..."
```

**Long Wait (>10 seconds)**:

```text
"Analyzing logs... 45% complete"
"Generating report... This may take 2-3 minutes"
"Uploading 247 MB... 5 minutes remaining"
```

**Principles**:

- Set expectations
- Show progress when possible
- Explain why it's slow
- Offer to cancel if appropriate

## Voice by Product Type

### Operational/Monitoring Systems

**Voice Characteristics**:

- Direct and efficient
- Technical precision
- Calm under pressure
- Action-oriented

**Example Copy**:

```text
Normal: "System healthy. 0 active alerts."
Warning: "Elevated error rate: 12% (normal <1%)"
Critical: "Service down. 1,200 users affected. Act now."
Success: "Incident resolved. All systems operational."
```

**Tone Scale**:

- Normal operations: Matter-of-fact
- Warnings: Informative, clear
- Critical: Urgent, calm, directive
- Recovery: Confirming, brief

### Enterprise SaaS/B2B

**Voice Characteristics**:

- Professional but friendly
- Clear and efficient
- Helpful without chatty
- Respectful of expertise

**Example Copy**:

```text
Onboarding: "Welcome to [Product]. Let's set up your workspace."
Success: "Report generated successfully. [Download] [Share]"
Error: "Export failed. File size exceeds limit. Try smaller date range."
Feature: "Automate workflows with custom triggers and actions."
```

**Tone Scale**:

- General use: Professional, clear
- Success: Positive, brief
- Errors: Helpful, solution-focused
- Sales/Marketing: Value-focused, not pushy

### Developer Tools/APIs

**Voice Characteristics**:

- Technical and precise
- Efficient and direct
- No hand-holding
- Documentation-focused

**Example Copy**:

```text
Success: "API key created: sk_live_abc123..."
Error: "401 Unauthorized: Invalid API key"
Info: "Rate limit: 1,000 req/hour. Resets at :00."
Docs: "POST /v1/webhooks - Create new webhook endpoint"
```

**Tone Scale**:

- Documentation: Technical, comprehensive
- Errors: Specific, HTTP codes included
- Success: Minimal confirmation
- No enthusiasm or personality

### Consumer/Creative Apps

**Voice Characteristics**:

- Friendly and encouraging
- Positive and warm
- Celebratory of achievements
- Human and approachable

**Example Copy**:

```text
Success: "Beautiful! Your design is saved."
Encouragement: "You're on a 7-day streak! Keep it going."
Error: "Oops! File format not supported. Try JPG or PNG."
Empty: "Your canvas is blank. What will you create today?"
```

**Tone Scale**:

- General: Warm, encouraging
- Success: Celebratory
- Errors: Gentle, helpful
- Personality throughout

## Industry-Specific Voice

### Healthcare

**Voice**: Professional, empathetic, clear
**Avoid**: Medical jargon without definitions, fear-based language

```text
Good:
"Appointment confirmed for Jan 15 at 2:00 PM with Dr. Smith."
"Test results available. Sign in to view securely."

Avoid:
"Your appointment has been scheduled." (passive)
"Click here for results." (vague)
```

### Finance/Banking

**Voice**: Trustworthy, transparent, secure
**Avoid**: Overly casual, ambiguous numbers, vague security

```text
Good:
"Transfer of $1,250.00 to Savings complete."
"Login requires two-factor authentication for security."

Avoid:
"Money moved!" (imprecise)
"You're all set." (vague)
```

### Education/Learning

**Voice**: Encouraging, patient, clear
**Avoid**: Condescending, discouraging, complex jargon

```text
Good:
"Great work! You've completed 5 of 10 lessons."
"Need more practice? Review these concepts."

Avoid:
"You failed this quiz." (discouraging)
"This is simple..." (condescending)
```

### E-commerce/Retail

**Voice**: Helpful, encouraging, clear
**Avoid**: Pushy sales, false urgency, unclear pricing

```text
Good:
"Added to cart. [Checkout] or [Continue Shopping]"
"Free shipping on orders over $50."

Avoid:
"Only 2 left! Buy now!" (false urgency)
"Just $19.99!" (hiding costs)
```

## Voice Documentation Template

### For Your Product

**Company Name**: [Your Company]
**Product Name**: [Your Product]
**Target Users**: [Who uses your product]

**Voice Characteristics**:

1. [Characteristic 1] - [Description]
2. [Characteristic 2] - [Description]
3. [Characteristic 3] - [Description]

**Voice Examples**:

```text
Success: [Example]
Error: [Example]
Warning: [Example]
Help: [Example]
```

**Tone Scale by Context**:

- Onboarding: [Tone description]
- Regular use: [Tone description]
- Errors: [Tone description]
- Critical: [Tone description]

**What We Are**:

- [Positive trait]
- [Positive trait]
- [Positive trait]

**What We're Not**:

- [Negative trait to avoid]
- [Negative trait to avoid]
- [Negative trait to avoid]

**Example Comparisons**:

```text
BAD: Don't Say: [Bad example]
GOOD: Do Say: [Good example]

BAD: Don't Say: [Bad example]
GOOD: Do Say: [Good example]
```

## Consistency Across Channels

### Product UI

**Priority**: Concise, functional, scannable
**Tone**: Efficient, helpful

### Documentation

**Priority**: Comprehensive, clear, searchable
**Tone**: Informative, patient

### Marketing

**Priority**: Persuasive, clear, value-focused
**Tone**: Confident, engaging

### Support

**Priority**: Helpful, empathetic, solution-focused
**Tone**: Patient, understanding

### Email

**Priority**: Clear subject, scannable, actionable
**Tone**: Professional, respectful

**Example - Same Voice, Different Channels**:

```text
Product UI:
"Report generated. [Download]"

Documentation:
"Generate reports by selecting date range and metrics. 
Export as CSV or PDF."

Marketing:
"Generate custom reports in seconds. Export and share 
with your team."

Support:
"I'll help you generate that report. First, select 
your date range..."

Email:
Subject: "Your monthly report is ready"
Body: "Your monthly report for January is ready. 
Download it here."
```

## Testing Your Voice

### Voice Audit Questions

1. **Recognition**: Can team members identify your voice without branding?
2. **Consistency**: Does voice sound the same across all touchpoints?
3. **Appropriateness**: Does tone adapt correctly to context?
4. **Clarity**: Do users understand without confusion?
5. **Authenticity**: Does it sound genuine, not forced?

### Voice Testing Exercise

**Step 1**: Collect 20 pieces of copy from your product
**Step 2**: Remove all branding
**Step 3**: Ask: "Does this sound like us?"
**Step 4**: Identify inconsistencies
**Step 5**: Create guidelines for consistency

### Red Flags

**Inconsistent Voice**:

- Some copy casual, some formal
- Tone doesn't match context
- Different style per feature/team

**Inauthentic Voice**:

- Trying too hard to be funny
- Forced personality
- Doesn't match brand values

**Unclear Voice**:

- No distinctive characteristics
- Generic enterprise speak
- Sounds like everyone else

## Voice Evolution

### When to Evolve Voice

**Valid Reasons**:

- Target audience changed
- Product matured
- Rebrand/repositioning
- Expanding to new markets

**Invalid Reasons**:

- Executive preference
- Trend chasing
- Inconsistent execution

### How to Evolve

1. **Document Current Voice**: Audit existing copy
2. **Define New Direction**: What changes, what stays
3. **Create Transition Plan**: Gradual vs sudden
4. **Update Guidelines**: New examples, new rules
5. **Train Team**: Everyone understands changes
6. **Implement Gradually**: High-touch areas first

## Voice Governance

### Ownership

**Who Owns Voice**:

- Content design/UX writing team (primary)
- Brand team (partner)
- Product team (collaborator)

**Approval Process**:

- Critical copy: Reviewed by content lead
- New patterns: Design review
- Brand deviation: Brand team approval

### Voice Guidelines Document

**What to Include**:

1. Voice definition and characteristics
2. Tone scale by context
3. Examples (good and bad)
4. Common patterns
5. Word lists (preferred/avoided)
6. Testing checklist

**Keep Updated**:

- Review quarterly
- Add new patterns as discovered
- Update examples based on feedback
- Refine based on user testing

## Common Voice Pitfalls

### Pitfall 1: Trying Too Hard

**Signs**:

- Forced humor
- Excessive emoji
- Awkward slang
- Fake enthusiasm

**Fix**: Be authentic, match actual brand personality

### Pitfall 2: Inconsistency

**Signs**:

- Different style per feature
- Voice varies by team
- Old and new copy clash

**Fix**: Create guidelines, review regularly, train team

### Pitfall 3: Wrong Tone for Context

**Signs**:

- Cheerful during errors
- Casual in critical situations
- Formal in fun contexts

**Fix**: Define tone scale, context-aware writing

### Pitfall 4: No Distinctive Voice

**Signs**:

- Could be any product
- Generic business speak
- No personality

**Fix**: Define clear characteristics, be brave, test with users

## Voice Resources

**Books**:

- "Nicely Said" by Nicole Fenton & Kate Kiefer Lee
- "Writing Is Designing" by Michael J. Metts & Andy Welfle
- "Strategic Writing for UX" by Torrey Podmajersky

**Style Guides**:

- Mailchimp Content Style Guide
- Microsoft Writing Style Guide
- Apple Human Interface Guidelines

**Tools**:

- Hemingway Editor (readability)
- Grammarly (tone detection)
- Voice audit spreadsheet (DIY)
