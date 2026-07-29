import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

structure ApoptosisSignalingNetwork where
  deathReceptorPathway : Prop
  mitochondrialPathway : Prop
  intrinsicPathway : Prop
  extrinsicPathway : Prop
  caspaseExecution : Prop

structure ApoptosisSignalingEvidence (A : ApoptosisSignalingNetwork) where
  deathReceptorPathwayClosed : A.deathReceptorPathway
  mitochondrialPathwayClosed : A.mitochondrialPathway
  intrinsicPathwayClosed : A.intrinsicPathway
  extrinsicPathwayClosed : A.extrinsicPathway
  caspaseExecutionClosed : A.caspaseExecution

def ApoptosisSignalingClosed (A : ApoptosisSignalingNetwork) : Prop :=
  A.deathReceptorPathway ∧ A.mitochondrialPathway ∧
  A.intrinsicPathway ∧ A.extrinsicPathway ∧ A.caspaseExecution

theorem apoptosis_signaling_closed_from_evidence (A : ApoptosisSignalingNetwork)
    (E : ApoptosisSignalingEvidence A) : ApoptosisSignalingClosed A := by
  exact And.intro E.deathReceptorPathwayClosed
    (And.intro E.mitochondrialPathwayClosed
      (And.intro E.intrinsicPathwayClosed
        (And.intro E.extrinsicPathwayClosed E.caspaseExecutionClosed)))

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse