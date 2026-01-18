# UX Review Checklist

Systematic checklist for comprehensive web application review. Use to ensure thorough coverage of all critical UX areas. Adapt based on application type and review scope.

## 1. First Impressions

### Visual Hierarchy
- [ ] Clear visual hierarchy (size, color, spacing)
- [ ] Eye naturally flows to most important elements
- [ ] Proper use of whitespace
- [ ] Balanced composition
- [ ] Consistent spacing and alignment

### Branding & Polish
- [ ] Professional, polished appearance
- [ ] Consistent with brand identity
- [ ] Appropriate for target audience
- [ ] Attention to detail in UI elements
- [ ] Consistent iconography style

### Value Proposition
- [ ] Clear what the product does
- [ ] Immediate value evident
- [ ] Appropriate for user's context
- [ ] Compelling reason to engage

## 2. Navigation & Information Architecture

### Global Navigation
- [ ] Clear, persistent navigation structure
- [ ] Current location clearly indicated
- [ ] Logical organization of sections
- [ ] Appropriate navigation pattern for complexity
- [ ] Search functionality if needed (8+ sections)
- [ ] Breadcrumbs for deep hierarchies

### Navigation Usability
- [ ] All links and buttons clearly identifiable
- [ ] Descriptive navigation labels (no jargon)
- [ ] Consistent navigation placement
- [ ] Mobile navigation functional
- [ ] Back button works as expected

### Information Architecture
- [ ] Logical content grouping
- [ ] Appropriate depth (not too flat or deep)
- [ ] Clear mental model for users
- [ ] Findability of key features
- [ ] No orphaned or dead-end pages

## 3. Layout & Visual Design

### Grid & Structure
- [ ] Consistent grid system
- [ ] Appropriate column structure
- [ ] Aligned elements
- [ ] Consistent margins and padding
- [ ] Responsive breakpoints logical

### Typography
- [ ] Readable font sizes (16px+ for body)
- [ ] Clear hierarchy (heading levels)
- [ ] Appropriate line height (1.5-1.7 for body)
- [ ] Optimal line length (50-75 characters)
- [ ] Sufficient contrast for readability

### Color
- [ ] Consistent color system
- [ ] Appropriate use of color for meaning
- [ ] Not relying on color alone
- [ ] Sufficient contrast ratios (WCAG AA minimum)
- [ ] Color palette supports hierarchy

### Imagery & Icons
- [ ] High quality, relevant images
- [ ] Consistent icon style
- [ ] Appropriate icon sizes
- [ ] Icons support understanding (not decorative only)
- [ ] Alt text for meaningful images

## 4. Content & Microcopy

### Content Quality
- [ ] Clear, concise writing
- [ ] Appropriate tone for audience
- [ ] Free of jargon (or explained)
- [ ] Scannable content structure
- [ ] Action-oriented language

### Labels & Instructions
- [ ] Clear, descriptive labels
- [ ] Helpful placeholder text (not as label replacement)
- [ ] Instructions before fields (not after)
- [ ] Clear field requirements
- [ ] Examples provided where helpful

### Error Messages
- [ ] Specific, actionable error messages
- [ ] Clear what went wrong
- [ ] How to fix the error
- [ ] Friendly tone (no blame)
- [ ] Positioned near relevant field

### Empty States
- [ ] Welcoming first-use empty states
- [ ] Clear next steps
- [ ] Helpful zero-results states
- [ ] Suggestions for what to do
- [ ] Optional: Sample data or tutorial

## 5. Interactive Elements

### Buttons & CTAs
- [ ] Clear visual hierarchy (primary/secondary/tertiary)
- [ ] Appropriate button sizes (44x44px mobile minimum)
- [ ] Descriptive action labels (not "Submit" or "OK")
- [ ] Loading states for async actions
- [ ] Disabled states clearly indicated
- [ ] Adequate spacing between buttons

### Links
- [ ] Visually distinct from body text
- [ ] Clear hover/focus states
- [ ] Descriptive link text (not "click here")
- [ ] Visited link states if relevant
- [ ] External links indicated if important

### Form Controls
- [ ] Appropriate input types (email, tel, etc.)
- [ ] Clear focus indicators
- [ ] Proper labeling (not placeholder-only)
- [ ] Help text when needed
- [ ] Proper keyboard support
- [ ] Touch-friendly on mobile

### Interactive States
- [ ] Hover states for clickable elements
- [ ] Focus states for keyboard navigation
- [ ] Active/pressed states
- [ ] Disabled states clearly indicated
- [ ] Loading states during processing
- [ ] Selected/checked states

## 6. Forms & Input

### Form Structure
- [ ] Logical flow (top to bottom)
- [ ] Related fields grouped
- [ ] Single column layout
- [ ] Clear visual hierarchy
- [ ] Required fields clearly marked

### Field Design
- [ ] Labels above fields (not placeholder-only)
- [ ] Appropriate field widths (match content)
- [ ] Input masks for formatted data
- [ ] Appropriate constraints (character limits)
- [ ] Default values when helpful

### Validation
- [ ] Real-time validation after blur (not while typing)
- [ ] Clear success indicators
- [ ] Specific error messages
- [ ] Errors linked to fields
- [ ] Preserve entered data on error

### Multi-Step Forms
- [ ] Progress indicator visible
- [ ] Ability to navigate back
- [ ] Save progress if appropriate
- [ ] Review step before submission
- [ ] Clear current step

## 7. Data Display

### Tables
- [ ] Clear column headers
- [ ] Sortable columns where appropriate
- [ ] Appropriate data formatting
- [ ] Row hover states
- [ ] Pagination or infinite scroll
- [ ] Responsive design (cards or horizontal scroll)
- [ ] Loading states for data fetch

### Lists & Cards
- [ ] Scannable layout
- [ ] Consistent card structure
- [ ] Clear visual hierarchy within cards
- [ ] Hover states for interactive cards
- [ ] Appropriate thumbnail sizes
- [ ] Loading states (skeleton or spinner)

### Charts & Visualizations
- [ ] Clear labels and legends
- [ ] Appropriate chart type for data
- [ ] Interactive tooltips
- [ ] Accessible (not color-only)
- [ ] Loading states
- [ ] Mobile-friendly (responsive or simplified)

### Dashboards
- [ ] Most important metrics prominent
- [ ] Logical widget arrangement
- [ ] Consistent widget styling
- [ ] Clear data refresh indicators
- [ ] Appropriate chart types
- [ ] Drill-down capability where needed

## 8. Feedback & Communication

### System Status
- [ ] Loading indicators for async operations
- [ ] Progress bars for long operations
- [ ] Clear busy states
- [ ] Timeout handling
- [ ] Offline state handling

### Notifications
- [ ] Appropriate notification type (toast, banner, modal)
- [ ] Auto-dismiss timing appropriate
- [ ] Action for undo when applicable
- [ ] Not intrusive for non-critical
- [ ] Persistent for critical alerts
- [ ] Clear dismiss mechanism

### Confirmations
- [ ] Destructive actions require confirmation
- [ ] Clear consequences stated
- [ ] Primary/secondary actions distinct
- [ ] Cancel option prominent
- [ ] Success confirmation after action

### Help & Documentation
- [ ] Contextual help when needed
- [ ] Tooltips for complex features
- [ ] Clear documentation access
- [ ] In-app onboarding for new users
- [ ] Support contact easy to find

## 9. Search & Filtering

### Search
- [ ] Prominent search placement
- [ ] Clear placeholder text
- [ ] Search suggestions if appropriate
- [ ] Clear search results layout
- [ ] Zero results state helpful
- [ ] Search within results if needed

### Filtering
- [ ] Filters appropriate for content
- [ ] Applied filters visible
- [ ] Easy to remove filters
- [ ] Filter combinations supported
- [ ] Result count updates
- [ ] Save filter combinations if useful

### Sorting
- [ ] Multiple sort options
- [ ] Current sort clearly indicated
- [ ] Sort direction clear
- [ ] Appropriate default sort
- [ ] Persistent sort preferences if relevant

## 10. Performance & Perceived Performance

### Loading Experience
- [ ] Fast initial load (<3 seconds ideal)
- [ ] Skeleton screens for content
- [ ] Progressive loading for heavy content
- [ ] Lazy loading for images/media
- [ ] Prioritize above-the-fold content

### Interactions
- [ ] Immediate feedback for interactions
- [ ] Optimistic UI updates where possible
- [ ] Smooth animations (not janky)
- [ ] No unnecessary loading delays
- [ ] Cached data used when appropriate

### Page Transitions
- [ ] Smooth navigation between pages
- [ ] Back button works instantly
- [ ] State preserved when appropriate
- [ ] Loading indicators for slow transitions
- [ ] Focus management on transition

## 11. Mobile & Responsive

### Mobile Experience
- [ ] Touch-friendly target sizes (44x44px minimum)
- [ ] Appropriate for thumb zones
- [ ] No hover-dependent interactions
- [ ] Simplified mobile navigation
- [ ] Mobile-optimized forms (appropriate keyboards)
- [ ] Gestures work as expected

### Responsive Behavior
- [ ] Works at all common breakpoints
- [ ] Content adapts (not just scales)
- [ ] No horizontal scrolling (unless intentional)
- [ ] Images scale appropriately
- [ ] Touch and mouse both work
- [ ] Content parity across devices

### Viewport & Zoom
- [ ] Viewport meta tag configured
- [ ] Zoom enabled (not disabled)
- [ ] Content readable at 200% zoom
- [ ] No content cutoff at higher zoom
- [ ] Fixed elements don't overlap content

## 12. Accessibility

### Keyboard Navigation
- [ ] All functionality keyboard accessible
- [ ] Logical tab order
- [ ] Visible focus indicators
- [ ] Skip links for navigation
- [ ] Keyboard shortcuts documented
- [ ] No keyboard traps

### Screen Reader
- [ ] Semantic HTML used
- [ ] Proper heading hierarchy
- [ ] ARIA labels where needed
- [ ] Form labels associated
- [ ] Dynamic content announced
- [ ] Images have alt text

### Visual Accessibility
- [ ] Sufficient color contrast (4.5:1 text, 3:1 UI)
- [ ] Not relying on color alone
- [ ] Text resizable without breakage
- [ ] Animations respect prefers-reduced-motion
- [ ] Content readable at 200% zoom

### Forms & Input
- [ ] Labels for all inputs
- [ ] Required fields indicated (not color only)
- [ ] Error messages accessible
- [ ] Help text associated with fields
- [ ] Success states announced

## 13. Complex Interactions

### Modal Dialogs
- [ ] Clear purpose
- [ ] Easy to dismiss (X, Escape, click outside)
- [ ] Focus trapped within modal
- [ ] Focus returns on close
- [ ] Keyboard accessible
- [ ] Not overused

### Dropdown Menus
- [ ] Click to open (not hover only)
- [ ] Keyboard navigable
- [ ] Clear selected state
- [ ] Close on selection or Escape
- [ ] Touch-friendly on mobile

### Drag & Drop
- [ ] Alternative keyboard method
- [ ] Clear drop zones
- [ ] Visual feedback during drag
- [ ] Touch support on mobile
- [ ] Undo capability

### Tooltips & Popovers
- [ ] Hover delay appropriate (0.5s)
- [ ] Keyboard accessible
- [ ] Don't obscure related content
- [ ] Mobile-friendly (tap, not hover)
- [ ] Dismiss mechanism clear

## 14. Error Handling

### Error Prevention
- [ ] Input constraints prevent errors
- [ ] Helpful format examples
- [ ] Warnings before destructive actions
- [ ] Undo for critical actions
- [ ] Smart defaults reduce errors

### Error Recovery
- [ ] Clear error explanation
- [ ] Specific, actionable guidance
- [ ] Preserve user input
- [ ] Link to help if available
- [ ] Graceful degradation

### Edge Cases
- [ ] No data states handled
- [ ] Error states handled
- [ ] Loading failure states
- [ ] Network offline states
- [ ] Permission denied states

## 15. Context-Specific Checks

### SaaS/Enterprise
- [ ] Multi-user considerations
- [ ] Permission levels clear
- [ ] Bulk actions available
- [ ] Export functionality
- [ ] Audit logs if needed
- [ ] Onboarding for new users

### E-commerce
- [ ] Clear product information
- [ ] Smooth checkout flow
- [ ] Cart always accessible
- [ ] Clear pricing
- [ ] Trust indicators
- [ ] Guest checkout option

### Dashboards
- [ ] Most critical data prominent
- [ ] Real-time updates indicated
- [ ] Drill-down capabilities
- [ ] Date range selection
- [ ] Export/share capabilities
- [ ] Customization options

### Content Platforms
- [ ] Easy content discovery
- [ ] Clear content hierarchy
- [ ] Sharing functionality
- [ ] Commenting/interaction
- [ ] Personalization
- [ ] Related content suggestions

## Priority Framework

### Critical (P0) - Launch Blockers
- Broken core functionality
- Cannot complete primary tasks
- Severe usability issues
- Accessibility blockers
- Data loss risks

### High Priority (P1) - Fix Before Launch
- Confusing user flows
- Inconsistent patterns
- Missing feedback
- Poor mobile experience
- Moderate accessibility issues

### Medium Priority (P2) - Roadmap Items
- Optimization opportunities
- Nice-to-have features
- Polish improvements
- Minor accessibility improvements
- Performance enhancements

### Low Priority (P3) - Future Consideration
- Advanced features
- Edge case improvements
- Aesthetic refinements
- Experimental patterns
- Additional customization

## Review Process

1. **Quick Scan**: Complete 10-minute overview of all sections
2. **Deep Dive**: Focus on relevant checklist areas based on application type
3. **User Flow Testing**: Walk through primary user journeys
4. **Edge Case Testing**: Test error states, empty states, edge cases
5. **Accessibility Testing**: Keyboard, screen reader, contrast
6. **Documentation**: Screenshots, annotations, prioritized findings
7. **Recommendations**: Specific, actionable suggestions with priority levels

## Adaptation Guidelines

- **Wireframe Review**: Focus on layout, flow, information architecture
- **High-Fidelity Review**: Include visual design, content, polish
- **Live Site Review**: Include performance, edge cases, error handling
- **Mobile-Only Review**: Focus heavily on sections 11 and 12
- **Accessibility Audit**: Deep dive on section 12 with testing tools
- **Quick Review**: Hit sections 1, 2, 5, 8 for rapid feedback
