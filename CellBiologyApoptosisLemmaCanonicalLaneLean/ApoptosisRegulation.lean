import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure ApoptosisRegulationPackage where
  bcl2FamilyBalance : Prop
  antiApoptoticSuppressed : Prop
  proApoptoticActivated : Prop
  mitochondrialMembranePotentialLost : Prop
  executionPhaseEngaged : Prop

structure ApoptosisRegulationEvidence (R : ApoptosisRegulationPackage) where
  bcl2FamilyBalanceClosed : R.bcl2FamilyBalance
  antiApoptoticSuppressedClosed : R.antiApoptoticSuppressed
  proApoptoticActivatedClosed : R.proApoptoticActivated
  mitochondrialMembranePotentialLostClosed : R.mitochondrialMembranePotentialLost
  executionPhaseEngagedClosed : R.executionPhaseEngaged

def ApoptosisRegulationClosed (R : ApoptosisRegulationPackage) : Prop :=
  R.bcl2FamilyBalance ∧ R.antiApoptoticSuppressed ∧
  R.proApoptoticActivated ∧ R.mitochondrialMembranePotentialLost ∧
  R.executionPhaseEngaged

theorem apoptosis_regulation_closed_from_evidence (R : ApoptosisRegulationPackage) (E : ApoptosisRegulationEvidence R) :
    ApoptosisRegulationClosed R := by
  exact And.intro E.bcl2FamilyBalanceClosed
    (And.intro E.antiApoptoticSuppressedClosed
      (And.intro E.proApoptoticActivatedClosed
        (And.intro E.mitochondrialMembranePotentialLostClosed
          E.executionPhaseEngagedClosed)))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse