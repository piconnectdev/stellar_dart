import 'package:stellar_dart/src/provider/core/core/core.dart';
import 'package:stellar_dart/src/provider/core/core/methods.dart';

/// This endpoint returns the effects of a specific ledger.
/// https://developers.stellar.org/docs/data/horizon/api-reference/retrieve-a-ledgers-effects
class HorizonRequestLedgerEffects
    extends HorizonRequest<Map<String, dynamic>, Map<String, dynamic>> {
  /// The sequence number of a specific ledger.
  final int sequence;
  const HorizonRequestLedgerEffects(this.sequence, {super.paginationParams});

  @override
  String get method => StellarHorizonMethods.ledgerEffects.url;

  @override
  List<String> get pathParameters => [sequence.toString()];
}
