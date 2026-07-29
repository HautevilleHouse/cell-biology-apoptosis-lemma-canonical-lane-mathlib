import CellBiologyApoptosisLemmaCanonicalLaneLean.ApoptosisGateLemmas

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

def ConstrainedApoptosisClosure (A : ApoptosisAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_apoptosis_endgame (A : ApoptosisAdmissibleClass) :
    ConstrainedApoptosisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse
