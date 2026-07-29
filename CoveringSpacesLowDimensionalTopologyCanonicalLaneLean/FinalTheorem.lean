import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoveringSpacesLowDimensionalTopologyCanonicalLaneLean

def ConstrainedCoveringSpacesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_covering_spaces_endgame (A : AdmissibleClass) :
    ConstrainedCoveringSpacesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CoveringSpacesLowDimensionalTopologyCanonicalLaneLean
end HautevilleHouse