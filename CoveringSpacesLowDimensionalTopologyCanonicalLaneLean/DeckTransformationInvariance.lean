import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoveringSpacesLowDimensionalTopologyCanonicalLaneLean

structure DeckTransformationInvariancePackage {G : CoveringSpaceClassificationPackage} where
  basePathConnected : Prop
  liftUniqueness : Prop
  deckActionProperlyDiscontinuous : Prop
  quotientMapCovers : Prop
  invarianceClosed : Prop
  invarianceClosedTerm : invarianceClosed

structure DeckTransformationInvarianceEvidence
    {G : CoveringSpaceClassificationPackage}
    (D : DeckTransformationInvariancePackage G) where
  invarianceClosedTerm : D.invarianceClosed

def DeckTransformationInvarianceClosed
    {G : CoveringSpaceClassificationPackage}
    (D : DeckTransformationInvariancePackage G) : Prop :=
  D.invarianceClosed

theorem deck_transformation_invariance_closed_from_evidence
    {G : CoveringSpaceClassificationPackage}
    (D : DeckTransformationInvariancePackage G)
    (E : DeckTransformationInvarianceEvidence D) :
    DeckTransformationInvarianceClosed D := by
  exact E.invarianceClosedTerm

end CoveringSpacesLowDimensionalTopologyCanonicalLaneLean
end HautevilleHouse