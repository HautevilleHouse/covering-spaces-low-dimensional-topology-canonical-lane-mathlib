import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoveringSpacesLowDimensionalTopologyCanonicalLaneLean

structure CoveringDualityAndInvariance where
  universalCoverExists : Prop
  homotopyLiftingProperty : Prop
  liftUniqueness : Prop
  deckGroupIsFundamentalGroupQuotient : Prop
  invarianceUnderHomotopyEquivalence : Prop

def coveringDualityAndInvarianceClosed (D : CoveringDualityAndInvariance) : Prop :=
  D.universalCoverExists ∧ D.homotopyLiftingProperty ∧ D.liftUniqueness ∧ D.deckGroupIsFundamentalGroupQuotient ∧ D.invarianceUnderHomotopyEquivalence

end CoveringSpacesLowDimensionalTopologyCanonicalLaneLean
end HautevilleHouse