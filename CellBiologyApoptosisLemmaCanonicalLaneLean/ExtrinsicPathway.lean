import CellBiologyApoptosisLemmaCanonicalLaneLean.ApoptosisAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure ExtrinsicPathwayPackage where
  deathReceptorActivation : Prop
  deathInducingSignalingComplexFormation : Prop
  caspase8Activation : Prop
  bidTruncation : Prop

structure ExtrinsicPathwayEvidence (E : ExtrinsicPathwayPackage) where
  deathReceptorActivationClosed : E.deathReceptorActivation
  deathInducingSignalingComplexFormationClosed : E.deathInducingSignalingComplexFormation
  caspase8ActivationClosed : E.caspase8Activation
  bidTruncationClosed : E.bidTruncation

def ExtrinsicPathwayClosed (E : ExtrinsicPathwayPackage) : Prop :=
  E.deathReceptorActivation ∧ E.deathInducingSignalingComplexFormation ∧
  E.caspase8Activation ∧ E.bidTruncation

theorem extrinsic_pathway_closed_from_evidence
    (E : ExtrinsicPathwayPackage) (Ev : ExtrinsicPathwayEvidence E) :
    ExtrinsicPathwayClosed E := by
  exact And.intro Ev.deathReceptorActivationClosed
    (And.intro Ev.deathInducingSignalingComplexFormationClosed
      (And.intro Ev.caspase8ActivationClosed Ev.bidTruncationClosed))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse