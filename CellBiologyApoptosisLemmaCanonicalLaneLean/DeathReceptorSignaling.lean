import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure DeathReceptorFas where
  ligandFasL : Float
  receptorOccupancy : Float
  discFormation : Float

structure Caspase8Activation where
  procaspase8Cleavage : Float
  activeCaspase8Dimer : Float
  bidTruncation : Float

def baxActivationFromTruncatedBid (tBid : Float) : Float :=
  tBid * 0.8

structure DeathReceptorEvidence (F : DeathReceptorFas) (C : Caspase8Activation) where
  ligandReceptorBinding : F.ligandFasL > 0.1 ∨ F.receptorOccupancy > 0.1
  discFormationDetected : F.discFormation > 0.05
  procaspase8CleavageSufficient : C.procaspase8Cleavage > 0.2
  activeCaspase8DimerFormed : C.activeCaspase8Dimer > 0.15
  bidTruncationOccurs : C.bidTruncation > 0.1
  baxActivationLinked : baxActivationFromTruncatedBid C.bidTruncation > 0.05

def DeathReceptorClosed (F : DeathReceptorFas) (C : Caspase8Activation) : Prop :=
  (F.ligandFasL > 0.1 ∨ F.receptorOccupancy > 0.1) ∧ F.discFormation > 0.05 ∧ C.procaspase8Cleavage > 0.2 ∧ C.activeCaspase8Dimer > 0.15 ∧ C.bidTruncation > 0.1 ∧ baxActivationFromTruncatedBid C.bidTruncation > 0.05

theorem death_receptor_closed_from_evidence (F : DeathReceptorFas) (C : Caspase8Activation) (E : DeathReceptorEvidence F C) : DeathReceptorClosed F C := by
  exact And.intro E.ligandReceptorBinding (And.intro E.discFormationDetected (And.intro E.procaspase8CleavageSufficient (And.intro E.activeCaspase8DimerFormed (And.intro E.bidTruncationOccurs E.baxActivationLinked))))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse