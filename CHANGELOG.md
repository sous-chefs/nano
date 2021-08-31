# CHANGELOG for nano

This file is used to list changes made in each version of nano.

## Unreleased

- Standardise files with files in sous-chefs/repo-management

## 2.0.3 (2020-05-05)

- resolved cookstyle error: metadata.rb:7:19 convention: `Style/StringLiterals`
- resolved cookstyle error: metadata.rb:8:19 convention: `Style/StringLiterals`

## 2.0.2 (2020-05-05)

- Removed Debian 8 from testing
- Remove unnecessary long_description metadata from metadata.rb
- Remove opensuse from the list of platforms in metadata.rb as all opensuse platforms are long EOL
- Migrated to actions

## 2.0.1 (2019-03-29)

- Added changelog to cookbook

## 2.0.0 (2019-03-29)

- Removed existing recipe
- Create new config resources to be able to configure nanorc files
- Created new install resource
