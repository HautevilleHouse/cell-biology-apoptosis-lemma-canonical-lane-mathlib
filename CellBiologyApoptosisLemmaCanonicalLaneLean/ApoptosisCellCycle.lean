import CellBiologyApoptosisLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure ApoptosisCellCycle where
  g1Checkpoint : Prop
  sPhaseTransition : Prop
  g2Checkpoint : Prop
  mitoticExit : Prop
  dnaDamageResponse : Prop

structure ApoptosisCellCycleEvidence (C : ApoptosisCellCycle) where
  g1CheckpointClosed : C.g1Checkpoint
  sPhaseTransitionClosed : C.sPhaseTransition
  g2CheckpointClosed : C.g2Checkpoint
  mitoticExitClosed : C.mitoticExit
  dnaDamageResponseClosed : C.dnaDamageResponse

def ApoptosisCellCycleClosed (C : ApoptosisCellCycle) : Prop :=
  C.g1Checkpoint ∧ C.sPhaseTransition ∧
  C.g2Checkpoint ∧ C.mitoticExit ∧ C.dnaDamageResponse

theorem apoptosis_cell_cycle_closed_from_evidence (C : ApoptosisCellCycle)
    (E : ApoptosisCellCycleEvidence C) : ApoptosisCellCycleClosed C := by
  exact And.intro E.g1CheckpointClosed
    (And.intro E.sPhaseTransitionClosed
      (And.intro E.g2CheckpointClosed
        (And.intro E.mitoticExitClosed E.dnaDamageResponseClosed)))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse
