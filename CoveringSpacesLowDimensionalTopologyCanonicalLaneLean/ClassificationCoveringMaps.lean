import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoveringSpacesLowDimensionalTopologyCanonicalLaneLean

structure CoveringMapClassificationPackage (M : Type u) [TopologicalSpace M] [ConnectedSpace M] [LocallyPathConnectedSpace M] where
  fundamentalGroup : Group
  subgroupCorrespondence : Subgroup fundamentalGroup → CoveringSpace M
  equivalence : Bijection (Subgroup fundamentalGroup) (CoveringSpace M)
  connectedCoveringsNormalSubgroups : forall (H : Subgroup fundamentalGroup), NormalSubgroup H ↔ GaloisCoveringPackage M

def ClassificationClosed (M : Type u) [TopologicalSpace M] [ConnectedSpace M] [LocallyPathConnectedSpace M] (C : CoveringMapClassificationPackage M) : Prop :=
  C.subgroupCorrespondence ∧ C.equivalence ∧ C.connectedCoveringsNormalSubgroups

end CoveringSpacesLowDimensionalTopologyCanonicalLaneLean
end HautevilleHouse