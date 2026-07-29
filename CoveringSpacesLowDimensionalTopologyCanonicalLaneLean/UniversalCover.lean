import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoveringSpacesLowDimensionalTopologyCanonicalLaneLean

structure UniversalCoverPackage {M : Type u} [TopologicalSpace M] [PathConnectedSpace M] [SemilocallySimplyConnectedSpace M] where
  universalCoverSpace : Type v
  projectionMap : universalCoverSpace → M
  projectionContinuous : Continuous projectionMap
  coveringSpace : CoveringSpace projectionMap
  simplyConnectedTotalSpace : SimplyConnectedSpace universalCoverSpace

def UniversalCoverClosed {M : Type u} [TopologicalSpace M] [PathConnectedSpace M] [SemilocallySimplyConnectedSpace M] (U : UniversalCoverPackage M) : Prop :=
  U.projectionContinuous ∧ U.coveringSpace ∧ U.simplyConnectedTotalSpace

end CoveringSpacesLowDimensionalTopologyCanonicalLaneLean
end HautevilleHouse