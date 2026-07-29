import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoveringSpacesLowDimensionalTopologyCanonicalLaneLean

structure FundamentalGroupClassificationPackage
    {F : CoveringSpaceClassificationPackage} where
  fundamentalGroup : Type u
  groupPresentation : Prop
  subgroupCorrespondence : Prop
  coveringSpaceBijection : Prop
  classificationByGroupClosed : Prop
  classificationByGroupClosedTerm : classificationByGroupClosed

structure FundamentalGroupClassificationEvidence
    {F : CoveringSpaceClassificationPackage}
    (G : FundamentalGroupClassificationPackage F) where
  classificationByGroupClosedTerm : G.classificationByGroupClosed

def FundamentalGroupClassificationClosed
    {F : CoveringSpaceClassificationPackage}
    (G : FundamentalGroupClassificationPackage F) : Prop :=
  G.classificationByGroupClosed

theorem fundamental_group_classification_closed_from_evidence
    {F : CoveringSpaceClassificationPackage}
    (G : FundamentalGroupClassificationPackage F)
    (E : FundamentalGroupClassificationEvidence G) :
    FundamentalGroupClassificationClosed G := by
  exact E.classificationByGroupClosedTerm

end CoveringSpacesLowDimensionalTopologyCanonicalLaneLean
end HautevilleHouse