import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure MitochondrialApoptosis where
  cytochromeCRelease : Prop
  apoptosomeFormation : Prop
  caspase9Activation : Prop
  smacDiabloRelease : Prop
  iapInhibition : Prop

structure MitochondrialApoptosisEvidence (M : MitochondrialApoptosis) where
  cytochromeCReleaseClosed : M.cytochromeCRelease
  apoptosomeFormationClosed : M.apoptosomeFormation
  caspase9ActivationClosed : M.caspase9Activation
  smacDiabloReleaseClosed : M.smacDiabloRelease
  iapInhibitionClosed : M.iapInhibition

def MitochondrialApoptosisClosed (M : MitochondrialApoptosis) : Prop :=
  M.cytochromeCRelease ∧ M.apoptosomeFormation ∧
  M.caspase9Activation ∧ M.smacDiabloRelease ∧ M.iapInhibition

theorem mitochondrial_apoptosis_closed_from_evidence (M : MitochondrialApoptosis)
    (E : MitochondrialApoptosisEvidence M) : MitochondrialApoptosisClosed M := by
  exact And.intro E.cytochromeCReleaseClosed
    (And.intro E.apoptosomeFormationClosed
      (And.intro E.caspase9ActivationClosed
        (And.intro E.smacDiabloReleaseClosed E.iapInhibitionClosed)))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse