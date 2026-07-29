import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure CellPopulationState where
  healthy : Nat
  stressed : Nat
  apoptotic : Nat
  dead : Nat

structure ApoptosisDynamicsModel where
  stressRate : Float
  activationThreshold : Float
  caspaseActivity : Float
  deathRate : Float
  feedbackGain : Float

structure CellPopulationEvidence (M : ApoptosisDynamicsModel) where
  stressRatePositive : M.stressRate > 0
  activationThresholdFinite : M.activationThreshold > 0
  caspaseActivityBounded : M.caspaseActivity < 1
  deathRatePositive : M.deathRate > 0
  feedbackGainNonnegative : M.feedbackGain >= 0

def CellPopulationClosed (M : ApoptosisDynamicsModel) : Prop :=
  M.stressRate > 0 ∧ M.activationThreshold > 0 ∧ M.caspaseActivity < 1 ∧ M.deathRate > 0 ∧ M.feedbackGain >= 0

theorem cell_population_closed_from_evidence (M : ApoptosisDynamicsModel) (E : CellPopulationEvidence M) : CellPopulationClosed M := by
  exact And.intro E.stressRatePositive (And.intro E.activationThresholdFinite (And.intro E.caspaseActivityBounded (And.intro E.deathRatePositive E.feedbackGainNonnegative)))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse