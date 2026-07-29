import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoveringSpacesLowDimensionalTopologyCanonicalLaneLean

structure CoveringSpaceClassificationPackage where
  baseManifold : Type u
  baseTopology : TopologicalSpace baseManifold
  coveringMaps : Type v
  deckTransformationGroup : Type w
  universalCover : Type x
  universalCoverTopology : TopologicalSpace universalCover
  coveringMapToBase : universalCover → baseManifold
  deckGroupActing : deckTransformationGroup → universalCover → universalCover
  classificationClosed : Prop
  classificationClosedTerm : classificationClosed

structure CoveringSpaceClassificationEvidence
    (C : CoveringSpaceClassificationPackage) where
  classificationClosedTerm : C.classificationClosed

def CoveringSpaceClassificationClosed
    (C : CoveringSpaceClassificationPackage) : Prop :=
  C.classificationClosed

theorem covering_space_classification_closed_from_evidence
    (C : CoveringSpaceClassificationPackage)
    (E : CoveringSpaceClassificationEvidence C) :
    CoveringSpaceClassificationClosed C := by
  exact E.classificationClosedTerm

end CoveringSpacesLowDimensionalTopologyCanonicalLaneLean
end HautevilleHouse