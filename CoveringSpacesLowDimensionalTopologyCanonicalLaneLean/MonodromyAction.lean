import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoveringSpacesLowDimensionalTopologyCanonicalLaneLean

structure MonodromyActionPackage {F : CoveringSpaceClassificationPackage} where
  baseGroupoid : Type u
  fiberFunctor : baseGroupoid → Type v
  monodromyRepresentation : Prop
  monodromyIsomorphism : Prop
  monodromyClosed : Prop
  monodromyClosedTerm : monodromyClosed

structure MonodromyActionEvidence
    {F : CoveringSpaceClassificationPackage}
    (M : MonodromyActionPackage F) where
  monodromyClosedTerm : M.monodromyClosed

def MonodromyActionClosed
    {F : CoveringSpaceClassificationPackage}
    (M : MonodromyActionPackage F) : Prop :=
  M.monodromyClosed

theorem monodromy_action_closed_from_evidence
    {F : CoveringSpaceClassificationPackage}
    (M : MonodromyActionPackage F)
    (E : MonodromyActionEvidence M) :
    MonodromyActionClosed M := by
  exact E.monodromyClosedTerm

end CoveringSpacesLowDimensionalTopologyCanonicalLaneLean
end HautevilleHouse