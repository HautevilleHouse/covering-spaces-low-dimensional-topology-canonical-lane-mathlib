import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoveringSpacesLowDimensionalTopologyCanonicalLaneLean

structure GaloisCoveringPackage {M : Type u} [TopologicalSpace M] where
  coveringMap : Type v -> M
  totalSpace : Type w
  coveringMapContinuous : Continuous coveringMap
  fiberDiscrete : DiscreteTopology (fiber coveringMap)
  deckTransitive : ActionIsTransitive (DeckGroup coveringMap)

def GaloisCoveringClosed {M : Type u} [TopologicalSpace M] (G : GaloisCoveringPackage M) : Prop :=
  G.coveringMapContinuous ∧ G.fiberDiscrete ∧ G.deckTransitive

end CoveringSpacesLowDimensionalTopologyCanonicalLaneLean
end HautevilleHouse