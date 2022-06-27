## PageLoader

![Dart CI](https://img.shields.io/github/workflow/status/angulardart-community/ngpageloader/Dart%20CI)
![Pub](https://img.shields.io/pub/v/ngpageloader)
![Pub Pre-release](https://img.shields.io/pub/v/ngpageloader?include_prereleases)

A framework for creating page objects for in-browser tests or Webdriver tests.

For a beginner's guide, refer to our [quickstart guide](quickstart_guide.md).

For in-depth explanation of PageLoader's anatomy and features, refer
to our [anatomy section](anatomy.md).

Refer to our [best practices section](best_practices.md) to master using PageLoader.

Starting with version 3.0.0, PageLoader is changed significantly from version 2.X.X.
Refer to our [what changed section](what_changed.md) for more information.

<!--
Note: ungenerated PageObject files might cause static analysis issues (which can
be particularly annoying during CI). Before running `dart analyze`, you can run
`dart run build_runner build ngpageloader` to only generate the PageObject
files. No other builders will be run.
-->

### How do I trigger the generation step?
`dart run build_runner build`

If you are starting with a fresh checkout or deleted your `.dart_tool` directory,
pass the flag: `--delete-conflicting-outputs`.

| WARNING: Your PageObject Dart files must be within `test/...` subdirectory |
| --- |
