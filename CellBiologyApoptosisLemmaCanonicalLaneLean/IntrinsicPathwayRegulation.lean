import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure IntrinsicPathwayRegulation (A : AdmissibleClass) where
  cellularStressSignals : Prop
  bcl2FamilyIntegration : Prop
  cytochromeCRelease : Prop
  apoptosomeFormation : Prop
  caspase9Activation : Prop

structure IntrinsicPathwayEvidence (A : AdmissibleClass) (I : IntrinsicPathwayRegulation A) where
  cellularStressSignalsClosed : I.cellularStressSignals
  bcl2FamilyIntegrationClosed : I.bcl2FamilyIntegration
  cytochromeCReleaseClosed : I.cytochromeCRelease
  apoptosomeFormationClosed : I.apoptosomeFormation
  caspase9ActivationClosed : I.caspase9Activation

def IntrinsicPathwayClosed (A : AdmissibleClass) (I : IntrinsicPathwayRegulation A) : Prop :=
  I.cellularStressSignals ∧ I.bcl2FamilyIntegration ∧ I.cytochromeCRelease ∧ I.apoptosomeFormation ∧ I.caspase9Activation

theorem intrinsic_pathway_closed_from_evidence (A : AdmissibleClass) (I : IntrinsicPathwayRegulation A) (E : IntrinsicPathwayEvidence A I) : IntrinsicPathwayClosed A I := by
  exact And.intro E.cellularStressSignalsClosed
    (And.intro E.bcl2FamilyIntegrationClosed
      (And.intro E.cytochromeCReleaseClosed
        (And.intro E.apoptosomeFormationClosed E.caspase9ActivationClosed)))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse
