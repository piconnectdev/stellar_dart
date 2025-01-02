import 'package:stellar_dart/src/provider/core/core/core.dart';
import 'package:stellar_dart/src/provider/core/core/methods.dart';

/// The single ledger endpoint provides information on a specific ledger.
/// https://developers.stellar.org/docs/data/horizon/api-reference/retrieve-a-ledger
class HorizonRequestLedger
    extends HorizonRequest<Map<String, dynamic>, Map<String, dynamic>> {
  /// The sequence number of a specific ledger.
  final int sequence;
  const HorizonRequestLedger(this.sequence, {super.paginationParams});

  @override
  String get method => StellarHorizonMethods.ledger.url;

  @override
  List<String> get pathParameters => [sequence.toString()];
}
