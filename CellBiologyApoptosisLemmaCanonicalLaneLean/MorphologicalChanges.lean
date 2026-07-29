import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyApoptosisLemmaCanonicalLaneLean.IntracellularSignaling

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure MorphologicalChangesPackage {S : IntracellularSignalingPackage} (sig : S) where
  cellShrinkage : Prop
  nuclearCondensation : Prop
  membraneBlebbing : Prop
  apoptoticBodyFormation : Prop

structure MorphologicalChangesEvidence {S : IntracellularSignalingPackage} {sig : S}
    (M : MorphologicalChangesPackage sig) where
  cellShrinkageClosed : M.cellShrinkage
  nuclearCondensationClosed : M.nuclearCondensation
  membraneBlebbingClosed : M.membraneBlebbing
  apoptoticBodyFormationClosed : M.apoptoticBodyFormation

def MorphologicalChangesClosed {S : IntracellularSignalingPackage} {sig : S}
    (M : MorphologicalChangesPackage sig) : Prop :=
  M.cellShrinkage ∧ M.nuclearCondensation ∧ M.membraneBlebbing ∧ M.apoptoticBodyFormation

theorem morphologicalChanges_closed_from_evidence {S : IntracellularSignalingPackage}
    {sig : S} (M : MorphologicalChangesPackage sig)
    (E : MorphologicalChangesEvidence M) : MorphologicalChangesClosed M := by
  exact And.intro E.cellShrinkageClosed
    (And.intro E.nuclearCondensationClosed
      (And.intro E.membraneBlebbingClosed E.apoptoticBodyFormationClosed))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse
