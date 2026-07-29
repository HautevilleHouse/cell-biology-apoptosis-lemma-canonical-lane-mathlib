import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure Bcl2FamilyRegulation where
  proApoptoticBaxBak : Prop
  antiApoptoticBcl2 : Prop
  bh3OnlySensors : Prop
  mitochondrialOuterMembranePermeabilization : Prop
  cytochromeCRelease : Prop

structure Bcl2FamilyEvidence (B : Bcl2FamilyRegulation) where
  proApoptoticBaxBakClosed : B.proApoptoticBaxBak
  antiApoptoticBcl2Closed : B.antiApoptoticBcl2
  bh3OnlySensorsClosed : B.bh3OnlySensors
  mitochondrialOuterMembranePermeabilizationClosed : B.mitochondrialOuterMembranePermeabilization
  cytochromeCReleaseClosed : B.cytochromeCRelease

def Bcl2FamilyClosed (B : Bcl2FamilyRegulation) : Prop :=
  B.proApoptoticBaxBak ∧ B.antiApoptoticBcl2 ∧
  B.bh3OnlySensors ∧ B.mitochondrialOuterMembranePermeabilization ∧
  B.cytochromeCRelease

theorem bcl2_family_closed_from_evidence (B : Bcl2FamilyRegulation)
    (E : Bcl2FamilyEvidence B) : Bcl2FamilyClosed B := by
  exact And.intro E.proApoptoticBaxBakClosed
    (And.intro E.antiApoptoticBcl2Closed
      (And.intro E.bh3OnlySensorsClosed
        (And.intro E.mitochondrialOuterMembranePermeabilizationClosed
          E.cytochromeCReleaseClosed)))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse