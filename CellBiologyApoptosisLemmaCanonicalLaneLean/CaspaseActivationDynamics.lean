import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure CaspaseActivationDynamics where
  initiatorCaspaseActivation : Prop
  effectorCaspaseActivation : Prop
  proteolyticCascade : Prop
  substrateCleavage : Prop

structure CaspaseActivationDynamicsEvidence (C : CaspaseActivationDynamics) where
  initiatorCaspaseActivationClosed : C.initiatorCaspaseActivation
  effectorCaspaseActivationClosed : C.effectorCaspaseActivation
  proteolyticCascadeClosed : C.proteolyticCascade
  substrateCleavageClosed : C.substrateCleavage

def CaspaseActivationDynamicsClosed (C : CaspaseActivationDynamics) : Prop :=
  C.initiatorCaspaseActivation ∧ C.effectorCaspaseActivation ∧ C.proteolyticCascade ∧ C.substrateCleavage

theorem caspase_activation_dynamics_closed_from_evidence (C : CaspaseActivationDynamics) (E : CaspaseActivationDynamicsEvidence C) :
    CaspaseActivationDynamicsClosed C := by
  exact And.intro E.initiatorCaspaseActivationClosed
    (And.intro E.effectorCaspaseActivationClosed
      (And.intro E.proteolyticCascadeClosed E.substrateCleavageClosed))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse