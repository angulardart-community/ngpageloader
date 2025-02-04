// Copyright 2017 Google Inc. All rights reserved.
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:ngpageloader/pageloader.dart';

part 'class_checks.g.dart';

@CheckTag('some-tag')
@PageObject()
abstract class ClassChecks {
  ClassChecks();
  factory ClassChecks.create(PageLoaderElement context) = $ClassChecks.create;

  @root
  PageLoaderElement get myRoot;
}

@EnsureTag('some-other-tag') // ignore: deprecated_member_use_from_same_package
@PageObject()
abstract class EnsureTagChecks {
  EnsureTagChecks();
  factory EnsureTagChecks.create(PageLoaderElement context) =
      $EnsureTagChecks.create;

  @root
  PageLoaderElement get myRoot;
}

// Mixin implementation
@CheckTag('some-tag')
@PageObject()
abstract class ClassChecksUsingClassMixin extends Object with ChecksClassMixin {
  ClassChecksUsingClassMixin();
  factory ClassChecksUsingClassMixin.create(PageLoaderElement context) =
      $ClassChecksUsingClassMixin.create;
}

@CheckTag('some-tag')
@PageObject()
abstract class ClassChecksUsingMixin extends Object with ChecksMixin {
  ClassChecksUsingMixin();
  factory ClassChecksUsingMixin.create(PageLoaderElement context) =
      $ClassChecksUsingMixin.create;
}

@EnsureTag('some-other-tag') // ignore: deprecated_member_use_from_same_package
@PageObject()
abstract class EnsureTagChecksUsingMixin extends Object with ChecksMixin {
  EnsureTagChecksUsingMixin();
  factory EnsureTagChecksUsingMixin.create(PageLoaderElement context) =
      $EnsureTagChecksUsingMixin.create;
}

@PageObject()
abstract class ChecksClassMixin {
  @root
  PageLoaderElement get myRoot;
}

@PageObject()
mixin ChecksMixin {
  @root
  PageLoaderElement get myRoot;
}
