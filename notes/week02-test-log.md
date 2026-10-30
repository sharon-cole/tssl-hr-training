# Week 2 Employee Form Testing Log

## Test 1: Empty Form Submission

**Expected Result:** The browser prevents submission when required fields are empty.

**Actual Result:** The browser prevented submission.

**Status:** PASS

**Problem Discovered:** None.

**Fix Applied:** None required.

## Test 2: Invalid Email Address

**Expected Result:** The browser rejects an invalid email address.

**Actual Result:** The browser rejected the email address and displayed a warning that an @ symbol was required.

**Status:** PASS

**Problem Discovered:** The email address was not in a valid format.

**Fix Applied:** None required. The browser's built-in email validation worked correctly.

## Test 3: Department Validation

**Expected Result:** The browser prevents submission when no department is selected.

**Actual Result:** The browser displayed a warning asking me to select an item before submitting.

**Status:** PASS

**Problem Discovered:** No department had been selected.

**Fix Applied:** None required. The required validation worked correctly.

## Test 4: Employment Type Radio Buttons

**Expected Result:** Selecting Contract automatically deselects Permanent.

**Actual Result:** When I selected Contract, Permanent became unselected. Only Contract remained selected.

**Status:** PASS

**Problem Discovered:** None.

**Fix Applied:** None required. The radio buttons worked correctly.

## Test 5: Label Functionality

**Expected Result:** Clicking each visible label focuses or activates its corresponding input.

**Actual Result:** Clicking the labels focused or activated their corresponding form controls.

**Status:** PASS

**Problem Discovered:** None.

**Fix Applied:** None required. The labels were properly connected to their inputs.

## Test 6: Keyboard Navigation

**Expected Result:** All form controls can be accessed and operated using Tab, Shift + Tab and other appropriate keyboard controls, with visible focus.

**Actual Result:** I was able to navigate through and operate the form controls using the keyboard.

**Status:** PASS

**Problem Discovered:** None.

**Fix Applied:** None required.

## Test 7: Successful Form Submission

**Expected Result:** The browser navigates to form-preview.html after all required fields are completed. No employee record is saved.

**Actual Result:** The browser successfully navigated to form-preview.html after submission.

**Status:** PASS

**Problem Discovered:** None.

**Fix Applied:** None required. The form submitted successfully using GET.

## Test 8: Navigation Links

**Expected Result:** All navigation links between index.html, employee-form.html and form-preview.html open the correct pages.

**Actual Result:** All navigation links opened their intended pages correctly.

**Status:** PASS

**Problem Discovered:** None.

**Fix Applied:** None required. Navigation worked correctly.
