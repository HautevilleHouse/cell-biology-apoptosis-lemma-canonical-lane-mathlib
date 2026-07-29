import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure MitochondrialPathwayPackage where
  mOMPpermeabilization : Prop
  cytochromeCRelease : Prop
  apoptosomeFormation : Prop
  caspase9Activation : Prop

structure MitochondrialPathwayEvidence (M : MitochondrialPathwayPackage) where
  mOMPpermeabilizationClosed : M.mOMPpermeabilization
  cytochromeCReleaseClosed : M.cytochromeCRelease
  apoptosomeFormationClosed : M.apoptosomeFormation
  caspase9ActivationClosed : M.caspase9Activation

def MitochondrialPathwayClosed (M : MitochondrialPathwayPackage) : Prop :=
  M.mOMPpermeabilization ∧ M.cytochromeCRelease ∧
  M.apoptosomeFormation ∧ M.caspase9Activation

theorem mitochondrial_pathway_closed_from_evidence (M : MitochondrialPathwayPackage) (E : MitochondrialPathwayEvidence M) :
    MitochondrialPathwayClosed M := by
  exact And.intro E.mOMPpermeabilizationClosed
    (And.intro E.cytochromeCReleaseClosed
      (And.intro E.apoptosomeFormationClosed E.caspase9ActivationClosed))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse