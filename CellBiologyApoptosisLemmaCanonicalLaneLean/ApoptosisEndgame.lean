import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

def ConstrainedApoptosisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_apoptosis_endgame (A : AdmissibleClass) :
    ConstrainedApoptosisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse
