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

typedef PrintLine = void Function(String s);
void standardPrint(String s) => print(s);

class TraceListener extends PageLoaderListener {
  final PrintLine printLine;
  int _currentIndent = 0;

  TraceListener({PrintLine printLine = standardPrint}) : printLine = printLine;

  @override
  void startPageObjectMethod(String pageObjectName, String methodName) {
    final printMe = '-- $pageObjectName.$methodName';
    printLine(printMe.padLeft(printMe.length + _currentIndent));
    _currentIndent += 2;
  }

  @override
  void endPageObjectMethod(String pageObjectName, String methodName) {
    _currentIndent -= 2;
  }
}
