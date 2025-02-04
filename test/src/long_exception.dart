// @dart = 2.9

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
import 'package:test/test.dart';

part 'long_exception.g.dart';

void runTests(PageLoaderElement Function() contextGenerator) {
  test('long exception is truncated', () {
    final po = MyPageObject.create(contextGenerator());
    try {
      po.ele.exists;
      fail('Expected to throw - multiple divs');
    } catch (e) {
      expect(e.toString(), contains("Length of Element's HTML DOM"));
    }
  });
}

@PageObject()
abstract class MyPageObject {
  MyPageObject();
  factory MyPageObject.create(PageLoaderElement context) = $MyPageObject.create;

  @ByTagName('div')
  PageLoaderElement get ele;
}
