import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure ExtrinsicPathwayActivation (A : AdmissibleClass) where
  deathLigandBinding : Prop
  deathReceptorOligomerization : Prop
  discFormation : Prop
  caspase8Recruitment : Prop
  caspase8Activation : Prop

structure ExtrinsicPathwayEvidence (A : AdmissibleClass) (E : ExtrinsicPathwayActivation A) where
  deathLigandBindingClosed : E.deathLigandBinding
  deathReceptorOligomerizationClosed : E.deathReceptorOligomerization
  discFormationClosed : E.discFormation
  caspase8RecruitmentClosed : E.caspase8Recruitment
  caspase8ActivationClosed : E.caspase8Activation

def ExtrinsicPathwayClosed (A : AdmissibleClass) (E : ExtrinsicPathwayActivation A) : Prop :=
  E.deathLigandBinding ∧ E.deathReceptorOligomerization ∧ E.discFormation ∧ E.caspase8Recruitment ∧ E.caspase8Activation

theorem extrinsic_pathway_closed_from_evidence (A : AdmissibleClass) (E : ExtrinsicPathwayActivation A) (Ev : ExtrinsicPathwayEvidence A E) : ExtrinsicPathwayClosed A E := by
  exact And.intro Ev.deathLigandBindingClosed
    (And.intro Ev.deathReceptorOligomerizationClosed
      (And.intro Ev.discFormationClosed
        (And.intro Ev.caspase8RecruitmentClosed Ev.caspase8ActivationClosed)))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse
