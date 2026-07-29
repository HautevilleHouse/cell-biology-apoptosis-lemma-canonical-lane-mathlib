import CellBiologyApoptosisLemmaCanonicalLaneLean.CellBiologyApoptosisObjects

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure ApoptosisSignalingPathwayPackage (state : CellState) where
  deathReceptorActivation : Prop
  initiatorCaspaseRecruitment : Prop
  signalTransduction : Prop
  pathwayConvergence : Prop

structure ApoptosisSignalingPathwayEvidence {state : CellState}
    (P : ApoptosisSignalingPathwayPackage state) where
  deathReceptorActivationClosed : P.deathReceptorActivation
  initiatorCaspaseRecruitmentClosed : P.initiatorCaspaseRecruitment
  signalTransductionClosed : P.signalTransduction
  pathwayConvergenceClosed : P.pathwayConvergence

def ApoptosisSignalingPathwayClosed {state : CellState}
    (P : ApoptosisSignalingPathwayPackage state) : Prop :=
  P.deathReceptorActivation ∧ P.initiatorCaspaseRecruitment ∧
  P.signalTransduction ∧ P.pathwayConvergence

theorem apoptosis_signaling_pathway_closed_from_evidence
    {state : CellState} (P : ApoptosisSignalingPathwayPackage state)
    (E : ApoptosisSignalingPathwayEvidence P) :
    ApoptosisSignalingPathwayClosed P := by
  exact And.intro E.deathReceptorActivationClosed
    (And.intro E.initiatorCaspaseRecruitmentClosed
      (And.intro E.signalTransductionClosed E.pathwayConvergenceClosed))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse