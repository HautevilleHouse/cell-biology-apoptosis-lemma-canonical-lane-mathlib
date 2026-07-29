import CellBiologyApoptosisLemmaCanonicalLaneLean.CellBiologyApoptosisObjects

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure CaspaseActivationPackage (state : CellState) where
  initiatorCaspaseCleavage : Prop
  effectorCaspaseActivation : Prop
  substrateCleavage : Prop
  executionPathway : Prop

structure CaspaseActivationEvidence {state : CellState}
    (C : CaspaseActivationPackage state) where
  initiatorCaspaseCleavageClosed : C.initiatorCaspaseCleavage
  effectorCaspaseActivationClosed : C.effectorCaspaseActivation
  substrateCleavageClosed : C.substrateCleavage
  executionPathwayClosed : C.executionPathway

def CaspaseActivationClosed {state : CellState}
    (C : CaspaseActivationPackage state) : Prop :=
  C.initiatorCaspaseCleavage ∧ C.effectorCaspaseActivation ∧
  C.substrateCleavage ∧ C.executionPathway

theorem caspase_activation_closed_from_evidence
    {state : CellState} (C : CaspaseActivationPackage state)
    (E : CaspaseActivationEvidence C) :
    CaspaseActivationClosed C := by
  exact And.intro E.initiatorCaspaseCleavageClosed
    (And.intro E.effectorCaspaseActivationClosed
      (And.intro E.substrateCleavageClosed E.executionPathwayClosed))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse