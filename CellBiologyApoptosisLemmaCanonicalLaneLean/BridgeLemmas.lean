import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ApoptosisWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse