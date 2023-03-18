;;; org-loaddefs.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads nil "ob-core" "ob-core.el" "b501abc4d0b2d9ad521a5689456cc2d8")
;;; Generated autoloads from ob-core.el

(autoload 'org-babel-execute-safely-maybe "ob-core" nil nil nil)

(autoload 'org-babel-execute-maybe "ob-core" nil t nil)

(autoload 'org-babel-view-src-block-info "ob-core" "\
Display information on the current source block.
This includes header arguments, language and name, and is largely
a window into the `org-babel-get-src-block-info' function." t nil)

(autoload 'org-babel-expand-src-block-maybe "ob-core" "\
Conditionally expand a source block.
Detect if this is context for an org-babel src-block and if so
then run `org-babel-expand-src-block'." t nil)

(autoload 'org-babel-load-in-session-maybe "ob-core" "\
Conditionally load a source block in a session.
Detect if this is context for an org-babel src-block and if so
then run `org-babel-load-in-session'." t nil)

(autoload 'org-babel-pop-to-session-maybe "ob-core" "\
Conditionally pop to a session.
Detect if this is context for an org-babel src-block and if so
then run `org-babel-switch-to-session'." t nil)

(autoload 'org-babel-execute-src-block "ob-core" "\
Execute the current source code block and return the result.
Insert the results of execution into the buffer.  Source code
execution and the collection and formatting of results can be
controlled through a variety of header arguments.

With prefix argument ARG, force re-execution even if an existing
result cached in the buffer would otherwise have been returned.

Optionally supply a value for INFO in the form returned by
`org-babel-get-src-block-info'.

Optionally supply a value for PARAMS which will be merged with
the header arguments specified at the front of the source code
block.

EXECUTOR-TYPE is the type of the org element responsible for the
execution of the source block.  If not provided then informed
guess will be made.

\(fn &optional ARG INFO PARAMS EXECUTOR-TYPE)" t nil)

(autoload 'org-babel-expand-src-block "ob-core" "\
Expand the current source code block.
Expand according to the source code block's header
arguments and pop open the results in a preview buffer.

\(fn &optional ARG INFO PARAMS)" t nil)

(autoload 'org-babel-check-src-block "ob-core" "\
Check for misspelled header arguments in the current code block." t nil)

(autoload 'org-babel-insert-header-arg "ob-core" "\
Insert a header argument selecting from lists of common args and values.

\(fn &optional HEADER-ARG VALUE)" t nil)

(autoload 'org-babel-load-in-session "ob-core" "\
Load the body of the current source-code block.
Evaluate the header arguments for the source block before
entering the session.  After loading the body this pops open the
session.

\(fn &optional ARG INFO)" t nil)

(autoload 'org-babel-initiate-session "ob-core" "\
Initiate session for current code block.
If called with a prefix argument then resolve any variable
references in the header arguments and assign these variables in
the session.  Copy the body of the code block to the kill ring.

\(fn &optional ARG INFO)" t nil)

(autoload 'org-babel-switch-to-session "ob-core" "\
Switch to the session of the current code block.
Uses `org-babel-initiate-session' to start the session.  If called
with a prefix argument then this is passed on to
`org-babel-initiate-session'.

\(fn &optional ARG INFO)" t nil)

(autoload 'org-babel-switch-to-session-with-code "ob-core" "\
Switch to code buffer and display session.

\(fn &optional ARG INFO)" t nil)

(autoload 'org-babel-do-in-edit-buffer "ob-core" "\
Evaluate BODY in edit buffer if there is a code block at point.
Return t if a code block was found at point, nil otherwise.

\(fn &rest BODY)" nil t)

(autoload 'org-babel-open-src-block-result "ob-core" "\
Open results of source block at point.

If `point' is on a source block then open the results of the source
code block, otherwise return nil.  With optional prefix argument
RE-RUN the source-code block is evaluated even if results already
exist.

\(fn &optional RE-RUN)" t nil)

(autoload 'org-babel-map-src-blocks "ob-core" "\
Evaluate BODY forms on each source-block in FILE.
If FILE is nil evaluate BODY forms on source blocks in current
buffer.  During evaluation of BODY the following local variables
are set relative to the currently matched code block.

full-block ------- string holding the entirety of the code block
beg-block -------- point at the beginning of the code block
end-block -------- point at the end of the matched code block
lang ------------- string holding the language of the code block
beg-lang --------- point at the beginning of the lang
end-lang --------- point at the end of the lang
switches --------- string holding the switches
beg-switches ----- point at the beginning of the switches
end-switches ----- point at the end of the switches
header-args ------ string holding the header-args
beg-header-args -- point at the beginning of the header-args
end-header-args -- point at the end of the header-args
body ------------- string holding the body of the code block
beg-body --------- point at the beginning of the body
end-body --------- point at the end of the body

\(fn FILE &rest BODY)" nil t)

(function-put 'org-babel-map-src-blocks 'lisp-indent-function '1)

(autoload 'org-babel-map-inline-src-blocks "ob-core" "\
Evaluate BODY forms on each inline source block in FILE.
If FILE is nil evaluate BODY forms on source blocks in current
buffer.

\(fn FILE &rest BODY)" nil t)

(function-put 'org-babel-map-inline-src-blocks 'lisp-indent-function '1)

(autoload 'org-babel-map-call-lines "ob-core" "\
Evaluate BODY forms on each call line in FILE.
If FILE is nil evaluate BODY forms on source blocks in current
buffer.

\(fn FILE &rest BODY)" nil t)

(function-put 'org-babel-map-call-lines 'lisp-indent-function '1)

(autoload 'org-babel-map-executables "ob-core" "\
Evaluate BODY forms on each active Babel code in FILE.
If FILE is nil evaluate BODY forms on source blocks in current
buffer.

\(fn FILE &rest BODY)" nil t)

(function-put 'org-babel-map-executables 'lisp-indent-function '1)

(autoload 'org-babel-execute-buffer "ob-core" "\
Execute source code blocks in a buffer.
Call `org-babel-execute-src-block' on every source block in
the current buffer.

\(fn &optional ARG)" t nil)

(autoload 'org-babel-execute-subtree "ob-core" "\
Execute source code blocks in a subtree.
Call `org-babel-execute-src-block' on every source block in
the current subtree.

\(fn &optional ARG)" t nil)

(autoload 'org-babel-sha1-hash "ob-core" "\
Generate a sha1 hash based on the value of INFO.
CONTEXT specifies the context of evaluation.  It can be `:eval',
`:export', `:tangle'.  A nil value means `:eval'.

\(fn &optional INFO CONTEXT)" t nil)

(autoload 'org-babel-hide-result-toggle-maybe "ob-core" "\
Toggle visibility of result at point." t nil)

(autoload 'org-babel-goto-src-block-head "ob-core" "\
Go to the beginning of the current code block." t nil)

(autoload 'org-babel-goto-named-src-block "ob-core" "\
Go to a named source-code block.

\(fn NAME)" t nil)

(autoload 'org-babel-goto-named-result "ob-core" "\
Go to a named result.

\(fn NAME)" t nil)

(autoload 'org-babel-next-src-block "ob-core" "\
Jump to the next source block.
With optional prefix argument ARG, jump forward ARG many source blocks.

\(fn &optional ARG)" t nil)

(autoload 'org-babel-previous-src-block "ob-core" "\
Jump to the previous source block.
With optional prefix argument ARG, jump backward ARG many source blocks.

\(fn &optional ARG)" t nil)

(autoload 'org-babel-mark-block "ob-core" "\
Mark current source block." t nil)

;;;***

;;;### (autoloads nil "ob-lob" "ob-lob.el" "f2b24928cff81b0cc0d2e0820af38a82")
;;; Generated autoloads from ob-lob.el

(autoload 'org-babel-lob-execute-maybe "ob-lob" "\
Execute a Library of Babel source block, if appropriate.
Detect if this is context for a Library Of Babel source block and
if so then run the appropriate source block from the Library." t nil)

(autoload 'org-babel-lob-get-info "ob-lob" "\
Return internal representation for Library of Babel function call.

Consider DATUM, when provided, or element at point otherwise.

When optional argument NO-EVAL is non-nil, Babel does not resolve
remote variable references; a process which could likely result
in the execution of other code blocks, and do not evaluate Lisp
values in parameters.

Return nil when not on an appropriate location.  Otherwise return
a list compatible with `org-babel-get-src-block-info', which
see.

\(fn &optional DATUM NO-EVAL)" nil nil)

;;;***

;;;### (autoloads nil "ob-tangle" "ob-tangle.el" "444eaa19e3e7bba1796c969d5f39a839")
;;; Generated autoloads from ob-tangle.el

(autoload 'org-babel-tangle-file "ob-tangle" "\
Extract the bodies of source code blocks in FILE.
Source code blocks are extracted with `org-babel-tangle'.

Optional argument TARGET-FILE can be used to specify a default
export file for all source blocks.

Optional argument LANG-RE can be used to limit the exported
source code blocks by languages matching a regular expression.

Return list of the tangled file names.

\(fn FILE &optional TARGET-FILE LANG-RE)" t nil)

(autoload 'org-babel-tangle "ob-tangle" "\
Write code blocks to source-specific files.
Extract the bodies of all source code blocks from the current
file into their own source-specific files.  Return the list of files.
With one universal prefix argument, only tangle the block at point.
When two universal prefix arguments, only tangle blocks for the
tangle file of the block at point.
Optional argument TARGET-FILE can be used to specify a default
export file for all source blocks.  Optional argument LANG-RE can
be used to limit the exported source code blocks by languages
matching a regular expression.

\(fn &optional ARG TARGET-FILE LANG-RE)" t nil)

;;;***

;;;### (autoloads nil "ol" "ol.el" "1ef480f50eb49f75a4c72f2e2de1d153")
;;; Generated autoloads from ol.el

(autoload 'org-next-link "ol" "\
Move forward to the next link.
If the link is in hidden text, expose it.  When SEARCH-BACKWARD
is non-nil, move backward.

\(fn &optional SEARCH-BACKWARD)" t nil)

(autoload 'org-previous-link "ol" "\
Move backward to the previous link.
If the link is in hidden text, expose it." t nil)

(autoload 'org-toggle-link-display "ol" "\
Toggle the literal or descriptive display of links in current buffer." t nil)

(autoload 'org-store-link "ol" "\
Store a link to the current location.
\\<org-mode-map>
This link is added to `org-stored-links' and can later be inserted
into an Org buffer with `org-insert-link' (`\\[org-insert-link]').

For some link types, a `\\[universal-argument]' prefix ARG is interpreted.  A single
`\\[universal-argument]' negates `org-context-in-file-links' for file links or
`org-gnus-prefer-web-links' for links to Usenet articles.

A `\\[universal-argument] \\[universal-argument]' prefix ARG forces skipping storing functions that are not
part of Org core.

A `\\[universal-argument] \\[universal-argument] \\[universal-argument]' prefix ARG forces storing a link for each line in the
active region.

Assume the function is called interactively if INTERACTIVE? is
non-nil.

\(fn ARG &optional INTERACTIVE\\=\\?)" t nil)

(autoload 'org-insert-link "ol" "\
Insert a link.  At the prompt, enter the link.

Completion can be used to insert any of the link protocol prefixes in use.

The history can be used to select a link previously stored with
`org-store-link'.  When the empty string is entered (i.e. if you just
press `RET' at the prompt), the link defaults to the most recently
stored link.  As `SPC' triggers completion in the minibuffer, you need to
use `M-SPC' or `C-q SPC' to force the insertion of a space character.
Completion candidates include link descriptions.

If there is a link under cursor then edit it.

You will also be prompted for a description, and if one is given, it will
be displayed in the buffer instead of the link.

If there is already a link at point, this command will allow you to edit
link and description parts.

With a `\\[universal-argument]' prefix, prompts for a file to link to.  The file name can be
selected using completion.  The path to the file will be relative to the
current directory if the file is in the current directory or a subdirectory.
Otherwise, the link will be the absolute path as completed in the minibuffer
\(i.e. normally ~/path/to/file).  You can configure this behavior using the
option `org-link-file-path-type'.

With a `\\[universal-argument] \\[universal-argument]' prefix, enforce an absolute path even if the file is in
the current directory or below.

A `\\[universal-argument] \\[universal-argument] \\[universal-argument]' prefix negates `org-link-keep-stored-after-insertion'.

If the LINK-LOCATION parameter is non-nil, this value will be used as
the link location instead of reading one interactively.

If the DESCRIPTION parameter is non-nil, this value will be used
as the default description.  If not, and the chosen link type has
a non-nil `:insert-description' parameter, that is used to
generate a description as described in `org-link-parameters'
docstring.  Otherwise, if `org-link-make-description-function' is
non-nil, this function will be called with the link target, and
the result will be the default link description.  When called
non-interactively, don't allow to edit the default description.

\(fn &optional COMPLETE-FILE LINK-LOCATION DESCRIPTION)" t nil)

(autoload 'org-insert-all-links "ol" "\
Insert all links in `org-stored-links'.
When a universal prefix, do not delete the links from `org-stored-links'.
When `ARG' is a number, insert the last N link(s).
`PRE' and `POST' are optional arguments to define a string to
prepend or to append.

\(fn ARG &optional PRE POST)" t nil)

(autoload 'org-insert-last-stored-link "ol" "\
Insert the last link stored in `org-stored-links'.

\(fn ARG)" t nil)

(autoload 'org-insert-link-global "ol" "\
Insert a link like Org mode does.
This command can be called in any mode to insert a link in Org syntax." t nil)

(autoload 'org-update-radio-target-regexp "ol" "\
Find all radio targets in this file and update the regular expression.
Also refresh fontification if needed." t nil)

;;;***

;;;### (autoloads nil "ol-bbdb" "ol-bbdb.el" "7e33c569e27ec67ffd869b11b7da69b5")
;;; Generated autoloads from ol-bbdb.el

(autoload 'org-bbdb-anniversaries "ol-bbdb" "\
Extract anniversaries from BBDB for display in the agenda.
When called programmatically, this function expects the `date'
variable to be globally bound." nil nil)

;;;***

;;;### (autoloads nil "ol-irc" "ol-irc.el" "2878d0913894961227d05ccf4afaa02d")
;;; Generated autoloads from ol-irc.el

(autoload 'org-irc-store-link "ol-irc" "\
Dispatch to the appropriate function to store a link to an IRC session." nil nil)

;;;***

;;;### (autoloads nil "org-archive" "org-archive.el" "4b4cc0b3beac33f17438945dd42f7625")
;;; Generated autoloads from org-archive.el

(autoload 'org-add-archive-files "org-archive" "\
Splice the archive files into the list of files.
This implies visiting all these files and finding out what the
archive file is.

\(fn FILES)" nil nil)

(autoload 'org-archive-subtree "org-archive" "\
Move the current subtree to the archive.
The archive can be a certain top-level heading in the current
file, or in a different file.  The tree will be moved to that
location, the subtree heading be marked DONE, and the current
time will be added.

When called with a single prefix argument FIND-DONE, find whole
trees without any open TODO items and archive them (after getting
confirmation from the user).  When called with a double prefix
argument, find whole trees with timestamps before today and
archive them (after getting confirmation from the user).  If the
cursor is not at a headline when these commands are called, try
all level 1 trees.  If the cursor is on a headline, only try the
direct children of this heading.

\(fn &optional FIND-DONE)" t nil)

(autoload 'org-archive-to-archive-sibling "org-archive" "\
Archive the current heading by moving it under the archive sibling.

The archive sibling is a sibling of the heading with the heading name
`org-archive-sibling-heading' and an `org-archive-tag' tag.  If this
sibling does not exist, it will be created at the end of the subtree.

Archiving time is retained in the ARCHIVE_TIME node property." t nil)

(autoload 'org-toggle-archive-tag "org-archive" "\
Toggle the archive tag for the current headline.
With prefix ARG, check all children of current headline and offer tagging
the children that do not contain any open TODO items.

\(fn &optional FIND-DONE)" t nil)

(autoload 'org-archive-subtree-default "org-archive" "\
Archive the current subtree with the default command.
This command is set with the variable `org-archive-default-command'." t nil)

(autoload 'org-archive-subtree-default-with-confirmation "org-archive" "\
Archive the current subtree with the default command.
This command is set with the variable `org-archive-default-command'." t nil)

;;;***

;;;### (autoloads nil "org-attach" "org-attach.el" "6c6fa89244adb6c8faecc20b0bfa7c24")
;;; Generated autoloads from org-attach.el

(autoload 'org-attach "org-attach" "\
The dispatcher for attachment commands.
Shows a list of commands and prompts for another key to execute a command." t nil)

(autoload 'org-attach-dir "org-attach" "\
Return the directory associated with the current outline node.
First check for DIR property, then ID property.
`org-attach-use-inheritance' determines whether inherited
properties also will be considered.

If an ID property is found the default mechanism using that ID
will be invoked to access the directory for the current entry.
Note that this method returns the directory as declared by ID or
DIR even if the directory doesn't exist in the filesystem.

If CREATE-IF-NOT-EXISTS-P is non-nil, `org-attach-dir-get-create'
is run.  If NO-FS-CHECK is non-nil, the function returns the path
to the attachment even if it has not yet been initialized in the
filesystem.

If no attachment directory can be derived, return nil.

\(fn &optional CREATE-IF-NOT-EXISTS-P NO-FS-CHECK)" nil nil)

(autoload 'org-attach-dired-to-subtree "org-attach" "\
Attach FILES marked or current file in `dired' to subtree in other window.
Takes the method given in `org-attach-method' for the attach action.
Precondition: Point must be in a `dired' buffer.
Idea taken from `gnus-dired-attach'.

\(fn FILES)" t nil)

;;;***

;;;### (autoloads nil "org-clock" "org-clock.el" "3823c3a89d6ae7963823a89a578a7368")
;;; Generated autoloads from org-clock.el

(autoload 'org-resolve-clocks "org-clock" "\
Resolve all currently open Org clocks.
If `only-dangling-p' is non-nil, only ask to resolve dangling
\(i.e., not currently open and valid) clocks.

\(fn &optional ONLY-DANGLING-P PROMPT-FN LAST-VALID)" t nil)

(autoload 'org-clock-in "org-clock" "\
Start the clock on the current item.

If necessary, clock-out of the currently active clock.

With a `\\[universal-argument]' prefix argument SELECT, offer a list of recently clocked
tasks to clock into.

When SELECT is `\\[universal-argument] \\[universal-argument]', clock into the current task and mark it as
the default task, a special task that will always be offered in the
clocking selection, associated with the letter `d'.

When SELECT is `\\[universal-argument] \\[universal-argument] \\[universal-argument]', clock in by using the last clock-out
time as the start time.  See `org-clock-continuously' to make this
the default behavior.

\(fn &optional SELECT START-TIME)" t nil)

(autoload 'org-clock-toggle-auto-clockout "org-clock" nil t nil)

(autoload 'org-clock-in-last "org-clock" "\
Clock in the last closed clocked item.
When already clocking in, send a warning.
With a universal prefix argument, select the task you want to
clock in from the last clocked in tasks.
With two universal prefix arguments, start clocking using the
last clock-out time, if any.
With three universal prefix arguments, interactively prompt
for a todo state to switch to, overriding the existing value
`org-clock-in-switch-to-state'.

\(fn &optional ARG)" t nil)

(autoload 'org-clock-out "org-clock" "\
Stop the currently running clock.
Throw an error if there is no running clock and FAIL-QUIETLY is nil.
With a universal prefix, prompt for a state to switch the clocked out task
to, overriding the existing value of `org-clock-out-switch-to-state'.

\(fn &optional SWITCH-TO-STATE FAIL-QUIETLY AT-TIME)" t nil)

(autoload 'org-clock-cancel "org-clock" "\
Cancel the running clock by removing the start timestamp." t nil)

(autoload 'org-clock-goto "org-clock" "\
Go to the currently clocked-in entry, or to the most recently clocked one.
With prefix arg SELECT, offer recently clocked tasks for selection.

\(fn &optional SELECT)" t nil)

(autoload 'org-clock-sum-today "org-clock" "\
Sum the times for each subtree for today.

\(fn &optional HEADLINE-FILTER)" nil nil)

(autoload 'org-clock-sum "org-clock" "\
Sum the times for each subtree.
Puts the resulting times in minutes as a text property on each headline.
TSTART and TEND can mark a time range to be considered.
HEADLINE-FILTER is a zero-arg function that, if specified, is called for
each headline in the time range with point at the headline.  Headlines for
which HEADLINE-FILTER returns nil are excluded from the clock summation.
PROPNAME lets you set a custom text property instead of :org-clock-minutes.

\(fn &optional TSTART TEND HEADLINE-FILTER PROPNAME)" nil nil)

(autoload 'org-clock-display "org-clock" "\
Show subtree times in the entire buffer.

By default, show the total time for the range defined in
`org-clock-display-default-range'.  With `\\[universal-argument]' prefix, show
the total time for today instead.

With `\\[universal-argument] \\[universal-argument]' prefix, use a custom range, entered at prompt.

With `\\[universal-argument] \\[universal-argument] \\[universal-argument]' prefix, display the total time in the
echo area.

Use `\\[org-clock-remove-overlays]' to remove the subtree times.

\(fn &optional ARG)" t nil)

(autoload 'org-clock-remove-overlays "org-clock" "\
Remove the occur highlights from the buffer.
If NOREMOVE is nil, remove this function from the
`before-change-functions' in the current buffer.

\(fn &optional BEG END NOREMOVE)" t nil)

(autoload 'org-clock-out-if-current "org-clock" "\
Clock out if the current entry contains the running clock.
This is used to stop the clock after a TODO entry is marked DONE,
and is only done if the variable `org-clock-out-when-done' is not nil." nil nil)

(autoload 'org-clock-get-clocktable "org-clock" "\
Get a formatted clocktable with parameters according to PROPS.
The table is created in a temporary buffer, fully formatted and
fontified, and then returned.

\(fn &rest PROPS)" nil nil)

(autoload 'org-clock-report "org-clock" "\
Update or create a table containing a report about clocked time.

If point is inside an existing clocktable block, update it.
Otherwise, insert a new one.

The new table inherits its properties from the variable
`org-clock-clocktable-default-properties'.

The scope of the clocktable, when not specified in the previous
variable, is `subtree' of the current heading when the function is
called from inside heading, and `file' elsewhere (before the first
heading).

When called with a prefix argument, move to the first clock table
in the buffer and update it.

\(fn &optional ARG)" t nil)

(eval-after-load 'org '(progn (org-dynamic-block-define "clocktable" #'org-clock-report)))

(autoload 'org-clocktable-shift "org-clock" "\
Try to shift the :block date of the clocktable at point.
Point must be in the #+BEGIN: line of a clocktable, or this function
will throw an error.
DIR is a direction, a symbol `left', `right', `up', or `down'.
Both `left' and `down' shift the block toward the past, `up' and `right'
push it toward the future.
N is the number of shift steps to take.  The size of the step depends on
the currently selected interval size.

\(fn DIR N)" nil nil)

(autoload 'org-dblock-write:clocktable "org-clock" "\
Write the standard clocktable.

\(fn PARAMS)" nil nil)

(autoload 'org-clock-update-time-maybe "org-clock" "\
If this is a CLOCK line, update it and return t.
Otherwise, return nil." t nil)

;;;***

;;;### (autoloads nil "org-colview" "org-colview.el" "689f085e9357f5d901d7f71be888f28b")
;;; Generated autoloads from org-colview.el

(autoload 'org-columns-remove-overlays "org-colview" "\
Remove all currently active column overlays." t nil)

(autoload 'org-columns-get-format-and-top-level "org-colview" nil nil nil)

(autoload 'org-columns "org-colview" "\
Turn on column view on an Org mode file.

Column view applies to the whole buffer if point is before the first
headline.  Otherwise, it applies to the first ancestor setting
\"COLUMNS\" property.  If there is none, it defaults to the current
headline.  With a `\\[universal-argument]' prefix argument, GLOBAL,
turn on column view for the whole buffer unconditionally.

When COLUMNS-FMT-STRING is non-nil, use it as the column format.

\(fn &optional GLOBAL COLUMNS-FMT-STRING)" t nil)

(autoload 'org-columns-compute "org-colview" "\
Summarize the values of PROPERTY hierarchically.
Also update existing values for PROPERTY according to the first
column specification.

\(fn PROPERTY)" t nil)

(autoload 'org-dblock-write:columnview "org-colview" "\
Write the column view table.

PARAMS is a property list of parameters:

`:id' (mandatory)

    The ID property of the entry where the columns view should be
    built.  When the symbol `local', call locally.  When `global'
    call column view with the cursor at the beginning of the
    buffer (usually this means that the whole buffer switches to
    column view).  When \"file:path/to/file.org\", invoke column
    view at the start of that file.  Otherwise, the ID is located
    using `org-id-find'.

`:exclude-tags'

    List of tags to exclude from column view table.

`:format'

    When non-nil, specify the column view format to use.

`:hlines'

    When non-nil, insert a hline before each item.  When
    a number, insert a hline before each level inferior or equal
    to that number.

`:indent'

    When non-nil, indent each ITEM field according to its level.

`:match'

    When set to a string, use this as a tags/property match filter.

`:maxlevel'

    When set to a number, don't capture headlines below this level.

`:skip-empty-rows'

    When non-nil, skip rows where all specifiers other than ITEM
    are empty.

`:vlines'

    When non-nil, make each column a column group to enforce
    vertical lines.

\(fn PARAMS)" nil nil)

(autoload 'org-columns-insert-dblock "org-colview" "\
Create a dynamic block capturing a column view table." t nil)

(eval-after-load 'org '(progn (org-dynamic-block-define "columnview" #'org-columns-insert-dblock)))

(autoload 'org-agenda-columns "org-colview" "\
Turn on or update column view in the agenda." t nil)

;;;***

;;;### (autoloads nil "org-compat" "org-compat.el" "fbeaf99d37ede459b528e4682ca4709c")
;;; Generated autoloads from org-compat.el

(autoload 'org-check-version "org-compat" "\
Try very hard to provide sensible version strings." nil t)

;;;***

;;;### (autoloads nil "org-datetree" "org-datetree.el" "d7ea2be16428efa6add62bfd2b26dacc")
;;; Generated autoloads from org-datetree.el

(autoload 'org-datetree-find-date-create "org-datetree" "\
Find or create a day entry for date D.
If KEEP-RESTRICTION is non-nil, do not widen the buffer.
When it is nil, the buffer will be widened to make sure an existing date
tree can be found.  If it is the symbol `subtree-at-point', then the tree
will be built under the headline at point.

\(fn D &optional KEEP-RESTRICTION)" nil nil)

(autoload 'org-datetree-find-month-create "org-datetree" "\
Find or create a month entry for date D.
Compared to `org-datetree-find-date-create' this function creates
entries grouped by month instead of days.
If KEEP-RESTRICTION is non-nil, do not widen the buffer.
When it is nil, the buffer will be widened to make sure an existing date
tree can be found.  If it is the symbol `subtree-at-point', then the tree
will be built under the headline at point.

\(fn D &optional KEEP-RESTRICTION)" nil nil)

(autoload 'org-datetree-find-iso-week-create "org-datetree" "\
Find or create an ISO week entry for date D.
Compared to `org-datetree-find-date-create' this function creates
entries ordered by week instead of months.
When it is nil, the buffer will be widened to make sure an existing date
tree can be found.  If it is the symbol `subtree-at-point', then the tree
will be built under the headline at point.

\(fn D &optional KEEP-RESTRICTION)" nil nil)

;;;***

;;;### (autoloads nil "org-duration" "org-duration.el" "d34da613b5267f7586e1f59d20c41523")
;;; Generated autoloads from org-duration.el

(autoload 'org-duration-set-regexps "org-duration" "\
Set duration related regexps." t nil)

(autoload 'org-duration-p "org-duration" "\
Non-nil when string S is a time duration.

\(fn S)" nil nil)

(autoload 'org-duration-to-minutes "org-duration" "\
Return number of minutes of DURATION string.

When optional argument CANONICAL is non-nil, ignore
`org-duration-units' and use standard time units value.

A bare number is translated into minutes.  The empty string is
translated into 0.0.

Return value as a float.  Raise an error if duration format is
not recognized.

\(fn DURATION &optional CANONICAL)" nil nil)

(autoload 'org-duration-from-minutes "org-duration" "\
Return duration string for a given number of MINUTES.

Format duration according to `org-duration-format' or FMT, when
non-nil.

When optional argument CANONICAL is non-nil, ignore
`org-duration-units' and use standard time units value.

Raise an error if expected format is unknown.

\(fn MINUTES &optional FMT CANONICAL)" nil nil)

(autoload 'org-duration-h:mm-only-p "org-duration" "\
Non-nil when every duration in TIMES has \"H:MM\" or \"H:MM:SS\" format.

TIMES is a list of duration strings.

Return nil if any duration is expressed with units, as defined in
`org-duration-units'.  Otherwise, if any duration is expressed
with \"H:MM:SS\" format, return `h:mm:ss'.  Otherwise, return
`h:mm'.

\(fn TIMES)" nil nil)

;;;***

;;;### (autoloads nil "org-element" "org-element.el" "504ca402d654f9fab0eedae4006b6c17")
;;; Generated autoloads from org-element.el

(autoload 'org-element-update-syntax "org-element" "\
Update parser internals." t nil)

(autoload 'org-element-interpret-data "org-element" "\
Interpret DATA as Org syntax.
DATA is a parse tree, an element, an object or a secondary string
to interpret.  Return Org syntax as a string.

\(fn DATA)" nil nil)

(defvar org-element-use-cache t "\
Non-nil when Org parser should cache its results.")

(autoload 'org-element-cache-reset "org-element" "\
Reset cache in current buffer.
When optional argument ALL is non-nil, reset cache in all Org
buffers.
When optional argument NO-PERSISTENCE is non-nil, do not try to update
the cache persistence in the buffer.

\(fn &optional ALL NO-PERSISTENCE)" t nil)

(autoload 'org-element-cache-refresh "org-element" "\
Refresh cache at position POS.

\(fn POS)" nil nil)

(autoload 'org-element-cache-map "org-element" "\
Map all elements in current buffer with FUNC according to
GRANULARITY.  Collect non-nil return values into result list.

FUNC should accept a single argument - the element.

FUNC can modify the buffer, but doing so may reduce performance.  If
buffer is modified, the mapping will continue from an element starting
after the last mapped element.  If the last mapped element is deleted,
the subsequent element will be skipped as it cannot be distinguished
deterministically from a changed element.  If FUNC is expected to
delete the element, it should directly set the value of
`org-element-cache-map-continue-from' to force `org-element-cache-map'
continue from the right point in buffer.

If some elements are not yet in cache, they will be added.

GRANULARITY can be `headline', `headline+inlinetask'
`greater-element', or `element'.  The default is
`headline+inlinetask'.  `object' granularity is not supported.

RESTRICT-ELEMENTS is a list of element types to be mapped over.

NEXT-RE is a regexp used to search next candidate match when FUNC
returns non-nil and to search the first candidate match.  FAIL-RE is a
regexp used to search next candidate match when FUNC returns nil.  The
mapping will continue starting from headline at the RE match.

FROM-POS and TO-POS are buffer positions.  When non-nil, they bound the
mapped elements to elements starting at of after FROM-POS but before
TO-POS.

AFTER-ELEMENT, when non-nil, bounds the mapping to all the elements
after AFTER-ELEMENT (i.e. if AFTER-ELEMENT is a headline section, we
map all the elements starting from first element inside section, but
not including the section).

LIMIT-COUNT limits mapping to that many first matches where FUNC
returns non-nil.

NARROW controls whether current buffer narrowing should be preserved.

This function does a subset of what `org-element-map' does, but with
much better performance.  Cached elements are supplied as the single
argument of FUNC.  Changes to elements made in FUNC will also alter
the cache.

\(fn FUNC &key (GRANULARITY \\='headline+inlinetask) RESTRICT-ELEMENTS NEXT-RE FAIL-RE FROM-POS (TO-POS (point-max-marker)) AFTER-ELEMENT LIMIT-COUNT NARROW)" nil nil)

(autoload 'org-element-at-point "org-element" "\
Determine closest element around point or POM.

Only check cached element when CACHED-ONLY is non-nil and return nil
unconditionally when element at POM is not in cache.

Return value is a list like (TYPE PROPS) where TYPE is the type
of the element and PROPS a plist of properties associated to the
element.

Possible types are defined in `org-element-all-elements'.
Properties depend on element or object type, but always include
`:begin', `:end', and `:post-blank' properties.

As a special case, if point is at the very beginning of the first
item in a list or sub-list, returned element will be that list
instead of the item.  Likewise, if point is at the beginning of
the first row of a table, returned element will be the table
instead of the first row.

When point is at the end of the buffer, return the innermost
element ending there.

\(fn &optional POM CACHED-ONLY)" nil nil)

(defsubst org-element-at-point-no-context (&optional pom) "\
Quickly find element at point or POM.

It is a faster version of `org-element-at-point' that is not
guaranteed to return correct `:parent' properties even when cache is
enabled." (or (org-element-at-point pom 'cached-only) (org-element-with-disabled-cache (org-element-at-point pom))))

(autoload 'org-element-context "org-element" "\
Return smallest element or object around point.

Return value is a list like (TYPE PROPS) where TYPE is the type
of the element or object and PROPS a plist of properties
associated to it.

Possible types are defined in `org-element-all-elements' and
`org-element-all-objects'.  Properties depend on element or
object type, but always include `:begin', `:end', `:parent' and
`:post-blank'.

As a special case, if point is right after an object and not at
the beginning of any other object, return that object.

Optional argument ELEMENT, when non-nil, is the closest element
containing point, as returned by `org-element-at-point'.
Providing it allows for quicker computation.

\(fn &optional ELEMENT)" nil nil)

;;;***

;;;### (autoloads nil "org-feed" "org-feed.el" "6c97244792665a6679669d31a77ebe1a")
;;; Generated autoloads from org-feed.el

(autoload 'org-feed-update-all "org-feed" "\
Get inbox items from all feeds in `org-feed-alist'." t nil)

(autoload 'org-feed-update "org-feed" "\
Get inbox items from FEED.
FEED can be a string with an association in `org-feed-alist', or
it can be a list structured like an entry in `org-feed-alist'.

\(fn FEED &optional RETRIEVE-ONLY)" t nil)

(autoload 'org-feed-goto-inbox "org-feed" "\
Go to the inbox that captures the feed named FEED.

\(fn FEED)" t nil)

(autoload 'org-feed-show-raw-feed "org-feed" "\
Show the raw feed buffer of a feed.

\(fn FEED)" t nil)

;;;***

;;;### (autoloads nil "org-footnote" "org-footnote.el" "9c6cc18ed284b01aa6fddba387a0815b")
;;; Generated autoloads from org-footnote.el

(autoload 'org-footnote-action "org-footnote" "\
Do the right thing for footnotes.

When at a footnote reference, jump to the definition.

When at a definition, jump to the references if they exist, offer
to create them otherwise.

When neither at definition or reference, create a new footnote,
interactively if possible.

With prefix arg SPECIAL, or when no footnote can be created,
offer additional commands in a menu.

\(fn &optional SPECIAL)" t nil)

;;;***

;;;### (autoloads nil "org-goto" "org-goto.el" "8c32558fc27a378a062451e76b0df6fa")
;;; Generated autoloads from org-goto.el

(autoload 'org-goto-location "org-goto" "\
Let the user select a location in current buffer.
This function uses a recursive edit.  It returns the selected
position or nil.

\(fn &optional BUF HELP)" nil nil)

(autoload 'org-goto "org-goto" "\
Look up a different location in the current file, keeping current visibility.

When you want look-up or go to a different location in a
document, the fastest way is often to fold the entire buffer and
then dive into the tree.  This method has the disadvantage, that
the previous location will be folded, which may not be what you
want.

This command works around this by showing a copy of the current
buffer in an indirect buffer, in overview mode.  You can dive
into the tree in that copy, use `org-occur' and incremental search
to find a location.  When pressing RET or `Q', the command
returns to the original buffer in which the visibility is still
unchanged.  After RET it will also jump to the location selected
in the indirect buffer and expose the headline hierarchy above.

With a prefix argument, use the alternative interface: e.g., if
`org-goto-interface' is `outline' use `outline-path-completion'.

\(fn &optional ALTERNATIVE-INTERFACE)" t nil)

;;;***

;;;### (autoloads nil "org-id" "org-id.el" "01eea74fbef35af6d97400787dfa0765")
;;; Generated autoloads from org-id.el

(autoload 'org-id-get-create "org-id" "\
Create an ID for the current entry and return it.
If the entry already has an ID, just return it.
With optional argument FORCE, force the creation of a new ID.

\(fn &optional FORCE)" t nil)

(autoload 'org-id-copy "org-id" "\
Copy the ID of the entry at point to the kill ring.
Create an ID if necessary." t nil)

(autoload 'org-id-get "org-id" "\
Get the ID property of the entry at point-or-marker POM.
If POM is nil, refer to the entry at point.
If the entry does not have an ID, the function returns nil.
However, when CREATE is non-nil, create an ID if none is present already.
PREFIX will be passed through to `org-id-new'.
In any case, the ID of the entry is returned.

\(fn &optional POM CREATE PREFIX)" nil nil)

(autoload 'org-id-get-with-outline-path-completion "org-id" "\
Use `outline-path-completion' to retrieve the ID of an entry.
TARGETS may be a setting for `org-refile-targets' to define
eligible headlines.  When omitted, all headlines in the current
file are eligible.  This function returns the ID of the entry.
If necessary, the ID is created.

\(fn &optional TARGETS)" nil nil)

(autoload 'org-id-get-with-outline-drilling "org-id" "\
Use an outline-cycling interface to retrieve the ID of an entry.
This only finds entries in the current buffer, using `org-goto-location'.
It returns the ID of the entry.  If necessary, the ID is created." nil nil)

(autoload 'org-id-goto "org-id" "\
Switch to the buffer containing the entry with id ID.
Move the cursor to that entry in that buffer.

\(fn ID)" t nil)

(autoload 'org-id-find "org-id" "\
Return the location of the entry with the id ID.
The return value is a cons cell (file-name . position), or nil
if there is no entry with that ID.
With optional argument MARKERP, return the position as a new marker.

\(fn ID &optional MARKERP)" nil nil)

(autoload 'org-id-new "org-id" "\
Create a new globally unique ID.

An ID consists of two parts separated by a colon:
- a prefix
- a unique part that will be created according to `org-id-method'.

PREFIX can specify the prefix, the default is given by the variable
`org-id-prefix'.  However, if PREFIX is the symbol `none', don't use any
prefix even if `org-id-prefix' specifies one.

So a typical ID could look like \"Org:4nd91V40HI\".

\(fn &optional PREFIX)" nil nil)

(autoload 'org-id-update-id-locations "org-id" "\
Scan relevant files for IDs.
Store the relation between files and corresponding IDs.
This will scan all agenda files, all associated archives, all open Org
files, and all files currently mentioned in `org-id-locations'.
When FILES is given, scan also these files.
If SILENT is non-nil, messages are suppressed.

\(fn &optional FILES SILENT)" t nil)

(autoload 'org-id-find-id-file "org-id" "\
Query the id database for the file in which ID is located.

\(fn ID)" nil nil)

(autoload 'org-id-store-link "org-id" "\
Store a link to the current entry, using its ID.

If before first heading store first title-keyword as description
or filename if no title." t nil)

;;;***

;;;### (autoloads nil "org-indent" "org-indent.el" "0460feb476d61dea99dc6d17cae9fbd2")
;;; Generated autoloads from org-indent.el

(autoload 'org-indent-mode "org-indent" "\
When active, indent text according to outline structure.

This is a minor mode.  If called interactively, toggle the
`Org-Indent mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `org-indent-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

Internally this works by adding `line-prefix' and `wrap-prefix'
properties, after each buffer modification, on the modified zone.

The process is synchronous.  Though, initial indentation of
buffer, which can take a few seconds on large buffers, is done
during idle time.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "org-keys" "org-keys.el" "57065d0756c9872fec1cc52df880856b")
;;; Generated autoloads from org-keys.el

(autoload 'org-babel-describe-bindings "org-keys" "\
Describe all keybindings behind `org-babel-key-prefix'." t nil)

;;;***

;;;### (autoloads nil "org-lint" "org-lint.el" "2459a25c9f02d05a93e52318764b2fce")
;;; Generated autoloads from org-lint.el

(autoload 'org-lint-add-checker "org-lint" "\
Add a new checker for linter.

NAME is a unique check identifier, as a non-nil symbol.  SUMMARY
is a short description of the check, as a string.

The check is done calling the function FUN with one mandatory
argument, the parse tree describing the current Org buffer.  Such
function calls are wrapped within a `save-excursion' and point is
always at `point-min'.  Its return value has to be an
alist (POSITION MESSAGE) where POSITION refer to the buffer
position of the error, as an integer, and MESSAGE is a one-line
string describing the error.

Optional argument PROPS provides additional information about the
checker.  Currently, two properties are supported:

  `:categories'

     Categories relative to the check, as a list of symbol.  They
     are used for filtering when calling `org-lint'.  Checkers
     not explicitly associated to a category are collected in the
     `default' one.

  `:trust'

    The trust level one can have in the check.  It is either
    `low' or `high', depending on the heuristics implemented and
    the nature of the check.  This has an indicative value only
    and is displayed along reports.

\(fn NAME SUMMARY FUN &rest PROPS)" nil nil)

(function-put 'org-lint-add-checker 'lisp-indent-function '1)

(autoload 'org-lint "org-lint" "\
Check current Org buffer for syntax mistakes.

By default, run all checkers.  With a `\\[universal-argument]' prefix ARG, select one
category of checkers only.  With a `\\[universal-argument] \\[universal-argument]' prefix, run one precise
checker by its name.

ARG can also be a list of checker names, as symbols, to run.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "org-list" "org-list.el" "5c281cc267d1ad0d8d9df5bc7a0a295b")
;;; Generated autoloads from org-list.el

(autoload 'org-list-checkbox-radio-mode "org-list" "\
When turned on, use list checkboxes as radio buttons.

This is a minor mode.  If called interactively, toggle the
`Org-List-Checkbox-Radio mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `org-list-checkbox-radio-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "org-macs" "org-macs.el" "1876836cc3ac639565d8ab079025cc1f")
;;; Generated autoloads from org-macs.el

(autoload 'org-load-noerror-mustsuffix "org-macs" "\
Load FILE with optional arguments NOERROR and MUSTSUFFIX.

\(fn FILE)" nil t)

;;;***

;;;### (autoloads nil "org-mobile" "org-mobile.el" "bd31559c4c6a24b69d89db63772a4372")
;;; Generated autoloads from org-mobile.el

(autoload 'org-mobile-push "org-mobile" "\
Push the current state of Org affairs to the target directory.
This will create the index file, copy all agenda files there, and also
create all custom agenda views, for upload to the mobile phone." t nil)

(autoload 'org-mobile-pull "org-mobile" "\
Pull the contents of `org-mobile-capture-file' and integrate them.
Apply all flagged actions, flag entries to be flagged and then call an
agenda view showing the flagged items." t nil)

;;;***

;;;### (autoloads nil "org-num" "org-num.el" "ff2773385e5c79b5fc0c83705399fb25")
;;; Generated autoloads from org-num.el

(autoload 'org-num-default-format "org-num" "\
Default numbering display function.
NUMBERING is a list of numbers.

\(fn NUMBERING)" nil nil)

(autoload 'org-num-mode "org-num" "\
Dynamic numbering of headlines in an Org buffer.

This is a minor mode.  If called interactively, toggle the
`Org-Num mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `org-num-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "org-plot" "org-plot.el" "57121552fbd327b437ccdd4282269018")
;;; Generated autoloads from org-plot.el

(autoload 'org-plot/gnuplot "org-plot" "\
Plot table using gnuplot.  Gnuplot options can be specified with PARAMS.
If not given options will be taken from the +PLOT
line directly before or after the table.

\(fn &optional PARAMS)" t nil)

;;;***

;;;### (autoloads nil "org-refile" "org-refile.el" "f6969acab8fdd76bd6987009621cd948")
;;; Generated autoloads from org-refile.el

(autoload 'org-refile-copy "org-refile" "\
Like `org-refile', but preserve the refiled subtree." t nil)

(autoload 'org-refile-reverse "org-refile" "\
Refile while temporarily toggling `org-reverse-note-order'.
So if `org-refile' would append the entry as the last entry under
the target heading, `org-refile-reverse' will prepend it as the
first entry, and vice-versa.

\(fn &optional ARG DEFAULT-BUFFER RFLOC MSG)" t nil)

(autoload 'org-refile "org-refile" "\
Move the entry or entries at point to another heading.

The list of target headings is compiled using the information in
`org-refile-targets', which see.

At the target location, the entry is filed as a subitem of the
target heading.  Depending on `org-reverse-note-order', the new
subitem will either be the first or the last subitem.

If there is an active region, all entries in that region will be
refiled.  However, the region must fulfill the requirement that
the first heading sets the top-level of the moved text.

With a `\\[universal-argument]' ARG, the command will only visit the target location
and not actually move anything.

With a prefix `\\[universal-argument] \\[universal-argument]', go to the location where the last
refiling operation has put the subtree.

With a numeric prefix argument of `2', refile to the running clock.

With a numeric prefix argument of `3', emulate `org-refile-keep'
being set to t and copy to the target location, don't move it.
Beware that keeping refiled entries may result in duplicated ID
properties.

RFLOC can be a refile location obtained in a different way.  It
should be a list with the following 4 elements:

1. Name - an identifier for the refile location, typically the
headline text
2. File - the file the refile location is in
3. nil - used for generating refile location candidates, not
needed when passing RFLOC
4. Position - the position in the specified file of the
headline to refile under

MSG is a string to replace \"Refile\" in the default prompt with
another verb.  E.g. `org-refile-copy' sets this parameter to \"Copy\".

See also `org-refile-use-outline-path'.

If you are using target caching (see `org-refile-use-cache'), you
have to clear the target cache in order to find new targets.
This can be done with a `0' prefix (`C-0 C-c C-w') or a triple
prefix argument (`C-u C-u C-u C-c C-w').

\(fn &optional ARG DEFAULT-BUFFER RFLOC MSG)" t nil)

;;;***

;;;### (autoloads nil "org-table" "org-table.el" "26715ccb3dba0cd815e830db616bc8d2")
;;; Generated autoloads from org-table.el

(autoload 'org-table-header-line-mode "org-table" "\
Display the first row of the table at point in the header line.

This is a minor mode.  If called interactively, toggle the
`Org-Table-Header-Line mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `org-table-header-line-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(autoload 'org-table-create-with-table\.el "org-table" "\
Use the table.el package to insert a new table.
If there is already a table at point, convert between Org tables
and table.el tables." t nil)

(autoload 'org-table-create-or-convert-from-region "org-table" "\
Convert region to table, or create an empty table.
If there is an active region, convert it to a table, using the function
`org-table-convert-region'.  See the documentation of that function
to learn how the prefix argument is interpreted to determine the field
separator.
If there is no such region, create an empty table with `org-table-create'.

\(fn ARG)" t nil)

(autoload 'org-table-create "org-table" "\
Query for a size and insert a table skeleton.
SIZE is a string Columns x Rows like for example \"3x2\".

\(fn &optional SIZE)" t nil)

(autoload 'org-table-convert-region "org-table" "\
Convert region to a table.

The region goes from BEG0 to END0, but these borders will be moved
slightly, to make sure a beginning of line in the first line is
included.

Throw an error when the region has more than
`org-table-convert-region-max-lines' lines.

SEPARATOR specifies the field separator in the lines.  It can have the
following values:

\(4)     Use the comma as a field separator
\(16)    Use a TAB as field separator
\(64)    Prompt for a regular expression as field separator
integer  When a number, use that many spaces, or a TAB, as field separator
regexp   When a regular expression, use it to match the separator
nil      When nil, the command tries to be smart and figure out the
         separator in the following way:
         - when each line contains a TAB, assume TAB-separated material
         - when each line contains a comma, assume CSV material
         - else, assume one or more SPACE characters as separator.

\(fn BEG0 END0 &optional SEPARATOR)" t nil)

(autoload 'org-table-import "org-table" "\
Import FILE as a table.

The command tries to be smart and figure out the separator in the
following way:

- when each line contains a TAB, assume TAB-separated material;
- when each line contains a comma, assume CSV material;
- else, assume one or more SPACE characters as separator.

When non-nil, SEPARATOR specifies the field separator in the
lines.  It can have the following values:

- (4)     Use the comma as a field separator.
- (16)    Use a TAB as field separator.
- (64)    Prompt for a regular expression as field separator.
- integer When a number, use that many spaces, or a TAB, as field separator.
- regexp  When a regular expression, use it to match the separator.

\(fn FILE SEPARATOR)" t nil)

(autoload 'org-table-begin "org-table" "\
Find the beginning of the table and return its position.
With a non-nil optional argument TABLE-TYPE, return the beginning
of a table.el-type table.  This function assumes point is on
a table.

\(fn &optional TABLE-TYPE)" nil nil)

(autoload 'org-table-end "org-table" "\
Find the end of the table and return its position.
With a non-nil optional argument TABLE-TYPE, return the end of
a table.el-type table.  This function assumes point is on
a table.

\(fn &optional TABLE-TYPE)" nil nil)

(autoload 'org-table-next-field "org-table" "\
Go to the next field in the current table, creating new lines as needed.
Before doing so, re-align the table if necessary." t nil)

(autoload 'org-table-previous-field "org-table" "\
Go to the previous field in the table.
Before doing so, re-align the table if necessary." t nil)

(autoload 'org-table-next-row "org-table" "\
Go to the next row (same column) in the current table.
Before doing so, re-align the table if necessary." t nil)

(autoload 'org-table-blank-field "org-table" "\
Blank the current table field or active region." t nil)

(autoload 'org-table-field-info "org-table" "\
Show info about the current field, and highlight any reference at point.

\(fn ARG)" t nil)

(autoload 'org-table-goto-column "org-table" "\
Move the cursor to the Nth column in the current table line.
With optional argument ON-DELIM, stop with point before the left delimiter
of the field.
If there are less than N fields, just go to after the last delimiter.
However, when FORCE is non-nil, create new columns if necessary.

\(fn N &optional ON-DELIM FORCE)" t nil)

(autoload 'org-table-insert-column "org-table" "\
Insert a new column into the table." t nil)

(autoload 'org-table-move-cell-up "org-table" "\
Move a single cell up in a table.
Swap with anything in target cell." t nil)

(autoload 'org-table-move-cell-down "org-table" "\
Move a single cell down in a table.
Swap with anything in target cell." t nil)

(autoload 'org-table-move-cell-left "org-table" "\
Move a single cell left in a table.
Swap with anything in target cell." t nil)

(autoload 'org-table-move-cell-right "org-table" "\
Move a single cell right in a table.
Swap with anything in target cell." t nil)

(autoload 'org-table-delete-column "org-table" "\
Delete a column from the table." t nil)

(autoload 'org-table-move-column-right "org-table" "\
Move column to the right." t nil)

(autoload 'org-table-move-column-left "org-table" "\
Move column to the left." t nil)

(autoload 'org-table-move-column "org-table" "\
Move the current column to the right.  With arg LEFT, move to the left.

\(fn &optional LEFT)" t nil)

(autoload 'org-table-move-row-down "org-table" "\
Move table row down." t nil)

(autoload 'org-table-move-row-up "org-table" "\
Move table row up." t nil)

(autoload 'org-table-move-row "org-table" "\
Move the current table line down.  With arg UP, move it up.

\(fn &optional UP)" t nil)

(autoload 'org-table-insert-row "org-table" "\
Insert a new row above the current line into the table.
With prefix ARG, insert below the current line.

\(fn &optional ARG)" t nil)

(autoload 'org-table-insert-hline "org-table" "\
Insert a horizontal-line below the current line into the table.
With prefix ABOVE, insert above the current line.

\(fn &optional ABOVE)" t nil)

(autoload 'org-table-hline-and-move "org-table" "\
Insert a hline and move to the row below that line.

\(fn &optional SAME-COLUMN)" t nil)

(autoload 'org-table-kill-row "org-table" "\
Delete the current row or horizontal line from the table." t nil)

(autoload 'org-table-cut-region "org-table" "\
Copy region in table to the clipboard and blank all relevant fields.
If there is no active region, use just the field at point.

\(fn BEG END)" t nil)

(autoload 'org-table-copy-down "org-table" "\
Copy the value of the current field one row below.

If the field at the cursor is empty, copy the content of the
nearest non-empty field above.  With argument N, use the Nth
non-empty field.

If the current field is not empty, it is copied down to the next
row, and the cursor is moved with it.  Therefore, repeating this
command causes the column to be filled row-by-row.

If the variable `org-table-copy-increment' is non-nil and the
field is a number, a timestamp, or is either prefixed or suffixed
with a number, it will be incremented while copying.  By default,
increment by the difference between the value in the current
field and the one in the field above, if any.  To increment using
a fixed integer, set `org-table-copy-increment' to a number.  In
the case of a timestamp, increment by days.

However, when N is 0, do not increment the field at all.

\(fn N)" t nil)

(autoload 'org-table-copy-region "org-table" "\
Copy rectangular region in table to clipboard.
A special clipboard is used which can only be accessed with
`org-table-paste-rectangle'.  Return the region copied, as a list
of lists of fields.

\(fn BEG END &optional CUT)" t nil)

(autoload 'org-table-paste-rectangle "org-table" "\
Paste a rectangular region into a table.
The upper right corner ends up in the current field.  All involved fields
will be overwritten.  If the rectangle does not fit into the present table,
the table is enlarged as needed.  The process ignores horizontal separator
lines." t nil)

(autoload 'org-table-edit-field "org-table" "\
Edit table field in a different window.
This is mainly useful for fields that contain hidden parts.

When called with a `\\[universal-argument]' prefix, just make the full field
visible so that it can be edited in place.

When called with a `\\[universal-argument] \\[universal-argument]' prefix, toggle `org-table-follow-field-mode'.

\(fn ARG)" t nil)

(autoload 'org-table-get-stored-formulas "org-table" "\
Return an alist with the stored formulas directly after current table.
By default, only return active formulas, i.e., formulas located
on the first line after the table.  However, if optional argument
LOCATION is a buffer position, consider the formulas there.

\(fn &optional NOERROR LOCATION)" nil nil)

(autoload 'org-table-maybe-eval-formula "org-table" "\
Check if the current field starts with \"=\" or \":=\".
If yes, store the formula and apply it." nil nil)

(autoload 'org-table-rotate-recalc-marks "org-table" "\
Rotate the recalculation mark in the first column.
If in any row, the first field is not consistent with a mark,
insert a new column for the markers.
When there is an active region, change all the lines in the region,
after prompting for the marking character.
After each change, a message will be displayed indicating the meaning
of the new mark.

\(fn &optional NEWCHAR)" t nil)

(autoload 'org-table-maybe-recalculate-line "org-table" "\
Recompute the current line if marked for it, and if we haven't just done it." t nil)

(autoload 'org-table-eval-formula "org-table" "\
Replace the table field value at the cursor by the result of a calculation.

In a table, this command replaces the value in the current field with the
result of a formula.  It also installs the formula as the \"current\" column
formula, by storing it in a special line below the table.  When called
with a `\\[universal-argument]' prefix the formula is installed as a field formula.

When called with a `\\[universal-argument] \\[universal-argument]' prefix, insert the active equation for the field
back into the current field, so that it can be edited there.  This is useful
in order to use \\<org-table-fedit-map>`\\[org-table-show-reference]' to check the referenced fields.

When called, the command first prompts for a formula, which is read in
the minibuffer.  Previously entered formulas are available through the
history list, and the last used formula is offered as a default.
These stored formulas are adapted correctly when moving, inserting, or
deleting columns with the corresponding commands.

The formula can be any algebraic expression understood by the Calc package.
For details, see the Org mode manual.

This function can also be called from Lisp programs and offers
additional arguments: EQUATION can be the formula to apply.  If this
argument is given, the user will not be prompted.

SUPPRESS-ALIGN is used to speed-up recursive calls by by-passing
unnecessary aligns.

SUPPRESS-CONST suppresses the interpretation of constants in the
formula, assuming that this has been done already outside the
function.

SUPPRESS-STORE means the formula should not be stored, either
because it is already stored, or because it is a modified
equation that should not overwrite the stored one.

SUPPRESS-ANALYSIS prevents analyzing the table and checking
location of point.

\(fn &optional ARG EQUATION SUPPRESS-ALIGN SUPPRESS-CONST SUPPRESS-STORE SUPPRESS-ANALYSIS)" t nil)

(autoload 'org-table-recalculate "org-table" "\
Recalculate the current table line by applying all stored formulas.

With prefix arg ALL, do this for all lines in the table.

When called with a `\\[universal-argument] \\[universal-argument]' prefix, or if ALL is the symbol `iterate',
recompute the table until it no longer changes.

If NOALIGN is not nil, do not re-align the table after the computations
are done.  This is typically used internally to save time, if it is
known that the table will be realigned a little later anyway.

\(fn &optional ALL NOALIGN)" t nil)

(autoload 'org-table-iterate "org-table" "\
Recalculate the table until it does not change anymore.
The maximum number of iterations is 10, but you can choose a different value
with the prefix ARG.

\(fn &optional ARG)" t nil)

(autoload 'org-table-recalculate-buffer-tables "org-table" "\
Recalculate all tables in the current buffer." t nil)

(autoload 'org-table-iterate-buffer-tables "org-table" "\
Iterate all tables in the buffer, to converge inter-table dependencies." t nil)

(autoload 'org-table-edit-formulas "org-table" "\
Edit the formulas of the current table in a separate buffer." t nil)

(autoload 'org-table-toggle-coordinate-overlays "org-table" "\
Toggle the display of Row/Column numbers in tables." t nil)

(autoload 'org-table-toggle-formula-debugger "org-table" "\
Toggle the formula debugger in tables." t nil)

(autoload 'org-table-toggle-column-width "org-table" "\
Shrink or expand current column in an Org table.

If a width cookie specifies a width W for the column, the first
W visible characters are displayed.  Otherwise, the column is
shrunk to a single character.

When point is before the first column or after the last one, ask
for the columns to shrink or expand, as a list of ranges.
A column range can be one of the following patterns:

  N    column N only
  N-M  every column between N and M (both inclusive)
  N-   every column between N (inclusive) and the last column
  -M   every column between the first one and M (inclusive)
  -    every column

When optional argument ARG is a string, use it as white space
separated list of column ranges.

When called with `\\[universal-argument]' prefix, call `org-table-shrink', i.e.,
shrink columns with a width cookie and expand the others.

When called with `\\[universal-argument] \\[universal-argument]' prefix, expand all columns.

\(fn &optional ARG)" t nil)

(autoload 'org-table-shrink "org-table" "\
Shrink all columns with a width cookie in the table at point.

Columns without a width cookie are expanded.

Optional arguments BEGIN and END, when non-nil, specify the
beginning and end position of the current table.

\(fn &optional BEGIN END)" t nil)

(autoload 'org-table-expand "org-table" "\
Expand all columns in the table at point.
Optional arguments BEGIN and END, when non-nil, specify the
beginning and end position of the current table.

\(fn &optional BEGIN END)" t nil)

(autoload 'org-table-map-tables "org-table" "\
Apply function F to the start of all tables in the buffer.

\(fn F &optional QUIETLY)" nil nil)

(autoload 'org-table-export "org-table" "\
Export table to a file, with configurable format.
Such a file can be imported into usual spreadsheet programs.

FILE can be the output file name.  If not given, it will be taken
from a TABLE_EXPORT_FILE property in the current entry or higher
up in the hierarchy, or the user will be prompted for a file
name.  FORMAT can be an export format, of the same kind as it
used when `-mode' sends a table in a different format.

The command suggests a format depending on TABLE_EXPORT_FORMAT,
whether it is set locally or up in the hierarchy, then on the
extension of the given file name, and finally on the variable
`org-table-export-default-format'.

\(fn &optional FILE FORMAT)" t nil)

(autoload 'org-table--align-field "org-table" "\
Format FIELD according to column WIDTH and alignment ALIGN.
FIELD is a string.  WIDTH is a number.  ALIGN is either \"c\",
\"l\" or\"r\".

\(fn FIELD WIDTH ALIGN)" nil nil)

(autoload 'org-table-justify-field-maybe "org-table" "\
Justify the current field, text to left, number to right.
Optional argument NEW may specify text to replace the current field content.

\(fn &optional NEW)" nil nil)

(autoload 'org-table-sort-lines "org-table" "\
Sort table lines according to the column at point.

The position of point indicates the column to be used for
sorting, and the range of lines is the range between the nearest
horizontal separator lines, or the entire table of no such lines
exist.  If point is before the first column, you will be prompted
for the sorting column.  If there is an active region, the mark
specifies the first line and the sorting column, while point
should be in the last line to be included into the sorting.

The command then prompts for the sorting type which can be
alphabetically, numerically, or by time (as given in a time stamp
in the field, or as a HH:MM value).  Sorting in reverse order is
also possible.

With prefix argument WITH-CASE, alphabetic sorting will be case-sensitive
if the locale allows for it.

If SORTING-TYPE is specified when this function is called from a Lisp
program, no prompting will take place.  SORTING-TYPE must be a character,
any of (?a ?A ?n ?N ?t ?T ?f ?F) where the capital letters indicate that
sorting should be done in reverse order.

If the SORTING-TYPE is ?f or ?F, then GETKEY-FUNC specifies
a function to be called to extract the key.  It must return a value
that is compatible with COMPARE-FUNC, the function used to compare
entries.

A non-nil value for INTERACTIVE? is used to signal that this
function is being called interactively.

\(fn &optional WITH-CASE SORTING-TYPE GETKEY-FUNC COMPARE-FUNC INTERACTIVE\\=\\?)" t nil)

(autoload 'org-table-wrap-region "org-table" "\
Wrap several fields in a column like a paragraph.
This is useful if you'd like to spread the contents of a field over several
lines, in order to keep the table compact.

If there is an active region, and both point and mark are in the same column,
the text in the column is wrapped to minimum width for the given number of
lines.  Generally, this makes the table more compact.  A prefix ARG may be
used to change the number of desired lines.  For example, `C-2 \\[org-table-wrap-region]'
formats the selected text to two lines.  If the region was longer than two
lines, the remaining lines remain empty.  A negative prefix argument reduces
the current number of lines by that amount.  The wrapped text is pasted back
into the table.  If you formatted it to more lines than it was before, fields
further down in the table get overwritten - so you might need to make space in
the table first.

If there is no region, the current field is split at the cursor position and
the text fragment to the right of the cursor is prepended to the field one
line down.

If there is no region, but you specify a prefix ARG, the current field gets
blank, and the content is appended to the field above.

\(fn ARG)" t nil)

(autoload 'org-table-sum "org-table" "\
Sum numbers in region of current table column.
The result will be displayed in the echo area, and will be available
as kill to be inserted with \\[yank].

If there is an active region, it is interpreted as a rectangle and all
numbers in that rectangle will be summed.  If there is no active
region and point is located in a table column, sum all numbers in that
column.

If at least one number looks like a time HH:MM or HH:MM:SS, all other
numbers are assumed to be times as well (in decimal hours) and the
numbers are added as such.

If NLAST is a number, only the NLAST fields will actually be summed.

\(fn &optional BEG END NLAST)" t nil)

(autoload 'org-table-analyze "org-table" "\
Analyze table at point and store results.

This function sets up the following dynamically scoped variables:

 `org-table-column-name-regexp',
 `org-table-column-names',
 `org-table-current-begin-pos',
 `org-table-current-line-types',
 `org-table-current-ncol',
 `org-table-dlines',
 `org-table-hlines',
 `org-table-local-parameters',
 `org-table-named-field-locations'." nil nil)

(autoload 'turn-on-orgtbl "org-table" "\
Unconditionally turn on `orgtbl-mode'." nil nil)

(autoload 'orgtbl-mode "org-table" "\
The Org mode table editor as a minor mode for use in other modes.

This is a minor mode.  If called interactively, toggle the
`OrgTbl mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `orgtbl-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(defvar orgtbl-exp-regexp "^\\([-+]?[0-9][0-9.]*\\)[eE]\\([-+]?[0-9]+\\)$" "\
Regular expression matching exponentials as produced by calc.")

(autoload 'org-table-to-lisp "org-table" "\
Convert the table at point to a Lisp structure.

The structure will be a list.  Each item is either the symbol `hline'
for a horizontal separator line, or a list of field values as strings.
The table is taken from the parameter TXT, or from the buffer at point.

\(fn &optional TXT)" nil nil)

(autoload 'orgtbl-to-generic "org-table" "\
Convert the `orgtbl-mode' TABLE to some other format.

This generic routine can be used for many standard cases.

TABLE is a list, each entry either the symbol `hline' for
a horizontal separator line, or a list of fields for that
line.  PARAMS is a property list of parameters that can
influence the conversion.

Valid parameters are:

:backend, :raw

  Export back-end used as a basis to transcode elements of the
  table, when no specific parameter applies to it.  It is also
  used to translate cells contents.  You can prevent this by
  setting :raw property to a non-nil value.

:splice

  When non-nil, only convert rows, not the table itself.  This is
  equivalent to setting to the empty string both :tstart
  and :tend, which see.

:skip

  When set to an integer N, skip the first N lines of the table.
  Horizontal separation lines do count for this parameter!

:skipcols

  List of columns that should be skipped.  If the table has
  a column with calculation marks, that column is automatically
  discarded beforehand.

:hline

  String to be inserted on horizontal separation lines.  May be
  nil to ignore these lines altogether.

:sep

  Separator between two fields, as a string.

Each in the following group may be either a string or a function
of no arguments returning a string:

:tstart, :tend

  Strings to start and end the table.  Ignored when :splice is t.

:lstart, :lend

  Strings to start and end a new table line.

:llstart, :llend

  Strings to start and end the last table line.  Default,
  respectively, to :lstart and :lend.

Each in the following group may be a string or a function of one
argument (either the cells in the current row, as a list of
strings, or the current cell) returning a string:

:lfmt

  Format string for an entire row, with enough %s to capture all
  fields.  When non-nil, :lstart, :lend, and :sep are ignored.

:llfmt

  Format for the entire last line, defaults to :lfmt.

:fmt

  A format to be used to wrap the field, should contain %s for
  the original field value.  For example, to wrap everything in
  dollars, you could use :fmt \"$%s$\".  This may also be
  a property list with column numbers and format strings, or
  functions, e.g.,

    (:fmt (2 \"$%s$\" 4 (lambda (c) (format \"$%s$\" c))))

  The format is ignored for empty fields.  Use :raw t with non-nil
  :backend option to force formatting empty fields.

:hlstart :hllstart :hlend :hllend :hsep :hlfmt :hllfmt :hfmt

 Same as above, specific for the header lines in the table.
 All lines before the first hline are treated as header.  If
 any of these is not present, the data line value is used.

This may be either a string or a function of two arguments:

:efmt

  Use this format to print numbers with exponential.  The format
  should have %s twice for inserting mantissa and exponent, for
  example \"%s\\\\times10^{%s}\".  This may also be a property
  list with column numbers and format strings or functions.
  :fmt will still be applied after :efmt.

\(fn TABLE PARAMS)" nil nil)

(autoload 'orgtbl-to-tsv "org-table" "\
Convert the `orgtbl-mode' TABLE to TAB separated material.

\(fn TABLE PARAMS)" nil nil)

(autoload 'orgtbl-to-csv "org-table" "\
Convert the `orgtbl-mode' TABLE to CSV material.
This does take care of the proper quoting of fields with comma or quotes.

\(fn TABLE PARAMS)" nil nil)

(autoload 'orgtbl-to-latex "org-table" "\
Convert the `orgtbl-mode' TABLE to LaTeX.

TABLE is a list, each entry either the symbol `hline' for
a horizontal separator line, or a list of fields for that line.
PARAMS is a property list of parameters that can influence the
conversion.  All parameters from `orgtbl-to-generic' are
supported.  It is also possible to use the following ones:

:booktabs

  When non-nil, use formal \"booktabs\" style.

:environment

  Specify environment to use, as a string.  If you use
  \"longtable\", you may also want to specify :language property,
  as a string, to get proper continuation strings.

\(fn TABLE PARAMS)" nil nil)

(autoload 'orgtbl-to-html "org-table" "\
Convert the `orgtbl-mode' TABLE to HTML.

TABLE is a list, each entry either the symbol `hline' for
a horizontal separator line, or a list of fields for that line.
PARAMS is a property list of parameters that can influence the
conversion.  All parameters from `orgtbl-to-generic' are
supported.  It is also possible to use the following one:

:attributes

  Attributes and values, as a plist, which will be used in
  <table> tag.

\(fn TABLE PARAMS)" nil nil)

(autoload 'orgtbl-to-texinfo "org-table" "\
Convert the `orgtbl-mode' TABLE to Texinfo.

TABLE is a list, each entry either the symbol `hline' for
a horizontal separator line, or a list of fields for that line.
PARAMS is a property list of parameters that can influence the
conversion.  All parameters from `orgtbl-to-generic' are
supported.  It is also possible to use the following one:

:columns

  Column widths, as a string.  When providing column fractions,
  \"@columnfractions\" command can be omitted.

\(fn TABLE PARAMS)" nil nil)

(autoload 'orgtbl-to-orgtbl "org-table" "\
Convert the `orgtbl-mode' TABLE into another orgtbl-mode table.

TABLE is a list, each entry either the symbol `hline' for
a horizontal separator line, or a list of fields for that line.
PARAMS is a property list of parameters that can influence the
conversion.  All parameters from `orgtbl-to-generic' are
supported.

Useful when slicing one table into many.  The :hline, :sep,
:lstart, and :lend provide orgtbl framing.  :tstart and :tend can
be set to provide ORGTBL directives for the generated table.

\(fn TABLE PARAMS)" nil nil)

(autoload 'orgtbl-ascii-plot "org-table" "\
Draw an ASCII bar plot in a column.

With cursor in a column containing numerical values, this function
will draw a plot in a new column.

ASK, if given, is a numeric prefix to override the default 12
characters width of the plot.  ASK may also be the `\\[universal-argument]' prefix,
which will prompt for the width.

\(fn &optional ASK)" t nil)

;;;***

;;;### (autoloads nil "org-timer" "org-timer.el" "30c669a8d0bbe5a034d17b844be7d32f")
;;; Generated autoloads from org-timer.el

(autoload 'org-timer-start "org-timer" "\
Set the starting time for the relative timer to now.
When called with prefix argument OFFSET, prompt the user for an offset time,
with the default taken from a timer stamp at point, if any.
If OFFSET is a string or an integer, it is directly taken to be the offset
without user interaction.
When called with a double prefix arg, all timer strings in the active
region will be shifted by a specific amount.  You will be prompted for
the amount, with the default to make the first timer string in
the region 0:00:00.

\(fn &optional OFFSET)" t nil)

(autoload 'org-timer-pause-or-continue "org-timer" "\
Pause or continue the relative or countdown timer.
With prefix arg STOP, stop it entirely.

\(fn &optional STOP)" t nil)

(autoload 'org-timer-stop "org-timer" "\
Stop the relative or countdown timer." t nil)

(autoload 'org-timer "org-timer" "\
Insert a H:MM:SS string from the timer into the buffer.
The first time this command is used, the timer is started.

When used with a `\\[universal-argument]' prefix, force restarting the timer.

When used with a `\\[universal-argument] \\[universal-argument]' prefix, change all the timer strings
in the region by a fixed amount.  This can be used to re-calibrate
a timer that was not started at the correct moment.

If NO-INSERT is non-nil, return the string instead of inserting
it in the buffer.

\(fn &optional RESTART NO-INSERT)" t nil)

(autoload 'org-timer-change-times-in-region "org-timer" "\
Change all h:mm:ss time in region by a DELTA.

\(fn BEG END DELTA)" t nil)

(autoload 'org-timer-item "org-timer" "\
Insert a description-type item with the current timer value.

\(fn &optional ARG)" t nil)

(autoload 'org-timer-set-timer "org-timer" "\
Prompt for a duration in minutes or hh:mm:ss and set a timer.

If `org-timer-default-timer' is not \"0\", suggest this value as
the default duration for the timer.  If a timer is already set,
prompt the user if she wants to replace it.

Called with a numeric prefix argument, use this numeric value as
the duration of the timer in minutes.

Called with a \\[universal-argument] prefix arguments, use `org-timer-default-timer'
without prompting the user for a duration.

With two \\[universal-argument] prefix arguments, use `org-timer-default-timer'
without prompting the user for a duration and automatically
replace any running timer.

By default, the timer duration will be set to the number of
minutes in the Effort property, if any.  You can ignore this by
using three \\[universal-argument] prefix arguments.

\(fn &optional OPT)" t nil)

;;;***

;;;### (autoloads nil "ox" "ox.el" "d21d643a775a803ea9027c9e8b98a6ec")
;;; Generated autoloads from ox.el

(autoload 'org-export-get-backend "ox" "\
Return export back-end named after NAME.
NAME is a symbol.  Return nil if no such back-end is found.

\(fn NAME)" nil nil)

(autoload 'org-export-derived-backend-p "ox" "\
Non-nil if BACKEND is derived from one of BACKENDS.
BACKEND is an export back-end, as returned by, e.g.,
`org-export-create-backend', or a symbol referring to
a registered back-end.  BACKENDS is constituted of symbols.

\(fn BACKEND &rest BACKENDS)" nil nil)

(autoload 'org-export-get-environment "ox" "\
Collect export options from the current buffer.

Optional argument BACKEND is an export back-end, as returned by
`org-export-create-backend'.

When optional argument SUBTREEP is non-nil, assume the export is
done against the current sub-tree.

Third optional argument EXT-PLIST is a property list with
external parameters overriding Org default settings, but still
inferior to file-local settings.

\(fn &optional BACKEND SUBTREEP EXT-PLIST)" nil nil)

(autoload 'org-export-data "ox" "\
Convert DATA into current back-end format.

DATA is a parse tree, an element or an object or a secondary
string.  INFO is a plist holding export options.

Return a string.

\(fn DATA INFO)" nil nil)

(autoload 'org-export-as "ox" "\
Transcode current Org buffer into BACKEND code.

BACKEND is either an export back-end, as returned by, e.g.,
`org-export-create-backend', or a symbol referring to
a registered back-end.

If narrowing is active in the current buffer, only transcode its
narrowed part.

If a region is active, transcode that region.

When optional argument SUBTREEP is non-nil, transcode the
sub-tree at point, extracting information from the headline
properties first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only return body
code, without surrounding template.

Optional argument EXT-PLIST, when provided, is a property list
with external parameters overriding Org default settings, but
still inferior to file-local settings.

Return code as a string.

\(fn BACKEND &optional SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" nil nil)

(autoload 'org-export-string-as "ox" "\
Transcode STRING into BACKEND code.

BACKEND is either an export back-end, as returned by, e.g.,
`org-export-create-backend', or a symbol referring to
a registered back-end.

When optional argument BODY-ONLY is non-nil, only return body
code, without preamble nor postamble.

Optional argument EXT-PLIST, when provided, is a property list
with external parameters overriding Org default settings, but
still inferior to file-local settings.

Return code as a string.

\(fn STRING BACKEND &optional BODY-ONLY EXT-PLIST)" nil nil)

(autoload 'org-export-replace-region-by "ox" "\
Replace the active region by its export to BACKEND.
BACKEND is either an export back-end, as returned by, e.g.,
`org-export-create-backend', or a symbol referring to
a registered back-end.

\(fn BACKEND)" nil nil)

(autoload 'org-export-insert-default-template "ox" "\
Insert all export keywords with default values at beginning of line.

BACKEND is a symbol referring to the name of a registered export
back-end, for which specific export options should be added to
the template, or `default' for default template.  When it is nil,
the user will be prompted for a category.

If SUBTREEP is non-nil, export configuration will be set up
locally for the subtree through node properties.

\(fn &optional BACKEND SUBTREEP)" t nil)

(autoload 'org-export-raw-string "ox" "\
Return a raw object containing string S.
A raw string is exported as-is, with no additional processing
from the export back-end.

\(fn S)" nil nil)

(autoload 'org-export-to-buffer "ox" "\
Call `org-export-as' with output to a specified buffer.

BACKEND is either an export back-end, as returned by, e.g.,
`org-export-create-backend', or a symbol referring to
a registered back-end.

BUFFER is the name of the output buffer.  If it already exists,
it will be erased first, otherwise, it will be created.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should then be accessible
through the `org-export-stack' interface.  When ASYNC is nil, the
buffer is displayed if `org-export-show-temporary-export-buffer'
is non-nil.

Optional arguments SUBTREEP, VISIBLE-ONLY, BODY-ONLY and
EXT-PLIST are similar to those used in `org-export-as', which
see.

Optional argument POST-PROCESS is a function which should accept
no argument.  It is always called within the current process,
from BUFFER, with point at its beginning.  Export back-ends can
use it to set a major mode there, e.g.,

  (defun org-latex-export-as-latex
    (&optional async subtreep visible-only body-only ext-plist)
    (interactive)
    (org-export-to-buffer \\='latex \"*Org LATEX Export*\"
      async subtreep visible-only body-only ext-plist
      #\\='LaTeX-mode))

When expressed as an anonymous function, using `lambda',
POST-PROCESS needs to be quoted.

This function returns BUFFER.

\(fn BACKEND BUFFER &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST POST-PROCESS)" nil nil)

(function-put 'org-export-to-buffer 'lisp-indent-function '2)

(autoload 'org-export-to-file "ox" "\
Call `org-export-as' with output to a specified file.

BACKEND is either an export back-end, as returned by, e.g.,
`org-export-create-backend', or a symbol referring to
a registered back-end.  FILE is the name of the output file, as
a string.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer will then be accessible
through the `org-export-stack' interface.

Optional arguments SUBTREEP, VISIBLE-ONLY, BODY-ONLY and
EXT-PLIST are similar to those used in `org-export-as', which
see.

Optional argument POST-PROCESS is called with FILE as its
argument and happens asynchronously when ASYNC is non-nil.  It
has to return a file name, or nil.  Export back-ends can use this
to send the output file through additional processing, e.g,

  (defun org-latex-export-to-latex
    (&optional async subtreep visible-only body-only ext-plist)
    (interactive)
    (let ((outfile (org-export-output-file-name \".tex\" subtreep)))
      (org-export-to-file \\='latex outfile
        async subtreep visible-only body-only ext-plist
        #\\='org-latex-compile)))

When expressed as an anonymous function, using `lambda',
POST-PROCESS needs to be quoted.

The function returns either a file name returned by POST-PROCESS,
or FILE.

\(fn BACKEND FILE &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST POST-PROCESS)" nil nil)

(function-put 'org-export-to-file 'lisp-indent-function '2)

(autoload 'org-export-dispatch "ox" "\
Export dispatcher for Org mode.

It provides an access to common export related tasks in a buffer.
Its interface comes in two flavors: standard and expert.

While both share the same set of bindings, only the former
displays the valid keys associations in a dedicated buffer.
Scrolling (resp. line-wise motion) in this buffer is done with
SPC and DEL (resp. C-n and C-p) keys.

Set variable `org-export-dispatch-use-expert-ui' to switch to one
flavor or the other.

When ARG is `\\[universal-argument]', repeat the last export action, with the same
set of options used back then, on the current buffer.

When ARG is `\\[universal-argument] \\[universal-argument]', display the asynchronous export stack.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "ox-ascii" "ox-ascii.el" "c0c04fc9a54cb972bcbed07c1ca3dc74")
;;; Generated autoloads from ox-ascii.el

(autoload 'org-ascii-convert-region-to-ascii "ox-ascii" "\
Assume region has Org syntax, and convert it to plain ASCII." t nil)

(autoload 'org-ascii-convert-region-to-utf8 "ox-ascii" "\
Assume region has Org syntax, and convert it to UTF-8." t nil)

(autoload 'org-ascii-export-as-ascii "ox-ascii" "\
Export current buffer to a text buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, strip title and
table of contents from output.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Export is done in a buffer named \"*Org ASCII Export*\", which
will be displayed when `org-export-show-temporary-export-buffer'
is non-nil.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-ascii-export-to-ascii "ox-ascii" "\
Export current buffer to a text file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, strip title and
table of contents from output.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-ascii-publish-to-ascii "ox-ascii" "\
Publish an Org file to ASCII.

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

(autoload 'org-ascii-publish-to-latin1 "ox-ascii" "\
Publish an Org file to Latin-1.

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

(autoload 'org-ascii-publish-to-utf8 "ox-ascii" "\
Publish an org file to UTF-8.

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

;;;***

;;;### (autoloads nil "ox-beamer" "ox-beamer.el" "54333e1fae66064f561fdc459b9e802e")
;;; Generated autoloads from ox-beamer.el

(autoload 'org-beamer-mode "ox-beamer" "\
Support for editing Beamer oriented Org mode files.

This is a minor mode.  If called interactively, toggle the
`Org-Beamer mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `org-beamer-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(autoload 'org-beamer-export-as-latex "ox-beamer" "\
Export current buffer as a Beamer buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{document}\" and \"\\end{document}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Export is done in a buffer named \"*Org BEAMER Export*\", which
will be displayed when `org-export-show-temporary-export-buffer'
is non-nil.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-beamer-export-to-latex "ox-beamer" "\
Export current buffer as a Beamer presentation (tex).

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{document}\" and \"\\end{document}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-beamer-export-to-pdf "ox-beamer" "\
Export current buffer as a Beamer presentation (PDF).

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{document}\" and \"\\end{document}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return PDF file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-beamer-select-environment "ox-beamer" "\
Select the environment to be used by beamer for this entry.
While this uses (for convenience) a tag selection interface, the
result of this command will be that the BEAMER_env *property* of
the entry is set.

In addition to this, the command will also set a tag as a visual
aid, but the tag does not have any semantic meaning." t nil)

(autoload 'org-beamer-publish-to-latex "ox-beamer" "\
Publish an Org file to a Beamer presentation (LaTeX).

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

(autoload 'org-beamer-publish-to-pdf "ox-beamer" "\
Publish an Org file to a Beamer presentation (PDF, via LaTeX).

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

;;;***

;;;### (autoloads nil "ox-html" "ox-html.el" "1123dc3f77963d0e218e8de9cb528142")
;;; Generated autoloads from ox-html.el

(put 'org-html-head-include-default-style 'safe-local-variable 'booleanp)

(put 'org-html-head 'safe-local-variable 'stringp)

(put 'org-html-head-extra 'safe-local-variable 'stringp)

(autoload 'org-html-htmlize-generate-css "ox-html" "\
Create the CSS for all font definitions in the current Emacs session.
Use this to create face definitions in your CSS style file that can then
be used by code snippets transformed by htmlize.
This command just produces a buffer that contains class definitions for all
faces used in the current Emacs session.  You can copy and paste the ones you
need into your CSS file.

If you then set `org-html-htmlize-output-type' to `css', calls
to the function `org-html-htmlize-region-for-paste' will
produce code that uses these same face definitions." t nil)

(autoload 'org-html-export-as-html "ox-html" "\
Export current buffer to an HTML buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"<body>\" and \"</body>\" tags.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Export is done in a buffer named \"*Org HTML Export*\", which
will be displayed when `org-export-show-temporary-export-buffer'
is non-nil.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-html-convert-region-to-html "ox-html" "\
Assume the current region has Org syntax, and convert it to HTML.
This can be used in any buffer.  For example, you can write an
itemized list in Org syntax in an HTML buffer and use this command
to convert it." t nil)

(autoload 'org-html-export-to-html "ox-html" "\
Export current buffer to a HTML file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"<body>\" and \"</body>\" tags.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-html-publish-to-html "ox-html" "\
Publish an org file to HTML.

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

;;;***

;;;### (autoloads nil "ox-icalendar" "ox-icalendar.el" "a8aa53e0e56193d591234d0471e1f15e")
;;; Generated autoloads from ox-icalendar.el

(autoload 'org-icalendar-export-to-ics "ox-icalendar" "\
Export current buffer to an iCalendar file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"BEGIN:VCALENDAR\" and \"END:VCALENDAR\".

Return ICS file name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY)" t nil)

(autoload 'org-icalendar-export-agenda-files "ox-icalendar" "\
Export all agenda files to iCalendar files.
When optional argument ASYNC is non-nil, export happens in an
external process.

\(fn &optional ASYNC)" t nil)

(autoload 'org-icalendar-combine-agenda-files "ox-icalendar" "\
Combine all agenda files into a single iCalendar file.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

The file is stored under the name chosen in
`org-icalendar-combined-agenda-file'.

\(fn &optional ASYNC)" t nil)

;;;***

;;;### (autoloads nil "ox-latex" "ox-latex.el" "7ff04b22a3b48913951a866e9283420d")
;;; Generated autoloads from ox-latex.el

(autoload 'org-latex-make-preamble "ox-latex" "\
Return a formatted LaTeX preamble.
INFO is a plist used as a communication channel.  Optional
argument TEMPLATE, when non-nil, is the header template string,
as expected by `org-splice-latex-header'.  When SNIPPET? is
non-nil, only includes packages relevant to image generation, as
specified in `org-latex-default-packages-alist' or
`org-latex-packages-alist'.

\(fn INFO &optional TEMPLATE SNIPPET\\=\\?)" nil nil)

(autoload 'org-latex-export-as-latex "ox-latex" "\
Export current buffer as a LaTeX buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{document}\" and \"\\end{document}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Export is done in a buffer named \"*Org LATEX Export*\", which
will be displayed when `org-export-show-temporary-export-buffer'
is non-nil.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-latex-convert-region-to-latex "ox-latex" "\
Assume the current region has Org syntax, and convert it to LaTeX.
This can be used in any buffer.  For example, you can write an
itemized list in Org syntax in an LaTeX buffer and use this
command to convert it." t nil)

(autoload 'org-latex-export-to-latex "ox-latex" "\
Export current buffer to a LaTeX file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{document}\" and \"\\end{document}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-latex-export-to-pdf "ox-latex" "\
Export current buffer to LaTeX then process through to PDF.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{document}\" and \"\\end{document}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return PDF file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-latex-publish-to-latex "ox-latex" "\
Publish an Org file to LaTeX.

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

(autoload 'org-latex-publish-to-pdf "ox-latex" "\
Publish an Org file to PDF (via LaTeX).

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

;;;***

;;;### (autoloads nil "ox-md" "ox-md.el" "ee262e309446094f67f5f67bf8f95fe6")
;;; Generated autoloads from ox-md.el

(autoload 'org-md-export-as-markdown "ox-md" "\
Export current buffer to a Markdown buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Export is done in a buffer named \"*Org MD Export*\", which will
be displayed when `org-export-show-temporary-export-buffer' is
non-nil.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-md-convert-region-to-md "ox-md" "\
Assume the current region has Org syntax, and convert it to Markdown.
This can be used in any buffer.  For example, you can write an
itemized list in Org syntax in a Markdown buffer and use
this command to convert it." t nil)

(autoload 'org-md-export-to-markdown "ox-md" "\
Export current buffer to a Markdown file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-md-publish-to-md "ox-md" "\
Publish an org file to Markdown.

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

;;;***

;;;### (autoloads nil "ox-odt" "ox-odt.el" "0b283cef628f88ac32bdd687fcb343bb")
;;; Generated autoloads from ox-odt.el

(put 'org-odt-preferred-output-format 'safe-local-variable 'stringp)

(autoload 'org-odt-export-as-odf "ox-odt" "\
Export LATEX-FRAG as OpenDocument formula file ODF-FILE.
Use `org-create-math-formula' to convert LATEX-FRAG first to
MathML.  When invoked as an interactive command, use
`org-latex-regexps' to infer LATEX-FRAG from currently active
region.  If no LaTeX fragments are found, prompt for it.  Push
MathML source to kill ring depending on the value of
`org-export-copy-to-kill-ring'.

\(fn LATEX-FRAG &optional ODF-FILE)" t nil)

(autoload 'org-odt-export-as-odf-and-open "ox-odt" "\
Export LaTeX fragment as OpenDocument formula and immediately open it.
Use `org-odt-export-as-odf' to read LaTeX fragment and OpenDocument
formula file." t nil)

(autoload 'org-odt-export-to-odt "ox-odt" "\
Export current buffer to a ODT file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY EXT-PLIST)" t nil)

(autoload 'org-odt-convert "ox-odt" "\
Convert IN-FILE to format OUT-FMT using a command line converter.
IN-FILE is the file to be converted.  If unspecified, it defaults
to variable `buffer-file-name'.  OUT-FMT is the desired output
format.  Use `org-odt-convert-process' as the converter.  If OPEN
is non-nil then the newly converted file is opened using
`org-open-file'.

\(fn &optional IN-FILE OUT-FMT OPEN)" t nil)

;;;***

;;;### (autoloads nil "ox-org" "ox-org.el" "8b4a37cb7e5137a7f0f8382131b8738f")
;;; Generated autoloads from ox-org.el

(autoload 'org-org-export-as-org "ox-org" "\
Export current buffer to an Org buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, strip document
keywords from output.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Export is done in a buffer named \"*Org ORG Export*\", which will
be displayed when `org-export-show-temporary-export-buffer' is
non-nil.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-org-export-to-org "ox-org" "\
Export current buffer to an Org file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, strip document
keywords from output.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return output file name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-org-publish-to-org "ox-org" "\
Publish an Org file to Org.

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

;;;***

;;;### (autoloads nil "ox-publish" "ox-publish.el" "9694010c2d9013835a5b52b89979422b")
;;; Generated autoloads from ox-publish.el

(defalias 'org-publish-project 'org-publish)

(autoload 'org-publish "ox-publish" "\
Publish PROJECT.

PROJECT is either a project name, as a string, or a project
alist (see `org-publish-project-alist' variable).

When optional argument FORCE is non-nil, force publishing all
files in PROJECT.  With a non-nil optional argument ASYNC,
publishing will be done asynchronously, in another process.

\(fn PROJECT &optional FORCE ASYNC)" t nil)

(autoload 'org-publish-all "ox-publish" "\
Publish all projects.
With prefix argument FORCE, remove all files in the timestamp
directory and force publishing all projects.  With a non-nil
optional argument ASYNC, publishing will be done asynchronously,
in another process.

\(fn &optional FORCE ASYNC)" t nil)

(autoload 'org-publish-current-file "ox-publish" "\
Publish the current file.
With prefix argument FORCE, force publish the file.  When
optional argument ASYNC is non-nil, publishing will be done
asynchronously, in another process.

\(fn &optional FORCE ASYNC)" t nil)

(autoload 'org-publish-current-project "ox-publish" "\
Publish the project associated with the current file.
With a prefix argument, force publishing of all files in
the project.

\(fn &optional FORCE ASYNC)" t nil)

;;;***

;;;### (autoloads nil "ox-texinfo" "ox-texinfo.el" "cb7c4bbc22c820c58ec524ba57a5a11c")
;;; Generated autoloads from ox-texinfo.el

(autoload 'org-texinfo-export-to-texinfo "ox-texinfo" "\
Export current buffer to a Texinfo file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{document}\" and \"\\end{document}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-texinfo-export-to-info "ox-texinfo" "\
Export current buffer to Texinfo then process through to INFO.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{document}\" and \"\\end{document}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

When optional argument PUB-DIR is set, use it as the publishing
directory.

Return INFO file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-texinfo-publish-to-texinfo "ox-texinfo" "\
Publish an org file to Texinfo.

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

(autoload 'org-texinfo-convert-region-to-texinfo "ox-texinfo" "\
Assume the current region has Org syntax, and convert it to Texinfo.
This can be used in any buffer.  For example, you can write an
itemized list in Org syntax in an Texinfo buffer and use this
command to convert it." t nil)

;;;***

(provide 'org-loaddefs)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-loaddefs.el ends here
