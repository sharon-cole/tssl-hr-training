# Week 3 – Responsive Employee Directory Test Log

## 1. Responsive Layout Tests

| Viewport Width | Expected Result | Observed Result | Status |
|---|---|---|---|
| 320px | 1 column | 1 column; layout aligned correctly | Passed |
| 768px | 2 columns | 2 columns displayed correctly | Passed |
| 900px | 2 columns | 2 columns displayed correctly | Passed |
| 1280px | 3 columns | 3 columns displayed correctly | Passed |
| 767px | 2 columns | 2 columns displayed correctly | Passed |
| 1119px | 2 columns | 2 columns displayed correctly | Passed |
| 1120px | 3 columns | 3 columns displayed correctly | Passed |

## 2. Long Text Test

**Expected:** Long employee names and email addresses should wrap within their cards without causing horizontal scrolling.

**Observed:** Emmanuel Chukwuemeka's long name wrapped onto another line. The content remained inside the card.

**Result:** Passed.

## 3. Keyboard Accessibility Test

**Expected:** Navigation links should show a visible focus outline when using the Tab key. Pressing Enter should activate the selected link.

**Observed:** The focus outline appeared when pressing Tab. Pressing Enter on the Employee Directory link successfully moved the page to that section.

**Result:** Passed.

## 4. Zoom Test

**Expected:** The directory should remain usable at 200% browser zoom without content overlapping.

**Observed:** The page remained readable and no content overlapped.

**Result:** Passed.

## 5. Employee Status Test

**Expected:** One employee should have an "On leave" status with a different background and readable text.

**Observed:** Daniel Musa's status displayed as "On leave" with a different background from the Active statuses.

**Result:** Passed.

## 6. Offline Functionality Test

**Expected:** The main employee directory should work without an internet connection.

**Observed:** The directory continued displaying correctly after disconnecting Wi-Fi and refreshing the page.

**Result:** Passed.

## 7. Tailwind CSS Comparison

A separate file named `tailwind-demo.html` was created to experiment with Tailwind CSS.

The following utilities were tested:

- `p-5`: Adds padding inside an element.
- `gap-4`: Adds space between grid items.
- `md:grid-cols-2`: Displays two columns on medium-sized screens and larger.

**Experiment:** Changed `p-5` to `p-2` on an employee card.

**Observed:** The card had less internal spacing after the change. The original `p-5` value was restored.

**Result:** Passed.

## 8. Summary

The responsive employee directory was tested at different viewport widths, including the breakpoint boundaries. Long text wrapping, keyboard navigation, browser zoom, employee status display and offline functionality were also tested successfully.

The Tailwind CSS demonstration loaded successfully, and changing a utility class produced the expected visual difference.