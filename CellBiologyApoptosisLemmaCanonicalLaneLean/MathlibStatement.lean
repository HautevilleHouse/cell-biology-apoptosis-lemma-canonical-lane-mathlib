import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyApoptosisLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

open canonicalLaneMathlib

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "CellBiologyApoptosisLemma",
  theoremObject := "Apoptosis Lemma: intrinsic and extrinsic pathways converge to caspase activation",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "apoptosis-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

def theoremSpecificEndgamePilotClosed : Prop :=
  forall A : AdmissibleClass, ConstrainedApoptosisClosure A

theorem theorem_specific_endgame_pilot_checked :
    theoremSpecificEndgamePilotClosed := by
  intro A
  exact constrained_apoptosis_endgame A

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse
