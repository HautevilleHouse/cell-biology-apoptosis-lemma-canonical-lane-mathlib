import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure Bcl2Family where
  proApoptoticBax : Float
  proApoptoticBak : Float
  antiApoptoticBcl2 : Float
  antiApoptoticBclXL : Float

structure Cas9Regulation where
  guideRNAAffinity : Float
  cleavageEfficiency : Float
  offTargetRisk : Float
  temporalGating : Float

structure ControlCircuitEvidence (B : Bcl2Family) (C : Cas9Regulation) where
  baxToBcl2Ratio : B.proApoptoticBax / (B.antiApoptoticBcl2 + 1e-6) > 0.5
  bakToBclXLRatio : B.proApoptoticBak / (B.antiApoptoticBclXL + 1e-6) > 0.3
  guideRNAAffinitySufficient : C.guideRNAAffinity > 0.8
  cleavageEfficiencySufficient : C.cleavageEfficiency > 0.9
  offTargetRiskLow : C.offTargetRisk < 0.05
  temporalGatingOptimized : C.temporalGating > 0.7

def ControlCircuitClosed (B : Bcl2Family) (C : Cas9Regulation) : Prop :=
  B.proApoptoticBax / (B.antiApoptoticBcl2 + 1e-6) > 0.5 ∧
  B.proApoptoticBak / (B.antiApoptoticBclXL + 1e-6) > 0.3 ∧
  C.guideRNAAffinity > 0.8 ∧ C.cleavageEfficiency > 0.9 ∧ C.offTargetRisk < 0.05 ∧ C.temporalGating > 0.7

theorem control_circuit_closed_from_evidence (B : Bcl2Family) (C : Cas9Regulation) (E : ControlCircuitEvidence B C) : ControlCircuitClosed B C := by
  exact And.intro E.baxToBcl2Ratio (And.intro E.bakToBclXLRatio (And.intro E.guideRNAAffinitySufficient (And.intro E.cleavageEfficiencySufficient (And.intro E.offTargetRiskLow E.temporalGatingOptimized))))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse