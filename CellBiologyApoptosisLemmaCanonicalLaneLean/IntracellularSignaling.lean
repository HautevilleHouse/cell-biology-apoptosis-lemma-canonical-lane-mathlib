import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyApoptosisLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure IntracellularSignalingPackage where
  deathReceptorActivation : Prop
  mitochondrialOuterPermeabilization : Prop
  caspaseCascade : Prop
  bcl2FamilyRegulation : Prop

structure IntracellularSignalingEvidence (S : IntracellularSignalingPackage) where
  deathReceptorActivationClosed : S.deathReceptorActivation
  mitochondrialOuterPermeabilizationClosed : S.mitochondrialOuterPermeabilization
  caspaseCascadeClosed : S.caspaseCascade
  bcl2FamilyRegulationClosed : S.bcl2FamilyRegulation

def IntracellularSignalingClosed (S : IntracellularSignalingPackage) : Prop :=
  S.deathReceptorActivation ∧ S.mitochondrialOuterPermeabilization ∧ S.caspaseCascade ∧ S.bcl2FamilyRegulation

theorem intracellularSignaling_closed_from_evidence (S : IntracellularSignalingPackage)
    (E : IntracellularSignalingEvidence S) : IntracellularSignalingClosed S := by
  exact And.intro E.deathReceptorActivationClosed
    (And.intro E.mitochondrialOuterPermeabilizationClosed
      (And.intro E.caspaseCascadeClosed E.bcl2FamilyRegulationClosed))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse
