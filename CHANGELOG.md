# CHANGELOG for nano

This file is used to list changes made in each version of nano.

## [3.0.14](https://github.com/sous-chefs/nano/compare/3.0.13...v3.0.14) (2025-10-16)


### Bug Fixes

* **ci:** Update workflows to use release pipeline ([#81](https://github.com/sous-chefs/nano/issues/81)) ([19ecf66](https://github.com/sous-chefs/nano/commit/19ecf662e952a28237dfa44ab333807d5024c07f))

## 3.0.2 - *2023-03-13*

* Update workflows
* Add Renovate config
* Update tested platforms

## 3.0.1 - *2022-02-08*

* Remove delivery folder

## 3.0.0 - *2021-12-28*

* Add unified_mode

## 2.0.5 - *2021-08-31*

* Standardise files with files in sous-chefs/repo-management

## 2.0.3 (2020-05-05)

* resolved cookstyle error: metadata.rb:7:19 convention: `Style/StringLiterals`
* resolved cookstyle error: metadata.rb:8:19 convention: `Style/StringLiterals`

## 2.0.2 (2020-05-05)

* Removed Debian 8 from testing
* Remove unnecessary long_description metadata from metadata.rb
* Remove opensuse from the list of platforms in metadata.rb as all opensuse platforms are long EOL
* Migrated to actions

## 2.0.1 (2019-03-29)

* Added changelog to cookbook

## 2.0.0 (2019-03-29)

* Removed existing recipe
* Create new config resources to be able to configure nanorc files
* Created new install resource
