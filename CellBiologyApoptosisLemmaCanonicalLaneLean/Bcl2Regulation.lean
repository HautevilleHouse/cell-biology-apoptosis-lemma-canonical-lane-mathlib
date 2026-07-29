import CellBiologyApoptosisLemmaCanonicalLaneLean.CellBiologyApoptosisObjects

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure Bcl2RegulationPackage (state : CellState) where
  bcl2Expression : Prop
  baxBakActivation : Prop
  mOMP : Prop
  cytochromeCRelease : Prop

structure Bcl2RegulationEvidence {state : CellState}
    (B : Bcl2RegulationPackage state) where
  bcl2ExpressionClosed : B.bcl2Expression
  baxBakActivationClosed : B.baxBakActivation
  mOMPClosed : B.mOMP
  cytochromeCReleaseClosed : B.cytochromeCRelease

def Bcl2RegulationClosed {state : CellState}
    (B : Bcl2RegulationPackage state) : Prop :=
  B.bcl2Expression ∧ B.baxBakActivation ∧
  B.mOMP ∧ B.cytochromeCRelease

theorem bcl2_regulation_closed_from_evidence
    {state : CellState} (B : Bcl2RegulationPackage state)
    (E : Bcl2RegulationEvidence B) :
    Bcl2RegulationClosed B := by
  exact And.intro E.bcl2ExpressionClosed
    (And.intro E.baxBakActivationClosed
      (And.intro E.mOMPClosed E.cytochromeCReleaseClosed))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse