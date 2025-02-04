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

/// Generation for @Mouse annotations.
library pageloader.mouse_finder_method;

import 'package:built_value/built_value.dart';
import 'package:quiver/core.dart';

import 'core.dart';
import 'core_method_information.dart';
import 'invalid_method_exception.dart';
import 'listeners.dart';
import 'null_safety.dart';

part 'mouse_finder_method.g.dart';

/// Returns a [MouseFinderMethod] if a valid @Mouse getter is present, and
/// [absent()] otherwise.
Optional<MouseFinderMethod> collectMouseFinderGetter(
    NullSafety nullSafety, CoreMethodInformationBase methodInfo) {
  if (!methodInfo.isMouse) {
    return Optional.absent();
  }

  if (!methodInfo.isAbstract || !methodInfo.isGetter) {
    throw InvalidMethodException(
        methodInfo.node, '@Mouse annotation must be used with abstract getter');
  }
  if (methodInfo.finder.isPresent) {
    throw InvalidMethodException(
        methodInfo.node, 'cannot use Finder with Mouse annotation');
  }
  if (methodInfo.filters.isNotEmpty) {
    throw InvalidMethodException(
        methodInfo.node, 'cannot use Filter with Mouse annotation');
  }
  if (methodInfo.checkers.isNotEmpty) {
    throw InvalidMethodException(
        methodInfo.node, 'cannot use Checker with Mouse annotation');
  }

  return Optional.of(MouseFinderMethod((b) => b
    ..nullSafety = nullSafety.toBuilder()
    ..name = methodInfo.name));
}

/// Generation for @Mouse getters.
abstract class MouseFinderMethod
    implements Built<MouseFinderMethod, MouseFinderMethodBuilder> {
  NullSafety get nullSafety;
  String get name;

  String generate(String pageObjectName) =>
      'PageLoaderMouse get $name { ' +
      generateStartMethodListeners(pageObjectName, name) +
      '$mouse ??= $root.utils.mouse;' +
      'final returnMe = $mouse${nullSafety.notNull};' +
      generateEndMethodListeners(pageObjectName, name) +
      'return returnMe; }';

  factory MouseFinderMethod([Function(MouseFinderMethodBuilder) updates]) =
      _$MouseFinderMethod;
  MouseFinderMethod._();
}
