import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure DeathReceptorPathway where
  fasLigandBinding : Prop
  deathDomainAssembly : Prop
  discFormation : Prop
  caspase8Activation : Prop

structure DeathReceptorEvidence (D : DeathReceptorPathway) where
  fasLigandBindingClosed : D.fasLigandBinding
  deathDomainAssemblyClosed : D.deathDomainAssembly
  discFormationClosed : D.discFormation
  caspase8ActivationClosed : D.caspase8Activation

def DeathReceptorClosed (D : DeathReceptorPathway) : Prop :=
  D.fasLigandBinding ∧ D.deathDomainAssembly ∧
  D.discFormation ∧ D.caspase8Activation

theorem death_receptor_closed_from_evidence (D : DeathReceptorPathway)
    (E : DeathReceptorEvidence D) : DeathReceptorClosed D := by
  exact And.intro E.fasLigandBindingClosed
    (And.intro E.deathDomainAssemblyClosed
      (And.intro E.discFormationClosed E.caspase8ActivationClosed))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse