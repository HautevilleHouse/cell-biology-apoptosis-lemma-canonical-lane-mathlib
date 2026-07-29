import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure CellState where
  cellType : String
  stressLevel : Nat

structure ApoptosisAdmittedObject where
  state : CellState
  deathSignalReceived : Prop
  caspaseCascadeInitiated : Prop
  mitochondrialPermeabilization : Prop
  conclusion : mitochondrialPermeabilization

def ApoptosisWitnessClosed (O : ApoptosisAdmittedObject) : Prop :=
  O.mitochondrialPermeabilization

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse