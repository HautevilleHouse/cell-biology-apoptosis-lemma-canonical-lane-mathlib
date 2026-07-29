import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure ApoptosisAdmittedObject where
  pathway : ApoptosisPathwayPackage
  apoptosisLemma : Prop
  conclusion : apoptosisLemma

def ApoptosisWitnessClosed (O : ApoptosisAdmittedObject) : Prop :=
  O.apoptosisLemma

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse