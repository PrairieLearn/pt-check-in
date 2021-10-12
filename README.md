
# Writing a Check-in App for PrairieTest

A PrairieTest Check-in App is a stand-alone web page that interfaces to a card-reader, converts the card scan to a valid student ID (either a UID or UIN) and passes this information to PrairieTest to check the student in.

There are two files in this directory:

* `check-in.html` is a starter file that should be modified to implement the card scanning and ID lookup.

* `index.html` is a test wrapper that can be used when writing and debugging `checkInDemo.html`.


## Testing the check-in page

1. Open `index.html` in a local browser.

2. You should see two panes: the upper pane is `index.html` and the lower one (an iframe) is `check-in.html`.

3. In the lower pane you can enter a fake UID or UIN and click the button. You should see the top status change to "Checking in..." and "Successfully checked in...".


## Implementing your own check-in page

1. Modify `check-in.html` so that it scans a student ID card and converts the information to a UID or UIN. It should then call `postMessage()` with this information, as shown in the starter file. Test this with `index.html` as described above.

2. For production use, set `window.parentOrigin` in `check-in.html` to `https://www.prairietest.com` (or other appropriate value). Also uncomment the line in `check-in.html` that checks `event.origin`.
