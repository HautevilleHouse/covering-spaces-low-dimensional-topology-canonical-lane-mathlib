import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoveringSpacesLowDimensionalTopologyCanonicalLaneLean

structure LowDimensionalManifold where
  carrier : Type u
  topology : TopologicalSpace carrier
  dimension : Nat
  hausdorff : Prop
  secondCountable : Prop
  paracompact : Prop
  boundary : Prop
  triangulationExists : Prop

def lowDimensionalManifoldClosed (M : LowDimensionalManifold) : Prop :=
  M.hausdorff ∧ M.secondCountable ∧ M.paracompact ∧ M.triangulationExists

end CoveringSpacesLowDimensionalTopologyCanonicalLaneLean
end HautevilleHouse