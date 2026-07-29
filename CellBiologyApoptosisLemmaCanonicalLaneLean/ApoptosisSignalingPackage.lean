import CellBiologyApoptosisLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure ApoptosisSignalingPackage where
  caspaseActivation : Prop
  mitochondrialPermeability : Prop
  deathReceptorSignaling : Prop
  bcl2FamilyRegulation : Prop

structure ApoptosisSignalingEvidence (S : ApoptosisSignalingPackage) where
  caspaseActivationClosed : S.caspaseActivation
  mitochondrialPermeabilityClosed : S.mitochondrialPermeability
  deathReceptorSignalingClosed : S.deathReceptorSignaling
  bcl2FamilyRegulationClosed : S.bcl2FamilyRegulation

def ApoptosisSignalingClosed (S : ApoptosisSignalingPackage) : Prop :=
  S.caspaseActivation ∧ S.mitochondrialPermeability ∧
  S.deathReceptorSignaling ∧ S.bcl2FamilyRegulation

theorem apoptosis_signaling_closed_from_evidence (S : ApoptosisSignalingPackage)
    (E : ApoptosisSignalingEvidence S) : ApoptosisSignalingClosed S := by
  exact And.intro E.caspaseActivationClosed
    (And.intro E.mitochondrialPermeabilityClosed
      (And.intro E.deathReceptorSignalingClosed E.bcl2FamilyRegulationClosed))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse
