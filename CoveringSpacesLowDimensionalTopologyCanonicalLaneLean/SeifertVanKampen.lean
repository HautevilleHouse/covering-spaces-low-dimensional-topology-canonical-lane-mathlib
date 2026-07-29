import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoveringSpacesLowDimensionalTopologyCanonicalLaneLean

structure SeifertVanKampenPackage {X : Type u} [TopologicalSpace X] (U V : Set X) where
  openCover : IsOpen U ∧ IsOpen V ∧ U ∪ V = Set.univ
  connectedIntersection : PathConnectedSpace (U ∩ V)
  fundamentalGroupAmalgam : Pushout (fundamentalGroup (U ∩ V)) (fundamentalGroup U) (fundamentalGroup V) ≃* fundamentalGroup X

def SeifertVanKampenClosed {X : Type u} [TopologicalSpace X] {U V : Set X} (S : SeifertVanKampenPackage X U V) : Prop :=
  S.openCover ∧ S.connectedIntersection ∧ S.fundamentalGroupAmalgam

end CoveringSpacesLowDimensionalTopologyCanonicalLaneLean
end HautevilleHouse