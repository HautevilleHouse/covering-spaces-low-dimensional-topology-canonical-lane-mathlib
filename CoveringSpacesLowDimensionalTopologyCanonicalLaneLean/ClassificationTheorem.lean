import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoveringSpacesLowDimensionalTopologyCanonicalLaneLean

structure ClassificationTheorem where
  surfaceType : Type u
  surfaceTopology : TopologicalSpace surfaceType
  genus : Nat
  orientable : Prop
  compact : Prop
  classificationComplete : Prop

def classificationTheoremClosed (C : ClassificationTheorem) : Prop :=
  C.classificationComplete

end CoveringSpacesLowDimensionalTopologyCanonicalLaneLean
end HautevilleHouse