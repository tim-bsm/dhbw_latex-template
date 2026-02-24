<!-- LTeX: enabled=false -->

# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

&nbsp;

## [1.3.2] - 2026-02-24

### Added changes of newer template from [my other repository](https://github.com/tim-bsm/hse_latex-template).

### Added

- Added further information regarding acronyms and their plural
- Deactivated LTeX spelling check for the Markdown files
- Added package `textgreek` to use greek letters in text mode (e.g. \textalpha)
- Added YAML syntax highlighting for code
- Added `dockerfile` and `docker-compose` language for code in [code.tex](/config/additionals/code.tex)
- Added link to DHBW homepage in [README.md](/README.md)

### Changed

- Minor refactoring
- Rewrote [`tables.tex`](/config/additionals/tables.tex) wrapper to use `tabularx` to better format table for with and line breaks with vertical centered text in tables
- Matched code syntax highlighting to same colors
- Changed folder structure in [code.tex](/content/additionals/code.tex) to use the chapter number instead of the code language (e. g. chapter-01/hello-world.cpp instead of cpp/hello-world.cpp) for better structure.
- Removed deprecated command `\tablerow{}` for tables defined in [tables.tex](/config/additionals/tables.tex). Use `content\\\hline` instead of `\tablerow{content}` (see [tables.tex](/content/additionals/tables.tex) for examples).
- Changed template from DHBW to HSE

## [1.0.1] - 2026-01-05

### Changed

- Moved settings out of the [README](/README.md) to the [workspace settings](/.vscode/settings.json).

## [1.0.0] - 2025-09-01

### Added

- Changelog file to keep better track of current used version in future

### Changed

- Moved line width for tables in \savetable command rather than chapter-XX.tex

### Fixed

- Spelling and sequence of acronyms
- Spelling mistake in appendix

<!--
See: https://gist.github.com/juampynr/4c18214a8eb554084e21d6e288a18a2c

## [Unreleased] - yyyy-mm-dd

Here we write upgrading notes for brands. It's a team effort to make them as
straightforward as possible.

### Added
- [PROJECTNAME-XXXX](http://tickets.projectname.com/browse/PROJECTNAME-XXXX)
  MINOR Ticket title goes here.
- [PROJECTNAME-YYYY](http://tickets.projectname.com/browse/PROJECTNAME-YYYY)
  PATCH Ticket title goes here.

### Changed

### Fixed

## [1.2.4] - 2017-03-15

Here we would have the update steps for 1.2.4 for people to follow.

### Added

### Changed

- [PROJECTNAME-ZZZZ](http://tickets.projectname.com/browse/PROJECTNAME-ZZZZ)
  PATCH Drupal.org is now used for composer.

### Fixed

- [PROJECTNAME-TTTT](http://tickets.projectname.com/browse/PROJECTNAME-TTTT)
  PATCH Add logic to runsheet teaser delete to delete corresponding
  schedule cards.

## [1.2.3] - 2017-03-14

### Added

### Changed

### Fixed

- [PROJECTNAME-UUUU](http://tickets.projectname.com/browse/PROJECTNAME-UUUU)
  MINOR Fix module foo tests
- [PROJECTNAME-RRRR](http://tickets.projectname.com/browse/PROJECTNAME-RRRR)
  MAJOR Module foo's timeline uses the browser timezone for date resolution
-->
