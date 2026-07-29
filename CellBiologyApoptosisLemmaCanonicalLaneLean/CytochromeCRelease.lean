import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure CytochromeCRelease where
  mitochondrialPermeabilityTransition : Prop
  cytochromeCReleaseFromMitochondria : Prop
  apaf1Activation : Prop
  apoptosomeFormation : Prop

structure CytochromeCReleaseEvidence (C : CytochromeCRelease) where
  mitochondrialPermeabilityTransitionClosed : C.mitochondrialPermeabilityTransition
  cytochromeCReleaseFromMitochondriaClosed : C.cytochromeCReleaseFromMitochondria
  apaf1ActivationClosed : C.apaf1Activation
  apoptosomeFormationClosed : C.apoptosomeFormation

def CytochromeCReleaseClosed (C : CytochromeCRelease) : Prop :=
  C.mitochondrialPermeabilityTransition ∧ C.cytochromeCReleaseFromMitochondria ∧ C.apaf1Activation ∧ C.apoptosomeFormation

theorem cytochrome_c_release_closed_from_evidence (C : CytochromeCRelease) (E : CytochromeCReleaseEvidence C) :
    CytochromeCReleaseClosed C := by
  exact And.intro E.mitochondrialPermeabilityTransitionClosed
    (And.intro E.cytochromeCReleaseFromMitochondriaClosed
      (And.intro E.apaf1ActivationClosed E.apoptosomeFormationClosed))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse