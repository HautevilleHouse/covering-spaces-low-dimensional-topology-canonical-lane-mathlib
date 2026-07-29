import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoveringSpacesLowDimensionalTopologyCanonicalLaneLean

structure CoveringGroupClassification where
  baseSpace : Type u
  baseTopology : TopologicalSpace baseSpace
  fundamentalGroup : Type v
  subgroup : fundamentalGroup → Prop
  coveringGroup : Type w
  classificationBijection : Prop

def coveringGroupClassificationClosed (C : CoveringGroupClassification) : Prop :=
  C.classificationBijection

end CoveringSpacesLowDimensionalTopologyCanonicalLaneLean
end HautevilleHouse