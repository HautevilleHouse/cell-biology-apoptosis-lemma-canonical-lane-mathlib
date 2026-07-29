import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure MOMPPackage where
  mitochondrialMembrane : Prop
  cytochromeCRelease : Prop
  caspaseActivationSignal : Prop
  apoptosomeFormation : Prop

structure MOMPEvidence (M : MOMPPackage) where
  mitochondrialMembraneClosed : M.mitochondrialMembrane
  cytochromeCReleaseClosed : M.cytochromeCRelease
  caspaseActivationSignalClosed : M.caspaseActivationSignal
  apoptosomeFormationClosed : M.apoptosomeFormation

def MOMPClosed (M : MOMPPackage) : Prop :=
  M.mitochondrialMembrane ∧ M.cytochromeCRelease ∧
  M.caspaseActivationSignal ∧ M.apoptosomeFormation

theorem momp_closed_from_evidence (M : MOMPPackage) (E : MOMPEvidence M) :
    MOMPClosed M := by
  exact And.intro E.mitochondrialMembraneClosed
    (And.intro E.cytochromeCReleaseClosed
      (And.intro E.caspaseActivationSignalClosed E.apoptosomeFormationClosed))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse
