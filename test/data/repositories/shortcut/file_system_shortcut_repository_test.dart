import 'package:flutter_lab/application/gateway/shortcut_icon_gateway.dart';
import 'package:flutter_lab/data/repositories/shortcut/file_system_shortcut_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:result_dart/result_dart.dart';

class MockShortcutIconGateway extends Mock implements ShortcutIconGateway {}

void main() {
  late MockShortcutIconGateway mockGateway;
  late FileSystemShortcutRepository repository;

  setUp(() {
    mockGateway = MockShortcutIconGateway();
    repository = FileSystemShortcutRepository(gateway: mockGateway);
  });

  group('deleteAllShortcutIcons', () {
    test('delegates to gateway deleteAllIcons', () async {
      when(
        () => mockGateway.deleteAllIcons(),
      ).thenAnswer((_) async => const Success(unit));

      final result = await repository.deleteAllShortcutIcons();

      expect(result.isSuccess(), true);
      verify(() => mockGateway.deleteAllIcons()).called(1);
    });

    test('returns Failure when gateway throws', () async {
      when(
        () => mockGateway.deleteAllIcons(),
      ).thenAnswer((_) async => Failure(Exception('delete failed')));

      final result = await repository.deleteAllShortcutIcons();

      expect(result.isError(), true);
      verify(() => mockGateway.deleteAllIcons()).called(1);
    });
  });
}
