import 'package:stellar_dart/src/provider/core/core/core.dart';
import 'package:stellar_dart/src/provider/core/core/methods.dart';

/// This endpoint represents effects referencing a given liquidity pool and can be used in streaming mode.
/// Streaming mode allows you to listen for new effects referencing this liquidity pool
/// as they are added to the Stellar ledger. If called in streaming mode, Horizon will start at the earliest
/// known effect unless a cursor is set, in which case it will start from that cursor.
/// By setting the cursor value to now, you can stream effects created since your request time.
/// https://developers.stellar.org/docs/data/horizon/api-reference/retrieve-related-effects
class HorizonRequestLiquidityPoolEffects
    extends HorizonRequest<Map<String, dynamic>, Map<String, dynamic>> {
  /// A unique identifier for this liquidity pool.
  final String liquidityPoolId;
  const HorizonRequestLiquidityPoolEffects(this.liquidityPoolId,
      {super.paginationParams});

  @override
  String get method => StellarHorizonMethods.liquidityPoolEffects.url;

  @override
  List<String> get pathParameters => [liquidityPoolId];
}
