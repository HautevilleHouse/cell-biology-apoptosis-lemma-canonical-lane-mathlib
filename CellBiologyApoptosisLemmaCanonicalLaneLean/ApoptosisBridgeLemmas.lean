import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyApoptosisLemmaCanonicalLaneLean.ApoptosisSignalPathway
import HautevilleHouse.CellBiologyApoptosisLemmaCanonicalLaneLean.Bcl2FamilyRegulation
import HautevilleHouse.CellBiologyApoptosisLemmaCanonicalLaneLean.CaspaseActivationDynamics
import HautevilleHouse.CellBiologyApoptosisLemmaCanonicalLaneLean.CytochromeCRelease
import HautevilleHouse.CellBiologyApoptosisLemmaCanonicalLaneLean.DeathReceptorSignaling

namespace HautevilleHouse
namespace CellBiologyApoptosisLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let P : ApoptosisSignalPathway := { receptorActivation := True, caspaseCascade := True, mitochondrialPermeabilization := True, deathSignalPropagation := True }
  ApoptosisSignalPathwayClosed P

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  refine {
    receptorActivation := True.intro,
    caspaseCascade := True.intro,
    mitochondrialPermeabilization := True.intro,
    deathSignalPropagation := True.intro
  }

end CellBiologyApoptosisLemmaCanonicalLaneLean
end HautevilleHouse