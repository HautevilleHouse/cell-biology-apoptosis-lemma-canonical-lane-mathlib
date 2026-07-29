import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure CaspaseCascade where
  initiatorCaspaseActivation : Prop
  effectorCaspaseActivation : Prop
  caspaseSubstrateCleavage : Prop
  executionPhase : Prop

structure CaspaseCascadeEvidence (C : CaspaseCascade) where
  initiatorCaspaseActivationClosed : C.initiatorCaspaseActivation
  effectorCaspaseActivationClosed : C.effectorCaspaseActivation
  caspaseSubstrateCleavageClosed : C.caspaseSubstrateCleavage
  executionPhaseClosed : C.executionPhase

def CaspaseCascadeClosed (C : CaspaseCascade) : Prop :=
  C.initiatorCaspaseActivation ∧ C.effectorCaspaseActivation ∧
  C.caspaseSubstrateCleavage ∧ C.executionPhase

theorem caspase_cascade_closed_from_evidence (C : CaspaseCascade)
    (E : CaspaseCascadeEvidence C) : CaspaseCascadeClosed C := by
  exact And.intro E.initiatorCaspaseActivationClosed
    (And.intro E.effectorCaspaseActivationClosed
      (And.intro E.caspaseSubstrateCleavageClosed E.executionPhaseClosed))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse