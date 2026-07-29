import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoveringSpacesLowDimensionalTopologyCanonicalLaneLean

structure LiftingCriterionPackage where
  coveringMap : Type u
  targetMap : Type v
  liftExistsStatement : Prop
  uniquenessStatement : Prop

structure LiftingCriterionEvidence (L : LiftingCriterionPackage) where
  liftExistsClosed : L.liftExistsStatement
  uniquenessClosed : L.uniquenessStatement

def LiftingCriterionClosed (L : LiftingCriterionPackage) : Prop :=
  L.liftExistsStatement ∧ L.uniquenessStatement

theorem lifting_criterion_closed_from_evidence
    (L : LiftingCriterionPackage) (E : LiftingCriterionEvidence L) :
    LiftingCriterionClosed L := by
  exact And.intro E.liftExistsClosed E.uniquenessClosed

end CoveringSpacesLowDimensionalTopologyCanonicalLaneLean
end HautevilleHouse