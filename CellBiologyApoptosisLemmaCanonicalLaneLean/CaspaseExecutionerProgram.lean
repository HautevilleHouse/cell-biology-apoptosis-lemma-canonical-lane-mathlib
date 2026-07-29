import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure CaspaseExecutionerProgram where
  caspase3Activity : Float
  caspase7Activity : Float
  icalpainActivity : Float
  substrateCleavageRate : Float
  cellShrinkageRate : Float
  nuclearFragmentationRate : Float

structure ApoptoticPhagocytosis where
  phosphatidylserineExposure : Float
  engulfmentSignal : Float
  macrophageActivation : Float

structure ExecutionerEvidence (P : CaspaseExecutionerProgram) (Ph : ApoptoticPhagocytosis) where
  caspase3Active : P.caspase3Activity > 0.3
  caspase7Active : P.caspase7Activity > 0.2
  substrateCleavageHigh : P.substrateCleavageRate > 0.5
  cellShrinkagePositive : P.cellShrinkageRate > 0.1
  nuclearFragmentationPositive : P.nuclearFragmentationRate > 0.1
  phosphatidylserineExposed : Ph.phosphatidylserineExposure > 0.2
  engulfmentSignalSent : Ph.engulfmentSignal > 0.1
  macrophageActivated : Ph.macrophageActivation > 0.15

def ExecutionerProgramClosed (P : CaspaseExecutionerProgram) (Ph : ApoptoticPhagocytosis) : Prop :=
  P.caspase3Activity > 0.3 ∧ P.caspase7Activity > 0.2 ∧ P.substrateCleavageRate > 0.5 ∧ P.cellShrinkageRate > 0.1 ∧ P.nuclearFragmentationRate > 0.1 ∧ Ph.phosphatidylserineExposure > 0.2 ∧ Ph.engulfmentSignal > 0.1 ∧ Ph.macrophageActivation > 0.15

theorem executioner_program_closed_from_evidence (P : CaspaseExecutionerProgram) (Ph : ApoptoticPhagocytosis) (E : ExecutionerEvidence P Ph) : ExecutionerProgramClosed P Ph := by
  exact And.intro E.caspase3Active (And.intro E.caspase7Active (And.intro E.substrateCleavageHigh (And.intro E.cellShrinkagePositive (And.intro E.nuclearFragmentationPositive (And.intro E.phosphatidylserineExposed (And.intro E.engulfmentSignalSent E.macrophageActivated))))))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse