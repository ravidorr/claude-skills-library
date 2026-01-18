# Accessibility Testing Methods Reference

Comprehensive guide to accessibility testing approaches, tools, and protocols. Use when planning or conducting accessibility testing.

## Testing Overview

**Three Testing Approaches**:

1. **Automated Testing** (~30-40% coverage) - Fast, catches common issues
2. **Manual Testing** (~60-70% coverage) - Catches complex issues
3. **User Testing** (Real validation) - Tests with disabled users

**All Three Required** for comprehensive accessibility.

## Automated Testing

### What Automated Tests Catch

**Good At Detecting**:

- Missing alt text
- Low contrast ratios
- Missing form labels
- Invalid HTML
- Missing ARIA attributes
- Heading structure issues

**Can't Detect**:

- Whether alt text is meaningful
- Keyboard trap issues
- Focus management problems
- Logical reading order
- Context-appropriate ARIA
- Screen reader experience quality

### Automated Testing Tools

#### axe DevTools (Browser Extension)

**Best For**: Development and QA testing
**Coverage**: ~57% of WCAG issues
**Cost**: Free (core), Paid (advanced)

**How to Use**:

1. Install Chrome/Firefox extension
2. Open DevTools
3. Run "Scan All of My Page"
4. Review violations by severity
5. Get remediation guidance

**Strengths**:

- Accurate (very few false positives)
- Clear explanations
- Code examples
- Intelligent rules

#### WAVE (Browser Extension)

**Best For**: Quick visual feedback
**Coverage**: ~40% of WCAG issues
**Cost**: Free

**How to Use**:

1. Install browser extension
2. Click WAVE icon
3. Review icons overlaid on page
4. Click icons for details
5. Check structure panel

**Strengths**:

- Visual overlay on page
- Easy to understand
- Color contrast analyzer
- Structure visualization

#### Lighthouse (Chrome DevTools)

**Best For**: Performance + accessibility
**Coverage**: ~30% of WCAG issues (powered by axe)
**Cost**: Free (built into Chrome)

**How to Use**:

1. Open Chrome DevTools
2. Go to Lighthouse tab
3. Select "Accessibility"
4. Generate report
5. Review score and issues

**Strengths**:

- Built into Chrome
- Combined with performance
- CI/CD integration
- PWA auditing

#### Pa11y (Command Line)

**Best For**: CI/CD pipelines
**Coverage**: ~40% of WCAG issues
**Cost**: Free (open source)

**How to Use**:

```bash
# Install
npm install -g pa11y

# Test single page
pa11y https://example.com

# Test with specific standard
pa11y --standard WCAG2AA https://example.com

# Test multiple pages
pa11y-ci --sitemap https://example.com/sitemap.xml
```

**Strengths**:

- Command line automation
- CI/CD integration
- Batch testing
- Custom reporters

### Automated Testing Workflow

**Step 1: Initial Scan**

```
Run: axe DevTools on key pages
Fix: All critical and serious issues
Verify: Rerun to confirm fixes
```

**Step 2: Comprehensive Scan**

```
Run: Pa11y on all pages
Document: All remaining issues
Prioritize: By severity and impact
```

**Step 3: Continuous Monitoring**

```
Add: Pa11y to CI/CD pipeline
Block: Deployments with critical issues
Monitor: Accessibility score trends
```

## Manual Testing

### Keyboard Testing

**Goal**: Verify all functionality accessible via keyboard.

**Testing Protocol**:

**Step 1: Unplug Mouse**

```
Force yourself to use keyboard only
This reveals true keyboard accessibility
```

**Step 2: Tab Through Page**

```
Press Tab repeatedly
Verify:
- All interactive elements receive focus
- Focus order matches visual order
- Focus indicator clearly visible
- No focus traps
```

**Step 3: Test Standard Keys**

```
Enter: Activates buttons and links
Space: Activates buttons, toggles checkboxes
Arrow keys: Navigate menus, tabs, radio buttons
Escape: Closes modals and menus
```

**Step 4: Test Custom Components**

```
Dropdowns: Arrow keys to navigate
Tabs: Arrow keys to switch
Radio buttons: Arrow keys to select
Sliders: Arrow keys to adjust
```

**Keyboard Testing Checklist**:

- [ ] Tab reaches all interactive elements
- [ ] Shift+Tab works (reverse order)
- [ ] Focus order is logical
- [ ] Focus indicator always visible
- [ ] Enter activates buttons/links
- [ ] Space activates buttons
- [ ] Escape closes modals
- [ ] Arrow keys work in components
- [ ] No keyboard traps
- [ ] Skip links function
- [ ] Keyboard shortcuts work
- [ ] Shortcuts don't interfere with assistive tech

**Common Keyboard Issues**:

- Click-only handlers (no keyboard)
- Missing tabindex on custom controls
- Positive tabindex values (breaks order)
- Invisible focus indicators
- Focus traps in modals
- Missing Escape key handling

### Screen Reader Testing

**Goal**: Verify content understandable when read aloud.

**Primary Screen Readers**:

- **NVDA** (Windows, Free)
- **JAWS** (Windows, Paid, most popular)
- **VoiceOver** (Mac/iOS, Built-in)
- **TalkBack** (Android, Built-in)

#### Testing with NVDA (Windows)

**Installation**:

1. Download from nvaccess.org
2. Install (free, donations accepted)
3. Launches automatically after install

**Basic Controls**:

```
NVDA + N: NVDA menu
NVDA + Q: Quit NVDA
NVDA + Space: Pass through (disable NVDA)
NVDA = Insert or Caps Lock key
```

**Navigation**:

```
Arrow Down/Up: Next/previous item
H: Next heading
Shift + H: Previous heading
K: Next link
Shift + K: Previous link
F: Next form field
B: Next button
T: Next table
```

**Reading**:

```
NVDA + Down Arrow: Say all (read entire page)
NVDA + Up Arrow: Read current line
NVDA + Tab: Read focused element
```

**Testing Protocol**:

1. Turn on NVDA
2. Navigate to page
3. Press NVDA + Down Arrow (say all)
4. Listen to entire page
5. Test navigation with H, K, F, B keys
6. Test forms with Tab and arrow keys
7. Verify all content announced
8. Check for logical reading order

#### Testing with VoiceOver (Mac)

**Activation**:

```
Cmd + F5: Toggle VoiceOver
VO = Ctrl + Option (hold together)
```

**Basic Controls**:

```
VO + A: Start reading
VO + Right Arrow: Next item
VO + Left Arrow: Previous item
VO + Space: Activate element
VO + H: Next heading
VO + L: Next link
VO + J: Next form control
```

**Testing Protocol**:

1. Enable VoiceOver (Cmd + F5)
2. Navigate to page
3. Press VO + A (read all)
4. Navigate with VO + arrows
5. Test headings with VO + H
6. Test forms with VO + J
7. Verify announcements clear
8. Check rotor navigation (VO + U)

### Screen Reader Testing Checklist

- [ ] Page title announced
- [ ] Headings in logical order
- [ ] All images have alt text
- [ ] Alt text is meaningful
- [ ] Form labels associated
- [ ] Error messages announced
- [ ] Status changes announced
- [ ] Buttons clearly identified
- [ ] Links descriptive
- [ ] Tables have headers
- [ ] Reading order logical
- [ ] No content skipped
- [ ] Landmarks identified
- [ ] Language changes marked

**Common Screen Reader Issues**:

- Generic alt text ("image", "icon")
- Unlabeled form fields
- Missing ARIA labels
- Incorrect heading hierarchy
- Missing landmark regions
- Status changes not announced
- Illogical reading order
- Button purpose unclear

### Color Contrast Testing

**Goal**: Verify all text meets minimum contrast ratios.

**Tools**:

**WebAIM Contrast Checker**:

```
URL: webaim.org/resources/contrastchecker/
Input: Foreground and background colors
Output: Contrast ratio and pass/fail
```

**Chrome DevTools Color Picker**:

```
1. Inspect element
2. Click color swatch in Styles panel
3. View contrast ratio
4. See AA/AAA status
5. Get suggested colors
```

**Stark (Figma Plugin)**:

```
Install: Figma → Plugins → Stark
Use: Select elements, check contrast
Fix: Get accessible color suggestions
Simulate: View as color blind
```

**Testing Protocol**:

1. Identify all text on page
2. Check each text against background
3. Verify meets AA (4.5:1) or AAA (7:1)
4. Check hover/focus states
5. Test disabled states (if applicable)
6. Check UI component contrast (3:1)

**Contrast Requirements**:

```
Normal text (< 18pt or 14pt bold):
- AA: 4.5:1
- AAA: 7:1

Large text (18pt+ or 14pt+ bold):
- AA: 3:1
- AAA: 4.5:1

UI components & graphics:
- AA: 3:1
```

### Color Blindness Simulation

**Goal**: Verify information not conveyed by color alone.

**Tools**:

**Chrome DevTools**:

```
1. DevTools → Rendering tab
2. Emulate vision deficiencies
3. Select type:
   - Protanopia (red-blind)
   - Deuteranopia (green-blind)
   - Tritanopia (blue-blind)
   - Achromatopsia (no color)
```

**ColorOracle (Desktop App)**:

```
Install: colororacle.org
Use: System-wide color blindness simulation
Toggle: See your entire screen as color blind
Types: Deuteranopia, Protanopia, Tritanopia
```

**Testing Checklist**:

- [ ] Links distinguishable without color
- [ ] Required fields not just red
- [ ] Status not just by color
- [ ] Charts have patterns or labels
- [ ] Errors not just red text
- [ ] Success not just green
- [ ] Focus not just by color

### Mobile Accessibility Testing

**Goal**: Verify accessibility on touch devices.

**iOS VoiceOver Testing**:

```
Enable: Settings → Accessibility → VoiceOver
Gestures:
- Swipe right: Next element
- Swipe left: Previous element
- Double-tap: Activate
- Three-finger swipe: Scroll
- Two-finger swipe up: Read all
```

**Android TalkBack Testing**:

```
Enable: Settings → Accessibility → TalkBack
Gestures:
- Swipe right: Next
- Swipe left: Previous
- Double-tap: Activate
- Swipe down then right: Read from top
```

**Mobile Testing Checklist**:

- [ ] Touch targets 44x44px minimum
- [ ] Adequate spacing between targets
- [ ] Pinch zoom works
- [ ] Orientation unlocked (unless essential)
- [ ] Text readable at 200% zoom
- [ ] No horizontal scrolling at 320px width
- [ ] Gestures have alternatives
- [ ] Motion can be disabled
- [ ] All functionality reachable by touch

## User Testing

**Goal**: Test with real users who have disabilities.

### Finding Participants

**Sources**:

- Accessibility user research firms
- Disability organizations
- Social media accessibility groups
- Internal employees with disabilities
- UserTesting.com (accessibility panel)

**Recommended Mix**:

- Screen reader users (blind/low vision)
- Keyboard-only users (motor disabilities)
- Users with cognitive disabilities
- Color blind users
- Deaf/hard of hearing users

### Test Planning

**Session Structure** (60 minutes):

```
5 min: Introduction and consent
10 min: Background questions
35 min: Task testing
10 min: Open feedback
```

**Task Examples**:

```
1. Find and read an article
2. Create an account
3. Complete a purchase
4. Submit a form
5. Navigate to specific page
6. Use search functionality
7. Recover from an error
```

**Observation Focus**:

- Where do users get stuck?
- What's confusing or unclear?
- What takes longer than expected?
- What errors occur?
- What assistive tech issues arise?
- What workarounds do users employ?

### Recording & Analysis

**Record**:

- Screen capture
- Audio (thinking aloud)
- Assistive tech output
- Researcher notes

**Analyze**:

- Task completion rates
- Time on task
- Error rates
- User satisfaction
- Specific issues identified
- Severity and frequency

## Comprehensive Testing Workflow

### Phase 1: Automated (Week 1)

**Day 1-2: Initial Scan**

```
- Run axe DevTools on all key pages
- Fix critical and serious issues
- Rerun to verify fixes
```

**Day 3-5: Comprehensive**

```
- Run WAVE on all pages
- Document remaining issues
- Create remediation plan
```

### Phase 2: Manual (Week 2)

**Day 6-7: Keyboard**

```
- Test all pages keyboard-only
- Fix keyboard access issues
- Fix focus indicators
```

**Day 8-9: Screen Reader**

```
- Test with NVDA/VoiceOver
- Fix ARIA issues
- Fix reading order
```

**Day 10: Visual**

```
- Check all contrast
- Test color blindness simulation
- Fix visual issues
```

### Phase 3: User Testing (Week 3)

**Day 11-14: Testing**

```
- 5-8 participants
- 2 sessions per day
- Record and note issues
```

**Day 15: Analysis & Planning**

```
- Analyze findings
- Prioritize issues
- Plan remediations
```

## Testing Frequency

**Continuous** (CI/CD):

- Automated tests on every commit
- Block deployment if critical issues

**Weekly**:

- Manual keyboard testing on new features
- Screen reader spot checks

**Monthly**:

- Comprehensive manual testing
- Review and update test cases

**Quarterly**:

- Full accessibility audit
- User testing session
- Team training refresh

## Testing Documentation

### Issue Tracking Template

```
Issue: [Brief description]
WCAG: [Criterion number]
Level: [A/AA/AAA]
Severity: Critical/High/Medium/Low
Page: [URL or page name]
Element: [Specific element]
Description: [Detailed description]
Steps to Reproduce:
1. [Step 1]
2. [Step 2]
Expected: [What should happen]
Actual: [What happens]
Fix: [Remediation steps]
Status: Open/In Progress/Fixed/Verified
```

### Test Report Template

```
Accessibility Test Report
Product: [Name]
Date: [Date]
Tester: [Name]
Standard: WCAG 2.2 Level AA

Summary:
- Pages tested: [Number]
- Issues found: [Number]
- Critical: [Number]
- High: [Number]
- Medium: [Number]
- Low: [Number]

Compliance Status: [%]

Top Issues:
1. [Issue description]
2. [Issue description]
3. [Issue description]

Recommendations:
1. [Priority action]
2. [Priority action]

Next Steps:
- [Action with owner and date]
```

## Resources

**Testing Tools**:

- axe DevTools: deque.com/axe
- WAVE: wave.webaim.org
- Pa11y: pa11y.org
- Lighthouse: Built into Chrome

**Screen Readers**:

- NVDA: nvaccess.org (Windows, free)
- JAWS: freedomscientific.com (Windows, paid)
- VoiceOver: Built into Mac/iOS
- TalkBack: Built into Android

**Contrast Checkers**:

- WebAIM: webaim.org/resources/contrastchecker/
- Stark: getstark.co (Figma plugin)

**User Testing**:

- UserTesting.com
- Fable Tech Labs: makeitfable.com
- Access Works

**Training**:

- WebAIM: webaim.org/training
- Deque University: dequeuniversity.com
- A11y Project: a11yproject.com
