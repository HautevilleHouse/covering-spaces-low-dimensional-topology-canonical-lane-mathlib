import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoveringSpacesLowDimensionalTopologyCanonicalLaneLean

structure CoveringHomotopyPackage {M : Type u} [TopologicalSpace M] (p : CoveringSpace) where
  homotopyLift : HomotopyLiftingProperty p
  uniqueLift : UniquePathLifting p
  homotopyLiftClosed : homotopyLift
  uniqueLiftClosed : uniqueLift

def CoveringHomotopyClosed {M : Type u} [TopologicalSpace M] (p : CoveringSpace M) (H : CoveringHomotopyPackage p) : Prop :=
  H.homotopyLiftClosed ∧ H.uniqueLiftClosed

end CoveringSpacesLowDimensionalTopologyCanonicalLaneLean
end HautevilleHouse