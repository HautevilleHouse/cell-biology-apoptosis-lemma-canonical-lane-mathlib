import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure ApoptosisSignalPathway where
  receptorActivation : Prop
  caspaseCascade : Prop
  mitochondrialPermeabilization : Prop
  deathSignalPropagation : Prop

structure ApoptosisSignalPathwayEvidence (P : ApoptosisSignalPathway) where
  receptorActivationClosed : P.receptorActivation
  caspaseCascadeClosed : P.caspaseCascade
  mitochondrialPermeabilizationClosed : P.mitochondrialPermeabilization
  deathSignalPropagationClosed : P.deathSignalPropagation

def ApoptosisSignalPathwayClosed (P : ApoptosisSignalPathway) : Prop :=
  P.receptorActivation ∧ P.caspaseCascade ∧ P.mitochondrialPermeabilization ∧ P.deathSignalPropagation

theorem apoptosis_signal_pathway_closed_from_evidence (P : ApoptosisSignalPathway) (E : ApoptosisSignalPathwayEvidence P) :
    ApoptosisSignalPathwayClosed P := by
  exact And.intro E.receptorActivationClosed
    (And.intro E.caspaseCascadeClosed
      (And.intro E.mitochondrialPermeabilizationClosed E.deathSignalPropagationClosed))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse