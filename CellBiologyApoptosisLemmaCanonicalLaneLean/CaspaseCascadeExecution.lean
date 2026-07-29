import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure CaspaseCascadeExecution (A : AdmissibleClass) where
  initiatorCaspaseCleavage : Prop
  executionerCaspaseActivation : Prop
  substrateCleavageEvents : Prop
  amplificationLoop : Prop
  deathSubstrateProteolysis : Prop

structure CaspaseCascadeEvidence (A : AdmissibleClass) (C : CaspaseCascadeExecution A) where
  initiatorCaspaseCleavageClosed : C.initiatorCaspaseCleavage
  executionerCaspaseActivationClosed : C.executionerCaspaseActivation
  substrateCleavageEventsClosed : C.substrateCleavageEvents
  amplificationLoopClosed : C.amplificationLoop
  deathSubstrateProteolysisClosed : C.deathSubstrateProteolysis

def CaspaseCascadeClosed (A : AdmissibleClass) (C : CaspaseCascadeExecution A) : Prop :=
  C.initiatorCaspaseCleavage ∧ C.executionerCaspaseActivation ∧ C.substrateCleavageEvents ∧ C.amplificationLoop ∧ C.deathSubstrateProteolysis

theorem caspase_cascade_closed_from_evidence (A : AdmissibleClass) (C : CaspaseCascadeExecution A) (E : CaspaseCascadeEvidence A C) : CaspaseCascadeClosed A C := by
  exact And.intro E.initiatorCaspaseCleavageClosed
    (And.intro E.executionerCaspaseActivationClosed
      (And.intro E.substrateCleavageEventsClosed
        (And.intro E.amplificationLoopClosed E.deathSubstrateProteolysisClosed)))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse
