import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoveringSpacesLowDimensionalTopologyCanonicalLaneLean

structure CoveringSpaceModel where
  baseSpace : Type u
  baseTopology : TopologicalSpace baseSpace
  totalSpace : Type v
  totalTopology : TopologicalSpace totalSpace
  coveringMap : totalSpace → baseSpace
  fiberType : Type w
  fiberDiscrete : Prop
  localHomeomorphism : Prop
  pathLiftingProperty : Prop
  deckGroup : Type x
  deckGroupAction : deckGroup → totalSpace → totalSpace
  deckGroupProperlyDiscontinuous : Prop

def coveringSpaceModelClosed (C : CoveringSpaceModel) : Prop :=
  C.localHomeomorphism ∧ C.pathLiftingProperty ∧ C.deckGroupProperlyDiscontinuous

end CoveringSpacesLowDimensionalTopologyCanonicalLaneLean
end HautevilleHouse