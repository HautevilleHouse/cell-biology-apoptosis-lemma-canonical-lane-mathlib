import CellBiologyApoptosisLemmaCanonicalLaneLean.ApoptosisAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure ApoptosomeFormationPackage where
  apaf1Oligomerization : Prop
  cytochromeCBinding : Prop
  procaspase9Recruitment : Prop
  holoenzymeAssembly : Prop

structure ApoptosomeFormationEvidence (A : ApoptosomeFormationPackage) where
  apaf1OligomerizationClosed : A.apaf1Oligomerization
  cytochromeCBindingClosed : A.cytochromeCBinding
  procaspase9RecruitmentClosed : A.procaspase9Recruitment
  holoenzymeAssemblyClosed : A.holoenzymeAssembly

def ApoptosomeFormationClosed (A : ApoptosomeFormationPackage) : Prop :=
  A.apaf1Oligomerization ∧ A.cytochromeCBinding ∧
  A.procaspase9Recruitment ∧ A.holoenzymeAssembly

theorem apoptosome_formation_closed_from_evidence
    (A : ApoptosomeFormationPackage) (E : ApoptosomeFormationEvidence A) :
    ApoptosomeFormationClosed A := by
  exact And.intro E.apaf1OligomerizationClosed
    (And.intro E.cytochromeCBindingClosed
      (And.intro E.procaspase9RecruitmentClosed E.holoenzymeAssemblyClosed))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse