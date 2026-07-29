import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure ApoptosisCellState where
  cellType : String
  stimulusPresent : Prop
  deathReceptorActivated : Prop
  mitochondrialIntegrity : Prop
  caspaseActivity : Prop

structure ApoptosisAdmittedObject where
  cellState : ApoptosisCellState
  apoptosisInduced : Prop
  conclusion : apoptosisInduced

structure ApoptosisEndgameState where
  object : ApoptosisAdmittedObject

def ApoptosisWitnessClosed (O : ApoptosisAdmittedObject) : Prop :=
  O.apoptosisInduced

structure AdmissibleClass where
  object : ApoptosisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ApoptosisWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse