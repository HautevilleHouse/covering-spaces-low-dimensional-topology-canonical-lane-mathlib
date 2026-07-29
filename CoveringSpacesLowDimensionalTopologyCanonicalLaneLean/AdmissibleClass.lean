import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoveringSpacesLowDimensionalTopologyCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CoveringSpaceClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CoveringSpacesLowDimensionalTopologyCanonicalLaneLean
end HautevilleHouse