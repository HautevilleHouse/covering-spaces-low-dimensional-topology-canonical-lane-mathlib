import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Instances.Real

namespace HautevilleHouse
namespace CoveringSpacesLowDimensionalTopologyCanonicalLaneLean

structure CircleCoveringPackage where
  universalCover : UniversalCoverPackage Circle
  fundamentalGroupIsZ : FundamentalGroup Circle ≃* ℤ
  coveringMapsClassified : ClassificationClosed (Circle : Type) Circle.instTopologicalSpaceCircle

def CircleCoveringClosed (C : CircleCoveringPackage) : Prop :=
  C.universalCover ∧ C.fundamentalGroupIsZ ∧ C.coveringMapsClassified

end CoveringSpacesLowDimensionalTopologyCanonicalLaneLean
end HautevilleHouse