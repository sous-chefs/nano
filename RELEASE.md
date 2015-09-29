# Releasing This Cookbook

Need to make some changes official? Time to release the next revision.

## Before you begin

I'm assuming you know the current cookbook name and version number. This example uses nano cookbook version 1.2.32.

- Finish merging PRs
- Finish any updates to changelog, api, reference docs
- Finish any updates to related sites

## How to do it

- Based on the changes since the last release, pick the next version number using [Semver](http://semver.org/).
- Update version in `metadata.rb` in new commit:

```diff
diff --git a/metadata.rb b/metadata.rb
index 6d14019..eb65f44 100644
--- a/metadata.rb
+++ b/metadata.rb
@@ -6,7 +6,7 @@ maintainer_email 'help@chefbrigade.io'
 license 'Apache 2.0'
 description 'Installs nano'
 long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
-version '1.2.32'
+version '1.2.33'

 %w(debian ubuntu arch redhat centos fedora scientific oracle amazon).each do |os|
   supports os
```

```
git commit -m "bump version to 1.2.33"
```

- Tag in git with name like `v1.2.33`:

```
git tag v1.2.33
```

- Push to GitHub:

```
git push --tags origin master
```

- Share onto Supermarket:

```
knife cookbook site share nano
```

## What might go wrong?

- You might not have merge, commit access to `master` branch at Github
- You might not have collaborator access to the cookbook at Supermarket
