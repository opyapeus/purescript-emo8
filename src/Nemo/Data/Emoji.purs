module Nemo.Data.Emoji where

import Prelude

import Data.Either (Either(..))
import Data.String (joinWith)
import Nemo.Class.Read (class Read)
  
data Emoji
  = GrinningFace
  | BeamingFaceWithSmilingEyes
  | FaceWithTearsOfJoy
  | RollingOnTheFloorLaughing
  | GrinningFaceWithBigEyes
  | GrinningFaceWithSmilingEyes
  | GrinningFaceWithSweat
  | GrinningSquintingFace
  | WinkingFace
  | SmilingFaceWithSmilingEyes
  | FaceSavoringFood
  | SmilingFaceWithSunglasses
  | SmilingFaceWithHeartEyes
  | FaceBlowingAKiss
  | SmilingFaceWith3Hearts
  | KissingFace
  | KissingFaceWithSmilingEyes
  | KissingFaceWithClosedEyes
  | SmilingFace
  | SlightlySmilingFace
  | HuggingFace
  | StarStruck
  | ThinkingFace
  | FaceWithRaisedEyebrow
  | NeutralFace
  | ExpressionlessFace
  | FaceWithoutMouth
  | FaceWithRollingEyes
  | SmirkingFace
  | PerseveringFace
  | SadButRelievedFace
  | FaceWithOpenMouth
  | ZipperMouthFace
  | HushedFace
  | SleepyFace
  | TiredFace
  | SleepingFace
  | RelievedFace
  | FaceWithTongue
  | WinkingFaceWithTongue
  | SquintingFaceWithTongue
  | DroolingFace
  | UnamusedFace
  | DowncastFaceWithSweat
  | PensiveFace
  | ConfusedFace
  | UpsideDownFace
  | MoneyMouthFace
  | AstonishedFace
  | FrowningFace
  | SlightlyFrowningFace
  | ConfoundedFace
  | DisappointedFace
  | WorriedFace
  | FaceWithSteamFromNose
  | CryingFace
  | LoudlyCryingFace
  | FrowningFaceWithOpenMouth
  | AnguishedFace
  | FearfulFace
  | WearyFace
  | ExplodingHead
  | GrimacingFace
  | AnxiousFaceWithSweat
  | FaceScreamingInFear
  | HotFace
  | ColdFace
  | FlushedFace
  | ZanyFace
  | DizzyFace
  | PoutingFace
  | AngryFace
  | FaceWithSymbolsOnMouth
  | FaceWithMedicalMask
  | FaceWithThermometer
  | FaceWithHeadBandage
  | NauseatedFace
  | FaceVomiting
  | SneezingFace
  | SmilingFaceWithHalo
  | CowboyHatFace
  | PartyingFace
  | WoozyFace
  | PleadingFace
  | LyingFace
  | ShushingFace
  | FaceWithHandOverMouth
  | FaceWithMonocle
  | NerdFace
  | SmilingFaceWithHorns
  | AngryFaceWithHorns
  | ClownFace
  | Ogre
  | Goblin
  | Skull
  | SkullAndCrossbones
  | Ghost
  | Alien
  | AlienMonster
  | RobotFace
  | PileOfPoo
  | GrinningCatFace
  | GrinningCatFaceWithSmilingEyes
  | CatFaceWithTearsOfJoy
  | SmilingCatFaceWithHeartEyes
  | CatFaceWithWrySmile
  | KissingCatFace
  | WearyCatFace
  | CryingCatFace
  | PoutingCatFace
  | SeeNoEvilMonkey
  | HearNoEvilMonkey
  | SpeakNoEvilMonkey
  | LightSkinTone
  | MediumLightSkinTone
  | MediumSkinTone
  | MediumDarkSkinTone
  | DarkSkinTone
  | Baby
--   | BabyLightSkinTone
--   | BabyMediumLightSkinTone
--   | BabyMediumSkinTone
--   | BabyMediumDarkSkinTone
--   | BabyDarkSkinTone
  | Child
--   | ChildLightSkinTone
--   | ChildMediumLightSkinTone
--   | ChildMediumSkinTone
--   | ChildMediumDarkSkinTone
--   | ChildDarkSkinTone
  | Boy
--   | BoyLightSkinTone
--   | BoyMediumLightSkinTone
--   | BoyMediumSkinTone
--   | BoyMediumDarkSkinTone
--   | BoyDarkSkinTone
  | Girl
--   | GirlLightSkinTone
--   | GirlMediumLightSkinTone
--   | GirlMediumSkinTone
--   | GirlMediumDarkSkinTone
--   | GirlDarkSkinTone
  | Adult
--   | AdultLightSkinTone
--   | AdultMediumLightSkinTone
--   | AdultMediumSkinTone
--   | AdultMediumDarkSkinTone
--   | AdultDarkSkinTone
  | Man
--   | ManLightSkinTone
--   | ManMediumLightSkinTone
--   | ManMediumSkinTone
--   | ManMediumDarkSkinTone
--   | ManDarkSkinTone
  | Woman
--   | WomanLightSkinTone
--   | WomanMediumLightSkinTone
--   | WomanMediumSkinTone
--   | WomanMediumDarkSkinTone
--   | WomanDarkSkinTone
  | OlderAdult
--   | OlderAdultLightSkinTone
--   | OlderAdultMediumLightSkinTone
--   | OlderAdultMediumSkinTone
--   | OlderAdultMediumDarkSkinTone
--   | OlderAdultDarkSkinTone
  | OldMan
--   | OldManLightSkinTone
--   | OldManMediumLightSkinTone
--   | OldManMediumSkinTone
--   | OldManMediumDarkSkinTone
--   | OldManDarkSkinTone
  | OldWoman
--   | OldWomanLightSkinTone
--   | OldWomanMediumLightSkinTone
--   | OldWomanMediumSkinTone
--   | OldWomanMediumDarkSkinTone
--   | OldWomanDarkSkinTone
  | ManHealthWorker
--   | ManHealthWorkerLightSkinTone
--   | ManHealthWorkerMediumLightSkinTone
--   | ManHealthWorkerMediumSkinTone
--   | ManHealthWorkerMediumDarkSkinTone
--   | ManHealthWorkerDarkSkinTone
  | WomanHealthWorker
--   | WomanHealthWorkerLightSkinTone
--   | WomanHealthWorkerMediumLightSkinTone
--   | WomanHealthWorkerMediumSkinTone
--   | WomanHealthWorkerMediumDarkSkinTone
--   | WomanHealthWorkerDarkSkinTone
  | ManStudent
--   | ManStudentLightSkinTone
--   | ManStudentMediumLightSkinTone
--   | ManStudentMediumSkinTone
--   | ManStudentMediumDarkSkinTone
--   | ManStudentDarkSkinTone
  | WomanStudent
--   | WomanStudentLightSkinTone
--   | WomanStudentMediumLightSkinTone
--   | WomanStudentMediumSkinTone
--   | WomanStudentMediumDarkSkinTone
--   | WomanStudentDarkSkinTone
  | ManTeacher
--   | ManTeacherLightSkinTone
--   | ManTeacherMediumLightSkinTone
--   | ManTeacherMediumSkinTone
--   | ManTeacherMediumDarkSkinTone
--   | ManTeacherDarkSkinTone
  | WomanTeacher
--   | WomanTeacherLightSkinTone
--   | WomanTeacherMediumLightSkinTone
--   | WomanTeacherMediumSkinTone
--   | WomanTeacherMediumDarkSkinTone
--   | WomanTeacherDarkSkinTone
  | ManJudge
--   | ManJudgeLightSkinTone
--   | ManJudgeMediumLightSkinTone
--   | ManJudgeMediumSkinTone
--   | ManJudgeMediumDarkSkinTone
--   | ManJudgeDarkSkinTone
  | WomanJudge
--   | WomanJudgeLightSkinTone
--   | WomanJudgeMediumLightSkinTone
--   | WomanJudgeMediumSkinTone
--   | WomanJudgeMediumDarkSkinTone
--   | WomanJudgeDarkSkinTone
  | ManFarmer
--   | ManFarmerLightSkinTone
--   | ManFarmerMediumLightSkinTone
--   | ManFarmerMediumSkinTone
--   | ManFarmerMediumDarkSkinTone
--   | ManFarmerDarkSkinTone
  | WomanFarmer
--   | WomanFarmerLightSkinTone
--   | WomanFarmerMediumLightSkinTone
--   | WomanFarmerMediumSkinTone
--   | WomanFarmerMediumDarkSkinTone
--   | WomanFarmerDarkSkinTone
  | ManCook
--   | ManCookLightSkinTone
--   | ManCookMediumLightSkinTone
--   | ManCookMediumSkinTone
--   | ManCookMediumDarkSkinTone
--   | ManCookDarkSkinTone
  | WomanCook
--   | WomanCookLightSkinTone
--   | WomanCookMediumLightSkinTone
--   | WomanCookMediumSkinTone
--   | WomanCookMediumDarkSkinTone
--   | WomanCookDarkSkinTone
  | ManMechanic
--   | ManMechanicLightSkinTone
--   | ManMechanicMediumLightSkinTone
--   | ManMechanicMediumSkinTone
--   | ManMechanicMediumDarkSkinTone
--   | ManMechanicDarkSkinTone
  | WomanMechanic
--   | WomanMechanicLightSkinTone
--   | WomanMechanicMediumLightSkinTone
--   | WomanMechanicMediumSkinTone
--   | WomanMechanicMediumDarkSkinTone
--   | WomanMechanicDarkSkinTone
  | ManFactoryWorker
--   | ManFactoryWorkerLightSkinTone
--   | ManFactoryWorkerMediumLightSkinTone
--   | ManFactoryWorkerMediumSkinTone
--   | ManFactoryWorkerMediumDarkSkinTone
--   | ManFactoryWorkerDarkSkinTone
  | WomanFactoryWorker
--   | WomanFactoryWorkerLightSkinTone
--   | WomanFactoryWorkerMediumLightSkinTone
--   | WomanFactoryWorkerMediumSkinTone
--   | WomanFactoryWorkerMediumDarkSkinTone
--   | WomanFactoryWorkerDarkSkinTone
  | ManOfficeWorker
--   | ManOfficeWorkerLightSkinTone
--   | ManOfficeWorkerMediumLightSkinTone
--   | ManOfficeWorkerMediumSkinTone
--   | ManOfficeWorkerMediumDarkSkinTone
--   | ManOfficeWorkerDarkSkinTone
  | WomanOfficeWorker
--   | WomanOfficeWorkerLightSkinTone
--   | WomanOfficeWorkerMediumLightSkinTone
--   | WomanOfficeWorkerMediumSkinTone
--   | WomanOfficeWorkerMediumDarkSkinTone
--   | WomanOfficeWorkerDarkSkinTone
  | ManScientist
--   | ManScientistLightSkinTone
--   | ManScientistMediumLightSkinTone
--   | ManScientistMediumSkinTone
--   | ManScientistMediumDarkSkinTone
--   | ManScientistDarkSkinTone
  | WomanScientist
--   | WomanScientistLightSkinTone
--   | WomanScientistMediumLightSkinTone
--   | WomanScientistMediumSkinTone
--   | WomanScientistMediumDarkSkinTone
--   | WomanScientistDarkSkinTone
  | ManTechnologist
--   | ManTechnologistLightSkinTone
--   | ManTechnologistMediumLightSkinTone
--   | ManTechnologistMediumSkinTone
--   | ManTechnologistMediumDarkSkinTone
--   | ManTechnologistDarkSkinTone
  | WomanTechnologist
--   | WomanTechnologistLightSkinTone
--   | WomanTechnologistMediumLightSkinTone
--   | WomanTechnologistMediumSkinTone
--   | WomanTechnologistMediumDarkSkinTone
--   | WomanTechnologistDarkSkinTone
  | ManSinger
--   | ManSingerLightSkinTone
--   | ManSingerMediumLightSkinTone
--   | ManSingerMediumSkinTone
--   | ManSingerMediumDarkSkinTone
--   | ManSingerDarkSkinTone
  | WomanSinger
--   | WomanSingerLightSkinTone
--   | WomanSingerMediumLightSkinTone
--   | WomanSingerMediumSkinTone
--   | WomanSingerMediumDarkSkinTone
--   | WomanSingerDarkSkinTone
  | ManArtist
--   | ManArtistLightSkinTone
--   | ManArtistMediumLightSkinTone
--   | ManArtistMediumSkinTone
--   | ManArtistMediumDarkSkinTone
--   | ManArtistDarkSkinTone
  | WomanArtist
--   | WomanArtistLightSkinTone
--   | WomanArtistMediumLightSkinTone
--   | WomanArtistMediumSkinTone
--   | WomanArtistMediumDarkSkinTone
--   | WomanArtistDarkSkinTone
  | ManPilot
--   | ManPilotLightSkinTone
--   | ManPilotMediumLightSkinTone
--   | ManPilotMediumSkinTone
--   | ManPilotMediumDarkSkinTone
--   | ManPilotDarkSkinTone
  | WomanPilot
--   | WomanPilotLightSkinTone
--   | WomanPilotMediumLightSkinTone
--   | WomanPilotMediumSkinTone
--   | WomanPilotMediumDarkSkinTone
--   | WomanPilotDarkSkinTone
  | ManAstronaut
--   | ManAstronautLightSkinTone
--   | ManAstronautMediumLightSkinTone
--   | ManAstronautMediumSkinTone
--   | ManAstronautMediumDarkSkinTone
--   | ManAstronautDarkSkinTone
  | WomanAstronaut
--   | WomanAstronautLightSkinTone
--   | WomanAstronautMediumLightSkinTone
--   | WomanAstronautMediumSkinTone
--   | WomanAstronautMediumDarkSkinTone
--   | WomanAstronautDarkSkinTone
  | ManFirefighter
--   | ManFirefighterLightSkinTone
--   | ManFirefighterMediumLightSkinTone
--   | ManFirefighterMediumSkinTone
--   | ManFirefighterMediumDarkSkinTone
--   | ManFirefighterDarkSkinTone
  | WomanFirefighter
--   | WomanFirefighterLightSkinTone
--   | WomanFirefighterMediumLightSkinTone
--   | WomanFirefighterMediumSkinTone
--   | WomanFirefighterMediumDarkSkinTone
--   | WomanFirefighterDarkSkinTone
  | PoliceOfficer
--   | PoliceOfficerLightSkinTone
--   | PoliceOfficerMediumLightSkinTone
--   | PoliceOfficerMediumSkinTone
--   | PoliceOfficerMediumDarkSkinTone
--   | PoliceOfficerDarkSkinTone
  | ManPoliceOfficer
--   | ManPoliceOfficerLightSkinTone
--   | ManPoliceOfficerMediumLightSkinTone
--   | ManPoliceOfficerMediumSkinTone
--   | ManPoliceOfficerMediumDarkSkinTone
--   | ManPoliceOfficerDarkSkinTone
  | WomanPoliceOfficer
--   | WomanPoliceOfficerLightSkinTone
--   | WomanPoliceOfficerMediumLightSkinTone
--   | WomanPoliceOfficerMediumSkinTone
--   | WomanPoliceOfficerMediumDarkSkinTone
--   | WomanPoliceOfficerDarkSkinTone
  | Detective
--   | DetectiveLightSkinTone
--   | DetectiveMediumLightSkinTone
--   | DetectiveMediumSkinTone
--   | DetectiveMediumDarkSkinTone
--   | DetectiveDarkSkinTone
  | ManDetective
--   | ManDetectiveLightSkinTone
--   | ManDetectiveMediumLightSkinTone
--   | ManDetectiveMediumSkinTone
--   | ManDetectiveMediumDarkSkinTone
--   | ManDetectiveDarkSkinTone
  | WomanDetective
--   | WomanDetectiveLightSkinTone
--   | WomanDetectiveMediumLightSkinTone
--   | WomanDetectiveMediumSkinTone
--   | WomanDetectiveMediumDarkSkinTone
--   | WomanDetectiveDarkSkinTone
  | Guard
--   | GuardLightSkinTone
--   | GuardMediumLightSkinTone
--   | GuardMediumSkinTone
--   | GuardMediumDarkSkinTone
--   | GuardDarkSkinTone
  | ManGuard
--   | ManGuardLightSkinTone
--   | ManGuardMediumLightSkinTone
--   | ManGuardMediumSkinTone
--   | ManGuardMediumDarkSkinTone
--   | ManGuardDarkSkinTone
  | WomanGuard
--   | WomanGuardLightSkinTone
--   | WomanGuardMediumLightSkinTone
--   | WomanGuardMediumSkinTone
--   | WomanGuardMediumDarkSkinTone
--   | WomanGuardDarkSkinTone
  | ConstructionWorker
--   | ConstructionWorkerLightSkinTone
--   | ConstructionWorkerMediumLightSkinTone
--   | ConstructionWorkerMediumSkinTone
--   | ConstructionWorkerMediumDarkSkinTone
--   | ConstructionWorkerDarkSkinTone
  | ManConstructionWorker
--   | ManConstructionWorkerLightSkinTone
--   | ManConstructionWorkerMediumLightSkinTone
--   | ManConstructionWorkerMediumSkinTone
--   | ManConstructionWorkerMediumDarkSkinTone
--   | ManConstructionWorkerDarkSkinTone
  | WomanConstructionWorker
--   | WomanConstructionWorkerLightSkinTone
--   | WomanConstructionWorkerMediumLightSkinTone
--   | WomanConstructionWorkerMediumSkinTone
--   | WomanConstructionWorkerMediumDarkSkinTone
--   | WomanConstructionWorkerDarkSkinTone
  | Prince
--   | PrinceLightSkinTone
--   | PrinceMediumLightSkinTone
--   | PrinceMediumSkinTone
--   | PrinceMediumDarkSkinTone
--   | PrinceDarkSkinTone
  | Princess
--   | PrincessLightSkinTone
--   | PrincessMediumLightSkinTone
--   | PrincessMediumSkinTone
--   | PrincessMediumDarkSkinTone
--   | PrincessDarkSkinTone
  | PersonWearingTurban
--   | PersonWearingTurbanLightSkinTone
--   | PersonWearingTurbanMediumLightSkinTone
--   | PersonWearingTurbanMediumSkinTone
--   | PersonWearingTurbanMediumDarkSkinTone
--   | PersonWearingTurbanDarkSkinTone
  | ManWearingTurban
--   | ManWearingTurbanLightSkinTone
--   | ManWearingTurbanMediumLightSkinTone
--   | ManWearingTurbanMediumSkinTone
--   | ManWearingTurbanMediumDarkSkinTone
--   | ManWearingTurbanDarkSkinTone
  | WomanWearingTurban
--   | WomanWearingTurbanLightSkinTone
--   | WomanWearingTurbanMediumLightSkinTone
--   | WomanWearingTurbanMediumSkinTone
--   | WomanWearingTurbanMediumDarkSkinTone
--   | WomanWearingTurbanDarkSkinTone
  | ManWithChineseCap
--   | ManWithChineseCapLightSkinTone
--   | ManWithChineseCapMediumLightSkinTone
--   | ManWithChineseCapMediumSkinTone
--   | ManWithChineseCapMediumDarkSkinTone
--   | ManWithChineseCapDarkSkinTone
  | WomanWithHeadscarf
--   | WomanWithHeadscarfLightSkinTone
--   | WomanWithHeadscarfMediumLightSkinTone
--   | WomanWithHeadscarfMediumSkinTone
--   | WomanWithHeadscarfMediumDarkSkinTone
--   | WomanWithHeadscarfDarkSkinTone
  | BeardedPerson
--   | BeardedPersonLightSkinTone
--   | BeardedPersonMediumLightSkinTone
--   | BeardedPersonMediumSkinTone
--   | BeardedPersonMediumDarkSkinTone
--   | BeardedPersonDarkSkinTone
  | BlondHairedPerson
--   | BlondHairedPersonLightSkinTone
--   | BlondHairedPersonMediumLightSkinTone
--   | BlondHairedPersonMediumSkinTone
--   | BlondHairedPersonMediumDarkSkinTone
--   | BlondHairedPersonDarkSkinTone
  | BlondHairedMan
--   | BlondHairedManLightSkinTone
--   | BlondHairedManMediumLightSkinTone
--   | BlondHairedManMediumSkinTone
--   | BlondHairedManMediumDarkSkinTone
--   | BlondHairedManDarkSkinTone
  | BlondHairedWoman
--   | BlondHairedWomanLightSkinTone
--   | BlondHairedWomanMediumLightSkinTone
--   | BlondHairedWomanMediumSkinTone
--   | BlondHairedWomanMediumDarkSkinTone
--   | BlondHairedWomanDarkSkinTone
  | ManRedHaired
--   | ManRedHairedLightSkinTone
--   | ManRedHairedMediumLightSkinTone
--   | ManRedHairedMediumSkinTone
--   | ManRedHairedMediumDarkSkinTone
--   | ManRedHairedDarkSkinTone
  | WomanRedHaired
--   | WomanRedHairedLightSkinTone
--   | WomanRedHairedMediumLightSkinTone
--   | WomanRedHairedMediumSkinTone
--   | WomanRedHairedMediumDarkSkinTone
--   | WomanRedHairedDarkSkinTone
  | ManCurlyHaired
--   | ManCurlyHairedLightSkinTone
--   | ManCurlyHairedMediumLightSkinTone
--   | ManCurlyHairedMediumSkinTone
--   | ManCurlyHairedMediumDarkSkinTone
--   | ManCurlyHairedDarkSkinTone
  | WomanCurlyHaired
--   | WomanCurlyHairedLightSkinTone
--   | WomanCurlyHairedMediumLightSkinTone
--   | WomanCurlyHairedMediumSkinTone
--   | WomanCurlyHairedMediumDarkSkinTone
--   | WomanCurlyHairedDarkSkinTone
  | ManBald
--   | ManBaldLightSkinTone
--   | ManBaldMediumLightSkinTone
--   | ManBaldMediumSkinTone
--   | ManBaldMediumDarkSkinTone
--   | ManBaldDarkSkinTone
  | WomanBald
--   | WomanBaldLightSkinTone
--   | WomanBaldMediumLightSkinTone
--   | WomanBaldMediumSkinTone
--   | WomanBaldMediumDarkSkinTone
--   | WomanBaldDarkSkinTone
  | ManWhiteHaired
--   | ManWhiteHairedLightSkinTone
--   | ManWhiteHairedMediumLightSkinTone
--   | ManWhiteHairedMediumSkinTone
--   | ManWhiteHairedMediumDarkSkinTone
--   | ManWhiteHairedDarkSkinTone
  | WomanWhiteHaired
--   | WomanWhiteHairedLightSkinTone
--   | WomanWhiteHairedMediumLightSkinTone
--   | WomanWhiteHairedMediumSkinTone
--   | WomanWhiteHairedMediumDarkSkinTone
--   | WomanWhiteHairedDarkSkinTone
  | ManInTuxedo
--   | ManInTuxedoLightSkinTone
--   | ManInTuxedoMediumLightSkinTone
--   | ManInTuxedoMediumSkinTone
--   | ManInTuxedoMediumDarkSkinTone
--   | ManInTuxedoDarkSkinTone
  | BrideWithVeil
--   | BrideWithVeilLightSkinTone
--   | BrideWithVeilMediumLightSkinTone
--   | BrideWithVeilMediumSkinTone
--   | BrideWithVeilMediumDarkSkinTone
--   | BrideWithVeilDarkSkinTone
  | PregnantWoman
--   | PregnantWomanLightSkinTone
--   | PregnantWomanMediumLightSkinTone
--   | PregnantWomanMediumSkinTone
--   | PregnantWomanMediumDarkSkinTone
--   | PregnantWomanDarkSkinTone
  | BreastFeeding
--   | BreastFeedingLightSkinTone
--   | BreastFeedingMediumLightSkinTone
--   | BreastFeedingMediumSkinTone
--   | BreastFeedingMediumDarkSkinTone
--   | BreastFeedingDarkSkinTone
  | BabyAngel
--   | BabyAngelLightSkinTone
--   | BabyAngelMediumLightSkinTone
--   | BabyAngelMediumSkinTone
--   | BabyAngelMediumDarkSkinTone
--   | BabyAngelDarkSkinTone
  | SantaClaus
--   | SantaClausLightSkinTone
--   | SantaClausMediumLightSkinTone
--   | SantaClausMediumSkinTone
--   | SantaClausMediumDarkSkinTone
--   | SantaClausDarkSkinTone
  | MrsClaus
--   | MrsClausLightSkinTone
--   | MrsClausMediumLightSkinTone
--   | MrsClausMediumSkinTone
--   | MrsClausMediumDarkSkinTone
--   | MrsClausDarkSkinTone
  | Superhero
--   | SuperheroLightSkinTone
--   | SuperheroMediumLightSkinTone
--   | SuperheroMediumSkinTone
--   | SuperheroMediumDarkSkinTone
--   | SuperheroDarkSkinTone
  | WomanSuperhero
--   | WomanSuperheroLightSkinTone
--   | WomanSuperheroMediumLightSkinTone
--   | WomanSuperheroMediumSkinTone
--   | WomanSuperheroMediumDarkSkinTone
--   | WomanSuperheroDarkSkinTone
  | ManSuperhero
--   | ManSuperheroLightSkinTone
--   | ManSuperheroMediumLightSkinTone
--   | ManSuperheroMediumSkinTone
--   | ManSuperheroMediumDarkSkinTone
--   | ManSuperheroDarkSkinTone
  | Supervillain
--   | SupervillainLightSkinTone
--   | SupervillainMediumLightSkinTone
--   | SupervillainMediumSkinTone
--   | SupervillainMediumDarkSkinTone
--   | SupervillainDarkSkinTone
  | WomanSupervillain
--   | WomanSupervillainLightSkinTone
--   | WomanSupervillainMediumLightSkinTone
--   | WomanSupervillainMediumSkinTone
--   | WomanSupervillainMediumDarkSkinTone
--   | WomanSupervillainDarkSkinTone
  | ManSupervillain
--   | ManSupervillainLightSkinTone
--   | ManSupervillainMediumLightSkinTone
--   | ManSupervillainMediumSkinTone
--   | ManSupervillainMediumDarkSkinTone
--   | ManSupervillainDarkSkinTone
  | Mage
--   | MageLightSkinTone
--   | MageMediumLightSkinTone
--   | MageMediumSkinTone
--   | MageMediumDarkSkinTone
--   | MageDarkSkinTone
  | WomanMage
--   | WomanMageLightSkinTone
--   | WomanMageMediumLightSkinTone
--   | WomanMageMediumSkinTone
--   | WomanMageMediumDarkSkinTone
--   | WomanMageDarkSkinTone
  | ManMage
--   | ManMageLightSkinTone
--   | ManMageMediumLightSkinTone
--   | ManMageMediumSkinTone
--   | ManMageMediumDarkSkinTone
--   | ManMageDarkSkinTone
  | Fairy
--   | FairyLightSkinTone
--   | FairyMediumLightSkinTone
--   | FairyMediumSkinTone
--   | FairyMediumDarkSkinTone
--   | FairyDarkSkinTone
  | WomanFairy
--   | WomanFairyLightSkinTone
--   | WomanFairyMediumLightSkinTone
--   | WomanFairyMediumSkinTone
--   | WomanFairyMediumDarkSkinTone
--   | WomanFairyDarkSkinTone
  | ManFairy
--   | ManFairyLightSkinTone
--   | ManFairyMediumLightSkinTone
--   | ManFairyMediumSkinTone
--   | ManFairyMediumDarkSkinTone
--   | ManFairyDarkSkinTone
  | Vampire
--   | VampireLightSkinTone
--   | VampireMediumLightSkinTone
--   | VampireMediumSkinTone
--   | VampireMediumDarkSkinTone
--   | VampireDarkSkinTone
  | WomanVampire
--   | WomanVampireLightSkinTone
--   | WomanVampireMediumLightSkinTone
--   | WomanVampireMediumSkinTone
--   | WomanVampireMediumDarkSkinTone
--   | WomanVampireDarkSkinTone
  | ManVampire
--   | ManVampireLightSkinTone
--   | ManVampireMediumLightSkinTone
--   | ManVampireMediumSkinTone
--   | ManVampireMediumDarkSkinTone
--   | ManVampireDarkSkinTone
  | Merperson
--   | MerpersonLightSkinTone
--   | MerpersonMediumLightSkinTone
--   | MerpersonMediumSkinTone
--   | MerpersonMediumDarkSkinTone
--   | MerpersonDarkSkinTone
  | Mermaid
--   | MermaidLightSkinTone
--   | MermaidMediumLightSkinTone
--   | MermaidMediumSkinTone
--   | MermaidMediumDarkSkinTone
--   | MermaidDarkSkinTone
  | Merman
--   | MermanLightSkinTone
--   | MermanMediumLightSkinTone
--   | MermanMediumSkinTone
--   | MermanMediumDarkSkinTone
--   | MermanDarkSkinTone
  | Elf
--   | ElfLightSkinTone
--   | ElfMediumLightSkinTone
--   | ElfMediumSkinTone
--   | ElfMediumDarkSkinTone
--   | ElfDarkSkinTone
  | WomanElf
--   | WomanElfLightSkinTone
--   | WomanElfMediumLightSkinTone
--   | WomanElfMediumSkinTone
--   | WomanElfMediumDarkSkinTone
--   | WomanElfDarkSkinTone
  | ManElf
--   | ManElfLightSkinTone
--   | ManElfMediumLightSkinTone
--   | ManElfMediumSkinTone
--   | ManElfMediumDarkSkinTone
--   | ManElfDarkSkinTone
  | Genie
  | WomanGenie
  | ManGenie
  | Zombie
  | WomanZombie
  | ManZombie
  | PersonFrowning
--   | PersonFrowningLightSkinTone
--   | PersonFrowningMediumLightSkinTone
--   | PersonFrowningMediumSkinTone
--   | PersonFrowningMediumDarkSkinTone
--   | PersonFrowningDarkSkinTone
  | ManFrowning
--   | ManFrowningLightSkinTone
--   | ManFrowningMediumLightSkinTone
--   | ManFrowningMediumSkinTone
--   | ManFrowningMediumDarkSkinTone
--   | ManFrowningDarkSkinTone
  | WomanFrowning
--   | WomanFrowningLightSkinTone
--   | WomanFrowningMediumLightSkinTone
--   | WomanFrowningMediumSkinTone
--   | WomanFrowningMediumDarkSkinTone
--   | WomanFrowningDarkSkinTone
  | PersonPouting
--   | PersonPoutingLightSkinTone
--   | PersonPoutingMediumLightSkinTone
--   | PersonPoutingMediumSkinTone
--   | PersonPoutingMediumDarkSkinTone
--   | PersonPoutingDarkSkinTone
  | ManPouting
--   | ManPoutingLightSkinTone
--   | ManPoutingMediumLightSkinTone
--   | ManPoutingMediumSkinTone
--   | ManPoutingMediumDarkSkinTone
--   | ManPoutingDarkSkinTone
  | WomanPouting
--   | WomanPoutingLightSkinTone
--   | WomanPoutingMediumLightSkinTone
--   | WomanPoutingMediumSkinTone
--   | WomanPoutingMediumDarkSkinTone
--   | WomanPoutingDarkSkinTone
  | PersonGesturingNO
--   | PersonGesturingNOLightSkinTone
--   | PersonGesturingNOMediumLightSkinTone
--   | PersonGesturingNOMediumSkinTone
--   | PersonGesturingNOMediumDarkSkinTone
--   | PersonGesturingNODarkSkinTone
  | ManGesturingNO
--   | ManGesturingNOLightSkinTone
--   | ManGesturingNOMediumLightSkinTone
--   | ManGesturingNOMediumSkinTone
--   | ManGesturingNOMediumDarkSkinTone
--   | ManGesturingNODarkSkinTone
  | WomanGesturingNO
--   | WomanGesturingNOLightSkinTone
--   | WomanGesturingNOMediumLightSkinTone
--   | WomanGesturingNOMediumSkinTone
--   | WomanGesturingNOMediumDarkSkinTone
--   | WomanGesturingNODarkSkinTone
  | PersonGesturingOK
--   | PersonGesturingOKLightSkinTone
--   | PersonGesturingOKMediumLightSkinTone
--   | PersonGesturingOKMediumSkinTone
--   | PersonGesturingOKMediumDarkSkinTone
--   | PersonGesturingOKDarkSkinTone
  | ManGesturingOK
--   | ManGesturingOKLightSkinTone
--   | ManGesturingOKMediumLightSkinTone
--   | ManGesturingOKMediumSkinTone
--   | ManGesturingOKMediumDarkSkinTone
--   | ManGesturingOKDarkSkinTone
  | WomanGesturingOK
--   | WomanGesturingOKLightSkinTone
--   | WomanGesturingOKMediumLightSkinTone
--   | WomanGesturingOKMediumSkinTone
--   | WomanGesturingOKMediumDarkSkinTone
--   | WomanGesturingOKDarkSkinTone
  | PersonTippingHand
--   | PersonTippingHandLightSkinTone
--   | PersonTippingHandMediumLightSkinTone
--   | PersonTippingHandMediumSkinTone
--   | PersonTippingHandMediumDarkSkinTone
--   | PersonTippingHandDarkSkinTone
  | ManTippingHand
--   | ManTippingHandLightSkinTone
--   | ManTippingHandMediumLightSkinTone
--   | ManTippingHandMediumSkinTone
--   | ManTippingHandMediumDarkSkinTone
--   | ManTippingHandDarkSkinTone
  | WomanTippingHand
--   | WomanTippingHandLightSkinTone
--   | WomanTippingHandMediumLightSkinTone
--   | WomanTippingHandMediumSkinTone
--   | WomanTippingHandMediumDarkSkinTone
--   | WomanTippingHandDarkSkinTone
  | PersonRaisingHand
--   | PersonRaisingHandLightSkinTone
--   | PersonRaisingHandMediumLightSkinTone
--   | PersonRaisingHandMediumSkinTone
--   | PersonRaisingHandMediumDarkSkinTone
--   | PersonRaisingHandDarkSkinTone
  | ManRaisingHand
--   | ManRaisingHandLightSkinTone
--   | ManRaisingHandMediumLightSkinTone
--   | ManRaisingHandMediumSkinTone
--   | ManRaisingHandMediumDarkSkinTone
--   | ManRaisingHandDarkSkinTone
  | WomanRaisingHand
--   | WomanRaisingHandLightSkinTone
--   | WomanRaisingHandMediumLightSkinTone
--   | WomanRaisingHandMediumSkinTone
--   | WomanRaisingHandMediumDarkSkinTone
--   | WomanRaisingHandDarkSkinTone
  | PersonBowing
--   | PersonBowingLightSkinTone
--   | PersonBowingMediumLightSkinTone
--   | PersonBowingMediumSkinTone
--   | PersonBowingMediumDarkSkinTone
--   | PersonBowingDarkSkinTone
  | ManBowing
--   | ManBowingLightSkinTone
--   | ManBowingMediumLightSkinTone
--   | ManBowingMediumSkinTone
--   | ManBowingMediumDarkSkinTone
--   | ManBowingDarkSkinTone
  | WomanBowing
--   | WomanBowingLightSkinTone
--   | WomanBowingMediumLightSkinTone
--   | WomanBowingMediumSkinTone
--   | WomanBowingMediumDarkSkinTone
--   | WomanBowingDarkSkinTone
  | PersonFacepalming
--   | PersonFacepalmingLightSkinTone
--   | PersonFacepalmingMediumLightSkinTone
--   | PersonFacepalmingMediumSkinTone
--   | PersonFacepalmingMediumDarkSkinTone
--   | PersonFacepalmingDarkSkinTone
  | ManFacepalming
--   | ManFacepalmingLightSkinTone
--   | ManFacepalmingMediumLightSkinTone
--   | ManFacepalmingMediumSkinTone
--   | ManFacepalmingMediumDarkSkinTone
--   | ManFacepalmingDarkSkinTone
  | WomanFacepalming
--   | WomanFacepalmingLightSkinTone
--   | WomanFacepalmingMediumLightSkinTone
--   | WomanFacepalmingMediumSkinTone
--   | WomanFacepalmingMediumDarkSkinTone
--   | WomanFacepalmingDarkSkinTone
  | PersonShrugging
--   | PersonShruggingLightSkinTone
--   | PersonShruggingMediumLightSkinTone
--   | PersonShruggingMediumSkinTone
--   | PersonShruggingMediumDarkSkinTone
--   | PersonShruggingDarkSkinTone
  | ManShrugging
--   | ManShruggingLightSkinTone
--   | ManShruggingMediumLightSkinTone
--   | ManShruggingMediumSkinTone
--   | ManShruggingMediumDarkSkinTone
--   | ManShruggingDarkSkinTone
  | WomanShrugging
--   | WomanShruggingLightSkinTone
--   | WomanShruggingMediumLightSkinTone
--   | WomanShruggingMediumSkinTone
--   | WomanShruggingMediumDarkSkinTone
--   | WomanShruggingDarkSkinTone
  | PersonGettingMassage
--   | PersonGettingMassageLightSkinTone
--   | PersonGettingMassageMediumLightSkinTone
--   | PersonGettingMassageMediumSkinTone
--   | PersonGettingMassageMediumDarkSkinTone
--   | PersonGettingMassageDarkSkinTone
  | ManGettingMassage
--   | ManGettingMassageLightSkinTone
--   | ManGettingMassageMediumLightSkinTone
--   | ManGettingMassageMediumSkinTone
--   | ManGettingMassageMediumDarkSkinTone
--   | ManGettingMassageDarkSkinTone
  | WomanGettingMassage
--   | WomanGettingMassageLightSkinTone
--   | WomanGettingMassageMediumLightSkinTone
--   | WomanGettingMassageMediumSkinTone
--   | WomanGettingMassageMediumDarkSkinTone
--   | WomanGettingMassageDarkSkinTone
  | PersonGettingHaircut
--   | PersonGettingHaircutLightSkinTone
--   | PersonGettingHaircutMediumLightSkinTone
--   | PersonGettingHaircutMediumSkinTone
--   | PersonGettingHaircutMediumDarkSkinTone
--   | PersonGettingHaircutDarkSkinTone
  | ManGettingHaircut
--   | ManGettingHaircutLightSkinTone
--   | ManGettingHaircutMediumLightSkinTone
--   | ManGettingHaircutMediumSkinTone
--   | ManGettingHaircutMediumDarkSkinTone
--   | ManGettingHaircutDarkSkinTone
  | WomanGettingHaircut
--   | WomanGettingHaircutLightSkinTone
--   | WomanGettingHaircutMediumLightSkinTone
--   | WomanGettingHaircutMediumSkinTone
--   | WomanGettingHaircutMediumDarkSkinTone
--   | WomanGettingHaircutDarkSkinTone
  | PersonWalking
--   | PersonWalkingLightSkinTone
--   | PersonWalkingMediumLightSkinTone
--   | PersonWalkingMediumSkinTone
--   | PersonWalkingMediumDarkSkinTone
--   | PersonWalkingDarkSkinTone
  | ManWalking
--   | ManWalkingLightSkinTone
--   | ManWalkingMediumLightSkinTone
--   | ManWalkingMediumSkinTone
--   | ManWalkingMediumDarkSkinTone
--   | ManWalkingDarkSkinTone
  | WomanWalking
--   | WomanWalkingLightSkinTone
--   | WomanWalkingMediumLightSkinTone
--   | WomanWalkingMediumSkinTone
--   | WomanWalkingMediumDarkSkinTone
--   | WomanWalkingDarkSkinTone
  | PersonRunning
--   | PersonRunningLightSkinTone
--   | PersonRunningMediumLightSkinTone
--   | PersonRunningMediumSkinTone
--   | PersonRunningMediumDarkSkinTone
--   | PersonRunningDarkSkinTone
  | ManRunning
--   | ManRunningLightSkinTone
--   | ManRunningMediumLightSkinTone
--   | ManRunningMediumSkinTone
--   | ManRunningMediumDarkSkinTone
--   | ManRunningDarkSkinTone
  | WomanRunning
--   | WomanRunningLightSkinTone
--   | WomanRunningMediumLightSkinTone
--   | WomanRunningMediumSkinTone
--   | WomanRunningMediumDarkSkinTone
--   | WomanRunningDarkSkinTone
  | WomanDancing
--   | WomanDancingLightSkinTone
--   | WomanDancingMediumLightSkinTone
--   | WomanDancingMediumSkinTone
--   | WomanDancingMediumDarkSkinTone
--   | WomanDancingDarkSkinTone
  | ManDancing
--   | ManDancingLightSkinTone
--   | ManDancingMediumLightSkinTone
--   | ManDancingMediumSkinTone
--   | ManDancingMediumDarkSkinTone
--   | ManDancingDarkSkinTone
  | PeopleWithBunnyEars
  | MenWithBunnyEars
  | WomenWithBunnyEars
  | PersonInSteamyRoom
--   | PersonInSteamyRoomLightSkinTone
--   | PersonInSteamyRoomMediumLightSkinTone
--   | PersonInSteamyRoomMediumSkinTone
--   | PersonInSteamyRoomMediumDarkSkinTone
--   | PersonInSteamyRoomDarkSkinTone
  | WomanInSteamyRoom
--   | WomanInSteamyRoomLightSkinTone
--   | WomanInSteamyRoomMediumLightSkinTone
--   | WomanInSteamyRoomMediumSkinTone
--   | WomanInSteamyRoomMediumDarkSkinTone
--   | WomanInSteamyRoomDarkSkinTone
  | ManInSteamyRoom
--   | ManInSteamyRoomLightSkinTone
--   | ManInSteamyRoomMediumLightSkinTone
--   | ManInSteamyRoomMediumSkinTone
--   | ManInSteamyRoomMediumDarkSkinTone
--   | ManInSteamyRoomDarkSkinTone
  | PersonClimbing
--   | PersonClimbingLightSkinTone
--   | PersonClimbingMediumLightSkinTone
--   | PersonClimbingMediumSkinTone
--   | PersonClimbingMediumDarkSkinTone
--   | PersonClimbingDarkSkinTone
  | WomanClimbing
--   | WomanClimbingLightSkinTone
--   | WomanClimbingMediumLightSkinTone
--   | WomanClimbingMediumSkinTone
--   | WomanClimbingMediumDarkSkinTone
--   | WomanClimbingDarkSkinTone
  | ManClimbing
--   | ManClimbingLightSkinTone
--   | ManClimbingMediumLightSkinTone
--   | ManClimbingMediumSkinTone
--   | ManClimbingMediumDarkSkinTone
--   | ManClimbingDarkSkinTone
  | PersonInLotusPosition
--   | PersonInLotusPositionLightSkinTone
--   | PersonInLotusPositionMediumLightSkinTone
--   | PersonInLotusPositionMediumSkinTone
--   | PersonInLotusPositionMediumDarkSkinTone
--   | PersonInLotusPositionDarkSkinTone
  | WomanInLotusPosition
--   | WomanInLotusPositionLightSkinTone
--   | WomanInLotusPositionMediumLightSkinTone
--   | WomanInLotusPositionMediumSkinTone
--   | WomanInLotusPositionMediumDarkSkinTone
--   | WomanInLotusPositionDarkSkinTone
  | ManInLotusPosition
--   | ManInLotusPositionLightSkinTone
--   | ManInLotusPositionMediumLightSkinTone
--   | ManInLotusPositionMediumSkinTone
--   | ManInLotusPositionMediumDarkSkinTone
--   | ManInLotusPositionDarkSkinTone
  | PersonTakingBath
--   | PersonTakingBathLightSkinTone
--   | PersonTakingBathMediumLightSkinTone
--   | PersonTakingBathMediumSkinTone
--   | PersonTakingBathMediumDarkSkinTone
--   | PersonTakingBathDarkSkinTone
  | PersonInBed
--   | PersonInBedLightSkinTone
--   | PersonInBedMediumLightSkinTone
--   | PersonInBedMediumSkinTone
--   | PersonInBedMediumDarkSkinTone
--   | PersonInBedDarkSkinTone
  | ManInSuitLevitating
--   | ManInSuitLevitatingLightSkinTone
--   | ManInSuitLevitatingMediumLightSkinTone
--   | ManInSuitLevitatingMediumSkinTone
--   | ManInSuitLevitatingMediumDarkSkinTone
--   | ManInSuitLevitatingDarkSkinTone
  | SpeakingHead
  | BustInSilhouette
  | BustsInSilhouette
  | PersonFencing
  | HorseRacing
--   | HorseRacingLightSkinTone
--   | HorseRacingMediumLightSkinTone
--   | HorseRacingMediumSkinTone
--   | HorseRacingMediumDarkSkinTone
--   | HorseRacingDarkSkinTone
  | Skier
  | Snowboarder
--   | SnowboarderLightSkinTone
--   | SnowboarderMediumLightSkinTone
--   | SnowboarderMediumSkinTone
--   | SnowboarderMediumDarkSkinTone
--   | SnowboarderDarkSkinTone
  | PersonGolfing
--   | PersonGolfingLightSkinTone
--   | PersonGolfingMediumLightSkinTone
--   | PersonGolfingMediumSkinTone
--   | PersonGolfingMediumDarkSkinTone
--   | PersonGolfingDarkSkinTone
  | ManGolfing
--   | ManGolfingLightSkinTone
--   | ManGolfingMediumLightSkinTone
--   | ManGolfingMediumSkinTone
--   | ManGolfingMediumDarkSkinTone
--   | ManGolfingDarkSkinTone
  | WomanGolfing
--   | WomanGolfingLightSkinTone
--   | WomanGolfingMediumLightSkinTone
--   | WomanGolfingMediumSkinTone
--   | WomanGolfingMediumDarkSkinTone
--   | WomanGolfingDarkSkinTone
  | PersonSurfing
--   | PersonSurfingLightSkinTone
--   | PersonSurfingMediumLightSkinTone
--   | PersonSurfingMediumSkinTone
--   | PersonSurfingMediumDarkSkinTone
--   | PersonSurfingDarkSkinTone
  | ManSurfing
--   | ManSurfingLightSkinTone
--   | ManSurfingMediumLightSkinTone
--   | ManSurfingMediumSkinTone
--   | ManSurfingMediumDarkSkinTone
--   | ManSurfingDarkSkinTone
  | WomanSurfing
--   | WomanSurfingLightSkinTone
--   | WomanSurfingMediumLightSkinTone
--   | WomanSurfingMediumSkinTone
--   | WomanSurfingMediumDarkSkinTone
--   | WomanSurfingDarkSkinTone
  | PersonRowingBoat
--   | PersonRowingBoatLightSkinTone
--   | PersonRowingBoatMediumLightSkinTone
--   | PersonRowingBoatMediumSkinTone
--   | PersonRowingBoatMediumDarkSkinTone
--   | PersonRowingBoatDarkSkinTone
  | ManRowingBoat
--   | ManRowingBoatLightSkinTone
--   | ManRowingBoatMediumLightSkinTone
--   | ManRowingBoatMediumSkinTone
--   | ManRowingBoatMediumDarkSkinTone
--   | ManRowingBoatDarkSkinTone
  | WomanRowingBoat
--   | WomanRowingBoatLightSkinTone
--   | WomanRowingBoatMediumLightSkinTone
--   | WomanRowingBoatMediumSkinTone
--   | WomanRowingBoatMediumDarkSkinTone
--   | WomanRowingBoatDarkSkinTone
  | PersonSwimming
--   | PersonSwimmingLightSkinTone
--   | PersonSwimmingMediumLightSkinTone
--   | PersonSwimmingMediumSkinTone
--   | PersonSwimmingMediumDarkSkinTone
--   | PersonSwimmingDarkSkinTone
  | ManSwimming
--   | ManSwimmingLightSkinTone
--   | ManSwimmingMediumLightSkinTone
--   | ManSwimmingMediumSkinTone
--   | ManSwimmingMediumDarkSkinTone
--   | ManSwimmingDarkSkinTone
  | WomanSwimming
--   | WomanSwimmingLightSkinTone
--   | WomanSwimmingMediumLightSkinTone
--   | WomanSwimmingMediumSkinTone
--   | WomanSwimmingMediumDarkSkinTone
--   | WomanSwimmingDarkSkinTone
  | PersonBouncingBall
--   | PersonBouncingBallLightSkinTone
--   | PersonBouncingBallMediumLightSkinTone
--   | PersonBouncingBallMediumSkinTone
--   | PersonBouncingBallMediumDarkSkinTone
--   | PersonBouncingBallDarkSkinTone
  | ManBouncingBall
--   | ManBouncingBallLightSkinTone
--   | ManBouncingBallMediumLightSkinTone
--   | ManBouncingBallMediumSkinTone
--   | ManBouncingBallMediumDarkSkinTone
--   | ManBouncingBallDarkSkinTone
  | WomanBouncingBall
--   | WomanBouncingBallLightSkinTone
--   | WomanBouncingBallMediumLightSkinTone
--   | WomanBouncingBallMediumSkinTone
--   | WomanBouncingBallMediumDarkSkinTone
--   | WomanBouncingBallDarkSkinTone
  | PersonLiftingWeights
--   | PersonLiftingWeightsLightSkinTone
--   | PersonLiftingWeightsMediumLightSkinTone
--   | PersonLiftingWeightsMediumSkinTone
--   | PersonLiftingWeightsMediumDarkSkinTone
--   | PersonLiftingWeightsDarkSkinTone
  | ManLiftingWeights
--   | ManLiftingWeightsLightSkinTone
--   | ManLiftingWeightsMediumLightSkinTone
--   | ManLiftingWeightsMediumSkinTone
--   | ManLiftingWeightsMediumDarkSkinTone
--   | ManLiftingWeightsDarkSkinTone
  | WomanLiftingWeights
--   | WomanLiftingWeightsLightSkinTone
--   | WomanLiftingWeightsMediumLightSkinTone
--   | WomanLiftingWeightsMediumSkinTone
--   | WomanLiftingWeightsMediumDarkSkinTone
--   | WomanLiftingWeightsDarkSkinTone
  | PersonBiking
--   | PersonBikingLightSkinTone
--   | PersonBikingMediumLightSkinTone
--   | PersonBikingMediumSkinTone
--   | PersonBikingMediumDarkSkinTone
--   | PersonBikingDarkSkinTone
  | ManBiking
--   | ManBikingLightSkinTone
--   | ManBikingMediumLightSkinTone
--   | ManBikingMediumSkinTone
--   | ManBikingMediumDarkSkinTone
--   | ManBikingDarkSkinTone
  | WomanBiking
--   | WomanBikingLightSkinTone
--   | WomanBikingMediumLightSkinTone
--   | WomanBikingMediumSkinTone
--   | WomanBikingMediumDarkSkinTone
--   | WomanBikingDarkSkinTone
  | PersonMountainBiking
--   | PersonMountainBikingLightSkinTone
--   | PersonMountainBikingMediumLightSkinTone
--   | PersonMountainBikingMediumSkinTone
--   | PersonMountainBikingMediumDarkSkinTone
--   | PersonMountainBikingDarkSkinTone
  | ManMountainBiking
--   | ManMountainBikingLightSkinTone
--   | ManMountainBikingMediumLightSkinTone
--   | ManMountainBikingMediumSkinTone
--   | ManMountainBikingMediumDarkSkinTone
--   | ManMountainBikingDarkSkinTone
  | WomanMountainBiking
--   | WomanMountainBikingLightSkinTone
--   | WomanMountainBikingMediumLightSkinTone
--   | WomanMountainBikingMediumSkinTone
--   | WomanMountainBikingMediumDarkSkinTone
--   | WomanMountainBikingDarkSkinTone
  | RacingCar
  | Motorcycle
  | PersonCartwheeling
--   | PersonCartwheelingLightSkinTone
--   | PersonCartwheelingMediumLightSkinTone
--   | PersonCartwheelingMediumSkinTone
--   | PersonCartwheelingMediumDarkSkinTone
--   | PersonCartwheelingDarkSkinTone
  | ManCartwheeling
--   | ManCartwheelingLightSkinTone
--   | ManCartwheelingMediumLightSkinTone
--   | ManCartwheelingMediumSkinTone
--   | ManCartwheelingMediumDarkSkinTone
--   | ManCartwheelingDarkSkinTone
  | WomanCartwheeling
--   | WomanCartwheelingLightSkinTone
--   | WomanCartwheelingMediumLightSkinTone
--   | WomanCartwheelingMediumSkinTone
--   | WomanCartwheelingMediumDarkSkinTone
--   | WomanCartwheelingDarkSkinTone
  | PeopleWrestling
  | MenWrestling
  | WomenWrestling
  | PersonPlayingWaterPolo
--   | PersonPlayingWaterPoloLightSkinTone
--   | PersonPlayingWaterPoloMediumLightSkinTone
--   | PersonPlayingWaterPoloMediumSkinTone
--   | PersonPlayingWaterPoloMediumDarkSkinTone
--   | PersonPlayingWaterPoloDarkSkinTone
  | ManPlayingWaterPolo
--   | ManPlayingWaterPoloLightSkinTone
--   | ManPlayingWaterPoloMediumLightSkinTone
--   | ManPlayingWaterPoloMediumSkinTone
--   | ManPlayingWaterPoloMediumDarkSkinTone
--   | ManPlayingWaterPoloDarkSkinTone
  | WomanPlayingWaterPolo
--   | WomanPlayingWaterPoloLightSkinTone
--   | WomanPlayingWaterPoloMediumLightSkinTone
--   | WomanPlayingWaterPoloMediumSkinTone
--   | WomanPlayingWaterPoloMediumDarkSkinTone
--   | WomanPlayingWaterPoloDarkSkinTone
  | PersonPlayingHandball
--   | PersonPlayingHandballLightSkinTone
--   | PersonPlayingHandballMediumLightSkinTone
--   | PersonPlayingHandballMediumSkinTone
--   | PersonPlayingHandballMediumDarkSkinTone
--   | PersonPlayingHandballDarkSkinTone
  | ManPlayingHandball
--   | ManPlayingHandballLightSkinTone
--   | ManPlayingHandballMediumLightSkinTone
--   | ManPlayingHandballMediumSkinTone
--   | ManPlayingHandballMediumDarkSkinTone
--   | ManPlayingHandballDarkSkinTone
  | WomanPlayingHandball
--   | WomanPlayingHandballLightSkinTone
--   | WomanPlayingHandballMediumLightSkinTone
--   | WomanPlayingHandballMediumSkinTone
--   | WomanPlayingHandballMediumDarkSkinTone
--   | WomanPlayingHandballDarkSkinTone
  | PersonJuggling
--   | PersonJugglingLightSkinTone
--   | PersonJugglingMediumLightSkinTone
--   | PersonJugglingMediumSkinTone
--   | PersonJugglingMediumDarkSkinTone
--   | PersonJugglingDarkSkinTone
  | ManJuggling
--   | ManJugglingLightSkinTone
--   | ManJugglingMediumLightSkinTone
--   | ManJugglingMediumSkinTone
--   | ManJugglingMediumDarkSkinTone
--   | ManJugglingDarkSkinTone
  | WomanJuggling
--   | WomanJugglingLightSkinTone
--   | WomanJugglingMediumLightSkinTone
--   | WomanJugglingMediumSkinTone
--   | WomanJugglingMediumDarkSkinTone
--   | WomanJugglingDarkSkinTone
  | ManAndWomanHoldingHands
  | TwoMenHoldingHands
  | TwoWomenHoldingHands
  | Kiss
  | KissWomanMan
  | KissManMan
  | KissWomanWoman
  | CoupleWithHeart
  | CoupleWithHeartWomanMan
  | CoupleWithHeartManMan
  | CoupleWithHeartWomanWoman
  | Family
  | FamilyManWomanBoy
  | FamilyManWomanGirl
  | FamilyManWomanGirlBoy
  | FamilyManWomanBoyBoy
  | FamilyManWomanGirlGirl
  | FamilyManManBoy
  | FamilyManManGirl
  | FamilyManManGirlBoy
  | FamilyManManBoyBoy
  | FamilyManManGirlGirl
  | FamilyWomanWomanBoy
  | FamilyWomanWomanGirl
  | FamilyWomanWomanGirlBoy
  | FamilyWomanWomanBoyBoy
  | FamilyWomanWomanGirlGirl
  | FamilyManBoy
  | FamilyManBoyBoy
  | FamilyManGirl
  | FamilyManGirlBoy
  | FamilyManGirlGirl
  | FamilyWomanBoy
  | FamilyWomanBoyBoy
  | FamilyWomanGirl
  | FamilyWomanGirlBoy
  | FamilyWomanGirlGirl
  | Selfie
--   | SelfieLightSkinTone
--   | SelfieMediumLightSkinTone
--   | SelfieMediumSkinTone
--   | SelfieMediumDarkSkinTone
--   | SelfieDarkSkinTone
  | FlexedBiceps
--   | FlexedBicepsLightSkinTone
--   | FlexedBicepsMediumLightSkinTone
--   | FlexedBicepsMediumSkinTone
--   | FlexedBicepsMediumDarkSkinTone
--   | FlexedBicepsDarkSkinTone
  | Leg
--   | LegLightSkinTone
--   | LegMediumLightSkinTone
--   | LegMediumSkinTone
--   | LegMediumDarkSkinTone
--   | LegDarkSkinTone
  | Foot
--   | FootLightSkinTone
--   | FootMediumLightSkinTone
--   | FootMediumSkinTone
--   | FootMediumDarkSkinTone
--   | FootDarkSkinTone
  | BackhandIndexPointingLeft
--   | BackhandIndexPointingLeftLightSkinTone
--   | BackhandIndexPointingLeftMediumLightSkinTone
--   | BackhandIndexPointingLeftMediumSkinTone
--   | BackhandIndexPointingLeftMediumDarkSkinTone
--   | BackhandIndexPointingLeftDarkSkinTone
  | BackhandIndexPointingRight
--   | BackhandIndexPointingRightLightSkinTone
--   | BackhandIndexPointingRightMediumLightSkinTone
--   | BackhandIndexPointingRightMediumSkinTone
--   | BackhandIndexPointingRightMediumDarkSkinTone
--   | BackhandIndexPointingRightDarkSkinTone
  | IndexPointingUp
--   | IndexPointingUpLightSkinTone
--   | IndexPointingUpMediumLightSkinTone
--   | IndexPointingUpMediumSkinTone
--   | IndexPointingUpMediumDarkSkinTone
--   | IndexPointingUpDarkSkinTone
  | BackhandIndexPointingUp
--   | BackhandIndexPointingUpLightSkinTone
--   | BackhandIndexPointingUpMediumLightSkinTone
--   | BackhandIndexPointingUpMediumSkinTone
--   | BackhandIndexPointingUpMediumDarkSkinTone
--   | BackhandIndexPointingUpDarkSkinTone
  | MiddleFinger
--   | MiddleFingerLightSkinTone
--   | MiddleFingerMediumLightSkinTone
--   | MiddleFingerMediumSkinTone
--   | MiddleFingerMediumDarkSkinTone
--   | MiddleFingerDarkSkinTone
  | BackhandIndexPointingDown
--   | BackhandIndexPointingDownLightSkinTone
--   | BackhandIndexPointingDownMediumLightSkinTone
--   | BackhandIndexPointingDownMediumSkinTone
--   | BackhandIndexPointingDownMediumDarkSkinTone
--   | BackhandIndexPointingDownDarkSkinTone
  | VictoryHand
--   | VictoryHandLightSkinTone
--   | VictoryHandMediumLightSkinTone
--   | VictoryHandMediumSkinTone
--   | VictoryHandMediumDarkSkinTone
--   | VictoryHandDarkSkinTone
  | CrossedFingers
--   | CrossedFingersLightSkinTone
--   | CrossedFingersMediumLightSkinTone
--   | CrossedFingersMediumSkinTone
--   | CrossedFingersMediumDarkSkinTone
--   | CrossedFingersDarkSkinTone
  | VulcanSalute
--   | VulcanSaluteLightSkinTone
--   | VulcanSaluteMediumLightSkinTone
--   | VulcanSaluteMediumSkinTone
--   | VulcanSaluteMediumDarkSkinTone
--   | VulcanSaluteDarkSkinTone
  | SignOfTheHorns
--   | SignOfTheHornsLightSkinTone
--   | SignOfTheHornsMediumLightSkinTone
--   | SignOfTheHornsMediumSkinTone
--   | SignOfTheHornsMediumDarkSkinTone
--   | SignOfTheHornsDarkSkinTone
  | CallMeHand
--   | CallMeHandLightSkinTone
--   | CallMeHandMediumLightSkinTone
--   | CallMeHandMediumSkinTone
--   | CallMeHandMediumDarkSkinTone
--   | CallMeHandDarkSkinTone
  | HandWithFingersSplayed
--   | HandWithFingersSplayedLightSkinTone
--   | HandWithFingersSplayedMediumLightSkinTone
--   | HandWithFingersSplayedMediumSkinTone
--   | HandWithFingersSplayedMediumDarkSkinTone
--   | HandWithFingersSplayedDarkSkinTone
  | RaisedHand
--   | RaisedHandLightSkinTone
--   | RaisedHandMediumLightSkinTone
--   | RaisedHandMediumSkinTone
--   | RaisedHandMediumDarkSkinTone
--   | RaisedHandDarkSkinTone
  | OKHand
--   | OKHandLightSkinTone
--   | OKHandMediumLightSkinTone
--   | OKHandMediumSkinTone
--   | OKHandMediumDarkSkinTone
--   | OKHandDarkSkinTone
  | ThumbsUp
--   | ThumbsUpLightSkinTone
--   | ThumbsUpMediumLightSkinTone
--   | ThumbsUpMediumSkinTone
--   | ThumbsUpMediumDarkSkinTone
--   | ThumbsUpDarkSkinTone
  | ThumbsDown
--   | ThumbsDownLightSkinTone
--   | ThumbsDownMediumLightSkinTone
--   | ThumbsDownMediumSkinTone
--   | ThumbsDownMediumDarkSkinTone
--   | ThumbsDownDarkSkinTone
  | RaisedFist
--   | RaisedFistLightSkinTone
--   | RaisedFistMediumLightSkinTone
--   | RaisedFistMediumSkinTone
--   | RaisedFistMediumDarkSkinTone
--   | RaisedFistDarkSkinTone
  | OncomingFist
--   | OncomingFistLightSkinTone
--   | OncomingFistMediumLightSkinTone
--   | OncomingFistMediumSkinTone
--   | OncomingFistMediumDarkSkinTone
--   | OncomingFistDarkSkinTone
  | LeftFacingFist
--   | LeftFacingFistLightSkinTone
--   | LeftFacingFistMediumLightSkinTone
--   | LeftFacingFistMediumSkinTone
--   | LeftFacingFistMediumDarkSkinTone
--   | LeftFacingFistDarkSkinTone
  | RightFacingFist
--   | RightFacingFistLightSkinTone
--   | RightFacingFistMediumLightSkinTone
--   | RightFacingFistMediumSkinTone
--   | RightFacingFistMediumDarkSkinTone
--   | RightFacingFistDarkSkinTone
  | RaisedBackOfHand
--   | RaisedBackOfHandLightSkinTone
--   | RaisedBackOfHandMediumLightSkinTone
--   | RaisedBackOfHandMediumSkinTone
--   | RaisedBackOfHandMediumDarkSkinTone
--   | RaisedBackOfHandDarkSkinTone
  | WavingHand
--   | WavingHandLightSkinTone
--   | WavingHandMediumLightSkinTone
--   | WavingHandMediumSkinTone
--   | WavingHandMediumDarkSkinTone
--   | WavingHandDarkSkinTone
  | LoveYouGesture
--   | LoveYouGestureLightSkinTone
--   | LoveYouGestureMediumLightSkinTone
--   | LoveYouGestureMediumSkinTone
--   | LoveYouGestureMediumDarkSkinTone
--   | LoveYouGestureDarkSkinTone
  | WritingHand
--   | WritingHandLightSkinTone
--   | WritingHandMediumLightSkinTone
--   | WritingHandMediumSkinTone
--   | WritingHandMediumDarkSkinTone
--   | WritingHandDarkSkinTone
  | ClappingHands
--   | ClappingHandsLightSkinTone
--   | ClappingHandsMediumLightSkinTone
--   | ClappingHandsMediumSkinTone
--   | ClappingHandsMediumDarkSkinTone
--   | ClappingHandsDarkSkinTone
  | OpenHands
--   | OpenHandsLightSkinTone
--   | OpenHandsMediumLightSkinTone
--   | OpenHandsMediumSkinTone
--   | OpenHandsMediumDarkSkinTone
--   | OpenHandsDarkSkinTone
  | RaisingHands
--   | RaisingHandsLightSkinTone
--   | RaisingHandsMediumLightSkinTone
--   | RaisingHandsMediumSkinTone
--   | RaisingHandsMediumDarkSkinTone
--   | RaisingHandsDarkSkinTone
  | PalmsUpTogether
--   | PalmsUpTogetherLightSkinTone
--   | PalmsUpTogetherMediumLightSkinTone
--   | PalmsUpTogetherMediumSkinTone
--   | PalmsUpTogetherMediumDarkSkinTone
--   | PalmsUpTogetherDarkSkinTone
  | FoldedHands
--   | FoldedHandsLightSkinTone
--   | FoldedHandsMediumLightSkinTone
--   | FoldedHandsMediumSkinTone
--   | FoldedHandsMediumDarkSkinTone
--   | FoldedHandsDarkSkinTone
  | Handshake
  | NailPolish
--   | NailPolishLightSkinTone
--   | NailPolishMediumLightSkinTone
--   | NailPolishMediumSkinTone
--   | NailPolishMediumDarkSkinTone
--   | NailPolishDarkSkinTone
  | Ear
--   | EarLightSkinTone
--   | EarMediumLightSkinTone
--   | EarMediumSkinTone
--   | EarMediumDarkSkinTone
--   | EarDarkSkinTone
  | Nose
--   | NoseLightSkinTone
--   | NoseMediumLightSkinTone
--   | NoseMediumSkinTone
--   | NoseMediumDarkSkinTone
--   | NoseDarkSkinTone
  | RedHaired
  | CurlyHaired
  | Bald
  | WhiteHaired
  | Footprints
  | Eyes
  | Eye
  | EyeInSpeechBubble
  | Brain
  | Bone
  | Tooth
  | Tongue
  | Mouth
  | KissMark
  | HeartWithArrow
  | RedHeart
  | BeatingHeart
  | BrokenHeart
  | TwoHearts
  | SparklingHeart
  | GrowingHeart
  | BlueHeart
  | GreenHeart
  | YellowHeart
  | OrangeHeart
  | PurpleHeart
  | BlackHeart
  | HeartWithRibbon
  | RevolvingHearts
  | HeartDecoration
  | HeavyHeartExclamation
  | LoveLetter
  | Zzz
  | AngerSymbol
  | Bomb
  | Collision
  | SweatDroplets
  | DashingAway
  | Dizzy
  | SpeechBalloon
  | LeftSpeechBubble
  | RightAngerBubble
  | ThoughtBalloon
  | Hole
  | Glasses
  | Sunglasses
  | Goggles
  | LabCoat
  | Necktie
  | TShirt
  | Jeans
  | Scarf
  | Gloves
  | Coat
  | Socks
  | Dress
  | Kimono
  | Bikini
  | WomansClothes
  | Purse
  | Handbag
  | ClutchBag
  | ShoppingBags
  | SchoolBackpack
  | MansShoe
  | RunningShoe
  | HikingBoot
  | WomansFlatShoe
  | HighHeeledShoe
  | WomansSandal
  | WomansBoot
  | Crown
  | WomansHat
  | TopHat
  | GraduationCap
  | BilledCap
  | RescueWorkersHelmet
  | PrayerBeads
  | Lipstick
  | Ring
  | GemStone
  | MonkeyFace
  | Monkey
  | Gorilla
  | DogFace
  | Dog
  | Poodle
  | WolfFace
  | FoxFace
  | Raccoon
  | CatFace
  | Cat
  | LionFace
  | TigerFace
  | Tiger
  | Leopard
  | HorseFace
  | Horse
  | UnicornFace
  | Zebra
  | Deer
  | CowFace
  | Ox
  | WaterBuffalo
  | Cow
  | PigFace
  | Pig
  | Boar
  | PigNose
  | Ram
  | Ewe
  | Goat
  | Camel
  | TwoHumpCamel
  | Llama
  | Giraffe
  | Elephant
  | Rhinoceros
  | Hippopotamus
  | MouseFace
  | Mouse
  | Rat
  | HamsterFace
  | RabbitFace
  | Rabbit
  | Chipmunk
  | Hedgehog
  | Bat
  | BearFace
  | Koala
  | PandaFace
  | Kangaroo
  | Badger
  | PawPrints
  | Turkey
  | Chicken
  | Rooster
  | HatchingChick
  | BabyChick
  | FrontFacingBabyChick
  | Bird
  | Penguin
  | Dove
  | Eagle
  | Duck
  | Swan
  | Owl
  | Peacock
  | Parrot
  | FrogFace
  | Crocodile
  | Turtle
  | Lizard
  | Snake
  | DragonFace
  | Dragon
  | Sauropod
  | TRex
  | SpoutingWhale
  | Whale
  | Dolphin
  | Fish
  | TropicalFish
  | Blowfish
  | Shark
  | Octopus
  | SpiralShell
  | Crab
  | Lobster
  | Shrimp
  | Squid
  | Snail
  | Butterfly
  | Bug
  | Ant
  | Honeybee
  | LadyBeetle
  | Cricket
  | Spider
  | SpiderWeb
  | Scorpion
  | Mosquito
  | Microbe
  | Bouquet
  | CherryBlossom
  | WhiteFlower
  | Rosette
  | Rose
  | WiltedFlower
  | Hibiscus
  | Sunflower
  | Blossom
  | Tulip
  | Seedling
  | EvergreenTree
  | DeciduousTree
  | PalmTree
  | Cactus
  | SheafOfRice
  | Herb
  | Shamrock
  | FourLeafClover
  | MapleLeaf
  | FallenLeaf
  | LeafFlutteringInWind
  | Grapes
  | Melon
  | Watermelon
  | Tangerine
  | Lemon
  | Banana
  | Pineapple
  | Mango
  | RedApple
  | GreenApple
  | Pear
  | Peach
  | Cherries
  | Strawberry
  | KiwiFruit
  | Tomato
  | Coconut
  | Avocado
  | Eggplant
  | Potato
  | Carrot
  | EarOfCorn
  | HotPepper
  | Cucumber
  | LeafyGreen
  | Broccoli
  | Mushroom
  | Peanuts
  | Chestnut
  | Bread
  | Croissant
  | BaguetteBread
  | Pretzel
  | Bagel
  | Pancakes
  | CheeseWedge
  | MeatOnBone
  | PoultryLeg
  | CutOfMeat
  | Bacon
  | Hamburger
  | FrenchFries
  | Pizza
  | HotDog
  | Sandwich
  | Taco
  | Burrito
  | StuffedFlatbread
  | Egg
  | Cooking
  | ShallowPanOfFood
  | PotOfFood
  | BowlWithSpoon
  | GreenSalad
  | Popcorn
  | Salt
  | CannedFood
  | BentoBox
  | RiceCracker
  | RiceBall
  | CookedRice
  | CurryRice
  | SteamingBowl
  | Spaghetti
  | RoastedSweetPotato
  | Oden
  | Sushi
  | FriedShrimp
  | FishCakeWithSwirl
  | MoonCake
  | Dango
  | Dumpling
  | FortuneCookie
  | TakeoutBox
  | SoftIceCream
  | ShavedIce
  | IceCream
  | Doughnut
  | Cookie
  | BirthdayCake
  | Shortcake
  | Cupcake
  | Pie
  | ChocolateBar
  | Candy
  | Lollipop
  | Custard
  | HoneyPot
  | BabyBottle
  | GlassOfMilk
  | HotBeverage
  | TeacupWithoutHandle
  | Sake
  | BottleWithPoppingCork
  | WineGlass
  | CocktailGlass
  | TropicalDrink
  | BeerMug
  | ClinkingBeerMugs
  | ClinkingGlasses
  | TumblerGlass
  | CupWithStraw
  | Chopsticks
  | ForkAndKnifeWithPlate
  | ForkAndKnife
  | Spoon
  | KitchenKnife
  | Amphora
  | GlobeShowingEuropeAfrica
  | GlobeShowingAmericas
  | GlobeShowingAsiaAustralia
  | GlobeWithMeridians
  | WorldMap
  | MapOfJapan
  | Compass
  | SnowCappedMountain
  | Mountain
  | Volcano
  | MountFuji
  | Camping
  | BeachWithUmbrella
  | Desert
  | DesertIsland
  | NationalPark
  | Stadium
  | ClassicalBuilding
  | BuildingConstruction
  | Bricks
  | Houses
  | DerelictHouse
  | House
  | HouseWithGarden
  | OfficeBuilding
  | JapanesePostOffice
  | PostOffice
  | Hospital
  | Bank
  | Hotel
  | LoveHotel
  | ConvenienceStore
  | School
  | DepartmentStore
  | Factory
  | JapaneseCastle
  | Castle
  | Wedding
  | TokyoTower
  | StatueOfLiberty
  | Church
  | Mosque
  | Synagogue
  | ShintoShrine
  | Kaaba
  | Fountain
  | Tent
  | Foggy
  | NightWithStars
  | Cityscape
  | SunriseOverMountains
  | Sunrise
  | CityscapeAtDusk
  | Sunset
  | BridgeAtNight
  | HotSprings
  | MilkyWay
  | CarouselHorse
  | FerrisWheel
  | RollerCoaster
  | BarberPole
  | CircusTent
  | Locomotive
  | RailwayCar
  | HighSpeedTrain
  | BulletTrain
  | Train
  | Metro
  | LightRail
  | Station
  | Tram
  | Monorail
  | MountainRailway
  | TramCar
  | Bus
  | OncomingBus
  | Trolleybus
  | Minibus
  | Ambulance
  | FireEngine
  | PoliceCar
  | OncomingPoliceCar
  | Taxi
  | OncomingTaxi
  | Automobile
  | OncomingAutomobile
  | SportUtilityVehicle
  | DeliveryTruck
  | ArticulatedLorry
  | Tractor
  | Bicycle
  | KickScooter
  | Skateboard
  | MotorScooter
  | BusStop
  | Motorway
  | RailwayTrack
  | OilDrum
  | FuelPump
  | PoliceCarLight
  | HorizontalTrafficLight
  | VerticalTrafficLight
  | StopSign
  | Construction
  | Anchor
  | Sailboat
  | Canoe
  | Speedboat
  | PassengerShip
  | Ferry
  | MotorBoat
  | Ship
  | Airplane
  | SmallAirplane
  | AirplaneDeparture
  | AirplaneArrival
  | Seat
  | Helicopter
  | SuspensionRailway
  | MountainCableway
  | AerialTramway
  | Satellite
  | Rocket
  | BellhopBell
  | FlyingSaucer
  | Luggage
  | HourglassDone
  | HourglassNotDone
  | Watch
  | AlarmClock
  | Stopwatch
  | TimerClock
  | MantelpieceClock
  | TwelveOclock
  | TwelveThirty
  | OneOclock
  | OneThirty
  | TwoOclock
  | TwoThirty
  | ThreeOclock
  | ThreeThirty
  | FourOclock
  | FourThirty
  | FiveOclock
  | FiveThirty
  | SixOclock
  | SixThirty
  | SevenOclock
  | SevenThirty
  | EightOclock
  | EightThirty
  | NineOclock
  | NineThirty
  | TenOclock
  | TenThirty
  | ElevenOclock
  | ElevenThirty
  | NewMoon
  | WaxingCrescentMoon
  | FirstQuarterMoon
  | WaxingGibbousMoon
  | FullMoon
  | WaningGibbousMoon
  | LastQuarterMoon
  | WaningCrescentMoon
  | CrescentMoon
  | NewMoonFace
  | FirstQuarterMoonFace
  | LastQuarterMoonFace
  | Thermometer
  | Sun
  | FullMoonFace
  | SunWithFace
  | Star
  | GlowingStar
  | ShootingStar
  | Cloud
  | SunBehindCloud
  | CloudWithLightningAndRain
  | SunBehindSmallCloud
  | SunBehindLargeCloud
  | SunBehindRainCloud
  | CloudWithRain
  | CloudWithSnow
  | CloudWithLightning
  | Tornado
  | Fog
  | WindFace
  | Cyclone
  | Rainbow
  | ClosedUmbrella
  | Umbrella
  | UmbrellaWithRainDrops
  | UmbrellaOnGround
  | HighVoltage
  | Snowflake
  | Snowman
  | SnowmanWithoutSnow
  | Comet
  | Fire
  | Droplet
  | WaterWave
  | JackOLantern
  | ChristmasTree
  | Fireworks
  | Sparkler
  | Firecracker
  | Sparkles
  | Balloon
  | PartyPopper
  | ConfettiBall
  | TanabataTree
  | PineDecoration
  | JapaneseDolls
  | CarpStreamer
  | WindChime
  | MoonViewingCeremony
  | RedEnvelope
  | Ribbon
  | WrappedGift
  | ReminderRibbon
  | AdmissionTickets
  | Ticket
  | MilitaryMedal
  | Trophy
  | SportsMedal
  | FirstPlaceMedal
  | SecondPlaceMedal
  | ThirdPlaceMedal
  | SoccerBall
  | Baseball
  | Softball
  | Basketball
  | Volleyball
  | AmericanFootball
  | RugbyFootball
  | Tennis
  | FlyingDisc
  | Bowling
  | CricketGame
  | FieldHockey
  | IceHockey
  | Lacrosse
  | PingPong
  | Badminton
  | BoxingGlove
  | MartialArtsUniform
  | GoalNet
  | FlagInHole
  | IceSkate
  | FishingPole
  | RunningShirt
  | Skis
  | Sled
  | CurlingStone
  | DirectHit
  | Pool8Ball
  | CrystalBall
  | NazarAmulet
  | VideoGame
  | Joystick
  | SlotMachine
  | GameDie
  | Jigsaw
  | TeddyBear
  | SpadeSuit
  | HeartSuit
  | DiamondSuit
  | ClubSuit
  | ChessPawn
  | Joker
  | MahjongRedDragon
  | FlowerPlayingCards
  | PerformingArts
  | FramedPicture
  | ArtistPalette
  | Thread
  | Yarn
  | MutedSpeaker
  | SpeakerLowVolume
  | SpeakerMediumVolume
  | SpeakerHighVolume
  | Loudspeaker
  | Megaphone
  | PostalHorn
  | Bell
  | BellWithSlash
  | MusicalScore
  | MusicalNote
  | MusicalNotes
  | StudioMicrophone
  | LevelSlider
  | ControlKnobs
  | Microphone
  | Headphone
  | Radio
  | Saxophone
  | Guitar
  | MusicalKeyboard
  | Trumpet
  | Violin
  | Drum
  | MobilePhone
  | MobilePhoneWithArrow
  | Telephone
  | TelephoneReceiver
  | Pager
  | FaxMachine
  | Battery
  | ElectricPlug
  | LaptopComputer
  | DesktopComputer
  | Printer
  | Keyboard
  | ComputerMouse
  | Trackball
  | ComputerDisk
  | FloppyDisk
  | OpticalDisk
  | Dvd
  | Abacus
  | MovieCamera
  | FilmFrames
  | FilmProjector
  | ClapperBoard
  | Television
  | Camera
  | CameraWithFlash
  | VideoCamera
  | Videocassette
  | MagnifyingGlassTiltedLeft
  | MagnifyingGlassTiltedRight
  | Candle
  | LightBulb
  | Flashlight
  | RedPaperLantern
  | NotebookWithDecorativeCover
  | ClosedBook
  | OpenBook
  | GreenBook
  | BlueBook
  | OrangeBook
  | Books
  | Notebook
  | Ledger
  | PageWithCurl
  | Scroll
  | PageFacingUp
  | Newspaper
  | RolledUpNewspaper
  | BookmarkTabs
  | Bookmark
  | Label
  | MoneyBag
  | YenBanknote
  | DollarBanknote
  | EuroBanknote
  | PoundBanknote
  | MoneyWithWings
  | CreditCard
  | Receipt
  | ChartIncreasingWithYen
  | CurrencyExchange
  | HeavyDollarSign
  | Envelope
  | EMail
  | IncomingEnvelope
  | EnvelopeWithArrow
  | OutboxTray
  | InboxTray
  | Package
  | ClosedMailboxWithRaisedFlag
  | ClosedMailboxWithLoweredFlag
  | OpenMailboxWithRaisedFlag
  | OpenMailboxWithLoweredFlag
  | Postbox
  | BallotBoxWithBallot
  | Pencil
  | BlackNib
  | FountainPen
  | Pen
  | Paintbrush
  | Crayon
  | Memo
  | Briefcase
  | FileFolder
  | OpenFileFolder
  | CardIndexDividers
  | Calendar
  | TearOffCalendar
  | SpiralNotepad
  | SpiralCalendar
  | CardIndex
  | ChartIncreasing
  | ChartDecreasing
  | BarChart
  | Clipboard
  | Pushpin
  | RoundPushpin
  | Paperclip
  | LinkedPaperclips
  | StraightRuler
  | TriangularRuler
  | Scissors
  | CardFileBox
  | FileCabinet
  | Wastebasket
  | Locked
  | Unlocked
  | LockedWithPen
  | LockedWithKey
  | Key
  | OldKey
  | Hammer
  | Pick
  | HammerAndPick
  | HammerAndWrench
  | Dagger
  | CrossedSwords
  | Pistol
  | BowAndArrow
  | Shield
  | Wrench
  | NutAndBolt
  | Gear
  | Clamp
  | BalanceScale
  | Link
  | Chains
  | Toolbox
  | Magnet
  | Alembic
  | TestTube
  | PetriDish
  | Dna
  | Microscope
  | Telescope
  | SatelliteAntenna
  | Syringe
  | Pill
  | Door
  | Bed
  | CouchAndLamp
  | Toilet
  | Shower
  | Bathtub
  | LotionBottle
  | SafetyPin
  | Broom
  | Basket
  | RollOfPaper
  | Soap
  | Sponge
  | FireExtinguisher
  | ShoppingCart
  | Cigarette
  | Coffin
  | FuneralUrn
  | Moai
  | ATMSign
  | LitterInBinSign
  | PotableWater
  | WheelchairSymbol
  | MensRoom
  | WomensRoom
  | Restroom
  | BabySymbol
  | WaterCloset
  | PassportControl
  | Customs
  | BaggageClaim
  | LeftLuggage
  | Warning
  | ChildrenCrossing
  | NoEntry
  | Prohibited
  | NoBicycles
  | NoSmoking
  | NoLittering
  | NonPotableWater
  | NoPedestrians
  | NoMobilePhones
  | NoOneUnderEighteen
  | Radioactive
  | Biohazard
  | UpArrow
  | UpRightArrow
  | RightArrow
  | DownRightArrow
  | DownArrow
  | DownLeftArrow
  | LeftArrow
  | UpLeftArrow
  | UpDownArrow
  | LeftRightArrow
  | RightArrowCurvingLeft
  | LeftArrowCurvingRight
  | RightArrowCurvingUp
  | RightArrowCurvingDown
  | ClockwiseVerticalArrows
  | CounterclockwiseArrowsButton
  | BACKArrow
  | ENDArrow
  | ONArrow
  | SOONArrow
  | TOPArrow
  | PlaceOfWorship
  | AtomSymbol
  | Om
  | StarOfDavid
  | WheelOfDharma
  | YinYang
  | LatinCross
  | OrthodoxCross
  | StarAndCrescent
  | PeaceSymbol
  | Menorah
  | DottedSixPointedStar
  | Aries
  | Taurus
  | Gemini
  | Cancer
  | Leo
  | Virgo
  | Libra
  | Scorpio
  | Sagittarius
  | Capricorn
  | Aquarius
  | Pisces
  | Ophiuchus
  | ShuffleTracksButton
  | RepeatButton
  | RepeatSingleButton
  | PlayButton
  | FastForwardButton
  | NextTrackButton
  | PlayOrPauseButton
  | ReverseButton
  | FastReverseButton
  | LastTrackButton
  | UpwardsButton
  | FastUpButton
  | DownwardsButton
  | FastDownButton
  | PauseButton
  | StopButton
  | RecordButton
  | EjectButton
  | Cinema
  | DimButton
  | BrightButton
  | AntennaBars
  | VibrationMode
  | MobilePhoneOff
  | FemaleSign
  | MaleSign
  | MedicalSymbol
  | Infinity
  | RecyclingSymbol
  | FleurDeLis
  | TridentEmblem
  | NameBadge
  | JapaneseSymbolForBeginner
  | HeavyLargeCircle
  | WhiteHeavyCheckMark
  | BallotBoxWithCheck
  | HeavyCheckMark
  | HeavyMultiplicationX
  | CrossMark
  | CrossMarkButton
  | HeavyPlusSign
  | HeavyMinusSign
  | HeavyDivisionSign
  | CurlyLoop
  | DoubleCurlyLoop
  | PartAlternationMark
  | EightSpokedAsterisk
  | EightPointedStar
  | Sparkle
  | DoubleExclamationMark
  | ExclamationQuestionMark
  | QuestionMark
  | WhiteQuestionMark
  | WhiteExclamationMark
  | ExclamationMark
  | WavyDash
  | Copyright
  | Registered
  | TradeMark
  | KeycapSharp
  | KeycapAsterisk
  | Keycap0
  | Keycap1
  | Keycap2
  | Keycap3
  | Keycap4
  | Keycap5
  | Keycap6
  | Keycap7
  | Keycap8
  | Keycap9
  | Keycap10
  | HundredPoints
  | InputLatinUppercase
  | InputLatinLowercase
  | InputNumbers
  | InputSymbols
  | InputLatinLetters
  | AButtonBloodType
  | ABButtonBloodType
  | BButtonBloodType
  | CLButton
  | COOLButton
  | FREEButton
  | Information
  | IDButton
  | CircledM
  | NEWButton
  | NGButton
  | OButtonBloodType
  | OKButton
  | PButton
  | SOSButton
  | UPButton
  | VSButton
  | JapaneseHereButton
  | JapaneseServiceChargeButton
  | JapaneseMonthlyAmountButton
  | JapaneseNotFreeOfChargeButton
  | JapaneseReservedButton
  | JapaneseBargainButton
  | JapaneseDiscountButton
  | JapaneseFreeOfChargeButton
  | JapaneseProhibitedButton
  | JapaneseAcceptableButton
  | JapaneseApplicationButton
  | JapanesePassingGradeButton
  | JapaneseVacancyButton
  | JapaneseCongratulationsButton
  | JapaneseSecretButton
  | JapaneseOpenForBusinessButton
  | JapaneseNoVacancyButton
  | BlackSmallSquare
  | WhiteSmallSquare
  | WhiteMediumSquare
  | BlackMediumSquare
  | WhiteMediumSmallSquare
  | BlackMediumSmallSquare
  | BlackLargeSquare
  | WhiteLargeSquare
  | LargeOrangeDiamond
  | LargeBlueDiamond
  | SmallOrangeDiamond
  | SmallBlueDiamond
  | RedTrianglePointedUp
  | RedTrianglePointedDown
  | DiamondWithADot
  | RadioButton
  | BlackSquareButton
  | WhiteSquareButton
  | WhiteCircle
  | BlackCircle
  | RedCircle
  | BlueCircle
  | ChequeredFlag
  | TriangularFlag
  | CrossedFlags
  | BlackFlag
  | WhiteFlag
  | RainbowFlag
  | PirateFlag
  -- | AscensionIsland
  -- | Andorra
  -- | UnitedArabEmirates
  -- | Afghanistan
  -- | AntiguaAndBarbuda
  -- | Anguilla
  -- | Albania
  -- | Armenia
  -- | Angola
  -- | Antarctica
  -- | Argentina
  -- | AmericanSamoa
  -- | Austria
  -- | Australia
  -- | Aruba
  -- | ÅlandIslands
  -- | Azerbaijan
  -- | BosniaAndHerzegovina
  -- | Barbados
  -- | Bangladesh
  -- | Belgium
  -- | BurkinaFaso
  -- | Bulgaria
  -- | Bahrain
  -- | Burundi
  -- | Benin
  -- | StBarthélemy
  -- | Bermuda
  -- | Brunei
  -- | Bolivia
  -- | CaribbeanNetherlands
  -- | Brazil
  -- | Bahamas
  -- | Bhutan
  -- | BouvetIsland
  -- | Botswana
  -- | Belarus
  -- | Belize
  -- | Canada
  -- | CocosKeelingIslands
  -- | CongoKinshasa
  -- | CentralAfricanRepublic
  -- | CongoBrazzaville
  -- | Switzerland
  -- | CôteDIvoire
  -- | CookIslands
  -- | Chile
  -- | Cameroon
  -- | China
  -- | Colombia
  -- | ClippertonIsland
  -- | CostaRica
  -- | Cuba
  -- | CapeVerde
  -- | Curaçao
  -- | ChristmasIsland
  -- | Cyprus
  -- | Czechia
  -- | Germany
  -- | DiegoGarcia
  -- | Djibouti
  -- | Denmark
  -- | Dominica
  -- | DominicanRepublic
  -- | Algeria
  -- | CeutaAndMelilla
  -- | Ecuador
  -- | Estonia
  -- | Egypt
  -- | WesternSahara
  -- | Eritrea
  -- | Spain
  -- | Ethiopia
  -- | EuropeanUnion
  -- | Finland
  -- | Fiji
  -- | FalklandIslands
  -- | Micronesia
  -- | FaroeIslands
  -- | France
  -- | Gabon
  -- | UnitedKingdom
  -- | Grenada
  -- | Georgia
  -- | FrenchGuiana
  -- | Guernsey
  -- | Ghana
  -- | Gibraltar
  -- | Greenland
  -- | Gambia
  -- | Guinea
  -- | Guadeloupe
  -- | EquatorialGuinea
  -- | Greece
  -- | SouthGeorgiaAndSouthSandwichIslands
  -- | Guatemala
  -- | Guam
  -- | GuineaBissau
  -- | Guyana
  -- | HongKongSARChina
  -- | HeardAndMcDonaldIslands
  -- | Honduras
  -- | Croatia
  -- | Haiti
  -- | Hungary
  -- | CanaryIslands
  -- | Indonesia
  -- | Ireland
  -- | Israel
  -- | IsleOfMan
  -- | India
  -- | BritishIndianOceanTerritory
  -- | Iraq
  -- | Iran
  -- | Iceland
  -- | Italy
  -- | Jersey
  -- | Jamaica
  -- | Jordan
  -- | Japan
  -- | Kenya
  -- | Kyrgyzstan
  -- | Cambodia
  -- | Kiribati
  -- | Comoros
  -- | StKittsAndNevis
  -- | NorthKorea
  -- | SouthKorea
  -- | Kuwait
  -- | CaymanIslands
  -- | Kazakhstan
  -- | Laos
  -- | Lebanon
  -- | StLucia
  -- | Liechtenstein
  -- | SriLanka
  -- | Liberia
  -- | Lesotho
  -- | Lithuania
  -- | Luxembourg
  -- | Latvia
  -- | Libya
  -- | Morocco
  -- | Monaco
  -- | Moldova
  -- | Montenegro
  -- | StMartin
  -- | Madagascar
  -- | MarshallIslands
  -- | Macedonia
  -- | Mali
  -- | MyanmarBurma
  -- | Mongolia
  -- | MacauSARChina
  -- | NorthernMarianaIslands
  -- | Martinique
  -- | Mauritania
  -- | Montserrat
  -- | Malta
  -- | Mauritius
  -- | Maldives
  -- | Malawi
  -- | Mexico
  -- | Malaysia
  -- | Mozambique
  -- | Namibia
  -- | NewCaledonia
  -- | Niger
  -- | NorfolkIsland
  -- | Nigeria
  -- | Nicaragua
  -- | Netherlands
  -- | Norway
  -- | Nepal
  -- | Nauru
  -- | Niue
  -- | NewZealand
  -- | Oman
  -- | Panama
  -- | Peru
  -- | FrenchPolynesia
  -- | PapuaNewGuinea
  -- | Philippines
  -- | Pakistan
  -- | Poland
  -- | StPierreAndMiquelon
  -- | PitcairnIslands
  -- | PuertoRico
  -- | PalestinianTerritories
  -- | Portugal
  -- | Palau
  -- | Paraguay
  -- | Qatar
  -- | Réunion
  -- | Romania
  -- | Serbia
  -- | Russia
  -- | Rwanda
  -- | SaudiArabia
  -- | SolomonIslands
  -- | Seychelles
  -- | Sudan
  -- | Sweden
  -- | Singapore
  -- | StHelena
  -- | Slovenia
  -- | SvalbardAndJanMayen
  -- | Slovakia
  -- | SierraLeone
  -- | SanMarino
  -- | Senegal
  -- | Somalia
  -- | Suriname
  -- | SouthSudan
  -- | SãoToméAndPríncipe
  -- | ElSalvador
  -- | SintMaarten
  -- | Syria
  -- | Swaziland
  -- | TristanDaCunha
  -- | TurksAndCaicosIslands
  -- | Chad
  -- | FrenchSouthernTerritories
  -- | Togo
  -- | Thailand
  -- | Tajikistan
  -- | Tokelau
  -- | TimorLeste
  -- | Turkmenistan
  -- | Tunisia
  -- | Tonga
  -- | TurkeyCountry
  -- | TrinidadAndTobago
  -- | Tuvalu
  -- | Taiwan
  -- | Tanzania
  -- | Ukraine
  -- | Uganda
  -- | USOutlyingIslands
  -- | UnitedNations
  -- | UnitedStates
  -- | Uruguay
  -- | Uzbekistan
  -- | VaticanCity
  -- | StVincentAndGrenadines
  -- | Venezuela
  -- | BritishVirginIslands
  -- | USVirginIslands
  -- | Vietnam
  -- | Vanuatu
  -- | WallisAndFutuna
  -- | Samoa
  -- | Kosovo
  -- | Yemen
  -- | Mayotte
  -- | SouthAfrica
  -- | Zambia
  -- | Zimbabwe
  -- | England
  -- | Scotland
  -- | Wales

instance showEmoji :: Show Emoji where
  -- group: Smileys & People
  -- subgroup: face-positive
  show GrinningFace = "😀"
  show BeamingFaceWithSmilingEyes = "😁"
  show FaceWithTearsOfJoy = "😂"
  show RollingOnTheFloorLaughing = "🤣"
  show GrinningFaceWithBigEyes = "😃"
  show GrinningFaceWithSmilingEyes = "😄"
  show GrinningFaceWithSweat = "😅"
  show GrinningSquintingFace = "😆"
  show WinkingFace = "😉"
  show SmilingFaceWithSmilingEyes = "😊"
  show FaceSavoringFood = "😋"
  show SmilingFaceWithSunglasses = "😎"
  show SmilingFaceWithHeartEyes = "😍"
  show FaceBlowingAKiss = "😘"
  show SmilingFaceWith3Hearts = "🥰"
  show KissingFace = "😗"
  show KissingFaceWithSmilingEyes = "😙"
  show KissingFaceWithClosedEyes = "😚"
  show SmilingFace = "☺️"
  show SlightlySmilingFace = "🙂"
  show HuggingFace = "🤗"
  show StarStruck = "🤩"
  -- subgroup: face-neutral
  show ThinkingFace = "🤔"
  show FaceWithRaisedEyebrow = "🤨"
  show NeutralFace = "😐"
  show ExpressionlessFace = "😑"
  show FaceWithoutMouth = "😶"
  show FaceWithRollingEyes = "🙄"
  show SmirkingFace = "😏"
  show PerseveringFace = "😣"
  show SadButRelievedFace = "😥"
  show FaceWithOpenMouth = "😮"
  show ZipperMouthFace = "🤐"
  show HushedFace = "😯"
  show SleepyFace = "😪"
  show TiredFace = "😫"
  show SleepingFace = "😴"
  show RelievedFace = "😌"
  show FaceWithTongue = "😛"
  show WinkingFaceWithTongue = "😜"
  show SquintingFaceWithTongue = "😝"
  show DroolingFace = "🤤"
  show UnamusedFace = "😒"
  show DowncastFaceWithSweat = "😓"
  show PensiveFace = "😔"
  show ConfusedFace = "😕"
  show UpsideDownFace = "🙃"
  show MoneyMouthFace = "🤑"
  show AstonishedFace = "😲"
  -- subgroup: face-negative
  show FrowningFace = "☹️"
  show SlightlyFrowningFace = "🙁"
  show ConfoundedFace = "😖"
  show DisappointedFace = "😞"
  show WorriedFace = "😟"
  show FaceWithSteamFromNose = "😤"
  show CryingFace = "😢"
  show LoudlyCryingFace = "😭"
  show FrowningFaceWithOpenMouth = "😦"
  show AnguishedFace = "😧"
  show FearfulFace = "😨"
  show WearyFace = "😩"
  show ExplodingHead = "🤯"
  show GrimacingFace = "😬"
  show AnxiousFaceWithSweat = "😰"
  show FaceScreamingInFear = "😱"
  show HotFace = "🥵"
  show ColdFace = "🥶"
  show FlushedFace = "😳"
  show ZanyFace = "🤪"
  show DizzyFace = "😵"
  show PoutingFace = "😡"
  show AngryFace = "😠"
  show FaceWithSymbolsOnMouth = "🤬"
  -- subgroup: face-sick
  show FaceWithMedicalMask = "😷"
  show FaceWithThermometer = "🤒"
  show FaceWithHeadBandage = "🤕"
  show NauseatedFace = "🤢"
  show FaceVomiting = "🤮"
  show SneezingFace = "🤧"
  -- subgroup: face-role
  show SmilingFaceWithHalo = "😇"
  show CowboyHatFace = "🤠"
  show PartyingFace = "🥳"
  show WoozyFace = "🥴"
  show PleadingFace = "🥺"
  show LyingFace = "🤥"
  show ShushingFace = "🤫"
  show FaceWithHandOverMouth = "🤭"
  show FaceWithMonocle = "🧐"
  show NerdFace = "🤓"
  -- subgroup: face-fantasy
  show SmilingFaceWithHorns = "😈"
  show AngryFaceWithHorns = "👿"
  show ClownFace = "🤡"
  show Ogre = "👹"
  show Goblin = "👺"
  show Skull = "💀"
  show SkullAndCrossbones = "☠️"
  show Ghost = "👻"
  show Alien = "👽"
  show AlienMonster = "👾"
  show RobotFace = "🤖"
  show PileOfPoo = "💩"
  -- subgroup: cat-face
  show GrinningCatFace = "😺"
  show GrinningCatFaceWithSmilingEyes = "😸"
  show CatFaceWithTearsOfJoy = "😹"
  show SmilingCatFaceWithHeartEyes = "😻"
  show CatFaceWithWrySmile = "😼"
  show KissingCatFace = "😽"
  show WearyCatFace = "🙀"
  show CryingCatFace = "😿"
  show PoutingCatFace = "😾"
  -- subgroup: monkey-face
  show SeeNoEvilMonkey = "🙈"
  show HearNoEvilMonkey = "🙉"
  show SpeakNoEvilMonkey = "🙊"
  -- subgroup: skin-tone
  show LightSkinTone = "🏻"
  show MediumLightSkinTone = "🏼"
  show MediumSkinTone = "🏽"
  show MediumDarkSkinTone = "🏾"
  show DarkSkinTone = "🏿"
  -- subgroup: person
  show Baby = "👶"
--   show BabyLightSkinTone = "👶🏻"
--   show BabyMediumLightSkinTone = "👶🏼"
--   show BabyMediumSkinTone = "👶🏽"
--   show BabyMediumDarkSkinTone = "👶🏾"
--   show BabyDarkSkinTone = "👶🏿"
  show Child = "🧒"
--   show ChildLightSkinTone = "🧒🏻"
--   show ChildMediumLightSkinTone = "🧒🏼"
--   show ChildMediumSkinTone = "🧒🏽"
--   show ChildMediumDarkSkinTone = "🧒🏾"
--   show ChildDarkSkinTone = "🧒🏿"
  show Boy = "👦"
--   show BoyLightSkinTone = "👦🏻"
--   show BoyMediumLightSkinTone = "👦🏼"
--   show BoyMediumSkinTone = "👦🏽"
--   show BoyMediumDarkSkinTone = "👦🏾"
--   show BoyDarkSkinTone = "👦🏿"
  show Girl = "👧"
--   show GirlLightSkinTone = "👧🏻"
--   show GirlMediumLightSkinTone = "👧🏼"
--   show GirlMediumSkinTone = "👧🏽"
--   show GirlMediumDarkSkinTone = "👧🏾"
--   show GirlDarkSkinTone = "👧🏿"
  show Adult = "🧑"
--   show AdultLightSkinTone = "🧑🏻"
--   show AdultMediumLightSkinTone = "🧑🏼"
--   show AdultMediumSkinTone = "🧑🏽"
--   show AdultMediumDarkSkinTone = "🧑🏾"
--   show AdultDarkSkinTone = "🧑🏿"
  show Man = "👨"
--   show ManLightSkinTone = "👨🏻"
--   show ManMediumLightSkinTone = "👨🏼"
--   show ManMediumSkinTone = "👨🏽"
--   show ManMediumDarkSkinTone = "👨🏾"
--   show ManDarkSkinTone = "👨🏿"
  show Woman = "👩"
--   show WomanLightSkinTone = "👩🏻"
--   show WomanMediumLightSkinTone = "👩🏼"
--   show WomanMediumSkinTone = "👩🏽"
--   show WomanMediumDarkSkinTone = "👩🏾"
--   show WomanDarkSkinTone = "👩🏿"
  show OlderAdult = "🧓"
--   show OlderAdultLightSkinTone = "🧓🏻"
--   show OlderAdultMediumLightSkinTone = "🧓🏼"
--   show OlderAdultMediumSkinTone = "🧓🏽"
--   show OlderAdultMediumDarkSkinTone = "🧓🏾"
--   show OlderAdultDarkSkinTone = "🧓🏿"
  show OldMan = "👴"
--   show OldManLightSkinTone = "👴🏻"
--   show OldManMediumLightSkinTone = "👴🏼"
--   show OldManMediumSkinTone = "👴🏽"
--   show OldManMediumDarkSkinTone = "👴🏾"
--   show OldManDarkSkinTone = "👴🏿"
  show OldWoman = "👵"
--   show OldWomanLightSkinTone = "👵🏻"
--   show OldWomanMediumLightSkinTone = "👵🏼"
--   show OldWomanMediumSkinTone = "👵🏽"
--   show OldWomanMediumDarkSkinTone = "👵🏾"
--   show OldWomanDarkSkinTone = "👵🏿"
  -- subgroup: person-role
  show ManHealthWorker = "👨‍⚕️"
--   show ManHealthWorkerLightSkinTone = "👨🏻‍⚕️"
--   show ManHealthWorkerMediumLightSkinTone = "👨🏼‍⚕️"
--   show ManHealthWorkerMediumSkinTone = "👨🏽‍⚕️"
--   show ManHealthWorkerMediumDarkSkinTone = "👨🏾‍⚕️"
--   show ManHealthWorkerDarkSkinTone = "👨🏿‍⚕️"
  show WomanHealthWorker = "👩‍⚕️"
--   show WomanHealthWorkerLightSkinTone = "👩🏻‍⚕️"
--   show WomanHealthWorkerMediumLightSkinTone = "👩🏼‍⚕️"
--   show WomanHealthWorkerMediumSkinTone = "👩🏽‍⚕️"
--   show WomanHealthWorkerMediumDarkSkinTone = "👩🏾‍⚕️"
--   show WomanHealthWorkerDarkSkinTone = "👩🏿‍⚕️"
  show ManStudent = "👨‍🎓"
--   show ManStudentLightSkinTone = "👨🏻‍🎓"
--   show ManStudentMediumLightSkinTone = "👨🏼‍🎓"
--   show ManStudentMediumSkinTone = "👨🏽‍🎓"
--   show ManStudentMediumDarkSkinTone = "👨🏾‍🎓"
--   show ManStudentDarkSkinTone = "👨🏿‍🎓"
  show WomanStudent = "👩‍🎓"
--   show WomanStudentLightSkinTone = "👩🏻‍🎓"
--   show WomanStudentMediumLightSkinTone = "👩🏼‍🎓"
--   show WomanStudentMediumSkinTone = "👩🏽‍🎓"
--   show WomanStudentMediumDarkSkinTone = "👩🏾‍🎓"
--   show WomanStudentDarkSkinTone = "👩🏿‍🎓"
  show ManTeacher = "👨‍🏫"
--   show ManTeacherLightSkinTone = "👨🏻‍🏫"
--   show ManTeacherMediumLightSkinTone = "👨🏼‍🏫"
--   show ManTeacherMediumSkinTone = "👨🏽‍🏫"
--   show ManTeacherMediumDarkSkinTone = "👨🏾‍🏫"
--   show ManTeacherDarkSkinTone = "👨🏿‍🏫"
  show WomanTeacher = "👩‍🏫"
--   show WomanTeacherLightSkinTone = "👩🏻‍🏫"
--   show WomanTeacherMediumLightSkinTone = "👩🏼‍🏫"
--   show WomanTeacherMediumSkinTone = "👩🏽‍🏫"
--   show WomanTeacherMediumDarkSkinTone = "👩🏾‍🏫"
--   show WomanTeacherDarkSkinTone = "👩🏿‍🏫"
  show ManJudge = "👨‍⚖️"
--   show ManJudgeLightSkinTone = "👨🏻‍⚖️"
--   show ManJudgeMediumLightSkinTone = "👨🏼‍⚖️"
--   show ManJudgeMediumSkinTone = "👨🏽‍⚖️"
--   show ManJudgeMediumDarkSkinTone = "👨🏾‍⚖️"
--   show ManJudgeDarkSkinTone = "👨🏿‍⚖️"
  show WomanJudge = "👩‍⚖️"
--   show WomanJudgeLightSkinTone = "👩🏻‍⚖️"
--   show WomanJudgeMediumLightSkinTone = "👩🏼‍⚖️"
--   show WomanJudgeMediumSkinTone = "👩🏽‍⚖️"
--   show WomanJudgeMediumDarkSkinTone = "👩🏾‍⚖️"
--   show WomanJudgeDarkSkinTone = "👩🏿‍⚖️"
  show ManFarmer = "👨‍🌾"
--   show ManFarmerLightSkinTone = "👨🏻‍🌾"
--   show ManFarmerMediumLightSkinTone = "👨🏼‍🌾"
--   show ManFarmerMediumSkinTone = "👨🏽‍🌾"
--   show ManFarmerMediumDarkSkinTone = "👨🏾‍🌾"
--   show ManFarmerDarkSkinTone = "👨🏿‍🌾"
  show WomanFarmer = "👩‍🌾"
--   show WomanFarmerLightSkinTone = "👩🏻‍🌾"
--   show WomanFarmerMediumLightSkinTone = "👩🏼‍🌾"
--   show WomanFarmerMediumSkinTone = "👩🏽‍🌾"
--   show WomanFarmerMediumDarkSkinTone = "👩🏾‍🌾"
--   show WomanFarmerDarkSkinTone = "👩🏿‍🌾"
  show ManCook = "👨‍🍳"
--   show ManCookLightSkinTone = "👨🏻‍🍳"
--   show ManCookMediumLightSkinTone = "👨🏼‍🍳"
--   show ManCookMediumSkinTone = "👨🏽‍🍳"
--   show ManCookMediumDarkSkinTone = "👨🏾‍🍳"
--   show ManCookDarkSkinTone = "👨🏿‍🍳"
  show WomanCook = "👩‍🍳"
--   show WomanCookLightSkinTone = "👩🏻‍🍳"
--   show WomanCookMediumLightSkinTone = "👩🏼‍🍳"
--   show WomanCookMediumSkinTone = "👩🏽‍🍳"
--   show WomanCookMediumDarkSkinTone = "👩🏾‍🍳"
--   show WomanCookDarkSkinTone = "👩🏿‍🍳"
  show ManMechanic = "👨‍🔧"
--   show ManMechanicLightSkinTone = "👨🏻‍🔧"
--   show ManMechanicMediumLightSkinTone = "👨🏼‍🔧"
--   show ManMechanicMediumSkinTone = "👨🏽‍🔧"
--   show ManMechanicMediumDarkSkinTone = "👨🏾‍🔧"
--   show ManMechanicDarkSkinTone = "👨🏿‍🔧"
  show WomanMechanic = "👩‍🔧"
--   show WomanMechanicLightSkinTone = "👩🏻‍🔧"
--   show WomanMechanicMediumLightSkinTone = "👩🏼‍🔧"
--   show WomanMechanicMediumSkinTone = "👩🏽‍🔧"
--   show WomanMechanicMediumDarkSkinTone = "👩🏾‍🔧"
--   show WomanMechanicDarkSkinTone = "👩🏿‍🔧"
  show ManFactoryWorker = "👨‍🏭"
--   show ManFactoryWorkerLightSkinTone = "👨🏻‍🏭"
--   show ManFactoryWorkerMediumLightSkinTone = "👨🏼‍🏭"
--   show ManFactoryWorkerMediumSkinTone = "👨🏽‍🏭"
--   show ManFactoryWorkerMediumDarkSkinTone = "👨🏾‍🏭"
--   show ManFactoryWorkerDarkSkinTone = "👨🏿‍🏭"
  show WomanFactoryWorker = "👩‍🏭"
--   show WomanFactoryWorkerLightSkinTone = "👩🏻‍🏭"
--   show WomanFactoryWorkerMediumLightSkinTone = "👩🏼‍🏭"
--   show WomanFactoryWorkerMediumSkinTone = "👩🏽‍🏭"
--   show WomanFactoryWorkerMediumDarkSkinTone = "👩🏾‍🏭"
--   show WomanFactoryWorkerDarkSkinTone = "👩🏿‍🏭"
  show ManOfficeWorker = "👨‍💼"
--   show ManOfficeWorkerLightSkinTone = "👨🏻‍💼"
--   show ManOfficeWorkerMediumLightSkinTone = "👨🏼‍💼"
--   show ManOfficeWorkerMediumSkinTone = "👨🏽‍💼"
--   show ManOfficeWorkerMediumDarkSkinTone = "👨🏾‍💼"
--   show ManOfficeWorkerDarkSkinTone = "👨🏿‍💼"
  show WomanOfficeWorker = "👩‍💼"
--   show WomanOfficeWorkerLightSkinTone = "👩🏻‍💼"
--   show WomanOfficeWorkerMediumLightSkinTone = "👩🏼‍💼"
--   show WomanOfficeWorkerMediumSkinTone = "👩🏽‍💼"
--   show WomanOfficeWorkerMediumDarkSkinTone = "👩🏾‍💼"
--   show WomanOfficeWorkerDarkSkinTone = "👩🏿‍💼"
  show ManScientist = "👨‍🔬"
--   show ManScientistLightSkinTone = "👨🏻‍🔬"
--   show ManScientistMediumLightSkinTone = "👨🏼‍🔬"
--   show ManScientistMediumSkinTone = "👨🏽‍🔬"
--   show ManScientistMediumDarkSkinTone = "👨🏾‍🔬"
--   show ManScientistDarkSkinTone = "👨🏿‍🔬"
  show WomanScientist = "👩‍🔬"
--   show WomanScientistLightSkinTone = "👩🏻‍🔬"
--   show WomanScientistMediumLightSkinTone = "👩🏼‍🔬"
--   show WomanScientistMediumSkinTone = "👩🏽‍🔬"
--   show WomanScientistMediumDarkSkinTone = "👩🏾‍🔬"
--   show WomanScientistDarkSkinTone = "👩🏿‍🔬"
  show ManTechnologist = "👨‍💻"
--   show ManTechnologistLightSkinTone = "👨🏻‍💻"
--   show ManTechnologistMediumLightSkinTone = "👨🏼‍💻"
--   show ManTechnologistMediumSkinTone = "👨🏽‍💻"
--   show ManTechnologistMediumDarkSkinTone = "👨🏾‍💻"
--   show ManTechnologistDarkSkinTone = "👨🏿‍💻"
  show WomanTechnologist = "👩‍💻"
--   show WomanTechnologistLightSkinTone = "👩🏻‍💻"
--   show WomanTechnologistMediumLightSkinTone = "👩🏼‍💻"
--   show WomanTechnologistMediumSkinTone = "👩🏽‍💻"
--   show WomanTechnologistMediumDarkSkinTone = "👩🏾‍💻"
--   show WomanTechnologistDarkSkinTone = "👩🏿‍💻"
  show ManSinger = "👨‍🎤"
--   show ManSingerLightSkinTone = "👨🏻‍🎤"
--   show ManSingerMediumLightSkinTone = "👨🏼‍🎤"
--   show ManSingerMediumSkinTone = "👨🏽‍🎤"
--   show ManSingerMediumDarkSkinTone = "👨🏾‍🎤"
--   show ManSingerDarkSkinTone = "👨🏿‍🎤"
  show WomanSinger = "👩‍🎤"
--   show WomanSingerLightSkinTone = "👩🏻‍🎤"
--   show WomanSingerMediumLightSkinTone = "👩🏼‍🎤"
--   show WomanSingerMediumSkinTone = "👩🏽‍🎤"
--   show WomanSingerMediumDarkSkinTone = "👩🏾‍🎤"
--   show WomanSingerDarkSkinTone = "👩🏿‍🎤"
  show ManArtist = "👨‍🎨"
--   show ManArtistLightSkinTone = "👨🏻‍🎨"
--   show ManArtistMediumLightSkinTone = "👨🏼‍🎨"
--   show ManArtistMediumSkinTone = "👨🏽‍🎨"
--   show ManArtistMediumDarkSkinTone = "👨🏾‍🎨"
--   show ManArtistDarkSkinTone = "👨🏿‍🎨"
  show WomanArtist = "👩‍🎨"
--   show WomanArtistLightSkinTone = "👩🏻‍🎨"
--   show WomanArtistMediumLightSkinTone = "👩🏼‍🎨"
--   show WomanArtistMediumSkinTone = "👩🏽‍🎨"
--   show WomanArtistMediumDarkSkinTone = "👩🏾‍🎨"
--   show WomanArtistDarkSkinTone = "👩🏿‍🎨"
  show ManPilot = "👨‍✈️"
--   show ManPilotLightSkinTone = "👨🏻‍✈️"
--   show ManPilotMediumLightSkinTone = "👨🏼‍✈️"
--   show ManPilotMediumSkinTone = "👨🏽‍✈️"
--   show ManPilotMediumDarkSkinTone = "👨🏾‍✈️"
--   show ManPilotDarkSkinTone = "👨🏿‍✈️"
  show WomanPilot = "👩‍✈️"
--   show WomanPilotLightSkinTone = "👩🏻‍✈️"
--   show WomanPilotMediumLightSkinTone = "👩🏼‍✈️"
--   show WomanPilotMediumSkinTone = "👩🏽‍✈️"
--   show WomanPilotMediumDarkSkinTone = "👩🏾‍✈️"
--   show WomanPilotDarkSkinTone = "👩🏿‍✈️"
  show ManAstronaut = "👨‍🚀"
--   show ManAstronautLightSkinTone = "👨🏻‍🚀"
--   show ManAstronautMediumLightSkinTone = "👨🏼‍🚀"
--   show ManAstronautMediumSkinTone = "👨🏽‍🚀"
--   show ManAstronautMediumDarkSkinTone = "👨🏾‍🚀"
--   show ManAstronautDarkSkinTone = "👨🏿‍🚀"
  show WomanAstronaut = "👩‍🚀"
--   show WomanAstronautLightSkinTone = "👩🏻‍🚀"
--   show WomanAstronautMediumLightSkinTone = "👩🏼‍🚀"
--   show WomanAstronautMediumSkinTone = "👩🏽‍🚀"
--   show WomanAstronautMediumDarkSkinTone = "👩🏾‍🚀"
--   show WomanAstronautDarkSkinTone = "👩🏿‍🚀"
  show ManFirefighter = "👨‍🚒"
--   show ManFirefighterLightSkinTone = "👨🏻‍🚒"
--   show ManFirefighterMediumLightSkinTone = "👨🏼‍🚒"
--   show ManFirefighterMediumSkinTone = "👨🏽‍🚒"
--   show ManFirefighterMediumDarkSkinTone = "👨🏾‍🚒"
--   show ManFirefighterDarkSkinTone = "👨🏿‍🚒"
  show WomanFirefighter = "👩‍🚒"
--   show WomanFirefighterLightSkinTone = "👩🏻‍🚒"
--   show WomanFirefighterMediumLightSkinTone = "👩🏼‍🚒"
--   show WomanFirefighterMediumSkinTone = "👩🏽‍🚒"
--   show WomanFirefighterMediumDarkSkinTone = "👩🏾‍🚒"
--   show WomanFirefighterDarkSkinTone = "👩🏿‍🚒"
  show PoliceOfficer = "👮"
--   show PoliceOfficerLightSkinTone = "👮🏻"
--   show PoliceOfficerMediumLightSkinTone = "👮🏼"
--   show PoliceOfficerMediumSkinTone = "👮🏽"
--   show PoliceOfficerMediumDarkSkinTone = "👮🏾"
--   show PoliceOfficerDarkSkinTone = "👮🏿"
  show ManPoliceOfficer = "👮‍♂️"
--   show ManPoliceOfficerLightSkinTone = "👮🏻‍♂️"
--   show ManPoliceOfficerMediumLightSkinTone = "👮🏼‍♂️"
--   show ManPoliceOfficerMediumSkinTone = "👮🏽‍♂️"
--   show ManPoliceOfficerMediumDarkSkinTone = "👮🏾‍♂️"
--   show ManPoliceOfficerDarkSkinTone = "👮🏿‍♂️"
  show WomanPoliceOfficer = "👮‍♀️"
--   show WomanPoliceOfficerLightSkinTone = "👮🏻‍♀️"
--   show WomanPoliceOfficerMediumLightSkinTone = "👮🏼‍♀️"
--   show WomanPoliceOfficerMediumSkinTone = "👮🏽‍♀️"
--   show WomanPoliceOfficerMediumDarkSkinTone = "👮🏾‍♀️"
--   show WomanPoliceOfficerDarkSkinTone = "👮🏿‍♀️"
  show Detective = "🕵️"
--   show DetectiveLightSkinTone = "🕵🏻"
--   show DetectiveMediumLightSkinTone = "🕵🏼"
--   show DetectiveMediumSkinTone = "🕵🏽"
--   show DetectiveMediumDarkSkinTone = "🕵🏾"
--   show DetectiveDarkSkinTone = "🕵🏿"
  show ManDetective = "🕵️‍♂️"
--   show ManDetectiveLightSkinTone = "🕵🏻‍♂️"
--   show ManDetectiveMediumLightSkinTone = "🕵🏼‍♂️"
--   show ManDetectiveMediumSkinTone = "🕵🏽‍♂️"
--   show ManDetectiveMediumDarkSkinTone = "🕵🏾‍♂️"
--   show ManDetectiveDarkSkinTone = "🕵🏿‍♂️"
  show WomanDetective = "🕵️‍♀️"
--   show WomanDetectiveLightSkinTone = "🕵🏻‍♀️"
--   show WomanDetectiveMediumLightSkinTone = "🕵🏼‍♀️"
--   show WomanDetectiveMediumSkinTone = "🕵🏽‍♀️"
--   show WomanDetectiveMediumDarkSkinTone = "🕵🏾‍♀️"
--   show WomanDetectiveDarkSkinTone = "🕵🏿‍♀️"
  show Guard = "💂"
--   show GuardLightSkinTone = "💂🏻"
--   show GuardMediumLightSkinTone = "💂🏼"
--   show GuardMediumSkinTone = "💂🏽"
--   show GuardMediumDarkSkinTone = "💂🏾"
--   show GuardDarkSkinTone = "💂🏿"
  show ManGuard = "💂‍♂️"
--   show ManGuardLightSkinTone = "💂🏻‍♂️"
--   show ManGuardMediumLightSkinTone = "💂🏼‍♂️"
--   show ManGuardMediumSkinTone = "💂🏽‍♂️"
--   show ManGuardMediumDarkSkinTone = "💂🏾‍♂️"
--   show ManGuardDarkSkinTone = "💂🏿‍♂️"
  show WomanGuard = "💂‍♀️"
--   show WomanGuardLightSkinTone = "💂🏻‍♀️"
--   show WomanGuardMediumLightSkinTone = "💂🏼‍♀️"
--   show WomanGuardMediumSkinTone = "💂🏽‍♀️"
--   show WomanGuardMediumDarkSkinTone = "💂🏾‍♀️"
--   show WomanGuardDarkSkinTone = "💂🏿‍♀️"
  show ConstructionWorker = "👷"
--   show ConstructionWorkerLightSkinTone = "👷🏻"
--   show ConstructionWorkerMediumLightSkinTone = "👷🏼"
--   show ConstructionWorkerMediumSkinTone = "👷🏽"
--   show ConstructionWorkerMediumDarkSkinTone = "👷🏾"
--   show ConstructionWorkerDarkSkinTone = "👷🏿"
  show ManConstructionWorker = "👷‍♂️"
--   show ManConstructionWorkerLightSkinTone = "👷🏻‍♂️"
--   show ManConstructionWorkerMediumLightSkinTone = "👷🏼‍♂️"
--   show ManConstructionWorkerMediumSkinTone = "👷🏽‍♂️"
--   show ManConstructionWorkerMediumDarkSkinTone = "👷🏾‍♂️"
--   show ManConstructionWorkerDarkSkinTone = "👷🏿‍♂️"
  show WomanConstructionWorker = "👷‍♀️"
--   show WomanConstructionWorkerLightSkinTone = "👷🏻‍♀️"
--   show WomanConstructionWorkerMediumLightSkinTone = "👷🏼‍♀️"
--   show WomanConstructionWorkerMediumSkinTone = "👷🏽‍♀️"
--   show WomanConstructionWorkerMediumDarkSkinTone = "👷🏾‍♀️"
--   show WomanConstructionWorkerDarkSkinTone = "👷🏿‍♀️"
  show Prince = "🤴"
--   show PrinceLightSkinTone = "🤴🏻"
--   show PrinceMediumLightSkinTone = "🤴🏼"
--   show PrinceMediumSkinTone = "🤴🏽"
--   show PrinceMediumDarkSkinTone = "🤴🏾"
--   show PrinceDarkSkinTone = "🤴🏿"
  show Princess = "👸"
--   show PrincessLightSkinTone = "👸🏻"
--   show PrincessMediumLightSkinTone = "👸🏼"
--   show PrincessMediumSkinTone = "👸🏽"
--   show PrincessMediumDarkSkinTone = "👸🏾"
--   show PrincessDarkSkinTone = "👸🏿"
  show PersonWearingTurban = "👳"
--   show PersonWearingTurbanLightSkinTone = "👳🏻"
--   show PersonWearingTurbanMediumLightSkinTone = "👳🏼"
--   show PersonWearingTurbanMediumSkinTone = "👳🏽"
--   show PersonWearingTurbanMediumDarkSkinTone = "👳🏾"
--   show PersonWearingTurbanDarkSkinTone = "👳🏿"
  show ManWearingTurban = "👳‍♂️"
--   show ManWearingTurbanLightSkinTone = "👳🏻‍♂️"
--   show ManWearingTurbanMediumLightSkinTone = "👳🏼‍♂️"
--   show ManWearingTurbanMediumSkinTone = "👳🏽‍♂️"
--   show ManWearingTurbanMediumDarkSkinTone = "👳🏾‍♂️"
--   show ManWearingTurbanDarkSkinTone = "👳🏿‍♂️"
  show WomanWearingTurban = "👳‍♀️"
--   show WomanWearingTurbanLightSkinTone = "👳🏻‍♀️"
--   show WomanWearingTurbanMediumLightSkinTone = "👳🏼‍♀️"
--   show WomanWearingTurbanMediumSkinTone = "👳🏽‍♀️"
--   show WomanWearingTurbanMediumDarkSkinTone = "👳🏾‍♀️"
--   show WomanWearingTurbanDarkSkinTone = "👳🏿‍♀️"
  show ManWithChineseCap = "👲"
--   show ManWithChineseCapLightSkinTone = "👲🏻"
--   show ManWithChineseCapMediumLightSkinTone = "👲🏼"
--   show ManWithChineseCapMediumSkinTone = "👲🏽"
--   show ManWithChineseCapMediumDarkSkinTone = "👲🏾"
--   show ManWithChineseCapDarkSkinTone = "👲🏿"
  show WomanWithHeadscarf = "🧕"
--   show WomanWithHeadscarfLightSkinTone = "🧕🏻"
--   show WomanWithHeadscarfMediumLightSkinTone = "🧕🏼"
--   show WomanWithHeadscarfMediumSkinTone = "🧕🏽"
--   show WomanWithHeadscarfMediumDarkSkinTone = "🧕🏾"
--   show WomanWithHeadscarfDarkSkinTone = "🧕🏿"
  show BeardedPerson = "🧔"
--   show BeardedPersonLightSkinTone = "🧔🏻"
--   show BeardedPersonMediumLightSkinTone = "🧔🏼"
--   show BeardedPersonMediumSkinTone = "🧔🏽"
--   show BeardedPersonMediumDarkSkinTone = "🧔🏾"
--   show BeardedPersonDarkSkinTone = "🧔🏿"
  show BlondHairedPerson = "👱"
--   show BlondHairedPersonLightSkinTone = "👱🏻"
--   show BlondHairedPersonMediumLightSkinTone = "👱🏼"
--   show BlondHairedPersonMediumSkinTone = "👱🏽"
--   show BlondHairedPersonMediumDarkSkinTone = "👱🏾"
--   show BlondHairedPersonDarkSkinTone = "👱🏿"
  show BlondHairedMan = "👱‍♂️"
--   show BlondHairedManLightSkinTone = "👱🏻‍♂️"
--   show BlondHairedManMediumLightSkinTone = "👱🏼‍♂️"
--   show BlondHairedManMediumSkinTone = "👱🏽‍♂️"
--   show BlondHairedManMediumDarkSkinTone = "👱🏾‍♂️"
--   show BlondHairedManDarkSkinTone = "👱🏿‍♂️"
  show BlondHairedWoman = "👱‍♀️"
--   show BlondHairedWomanLightSkinTone = "👱🏻‍♀️"
--   show BlondHairedWomanMediumLightSkinTone = "👱🏼‍♀️"
--   show BlondHairedWomanMediumSkinTone = "👱🏽‍♀️"
--   show BlondHairedWomanMediumDarkSkinTone = "👱🏾‍♀️"
--   show BlondHairedWomanDarkSkinTone = "👱🏿‍♀️"
  show ManRedHaired = "👨‍🦰"
--   show ManRedHairedLightSkinTone = "👨🏻‍🦰"
--   show ManRedHairedMediumLightSkinTone = "👨🏼‍🦰"
--   show ManRedHairedMediumSkinTone = "👨🏽‍🦰"
--   show ManRedHairedMediumDarkSkinTone = "👨🏾‍🦰"
--   show ManRedHairedDarkSkinTone = "👨🏿‍🦰"
  show WomanRedHaired = "👩‍🦰"
--   show WomanRedHairedLightSkinTone = "👩🏻‍🦰"
--   show WomanRedHairedMediumLightSkinTone = "👩🏼‍🦰"
--   show WomanRedHairedMediumSkinTone = "👩🏽‍🦰"
--   show WomanRedHairedMediumDarkSkinTone = "👩🏾‍🦰"
--   show WomanRedHairedDarkSkinTone = "👩🏿‍🦰"
  show ManCurlyHaired = "👨‍🦱"
--   show ManCurlyHairedLightSkinTone = "👨🏻‍🦱"
--   show ManCurlyHairedMediumLightSkinTone = "👨🏼‍🦱"
--   show ManCurlyHairedMediumSkinTone = "👨🏽‍🦱"
--   show ManCurlyHairedMediumDarkSkinTone = "👨🏾‍🦱"
--   show ManCurlyHairedDarkSkinTone = "👨🏿‍🦱"
  show WomanCurlyHaired = "👩‍🦱"
--   show WomanCurlyHairedLightSkinTone = "👩🏻‍🦱"
--   show WomanCurlyHairedMediumLightSkinTone = "👩🏼‍🦱"
--   show WomanCurlyHairedMediumSkinTone = "👩🏽‍🦱"
--   show WomanCurlyHairedMediumDarkSkinTone = "👩🏾‍🦱"
--   show WomanCurlyHairedDarkSkinTone = "👩🏿‍🦱"
  show ManBald = "👨‍🦲"
--   show ManBaldLightSkinTone = "👨🏻‍🦲"
--   show ManBaldMediumLightSkinTone = "👨🏼‍🦲"
--   show ManBaldMediumSkinTone = "👨🏽‍🦲"
--   show ManBaldMediumDarkSkinTone = "👨🏾‍🦲"
--   show ManBaldDarkSkinTone = "👨🏿‍🦲"
  show WomanBald = "👩‍🦲"
--   show WomanBaldLightSkinTone = "👩🏻‍🦲"
--   show WomanBaldMediumLightSkinTone = "👩🏼‍🦲"
--   show WomanBaldMediumSkinTone = "👩🏽‍🦲"
--   show WomanBaldMediumDarkSkinTone = "👩🏾‍🦲"
--   show WomanBaldDarkSkinTone = "👩🏿‍🦲"
  show ManWhiteHaired = "👨‍🦳"
--   show ManWhiteHairedLightSkinTone = "👨🏻‍🦳"
--   show ManWhiteHairedMediumLightSkinTone = "👨🏼‍🦳"
--   show ManWhiteHairedMediumSkinTone = "👨🏽‍🦳"
--   show ManWhiteHairedMediumDarkSkinTone = "👨🏾‍🦳"
--   show ManWhiteHairedDarkSkinTone = "👨🏿‍🦳"
  show WomanWhiteHaired = "👩‍🦳"
--   show WomanWhiteHairedLightSkinTone = "👩🏻‍🦳"
--   show WomanWhiteHairedMediumLightSkinTone = "👩🏼‍🦳"
--   show WomanWhiteHairedMediumSkinTone = "👩🏽‍🦳"
--   show WomanWhiteHairedMediumDarkSkinTone = "👩🏾‍🦳"
--   show WomanWhiteHairedDarkSkinTone = "👩🏿‍🦳"
  show ManInTuxedo = "🤵"
--   show ManInTuxedoLightSkinTone = "🤵🏻"
--   show ManInTuxedoMediumLightSkinTone = "🤵🏼"
--   show ManInTuxedoMediumSkinTone = "🤵🏽"
--   show ManInTuxedoMediumDarkSkinTone = "🤵🏾"
--   show ManInTuxedoDarkSkinTone = "🤵🏿"
  show BrideWithVeil = "👰"
--   show BrideWithVeilLightSkinTone = "👰🏻"
--   show BrideWithVeilMediumLightSkinTone = "👰🏼"
--   show BrideWithVeilMediumSkinTone = "👰🏽"
--   show BrideWithVeilMediumDarkSkinTone = "👰🏾"
--   show BrideWithVeilDarkSkinTone = "👰🏿"
  show PregnantWoman = "🤰"
--   show PregnantWomanLightSkinTone = "🤰🏻"
--   show PregnantWomanMediumLightSkinTone = "🤰🏼"
--   show PregnantWomanMediumSkinTone = "🤰🏽"
--   show PregnantWomanMediumDarkSkinTone = "🤰🏾"
--   show PregnantWomanDarkSkinTone = "🤰🏿"
  show BreastFeeding = "🤱"
--   show BreastFeedingLightSkinTone = "🤱🏻"
--   show BreastFeedingMediumLightSkinTone = "🤱🏼"
--   show BreastFeedingMediumSkinTone = "🤱🏽"
--   show BreastFeedingMediumDarkSkinTone = "🤱🏾"
--   show BreastFeedingDarkSkinTone = "🤱🏿"
  -- subgroup: person-fantasy
  show BabyAngel = "👼"
--   show BabyAngelLightSkinTone = "👼🏻"
--   show BabyAngelMediumLightSkinTone = "👼🏼"
--   show BabyAngelMediumSkinTone = "👼🏽"
--   show BabyAngelMediumDarkSkinTone = "👼🏾"
--   show BabyAngelDarkSkinTone = "👼🏿"
  show SantaClaus = "🎅"
--   show SantaClausLightSkinTone = "🎅🏻"
--   show SantaClausMediumLightSkinTone = "🎅🏼"
--   show SantaClausMediumSkinTone = "🎅🏽"
--   show SantaClausMediumDarkSkinTone = "🎅🏾"
--   show SantaClausDarkSkinTone = "🎅🏿"
  show MrsClaus = "🤶"
--   show MrsClausLightSkinTone = "🤶🏻"
--   show MrsClausMediumLightSkinTone = "🤶🏼"
--   show MrsClausMediumSkinTone = "🤶🏽"
--   show MrsClausMediumDarkSkinTone = "🤶🏾"
--   show MrsClausDarkSkinTone = "🤶🏿"
  show Superhero = "🦸"
--   show SuperheroLightSkinTone = "🦸🏻"
--   show SuperheroMediumLightSkinTone = "🦸🏼"
--   show SuperheroMediumSkinTone = "🦸🏽"
--   show SuperheroMediumDarkSkinTone = "🦸🏾"
--   show SuperheroDarkSkinTone = "🦸🏿"
  show WomanSuperhero = "🦸‍♀️"
--   show WomanSuperheroLightSkinTone = "🦸🏻‍♀️"
--   show WomanSuperheroMediumLightSkinTone = "🦸🏼‍♀️"
--   show WomanSuperheroMediumSkinTone = "🦸🏽‍♀️"
--   show WomanSuperheroMediumDarkSkinTone = "🦸🏾‍♀️"
--   show WomanSuperheroDarkSkinTone = "🦸🏿‍♀️"
  show ManSuperhero = "🦸‍♂️"
--   show ManSuperheroLightSkinTone = "🦸🏻‍♂️"
--   show ManSuperheroMediumLightSkinTone = "🦸🏼‍♂️"
--   show ManSuperheroMediumSkinTone = "🦸🏽‍♂️"
--   show ManSuperheroMediumDarkSkinTone = "🦸🏾‍♂️"
--   show ManSuperheroDarkSkinTone = "🦸🏿‍♂️"
  show Supervillain = "🦹"
--   show SupervillainLightSkinTone = "🦹🏻"
--   show SupervillainMediumLightSkinTone = "🦹🏼"
--   show SupervillainMediumSkinTone = "🦹🏽"
--   show SupervillainMediumDarkSkinTone = "🦹🏾"
--   show SupervillainDarkSkinTone = "🦹🏿"
  show WomanSupervillain = "🦹‍♀️"
--   show WomanSupervillainLightSkinTone = "🦹🏻‍♀️"
--   show WomanSupervillainMediumLightSkinTone = "🦹🏼‍♀️"
--   show WomanSupervillainMediumSkinTone = "🦹🏽‍♀️"
--   show WomanSupervillainMediumDarkSkinTone = "🦹🏾‍♀️"
--   show WomanSupervillainDarkSkinTone = "🦹🏿‍♀️"
  show ManSupervillain = "🦹‍♂️"
--   show ManSupervillainLightSkinTone = "🦹🏻‍♂️"
--   show ManSupervillainMediumLightSkinTone = "🦹🏼‍♂️"
--   show ManSupervillainMediumSkinTone = "🦹🏽‍♂️"
--   show ManSupervillainMediumDarkSkinTone = "🦹🏾‍♂️"
--   show ManSupervillainDarkSkinTone = "🦹🏿‍♂️"
  show Mage = "🧙"
--   show MageLightSkinTone = "🧙🏻"
--   show MageMediumLightSkinTone = "🧙🏼"
--   show MageMediumSkinTone = "🧙🏽"
--   show MageMediumDarkSkinTone = "🧙🏾"
--   show MageDarkSkinTone = "🧙🏿"
  show WomanMage = "🧙‍♀️"
--   show WomanMageLightSkinTone = "🧙🏻‍♀️"
--   show WomanMageMediumLightSkinTone = "🧙🏼‍♀️"
--   show WomanMageMediumSkinTone = "🧙🏽‍♀️"
--   show WomanMageMediumDarkSkinTone = "🧙🏾‍♀️"
--   show WomanMageDarkSkinTone = "🧙🏿‍♀️"
  show ManMage = "🧙‍♂️"
--   show ManMageLightSkinTone = "🧙🏻‍♂️"
--   show ManMageMediumLightSkinTone = "🧙🏼‍♂️"
--   show ManMageMediumSkinTone = "🧙🏽‍♂️"
--   show ManMageMediumDarkSkinTone = "🧙🏾‍♂️"
--   show ManMageDarkSkinTone = "🧙🏿‍♂️"
  show Fairy = "🧚"
--   show FairyLightSkinTone = "🧚🏻"
--   show FairyMediumLightSkinTone = "🧚🏼"
--   show FairyMediumSkinTone = "🧚🏽"
--   show FairyMediumDarkSkinTone = "🧚🏾"
--   show FairyDarkSkinTone = "🧚🏿"
  show WomanFairy = "🧚‍♀️"
--   show WomanFairyLightSkinTone = "🧚🏻‍♀️"
--   show WomanFairyMediumLightSkinTone = "🧚🏼‍♀️"
--   show WomanFairyMediumSkinTone = "🧚🏽‍♀️"
--   show WomanFairyMediumDarkSkinTone = "🧚🏾‍♀️"
--   show WomanFairyDarkSkinTone = "🧚🏿‍♀️"
  show ManFairy = "🧚‍♂️"
--   show ManFairyLightSkinTone = "🧚🏻‍♂️"
--   show ManFairyMediumLightSkinTone = "🧚🏼‍♂️"
--   show ManFairyMediumSkinTone = "🧚🏽‍♂️"
--   show ManFairyMediumDarkSkinTone = "🧚🏾‍♂️"
--   show ManFairyDarkSkinTone = "🧚🏿‍♂️"
  show Vampire = "🧛"
--   show VampireLightSkinTone = "🧛🏻"
--   show VampireMediumLightSkinTone = "🧛🏼"
--   show VampireMediumSkinTone = "🧛🏽"
--   show VampireMediumDarkSkinTone = "🧛🏾"
--   show VampireDarkSkinTone = "🧛🏿"
  show WomanVampire = "🧛‍♀️"
--   show WomanVampireLightSkinTone = "🧛🏻‍♀️"
--   show WomanVampireMediumLightSkinTone = "🧛🏼‍♀️"
--   show WomanVampireMediumSkinTone = "🧛🏽‍♀️"
--   show WomanVampireMediumDarkSkinTone = "🧛🏾‍♀️"
--   show WomanVampireDarkSkinTone = "🧛🏿‍♀️"
  show ManVampire = "🧛‍♂️"
--   show ManVampireLightSkinTone = "🧛🏻‍♂️"
--   show ManVampireMediumLightSkinTone = "🧛🏼‍♂️"
--   show ManVampireMediumSkinTone = "🧛🏽‍♂️"
--   show ManVampireMediumDarkSkinTone = "🧛🏾‍♂️"
--   show ManVampireDarkSkinTone = "🧛🏿‍♂️"
  show Merperson = "🧜"
--   show MerpersonLightSkinTone = "🧜🏻"
--   show MerpersonMediumLightSkinTone = "🧜🏼"
--   show MerpersonMediumSkinTone = "🧜🏽"
--   show MerpersonMediumDarkSkinTone = "🧜🏾"
--   show MerpersonDarkSkinTone = "🧜🏿"
  show Mermaid = "🧜‍♀️"
--   show MermaidLightSkinTone = "🧜🏻‍♀️"
--   show MermaidMediumLightSkinTone = "🧜🏼‍♀️"
--   show MermaidMediumSkinTone = "🧜🏽‍♀️"
--   show MermaidMediumDarkSkinTone = "🧜🏾‍♀️"
--   show MermaidDarkSkinTone = "🧜🏿‍♀️"
  show Merman = "🧜‍♂️"
--   show MermanLightSkinTone = "🧜🏻‍♂️"
--   show MermanMediumLightSkinTone = "🧜🏼‍♂️"
--   show MermanMediumSkinTone = "🧜🏽‍♂️"
--   show MermanMediumDarkSkinTone = "🧜🏾‍♂️"
--   show MermanDarkSkinTone = "🧜🏿‍♂️"
  show Elf = "🧝"
--   show ElfLightSkinTone = "🧝🏻"
--   show ElfMediumLightSkinTone = "🧝🏼"
--   show ElfMediumSkinTone = "🧝🏽"
--   show ElfMediumDarkSkinTone = "🧝🏾"
--   show ElfDarkSkinTone = "🧝🏿"
  show WomanElf = "🧝‍♀️"
--   show WomanElfLightSkinTone = "🧝🏻‍♀️"
--   show WomanElfMediumLightSkinTone = "🧝🏼‍♀️"
--   show WomanElfMediumSkinTone = "🧝🏽‍♀️"
--   show WomanElfMediumDarkSkinTone = "🧝🏾‍♀️"
--   show WomanElfDarkSkinTone = "🧝🏿‍♀️"
  show ManElf = "🧝‍♂️"
--   show ManElfLightSkinTone = "🧝🏻‍♂️"
--   show ManElfMediumLightSkinTone = "🧝🏼‍♂️"
--   show ManElfMediumSkinTone = "🧝🏽‍♂️"
--   show ManElfMediumDarkSkinTone = "🧝🏾‍♂️"
--   show ManElfDarkSkinTone = "🧝🏿‍♂️"
  show Genie = "🧞"
  show WomanGenie = "🧞‍♀️"
  show ManGenie = "🧞‍♂️"
  show Zombie = "🧟"
  show WomanZombie = "🧟‍♀️"
  show ManZombie = "🧟‍♂️"
  -- subgroup: person-gesture
  show PersonFrowning = "🙍"
--   show PersonFrowningLightSkinTone = "🙍🏻"
--   show PersonFrowningMediumLightSkinTone = "🙍🏼"
--   show PersonFrowningMediumSkinTone = "🙍🏽"
--   show PersonFrowningMediumDarkSkinTone = "🙍🏾"
--   show PersonFrowningDarkSkinTone = "🙍🏿"
  show ManFrowning = "🙍‍♂️"
--   show ManFrowningLightSkinTone = "🙍🏻‍♂️"
--   show ManFrowningMediumLightSkinTone = "🙍🏼‍♂️"
--   show ManFrowningMediumSkinTone = "🙍🏽‍♂️"
--   show ManFrowningMediumDarkSkinTone = "🙍🏾‍♂️"
--   show ManFrowningDarkSkinTone = "🙍🏿‍♂️"
  show WomanFrowning = "🙍‍♀️"
--   show WomanFrowningLightSkinTone = "🙍🏻‍♀️"
--   show WomanFrowningMediumLightSkinTone = "🙍🏼‍♀️"
--   show WomanFrowningMediumSkinTone = "🙍🏽‍♀️"
--   show WomanFrowningMediumDarkSkinTone = "🙍🏾‍♀️"
--   show WomanFrowningDarkSkinTone = "🙍🏿‍♀️"
  show PersonPouting = "🙎"
--   show PersonPoutingLightSkinTone = "🙎🏻"
--   show PersonPoutingMediumLightSkinTone = "🙎🏼"
--   show PersonPoutingMediumSkinTone = "🙎🏽"
--   show PersonPoutingMediumDarkSkinTone = "🙎🏾"
--   show PersonPoutingDarkSkinTone = "🙎🏿"
  show ManPouting = "🙎‍♂️"
--   show ManPoutingLightSkinTone = "🙎🏻‍♂️"
--   show ManPoutingMediumLightSkinTone = "🙎🏼‍♂️"
--   show ManPoutingMediumSkinTone = "🙎🏽‍♂️"
--   show ManPoutingMediumDarkSkinTone = "🙎🏾‍♂️"
--   show ManPoutingDarkSkinTone = "🙎🏿‍♂️"
  show WomanPouting = "🙎‍♀️"
--   show WomanPoutingLightSkinTone = "🙎🏻‍♀️"
--   show WomanPoutingMediumLightSkinTone = "🙎🏼‍♀️"
--   show WomanPoutingMediumSkinTone = "🙎🏽‍♀️"
--   show WomanPoutingMediumDarkSkinTone = "🙎🏾‍♀️"
--   show WomanPoutingDarkSkinTone = "🙎🏿‍♀️"
  show PersonGesturingNO = "🙅"
--   show PersonGesturingNOLightSkinTone = "🙅🏻"
--   show PersonGesturingNOMediumLightSkinTone = "🙅🏼"
--   show PersonGesturingNOMediumSkinTone = "🙅🏽"
--   show PersonGesturingNOMediumDarkSkinTone = "🙅🏾"
--   show PersonGesturingNODarkSkinTone = "🙅🏿"
  show ManGesturingNO = "🙅‍♂️"
--   show ManGesturingNOLightSkinTone = "🙅🏻‍♂️"
--   show ManGesturingNOMediumLightSkinTone = "🙅🏼‍♂️"
--   show ManGesturingNOMediumSkinTone = "🙅🏽‍♂️"
--   show ManGesturingNOMediumDarkSkinTone = "🙅🏾‍♂️"
--   show ManGesturingNODarkSkinTone = "🙅🏿‍♂️"
  show WomanGesturingNO = "🙅‍♀️"
--   show WomanGesturingNOLightSkinTone = "🙅🏻‍♀️"
--   show WomanGesturingNOMediumLightSkinTone = "🙅🏼‍♀️"
--   show WomanGesturingNOMediumSkinTone = "🙅🏽‍♀️"
--   show WomanGesturingNOMediumDarkSkinTone = "🙅🏾‍♀️"
--   show WomanGesturingNODarkSkinTone = "🙅🏿‍♀️"
  show PersonGesturingOK = "🙆"
--   show PersonGesturingOKLightSkinTone = "🙆🏻"
--   show PersonGesturingOKMediumLightSkinTone = "🙆🏼"
--   show PersonGesturingOKMediumSkinTone = "🙆🏽"
--   show PersonGesturingOKMediumDarkSkinTone = "🙆🏾"
--   show PersonGesturingOKDarkSkinTone = "🙆🏿"
  show ManGesturingOK = "🙆‍♂️"
--   show ManGesturingOKLightSkinTone = "🙆🏻‍♂️"
--   show ManGesturingOKMediumLightSkinTone = "🙆🏼‍♂️"
--   show ManGesturingOKMediumSkinTone = "🙆🏽‍♂️"
--   show ManGesturingOKMediumDarkSkinTone = "🙆🏾‍♂️"
--   show ManGesturingOKDarkSkinTone = "🙆🏿‍♂️"
  show WomanGesturingOK = "🙆‍♀️"
--   show WomanGesturingOKLightSkinTone = "🙆🏻‍♀️"
--   show WomanGesturingOKMediumLightSkinTone = "🙆🏼‍♀️"
--   show WomanGesturingOKMediumSkinTone = "🙆🏽‍♀️"
--   show WomanGesturingOKMediumDarkSkinTone = "🙆🏾‍♀️"
--   show WomanGesturingOKDarkSkinTone = "🙆🏿‍♀️"
  show PersonTippingHand = "💁"
--   show PersonTippingHandLightSkinTone = "💁🏻"
--   show PersonTippingHandMediumLightSkinTone = "💁🏼"
--   show PersonTippingHandMediumSkinTone = "💁🏽"
--   show PersonTippingHandMediumDarkSkinTone = "💁🏾"
--   show PersonTippingHandDarkSkinTone = "💁🏿"
  show ManTippingHand = "💁‍♂️"
--   show ManTippingHandLightSkinTone = "💁🏻‍♂️"
--   show ManTippingHandMediumLightSkinTone = "💁🏼‍♂️"
--   show ManTippingHandMediumSkinTone = "💁🏽‍♂️"
--   show ManTippingHandMediumDarkSkinTone = "💁🏾‍♂️"
--   show ManTippingHandDarkSkinTone = "💁🏿‍♂️"
  show WomanTippingHand = "💁‍♀️"
--   show WomanTippingHandLightSkinTone = "💁🏻‍♀️"
--   show WomanTippingHandMediumLightSkinTone = "💁🏼‍♀️"
--   show WomanTippingHandMediumSkinTone = "💁🏽‍♀️"
--   show WomanTippingHandMediumDarkSkinTone = "💁🏾‍♀️"
--   show WomanTippingHandDarkSkinTone = "💁🏿‍♀️"
  show PersonRaisingHand = "🙋"
--   show PersonRaisingHandLightSkinTone = "🙋🏻"
--   show PersonRaisingHandMediumLightSkinTone = "🙋🏼"
--   show PersonRaisingHandMediumSkinTone = "🙋🏽"
--   show PersonRaisingHandMediumDarkSkinTone = "🙋🏾"
--   show PersonRaisingHandDarkSkinTone = "🙋🏿"
  show ManRaisingHand = "🙋‍♂️"
--   show ManRaisingHandLightSkinTone = "🙋🏻‍♂️"
--   show ManRaisingHandMediumLightSkinTone = "🙋🏼‍♂️"
--   show ManRaisingHandMediumSkinTone = "🙋🏽‍♂️"
--   show ManRaisingHandMediumDarkSkinTone = "🙋🏾‍♂️"
--   show ManRaisingHandDarkSkinTone = "🙋🏿‍♂️"
  show WomanRaisingHand = "🙋‍♀️"
--   show WomanRaisingHandLightSkinTone = "🙋🏻‍♀️"
--   show WomanRaisingHandMediumLightSkinTone = "🙋🏼‍♀️"
--   show WomanRaisingHandMediumSkinTone = "🙋🏽‍♀️"
--   show WomanRaisingHandMediumDarkSkinTone = "🙋🏾‍♀️"
--   show WomanRaisingHandDarkSkinTone = "🙋🏿‍♀️"
  show PersonBowing = "🙇"
--   show PersonBowingLightSkinTone = "🙇🏻"
--   show PersonBowingMediumLightSkinTone = "🙇🏼"
--   show PersonBowingMediumSkinTone = "🙇🏽"
--   show PersonBowingMediumDarkSkinTone = "🙇🏾"
--   show PersonBowingDarkSkinTone = "🙇🏿"
  show ManBowing = "🙇‍♂️"
--   show ManBowingLightSkinTone = "🙇🏻‍♂️"
--   show ManBowingMediumLightSkinTone = "🙇🏼‍♂️"
--   show ManBowingMediumSkinTone = "🙇🏽‍♂️"
--   show ManBowingMediumDarkSkinTone = "🙇🏾‍♂️"
--   show ManBowingDarkSkinTone = "🙇🏿‍♂️"
  show WomanBowing = "🙇‍♀️"
--   show WomanBowingLightSkinTone = "🙇🏻‍♀️"
--   show WomanBowingMediumLightSkinTone = "🙇🏼‍♀️"
--   show WomanBowingMediumSkinTone = "🙇🏽‍♀️"
--   show WomanBowingMediumDarkSkinTone = "🙇🏾‍♀️"
--   show WomanBowingDarkSkinTone = "🙇🏿‍♀️"
  show PersonFacepalming = "🤦"
--   show PersonFacepalmingLightSkinTone = "🤦🏻"
--   show PersonFacepalmingMediumLightSkinTone = "🤦🏼"
--   show PersonFacepalmingMediumSkinTone = "🤦🏽"
--   show PersonFacepalmingMediumDarkSkinTone = "🤦🏾"
--   show PersonFacepalmingDarkSkinTone = "🤦🏿"
  show ManFacepalming = "🤦‍♂️"
--   show ManFacepalmingLightSkinTone = "🤦🏻‍♂️"
--   show ManFacepalmingMediumLightSkinTone = "🤦🏼‍♂️"
--   show ManFacepalmingMediumSkinTone = "🤦🏽‍♂️"
--   show ManFacepalmingMediumDarkSkinTone = "🤦🏾‍♂️"
--   show ManFacepalmingDarkSkinTone = "🤦🏿‍♂️"
  show WomanFacepalming = "🤦‍♀️"
--   show WomanFacepalmingLightSkinTone = "🤦🏻‍♀️"
--   show WomanFacepalmingMediumLightSkinTone = "🤦🏼‍♀️"
--   show WomanFacepalmingMediumSkinTone = "🤦🏽‍♀️"
--   show WomanFacepalmingMediumDarkSkinTone = "🤦🏾‍♀️"
--   show WomanFacepalmingDarkSkinTone = "🤦🏿‍♀️"
  show PersonShrugging = "🤷"
--   show PersonShruggingLightSkinTone = "🤷🏻"
--   show PersonShruggingMediumLightSkinTone = "🤷🏼"
--   show PersonShruggingMediumSkinTone = "🤷🏽"
--   show PersonShruggingMediumDarkSkinTone = "🤷🏾"
--   show PersonShruggingDarkSkinTone = "🤷🏿"
  show ManShrugging = "🤷‍♂️"
--   show ManShruggingLightSkinTone = "🤷🏻‍♂️"
--   show ManShruggingMediumLightSkinTone = "🤷🏼‍♂️"
--   show ManShruggingMediumSkinTone = "🤷🏽‍♂️"
--   show ManShruggingMediumDarkSkinTone = "🤷🏾‍♂️"
--   show ManShruggingDarkSkinTone = "🤷🏿‍♂️"
  show WomanShrugging = "🤷‍♀️"
--   show WomanShruggingLightSkinTone = "🤷🏻‍♀️"
--   show WomanShruggingMediumLightSkinTone = "🤷🏼‍♀️"
--   show WomanShruggingMediumSkinTone = "🤷🏽‍♀️"
--   show WomanShruggingMediumDarkSkinTone = "🤷🏾‍♀️"
--   show WomanShruggingDarkSkinTone = "🤷🏿‍♀️"
  -- subgroup: person-activity
  show PersonGettingMassage = "💆"
--   show PersonGettingMassageLightSkinTone = "💆🏻"
--   show PersonGettingMassageMediumLightSkinTone = "💆🏼"
--   show PersonGettingMassageMediumSkinTone = "💆🏽"
--   show PersonGettingMassageMediumDarkSkinTone = "💆🏾"
--   show PersonGettingMassageDarkSkinTone = "💆🏿"
  show ManGettingMassage = "💆‍♂️"
--   show ManGettingMassageLightSkinTone = "💆🏻‍♂️"
--   show ManGettingMassageMediumLightSkinTone = "💆🏼‍♂️"
--   show ManGettingMassageMediumSkinTone = "💆🏽‍♂️"
--   show ManGettingMassageMediumDarkSkinTone = "💆🏾‍♂️"
--   show ManGettingMassageDarkSkinTone = "💆🏿‍♂️"
  show WomanGettingMassage = "💆‍♀️"
--   show WomanGettingMassageLightSkinTone = "💆🏻‍♀️"
--   show WomanGettingMassageMediumLightSkinTone = "💆🏼‍♀️"
--   show WomanGettingMassageMediumSkinTone = "💆🏽‍♀️"
--   show WomanGettingMassageMediumDarkSkinTone = "💆🏾‍♀️"
--   show WomanGettingMassageDarkSkinTone = "💆🏿‍♀️"
  show PersonGettingHaircut = "💇"
--   show PersonGettingHaircutLightSkinTone = "💇🏻"
--   show PersonGettingHaircutMediumLightSkinTone = "💇🏼"
--   show PersonGettingHaircutMediumSkinTone = "💇🏽"
--   show PersonGettingHaircutMediumDarkSkinTone = "💇🏾"
--   show PersonGettingHaircutDarkSkinTone = "💇🏿"
  show ManGettingHaircut = "💇‍♂️"
--   show ManGettingHaircutLightSkinTone = "💇🏻‍♂️"
--   show ManGettingHaircutMediumLightSkinTone = "💇🏼‍♂️"
--   show ManGettingHaircutMediumSkinTone = "💇🏽‍♂️"
--   show ManGettingHaircutMediumDarkSkinTone = "💇🏾‍♂️"
--   show ManGettingHaircutDarkSkinTone = "💇🏿‍♂️"
  show WomanGettingHaircut = "💇‍♀️"
--   show WomanGettingHaircutLightSkinTone = "💇🏻‍♀️"
--   show WomanGettingHaircutMediumLightSkinTone = "💇🏼‍♀️"
--   show WomanGettingHaircutMediumSkinTone = "💇🏽‍♀️"
--   show WomanGettingHaircutMediumDarkSkinTone = "💇🏾‍♀️"
--   show WomanGettingHaircutDarkSkinTone = "💇🏿‍♀️"
  show PersonWalking = "🚶"
--   show PersonWalkingLightSkinTone = "🚶🏻"
--   show PersonWalkingMediumLightSkinTone = "🚶🏼"
--   show PersonWalkingMediumSkinTone = "🚶🏽"
--   show PersonWalkingMediumDarkSkinTone = "🚶🏾"
--   show PersonWalkingDarkSkinTone = "🚶🏿"
  show ManWalking = "🚶‍♂️"
--   show ManWalkingLightSkinTone = "🚶🏻‍♂️"
--   show ManWalkingMediumLightSkinTone = "🚶🏼‍♂️"
--   show ManWalkingMediumSkinTone = "🚶🏽‍♂️"
--   show ManWalkingMediumDarkSkinTone = "🚶🏾‍♂️"
--   show ManWalkingDarkSkinTone = "🚶🏿‍♂️"
  show WomanWalking = "🚶‍♀️"
--   show WomanWalkingLightSkinTone = "🚶🏻‍♀️"
--   show WomanWalkingMediumLightSkinTone = "🚶🏼‍♀️"
--   show WomanWalkingMediumSkinTone = "🚶🏽‍♀️"
--   show WomanWalkingMediumDarkSkinTone = "🚶🏾‍♀️"
--   show WomanWalkingDarkSkinTone = "🚶🏿‍♀️"
  show PersonRunning = "🏃"
--   show PersonRunningLightSkinTone = "🏃🏻"
--   show PersonRunningMediumLightSkinTone = "🏃🏼"
--   show PersonRunningMediumSkinTone = "🏃🏽"
--   show PersonRunningMediumDarkSkinTone = "🏃🏾"
--   show PersonRunningDarkSkinTone = "🏃🏿"
  show ManRunning = "🏃‍♂️"
--   show ManRunningLightSkinTone = "🏃🏻‍♂️"
--   show ManRunningMediumLightSkinTone = "🏃🏼‍♂️"
--   show ManRunningMediumSkinTone = "🏃🏽‍♂️"
--   show ManRunningMediumDarkSkinTone = "🏃🏾‍♂️"
--   show ManRunningDarkSkinTone = "🏃🏿‍♂️"
  show WomanRunning = "🏃‍♀️"
--   show WomanRunningLightSkinTone = "🏃🏻‍♀️"
--   show WomanRunningMediumLightSkinTone = "🏃🏼‍♀️"
--   show WomanRunningMediumSkinTone = "🏃🏽‍♀️"
--   show WomanRunningMediumDarkSkinTone = "🏃🏾‍♀️"
--   show WomanRunningDarkSkinTone = "🏃🏿‍♀️"
  show WomanDancing = "💃"
--   show WomanDancingLightSkinTone = "💃🏻"
--   show WomanDancingMediumLightSkinTone = "💃🏼"
--   show WomanDancingMediumSkinTone = "💃🏽"
--   show WomanDancingMediumDarkSkinTone = "💃🏾"
--   show WomanDancingDarkSkinTone = "💃🏿"
  show ManDancing = "🕺"
--   show ManDancingLightSkinTone = "🕺🏻"
--   show ManDancingMediumLightSkinTone = "🕺🏼"
--   show ManDancingMediumSkinTone = "🕺🏽"
--   show ManDancingMediumDarkSkinTone = "🕺🏾"
--   show ManDancingDarkSkinTone = "🕺🏿"
  show PeopleWithBunnyEars = "👯"
  show MenWithBunnyEars = "👯‍♂️"
  show WomenWithBunnyEars = "👯‍♀️"
  show PersonInSteamyRoom = "🧖"
--   show PersonInSteamyRoomLightSkinTone = "🧖🏻"
--   show PersonInSteamyRoomMediumLightSkinTone = "🧖🏼"
--   show PersonInSteamyRoomMediumSkinTone = "🧖🏽"
--   show PersonInSteamyRoomMediumDarkSkinTone = "🧖🏾"
--   show PersonInSteamyRoomDarkSkinTone = "🧖🏿"
  show WomanInSteamyRoom = "🧖‍♀️"
--   show WomanInSteamyRoomLightSkinTone = "🧖🏻‍♀️"
--   show WomanInSteamyRoomMediumLightSkinTone = "🧖🏼‍♀️"
--   show WomanInSteamyRoomMediumSkinTone = "🧖🏽‍♀️"
--   show WomanInSteamyRoomMediumDarkSkinTone = "🧖🏾‍♀️"
--   show WomanInSteamyRoomDarkSkinTone = "🧖🏿‍♀️"
  show ManInSteamyRoom = "🧖‍♂️"
--   show ManInSteamyRoomLightSkinTone = "🧖🏻‍♂️"
--   show ManInSteamyRoomMediumLightSkinTone = "🧖🏼‍♂️"
--   show ManInSteamyRoomMediumSkinTone = "🧖🏽‍♂️"
--   show ManInSteamyRoomMediumDarkSkinTone = "🧖🏾‍♂️"
--   show ManInSteamyRoomDarkSkinTone = "🧖🏿‍♂️"
  show PersonClimbing = "🧗"
--   show PersonClimbingLightSkinTone = "🧗🏻"
--   show PersonClimbingMediumLightSkinTone = "🧗🏼"
--   show PersonClimbingMediumSkinTone = "🧗🏽"
--   show PersonClimbingMediumDarkSkinTone = "🧗🏾"
--   show PersonClimbingDarkSkinTone = "🧗🏿"
  show WomanClimbing = "🧗‍♀️"
--   show WomanClimbingLightSkinTone = "🧗🏻‍♀️"
--   show WomanClimbingMediumLightSkinTone = "🧗🏼‍♀️"
--   show WomanClimbingMediumSkinTone = "🧗🏽‍♀️"
--   show WomanClimbingMediumDarkSkinTone = "🧗🏾‍♀️"
--   show WomanClimbingDarkSkinTone = "🧗🏿‍♀️"
  show ManClimbing = "🧗‍♂️"
--   show ManClimbingLightSkinTone = "🧗🏻‍♂️"
--   show ManClimbingMediumLightSkinTone = "🧗🏼‍♂️"
--   show ManClimbingMediumSkinTone = "🧗🏽‍♂️"
--   show ManClimbingMediumDarkSkinTone = "🧗🏾‍♂️"
--   show ManClimbingDarkSkinTone = "🧗🏿‍♂️"
  show PersonInLotusPosition = "🧘"
--   show PersonInLotusPositionLightSkinTone = "🧘🏻"
--   show PersonInLotusPositionMediumLightSkinTone = "🧘🏼"
--   show PersonInLotusPositionMediumSkinTone = "🧘🏽"
--   show PersonInLotusPositionMediumDarkSkinTone = "🧘🏾"
--   show PersonInLotusPositionDarkSkinTone = "🧘🏿"
  show WomanInLotusPosition = "🧘‍♀️"
--   show WomanInLotusPositionLightSkinTone = "🧘🏻‍♀️"
--   show WomanInLotusPositionMediumLightSkinTone = "🧘🏼‍♀️"
--   show WomanInLotusPositionMediumSkinTone = "🧘🏽‍♀️"
--   show WomanInLotusPositionMediumDarkSkinTone = "🧘🏾‍♀️"
--   show WomanInLotusPositionDarkSkinTone = "🧘🏿‍♀️"
  show ManInLotusPosition = "🧘‍♂️"
--   show ManInLotusPositionLightSkinTone = "🧘🏻‍♂️"
--   show ManInLotusPositionMediumLightSkinTone = "🧘🏼‍♂️"
--   show ManInLotusPositionMediumSkinTone = "🧘🏽‍♂️"
--   show ManInLotusPositionMediumDarkSkinTone = "🧘🏾‍♂️"
--   show ManInLotusPositionDarkSkinTone = "🧘🏿‍♂️"
  show PersonTakingBath = "🛀"
--   show PersonTakingBathLightSkinTone = "🛀🏻"
--   show PersonTakingBathMediumLightSkinTone = "🛀🏼"
--   show PersonTakingBathMediumSkinTone = "🛀🏽"
--   show PersonTakingBathMediumDarkSkinTone = "🛀🏾"
--   show PersonTakingBathDarkSkinTone = "🛀🏿"
  show PersonInBed = "🛌"
--   show PersonInBedLightSkinTone = "🛌🏻"
--   show PersonInBedMediumLightSkinTone = "🛌🏼"
--   show PersonInBedMediumSkinTone = "🛌🏽"
--   show PersonInBedMediumDarkSkinTone = "🛌🏾"
--   show PersonInBedDarkSkinTone = "🛌🏿"
  show ManInSuitLevitating = "🕴️"
--   show ManInSuitLevitatingLightSkinTone = "🕴🏻"
--   show ManInSuitLevitatingMediumLightSkinTone = "🕴🏼"
--   show ManInSuitLevitatingMediumSkinTone = "🕴🏽"
--   show ManInSuitLevitatingMediumDarkSkinTone = "🕴🏾"
--   show ManInSuitLevitatingDarkSkinTone = "🕴🏿"
  show SpeakingHead = "🗣️"
  show BustInSilhouette = "👤"
  show BustsInSilhouette = "👥"
  -- subgroup: person-sport
  show PersonFencing = "🤺"
  show HorseRacing = "🏇"
--   show HorseRacingLightSkinTone = "🏇🏻"
--   show HorseRacingMediumLightSkinTone = "🏇🏼"
--   show HorseRacingMediumSkinTone = "🏇🏽"
--   show HorseRacingMediumDarkSkinTone = "🏇🏾"
--   show HorseRacingDarkSkinTone = "🏇🏿"
  show Skier = "⛷️"
  show Snowboarder = "🏂"
--   show SnowboarderLightSkinTone = "🏂🏻"
--   show SnowboarderMediumLightSkinTone = "🏂🏼"
--   show SnowboarderMediumSkinTone = "🏂🏽"
--   show SnowboarderMediumDarkSkinTone = "🏂🏾"
--   show SnowboarderDarkSkinTone = "🏂🏿"
  show PersonGolfing = "🏌️"
--   show PersonGolfingLightSkinTone = "🏌🏻"
--   show PersonGolfingMediumLightSkinTone = "🏌🏼"
--   show PersonGolfingMediumSkinTone = "🏌🏽"
--   show PersonGolfingMediumDarkSkinTone = "🏌🏾"
--   show PersonGolfingDarkSkinTone = "🏌🏿"
  show ManGolfing = "🏌️‍♂️"
--   show ManGolfingLightSkinTone = "🏌🏻‍♂️"
--   show ManGolfingMediumLightSkinTone = "🏌🏼‍♂️"
--   show ManGolfingMediumSkinTone = "🏌🏽‍♂️"
--   show ManGolfingMediumDarkSkinTone = "🏌🏾‍♂️"
--   show ManGolfingDarkSkinTone = "🏌🏿‍♂️"
  show WomanGolfing = "🏌️‍♀️"
--   show WomanGolfingLightSkinTone = "🏌🏻‍♀️"
--   show WomanGolfingMediumLightSkinTone = "🏌🏼‍♀️"
--   show WomanGolfingMediumSkinTone = "🏌🏽‍♀️"
--   show WomanGolfingMediumDarkSkinTone = "🏌🏾‍♀️"
--   show WomanGolfingDarkSkinTone = "🏌🏿‍♀️"
  show PersonSurfing = "🏄"
--   show PersonSurfingLightSkinTone = "🏄🏻"
--   show PersonSurfingMediumLightSkinTone = "🏄🏼"
--   show PersonSurfingMediumSkinTone = "🏄🏽"
--   show PersonSurfingMediumDarkSkinTone = "🏄🏾"
--   show PersonSurfingDarkSkinTone = "🏄🏿"
  show ManSurfing = "🏄‍♂️"
--   show ManSurfingLightSkinTone = "🏄🏻‍♂️"
--   show ManSurfingMediumLightSkinTone = "🏄🏼‍♂️"
--   show ManSurfingMediumSkinTone = "🏄🏽‍♂️"
--   show ManSurfingMediumDarkSkinTone = "🏄🏾‍♂️"
--   show ManSurfingDarkSkinTone = "🏄🏿‍♂️"
  show WomanSurfing = "🏄‍♀️"
--   show WomanSurfingLightSkinTone = "🏄🏻‍♀️"
--   show WomanSurfingMediumLightSkinTone = "🏄🏼‍♀️"
--   show WomanSurfingMediumSkinTone = "🏄🏽‍♀️"
--   show WomanSurfingMediumDarkSkinTone = "🏄🏾‍♀️"
--   show WomanSurfingDarkSkinTone = "🏄🏿‍♀️"
  show PersonRowingBoat = "🚣"
--   show PersonRowingBoatLightSkinTone = "🚣🏻"
--   show PersonRowingBoatMediumLightSkinTone = "🚣🏼"
--   show PersonRowingBoatMediumSkinTone = "🚣🏽"
--   show PersonRowingBoatMediumDarkSkinTone = "🚣🏾"
--   show PersonRowingBoatDarkSkinTone = "🚣🏿"
  show ManRowingBoat = "🚣‍♂️"
--   show ManRowingBoatLightSkinTone = "🚣🏻‍♂️"
--   show ManRowingBoatMediumLightSkinTone = "🚣🏼‍♂️"
--   show ManRowingBoatMediumSkinTone = "🚣🏽‍♂️"
--   show ManRowingBoatMediumDarkSkinTone = "🚣🏾‍♂️"
--   show ManRowingBoatDarkSkinTone = "🚣🏿‍♂️"
  show WomanRowingBoat = "🚣‍♀️"
--   show WomanRowingBoatLightSkinTone = "🚣🏻‍♀️"
--   show WomanRowingBoatMediumLightSkinTone = "🚣🏼‍♀️"
--   show WomanRowingBoatMediumSkinTone = "🚣🏽‍♀️"
--   show WomanRowingBoatMediumDarkSkinTone = "🚣🏾‍♀️"
--   show WomanRowingBoatDarkSkinTone = "🚣🏿‍♀️"
  show PersonSwimming = "🏊"
--   show PersonSwimmingLightSkinTone = "🏊🏻"
--   show PersonSwimmingMediumLightSkinTone = "🏊🏼"
--   show PersonSwimmingMediumSkinTone = "🏊🏽"
--   show PersonSwimmingMediumDarkSkinTone = "🏊🏾"
--   show PersonSwimmingDarkSkinTone = "🏊🏿"
  show ManSwimming = "🏊‍♂️"
--   show ManSwimmingLightSkinTone = "🏊🏻‍♂️"
--   show ManSwimmingMediumLightSkinTone = "🏊🏼‍♂️"
--   show ManSwimmingMediumSkinTone = "🏊🏽‍♂️"
--   show ManSwimmingMediumDarkSkinTone = "🏊🏾‍♂️"
--   show ManSwimmingDarkSkinTone = "🏊🏿‍♂️"
  show WomanSwimming = "🏊‍♀️"
--   show WomanSwimmingLightSkinTone = "🏊🏻‍♀️"
--   show WomanSwimmingMediumLightSkinTone = "🏊🏼‍♀️"
--   show WomanSwimmingMediumSkinTone = "🏊🏽‍♀️"
--   show WomanSwimmingMediumDarkSkinTone = "🏊🏾‍♀️"
--   show WomanSwimmingDarkSkinTone = "🏊🏿‍♀️"
  show PersonBouncingBall = "⛹️"
--   show PersonBouncingBallLightSkinTone = "⛹🏻"
--   show PersonBouncingBallMediumLightSkinTone = "⛹🏼"
--   show PersonBouncingBallMediumSkinTone = "⛹🏽"
--   show PersonBouncingBallMediumDarkSkinTone = "⛹🏾"
--   show PersonBouncingBallDarkSkinTone = "⛹🏿"
  show ManBouncingBall = "⛹️‍♂️"
--   show ManBouncingBallLightSkinTone = "⛹🏻‍♂️"
--   show ManBouncingBallMediumLightSkinTone = "⛹🏼‍♂️"
--   show ManBouncingBallMediumSkinTone = "⛹🏽‍♂️"
--   show ManBouncingBallMediumDarkSkinTone = "⛹🏾‍♂️"
--   show ManBouncingBallDarkSkinTone = "⛹🏿‍♂️"
  show WomanBouncingBall = "⛹️‍♀️"
--   show WomanBouncingBallLightSkinTone = "⛹🏻‍♀️"
--   show WomanBouncingBallMediumLightSkinTone = "⛹🏼‍♀️"
--   show WomanBouncingBallMediumSkinTone = "⛹🏽‍♀️"
--   show WomanBouncingBallMediumDarkSkinTone = "⛹🏾‍♀️"
--   show WomanBouncingBallDarkSkinTone = "⛹🏿‍♀️"
  show PersonLiftingWeights = "🏋️"
--   show PersonLiftingWeightsLightSkinTone = "🏋🏻"
--   show PersonLiftingWeightsMediumLightSkinTone = "🏋🏼"
--   show PersonLiftingWeightsMediumSkinTone = "🏋🏽"
--   show PersonLiftingWeightsMediumDarkSkinTone = "🏋🏾"
--   show PersonLiftingWeightsDarkSkinTone = "🏋🏿"
  show ManLiftingWeights = "🏋️‍♂️"
--   show ManLiftingWeightsLightSkinTone = "🏋🏻‍♂️"
--   show ManLiftingWeightsMediumLightSkinTone = "🏋🏼‍♂️"
--   show ManLiftingWeightsMediumSkinTone = "🏋🏽‍♂️"
--   show ManLiftingWeightsMediumDarkSkinTone = "🏋🏾‍♂️"
--   show ManLiftingWeightsDarkSkinTone = "🏋🏿‍♂️"
  show WomanLiftingWeights = "🏋️‍♀️"
--   show WomanLiftingWeightsLightSkinTone = "🏋🏻‍♀️"
--   show WomanLiftingWeightsMediumLightSkinTone = "🏋🏼‍♀️"
--   show WomanLiftingWeightsMediumSkinTone = "🏋🏽‍♀️"
--   show WomanLiftingWeightsMediumDarkSkinTone = "🏋🏾‍♀️"
--   show WomanLiftingWeightsDarkSkinTone = "🏋🏿‍♀️"
  show PersonBiking = "🚴"
--   show PersonBikingLightSkinTone = "🚴🏻"
--   show PersonBikingMediumLightSkinTone = "🚴🏼"
--   show PersonBikingMediumSkinTone = "🚴🏽"
--   show PersonBikingMediumDarkSkinTone = "🚴🏾"
--   show PersonBikingDarkSkinTone = "🚴🏿"
  show ManBiking = "🚴‍♂️"
--   show ManBikingLightSkinTone = "🚴🏻‍♂️"
--   show ManBikingMediumLightSkinTone = "🚴🏼‍♂️"
--   show ManBikingMediumSkinTone = "🚴🏽‍♂️"
--   show ManBikingMediumDarkSkinTone = "🚴🏾‍♂️"
--   show ManBikingDarkSkinTone = "🚴🏿‍♂️"
  show WomanBiking = "🚴‍♀️"
--   show WomanBikingLightSkinTone = "🚴🏻‍♀️"
--   show WomanBikingMediumLightSkinTone = "🚴🏼‍♀️"
--   show WomanBikingMediumSkinTone = "🚴🏽‍♀️"
--   show WomanBikingMediumDarkSkinTone = "🚴🏾‍♀️"
--   show WomanBikingDarkSkinTone = "🚴🏿‍♀️"
  show PersonMountainBiking = "🚵"
--   show PersonMountainBikingLightSkinTone = "🚵🏻"
--   show PersonMountainBikingMediumLightSkinTone = "🚵🏼"
--   show PersonMountainBikingMediumSkinTone = "🚵🏽"
--   show PersonMountainBikingMediumDarkSkinTone = "🚵🏾"
--   show PersonMountainBikingDarkSkinTone = "🚵🏿"
  show ManMountainBiking = "🚵‍♂️"
--   show ManMountainBikingLightSkinTone = "🚵🏻‍♂️"
--   show ManMountainBikingMediumLightSkinTone = "🚵🏼‍♂️"
--   show ManMountainBikingMediumSkinTone = "🚵🏽‍♂️"
--   show ManMountainBikingMediumDarkSkinTone = "🚵🏾‍♂️"
--   show ManMountainBikingDarkSkinTone = "🚵🏿‍♂️"
  show WomanMountainBiking = "🚵‍♀️"
--   show WomanMountainBikingLightSkinTone = "🚵🏻‍♀️"
--   show WomanMountainBikingMediumLightSkinTone = "🚵🏼‍♀️"
--   show WomanMountainBikingMediumSkinTone = "🚵🏽‍♀️"
--   show WomanMountainBikingMediumDarkSkinTone = "🚵🏾‍♀️"
--   show WomanMountainBikingDarkSkinTone = "🚵🏿‍♀️"
  show RacingCar = "🏎️"
  show Motorcycle = "🏍️"
  show PersonCartwheeling = "🤸"
--   show PersonCartwheelingLightSkinTone = "🤸🏻"
--   show PersonCartwheelingMediumLightSkinTone = "🤸🏼"
--   show PersonCartwheelingMediumSkinTone = "🤸🏽"
--   show PersonCartwheelingMediumDarkSkinTone = "🤸🏾"
--   show PersonCartwheelingDarkSkinTone = "🤸🏿"
  show ManCartwheeling = "🤸‍♂️"
--   show ManCartwheelingLightSkinTone = "🤸🏻‍♂️"
--   show ManCartwheelingMediumLightSkinTone = "🤸🏼‍♂️"
--   show ManCartwheelingMediumSkinTone = "🤸🏽‍♂️"
--   show ManCartwheelingMediumDarkSkinTone = "🤸🏾‍♂️"
--   show ManCartwheelingDarkSkinTone = "🤸🏿‍♂️"
  show WomanCartwheeling = "🤸‍♀️"
--   show WomanCartwheelingLightSkinTone = "🤸🏻‍♀️"
--   show WomanCartwheelingMediumLightSkinTone = "🤸🏼‍♀️"
--   show WomanCartwheelingMediumSkinTone = "🤸🏽‍♀️"
--   show WomanCartwheelingMediumDarkSkinTone = "🤸🏾‍♀️"
--   show WomanCartwheelingDarkSkinTone = "🤸🏿‍♀️"
  show PeopleWrestling = "🤼"
  show MenWrestling = "🤼‍♂️"
  show WomenWrestling = "🤼‍♀️"
  show PersonPlayingWaterPolo = "🤽"
--   show PersonPlayingWaterPoloLightSkinTone = "🤽🏻"
--   show PersonPlayingWaterPoloMediumLightSkinTone = "🤽🏼"
--   show PersonPlayingWaterPoloMediumSkinTone = "🤽🏽"
--   show PersonPlayingWaterPoloMediumDarkSkinTone = "🤽🏾"
--   show PersonPlayingWaterPoloDarkSkinTone = "🤽🏿"
  show ManPlayingWaterPolo = "🤽‍♂️"
--   show ManPlayingWaterPoloLightSkinTone = "🤽🏻‍♂️"
--   show ManPlayingWaterPoloMediumLightSkinTone = "🤽🏼‍♂️"
--   show ManPlayingWaterPoloMediumSkinTone = "🤽🏽‍♂️"
--   show ManPlayingWaterPoloMediumDarkSkinTone = "🤽🏾‍♂️"
--   show ManPlayingWaterPoloDarkSkinTone = "🤽🏿‍♂️"
  show WomanPlayingWaterPolo = "🤽‍♀️"
--   show WomanPlayingWaterPoloLightSkinTone = "🤽🏻‍♀️"
--   show WomanPlayingWaterPoloMediumLightSkinTone = "🤽🏼‍♀️"
--   show WomanPlayingWaterPoloMediumSkinTone = "🤽🏽‍♀️"
--   show WomanPlayingWaterPoloMediumDarkSkinTone = "🤽🏾‍♀️"
--   show WomanPlayingWaterPoloDarkSkinTone = "🤽🏿‍♀️"
  show PersonPlayingHandball = "🤾"
--   show PersonPlayingHandballLightSkinTone = "🤾🏻"
--   show PersonPlayingHandballMediumLightSkinTone = "🤾🏼"
--   show PersonPlayingHandballMediumSkinTone = "🤾🏽"
--   show PersonPlayingHandballMediumDarkSkinTone = "🤾🏾"
--   show PersonPlayingHandballDarkSkinTone = "🤾🏿"
  show ManPlayingHandball = "🤾‍♂️"
--   show ManPlayingHandballLightSkinTone = "🤾🏻‍♂️"
--   show ManPlayingHandballMediumLightSkinTone = "🤾🏼‍♂️"
--   show ManPlayingHandballMediumSkinTone = "🤾🏽‍♂️"
--   show ManPlayingHandballMediumDarkSkinTone = "🤾🏾‍♂️"
--   show ManPlayingHandballDarkSkinTone = "🤾🏿‍♂️"
  show WomanPlayingHandball = "🤾‍♀️"
--   show WomanPlayingHandballLightSkinTone = "🤾🏻‍♀️"
--   show WomanPlayingHandballMediumLightSkinTone = "🤾🏼‍♀️"
--   show WomanPlayingHandballMediumSkinTone = "🤾🏽‍♀️"
--   show WomanPlayingHandballMediumDarkSkinTone = "🤾🏾‍♀️"
--   show WomanPlayingHandballDarkSkinTone = "🤾🏿‍♀️"
  show PersonJuggling = "🤹"
--   show PersonJugglingLightSkinTone = "🤹🏻"
--   show PersonJugglingMediumLightSkinTone = "🤹🏼"
--   show PersonJugglingMediumSkinTone = "🤹🏽"
--   show PersonJugglingMediumDarkSkinTone = "🤹🏾"
--   show PersonJugglingDarkSkinTone = "🤹🏿"
  show ManJuggling = "🤹‍♂️"
--   show ManJugglingLightSkinTone = "🤹🏻‍♂️"
--   show ManJugglingMediumLightSkinTone = "🤹🏼‍♂️"
--   show ManJugglingMediumSkinTone = "🤹🏽‍♂️"
--   show ManJugglingMediumDarkSkinTone = "🤹🏾‍♂️"
--   show ManJugglingDarkSkinTone = "🤹🏿‍♂️"
  show WomanJuggling = "🤹‍♀️"
--   show WomanJugglingLightSkinTone = "🤹🏻‍♀️"
--   show WomanJugglingMediumLightSkinTone = "🤹🏼‍♀️"
--   show WomanJugglingMediumSkinTone = "🤹🏽‍♀️"
--   show WomanJugglingMediumDarkSkinTone = "🤹🏾‍♀️"
--   show WomanJugglingDarkSkinTone = "🤹🏿‍♀️"
  -- subgroup: family
  show ManAndWomanHoldingHands = "👫"
  show TwoMenHoldingHands = "👬"
  show TwoWomenHoldingHands = "👭"
  show Kiss = "💏"
  show KissWomanMan = "👩‍❤️‍💋‍👨"
  show KissManMan = "👨‍❤️‍💋‍👨"
  show KissWomanWoman = "👩‍❤️‍💋‍👩"
  show CoupleWithHeart = "💑"
  show CoupleWithHeartWomanMan = "👩‍❤️‍👨"
  show CoupleWithHeartManMan = "👨‍❤️‍👨"
  show CoupleWithHeartWomanWoman = "👩‍❤️‍👩"
  show Family = "👪"
  show FamilyManWomanBoy = "👨‍👩‍👦"
  show FamilyManWomanGirl = "👨‍👩‍👧"
  show FamilyManWomanGirlBoy = "👨‍👩‍👧‍👦"
  show FamilyManWomanBoyBoy = "👨‍👩‍👦‍👦"
  show FamilyManWomanGirlGirl = "👨‍👩‍👧‍👧"
  show FamilyManManBoy = "👨‍👨‍👦"
  show FamilyManManGirl = "👨‍👨‍👧"
  show FamilyManManGirlBoy = "👨‍👨‍👧‍👦"
  show FamilyManManBoyBoy = "👨‍👨‍👦‍👦"
  show FamilyManManGirlGirl = "👨‍👨‍👧‍👧"
  show FamilyWomanWomanBoy = "👩‍👩‍👦"
  show FamilyWomanWomanGirl = "👩‍👩‍👧"
  show FamilyWomanWomanGirlBoy = "👩‍👩‍👧‍👦"
  show FamilyWomanWomanBoyBoy = "👩‍👩‍👦‍👦"
  show FamilyWomanWomanGirlGirl = "👩‍👩‍👧‍👧"
  show FamilyManBoy = "👨‍👦"
  show FamilyManBoyBoy = "👨‍👦‍👦"
  show FamilyManGirl = "👨‍👧"
  show FamilyManGirlBoy = "👨‍👧‍👦"
  show FamilyManGirlGirl = "👨‍👧‍👧"
  show FamilyWomanBoy = "👩‍👦"
  show FamilyWomanBoyBoy = "👩‍👦‍👦"
  show FamilyWomanGirl = "👩‍👧"
  show FamilyWomanGirlBoy = "👩‍👧‍👦"
  show FamilyWomanGirlGirl = "👩‍👧‍👧"
  -- subgroup: body
  show Selfie = "🤳"
--   show SelfieLightSkinTone = "🤳🏻"
--   show SelfieMediumLightSkinTone = "🤳🏼"
--   show SelfieMediumSkinTone = "🤳🏽"
--   show SelfieMediumDarkSkinTone = "🤳🏾"
--   show SelfieDarkSkinTone = "🤳🏿"
  show FlexedBiceps = "💪"
--   show FlexedBicepsLightSkinTone = "💪🏻"
--   show FlexedBicepsMediumLightSkinTone = "💪🏼"
--   show FlexedBicepsMediumSkinTone = "💪🏽"
--   show FlexedBicepsMediumDarkSkinTone = "💪🏾"
--   show FlexedBicepsDarkSkinTone = "💪🏿"
  show Leg = "🦵"
--   show LegLightSkinTone = "🦵🏻"
--   show LegMediumLightSkinTone = "🦵🏼"
--   show LegMediumSkinTone = "🦵🏽"
--   show LegMediumDarkSkinTone = "🦵🏾"
--   show LegDarkSkinTone = "🦵🏿"
  show Foot = "🦶"
--   show FootLightSkinTone = "🦶🏻"
--   show FootMediumLightSkinTone = "🦶🏼"
--   show FootMediumSkinTone = "🦶🏽"
--   show FootMediumDarkSkinTone = "🦶🏾"
--   show FootDarkSkinTone = "🦶🏿"
  show BackhandIndexPointingLeft = "👈"
--   show BackhandIndexPointingLeftLightSkinTone = "👈🏻"
--   show BackhandIndexPointingLeftMediumLightSkinTone = "👈🏼"
--   show BackhandIndexPointingLeftMediumSkinTone = "👈🏽"
--   show BackhandIndexPointingLeftMediumDarkSkinTone = "👈🏾"
--   show BackhandIndexPointingLeftDarkSkinTone = "👈🏿"
  show BackhandIndexPointingRight = "👉"
--   show BackhandIndexPointingRightLightSkinTone = "👉🏻"
--   show BackhandIndexPointingRightMediumLightSkinTone = "👉🏼"
--   show BackhandIndexPointingRightMediumSkinTone = "👉🏽"
--   show BackhandIndexPointingRightMediumDarkSkinTone = "👉🏾"
--   show BackhandIndexPointingRightDarkSkinTone = "👉🏿"
  show IndexPointingUp = "☝️"
--   show IndexPointingUpLightSkinTone = "☝🏻"
--   show IndexPointingUpMediumLightSkinTone = "☝🏼"
--   show IndexPointingUpMediumSkinTone = "☝🏽"
--   show IndexPointingUpMediumDarkSkinTone = "☝🏾"
--   show IndexPointingUpDarkSkinTone = "☝🏿"
  show BackhandIndexPointingUp = "👆"
--   show BackhandIndexPointingUpLightSkinTone = "👆🏻"
--   show BackhandIndexPointingUpMediumLightSkinTone = "👆🏼"
--   show BackhandIndexPointingUpMediumSkinTone = "👆🏽"
--   show BackhandIndexPointingUpMediumDarkSkinTone = "👆🏾"
--   show BackhandIndexPointingUpDarkSkinTone = "👆🏿"
  show MiddleFinger = "🖕"
--   show MiddleFingerLightSkinTone = "🖕🏻"
--   show MiddleFingerMediumLightSkinTone = "🖕🏼"
--   show MiddleFingerMediumSkinTone = "🖕🏽"
--   show MiddleFingerMediumDarkSkinTone = "🖕🏾"
--   show MiddleFingerDarkSkinTone = "🖕🏿"
  show BackhandIndexPointingDown = "👇"
--   show BackhandIndexPointingDownLightSkinTone = "👇🏻"
--   show BackhandIndexPointingDownMediumLightSkinTone = "👇🏼"
--   show BackhandIndexPointingDownMediumSkinTone = "👇🏽"
--   show BackhandIndexPointingDownMediumDarkSkinTone = "👇🏾"
--   show BackhandIndexPointingDownDarkSkinTone = "👇🏿"
  show VictoryHand = "✌️"
--   show VictoryHandLightSkinTone = "✌🏻"
--   show VictoryHandMediumLightSkinTone = "✌🏼"
--   show VictoryHandMediumSkinTone = "✌🏽"
--   show VictoryHandMediumDarkSkinTone = "✌🏾"
--   show VictoryHandDarkSkinTone = "✌🏿"
  show CrossedFingers = "🤞"
--   show CrossedFingersLightSkinTone = "🤞🏻"
--   show CrossedFingersMediumLightSkinTone = "🤞🏼"
--   show CrossedFingersMediumSkinTone = "🤞🏽"
--   show CrossedFingersMediumDarkSkinTone = "🤞🏾"
--   show CrossedFingersDarkSkinTone = "🤞🏿"
  show VulcanSalute = "🖖"
--   show VulcanSaluteLightSkinTone = "🖖🏻"
--   show VulcanSaluteMediumLightSkinTone = "🖖🏼"
--   show VulcanSaluteMediumSkinTone = "🖖🏽"
--   show VulcanSaluteMediumDarkSkinTone = "🖖🏾"
--   show VulcanSaluteDarkSkinTone = "🖖🏿"
  show SignOfTheHorns = "🤘"
--   show SignOfTheHornsLightSkinTone = "🤘🏻"
--   show SignOfTheHornsMediumLightSkinTone = "🤘🏼"
--   show SignOfTheHornsMediumSkinTone = "🤘🏽"
--   show SignOfTheHornsMediumDarkSkinTone = "🤘🏾"
--   show SignOfTheHornsDarkSkinTone = "🤘🏿"
  show CallMeHand = "🤙"
--   show CallMeHandLightSkinTone = "🤙🏻"
--   show CallMeHandMediumLightSkinTone = "🤙🏼"
--   show CallMeHandMediumSkinTone = "🤙🏽"
--   show CallMeHandMediumDarkSkinTone = "🤙🏾"
--   show CallMeHandDarkSkinTone = "🤙🏿"
  show HandWithFingersSplayed = "🖐️"
--   show HandWithFingersSplayedLightSkinTone = "🖐🏻"
--   show HandWithFingersSplayedMediumLightSkinTone = "🖐🏼"
--   show HandWithFingersSplayedMediumSkinTone = "🖐🏽"
--   show HandWithFingersSplayedMediumDarkSkinTone = "🖐🏾"
--   show HandWithFingersSplayedDarkSkinTone = "🖐🏿"
  show RaisedHand = "✋"
--   show RaisedHandLightSkinTone = "✋🏻"
--   show RaisedHandMediumLightSkinTone = "✋🏼"
--   show RaisedHandMediumSkinTone = "✋🏽"
--   show RaisedHandMediumDarkSkinTone = "✋🏾"
--   show RaisedHandDarkSkinTone = "✋🏿"
  show OKHand = "👌"
--   show OKHandLightSkinTone = "👌🏻"
--   show OKHandMediumLightSkinTone = "👌🏼"
--   show OKHandMediumSkinTone = "👌🏽"
--   show OKHandMediumDarkSkinTone = "👌🏾"
--   show OKHandDarkSkinTone = "👌🏿"
  show ThumbsUp = "👍"
--   show ThumbsUpLightSkinTone = "👍🏻"
--   show ThumbsUpMediumLightSkinTone = "👍🏼"
--   show ThumbsUpMediumSkinTone = "👍🏽"
--   show ThumbsUpMediumDarkSkinTone = "👍🏾"
--   show ThumbsUpDarkSkinTone = "👍🏿"
  show ThumbsDown = "👎"
--   show ThumbsDownLightSkinTone = "👎🏻"
--   show ThumbsDownMediumLightSkinTone = "👎🏼"
--   show ThumbsDownMediumSkinTone = "👎🏽"
--   show ThumbsDownMediumDarkSkinTone = "👎🏾"
--   show ThumbsDownDarkSkinTone = "👎🏿"
  show RaisedFist = "✊"
--   show RaisedFistLightSkinTone = "✊🏻"
--   show RaisedFistMediumLightSkinTone = "✊🏼"
--   show RaisedFistMediumSkinTone = "✊🏽"
--   show RaisedFistMediumDarkSkinTone = "✊🏾"
--   show RaisedFistDarkSkinTone = "✊🏿"
  show OncomingFist = "👊"
--   show OncomingFistLightSkinTone = "👊🏻"
--   show OncomingFistMediumLightSkinTone = "👊🏼"
--   show OncomingFistMediumSkinTone = "👊🏽"
--   show OncomingFistMediumDarkSkinTone = "👊🏾"
--   show OncomingFistDarkSkinTone = "👊🏿"
  show LeftFacingFist = "🤛"
--   show LeftFacingFistLightSkinTone = "🤛🏻"
--   show LeftFacingFistMediumLightSkinTone = "🤛🏼"
--   show LeftFacingFistMediumSkinTone = "🤛🏽"
--   show LeftFacingFistMediumDarkSkinTone = "🤛🏾"
--   show LeftFacingFistDarkSkinTone = "🤛🏿"
  show RightFacingFist = "🤜"
--   show RightFacingFistLightSkinTone = "🤜🏻"
--   show RightFacingFistMediumLightSkinTone = "🤜🏼"
--   show RightFacingFistMediumSkinTone = "🤜🏽"
--   show RightFacingFistMediumDarkSkinTone = "🤜🏾"
--   show RightFacingFistDarkSkinTone = "🤜🏿"
  show RaisedBackOfHand = "🤚"
--   show RaisedBackOfHandLightSkinTone = "🤚🏻"
--   show RaisedBackOfHandMediumLightSkinTone = "🤚🏼"
--   show RaisedBackOfHandMediumSkinTone = "🤚🏽"
--   show RaisedBackOfHandMediumDarkSkinTone = "🤚🏾"
--   show RaisedBackOfHandDarkSkinTone = "🤚🏿"
  show WavingHand = "👋"
--   show WavingHandLightSkinTone = "👋🏻"
--   show WavingHandMediumLightSkinTone = "👋🏼"
--   show WavingHandMediumSkinTone = "👋🏽"
--   show WavingHandMediumDarkSkinTone = "👋🏾"
--   show WavingHandDarkSkinTone = "👋🏿"
  show LoveYouGesture = "🤟"
--   show LoveYouGestureLightSkinTone = "🤟🏻"
--   show LoveYouGestureMediumLightSkinTone = "🤟🏼"
--   show LoveYouGestureMediumSkinTone = "🤟🏽"
--   show LoveYouGestureMediumDarkSkinTone = "🤟🏾"
--   show LoveYouGestureDarkSkinTone = "🤟🏿"
  show WritingHand = "✍️"
--   show WritingHandLightSkinTone = "✍🏻"
--   show WritingHandMediumLightSkinTone = "✍🏼"
--   show WritingHandMediumSkinTone = "✍🏽"
--   show WritingHandMediumDarkSkinTone = "✍🏾"
--   show WritingHandDarkSkinTone = "✍🏿"
  show ClappingHands = "👏"
--   show ClappingHandsLightSkinTone = "👏🏻"
--   show ClappingHandsMediumLightSkinTone = "👏🏼"
--   show ClappingHandsMediumSkinTone = "👏🏽"
--   show ClappingHandsMediumDarkSkinTone = "👏🏾"
--   show ClappingHandsDarkSkinTone = "👏🏿"
  show OpenHands = "👐"
--   show OpenHandsLightSkinTone = "👐🏻"
--   show OpenHandsMediumLightSkinTone = "👐🏼"
--   show OpenHandsMediumSkinTone = "👐🏽"
--   show OpenHandsMediumDarkSkinTone = "👐🏾"
--   show OpenHandsDarkSkinTone = "👐🏿"
  show RaisingHands = "🙌"
--   show RaisingHandsLightSkinTone = "🙌🏻"
--   show RaisingHandsMediumLightSkinTone = "🙌🏼"
--   show RaisingHandsMediumSkinTone = "🙌🏽"
--   show RaisingHandsMediumDarkSkinTone = "🙌🏾"
--   show RaisingHandsDarkSkinTone = "🙌🏿"
  show PalmsUpTogether = "🤲"
--   show PalmsUpTogetherLightSkinTone = "🤲🏻"
--   show PalmsUpTogetherMediumLightSkinTone = "🤲🏼"
--   show PalmsUpTogetherMediumSkinTone = "🤲🏽"
--   show PalmsUpTogetherMediumDarkSkinTone = "🤲🏾"
--   show PalmsUpTogetherDarkSkinTone = "🤲🏿"
  show FoldedHands = "🙏"
--   show FoldedHandsLightSkinTone = "🙏🏻"
--   show FoldedHandsMediumLightSkinTone = "🙏🏼"
--   show FoldedHandsMediumSkinTone = "🙏🏽"
--   show FoldedHandsMediumDarkSkinTone = "🙏🏾"
--   show FoldedHandsDarkSkinTone = "🙏🏿"
  show Handshake = "🤝"
  show NailPolish = "💅"
--   show NailPolishLightSkinTone = "💅🏻"
--   show NailPolishMediumLightSkinTone = "💅🏼"
--   show NailPolishMediumSkinTone = "💅🏽"
--   show NailPolishMediumDarkSkinTone = "💅🏾"
--   show NailPolishDarkSkinTone = "💅🏿"
  show Ear = "👂"
--   show EarLightSkinTone = "👂🏻"
--   show EarMediumLightSkinTone = "👂🏼"
--   show EarMediumSkinTone = "👂🏽"
--   show EarMediumDarkSkinTone = "👂🏾"
--   show EarDarkSkinTone = "👂🏿"
  show Nose = "👃"
--   show NoseLightSkinTone = "👃🏻"
--   show NoseMediumLightSkinTone = "👃🏼"
--   show NoseMediumSkinTone = "👃🏽"
--   show NoseMediumDarkSkinTone = "👃🏾"
--   show NoseDarkSkinTone = "👃🏿"
  show RedHaired = "🦰"
  show CurlyHaired = "🦱"
  show Bald = "🦲"
  show WhiteHaired = "🦳"
  show Footprints = "👣"
  show Eyes = "👀"
  show Eye = "👁️"
  show EyeInSpeechBubble = "👁️‍🗨️"
  show Brain = "🧠"
  show Bone = "🦴"
  show Tooth = "🦷"
  show Tongue = "👅"
  show Mouth = "👄"
  -- subgroup: emotion
  show KissMark = "💋"
  show HeartWithArrow = "💘"
  show RedHeart = "❤️"
  show BeatingHeart = "💓"
  show BrokenHeart = "💔"
  show TwoHearts = "💕"
  show SparklingHeart = "💖"
  show GrowingHeart = "💗"
  show BlueHeart = "💙"
  show GreenHeart = "💚"
  show YellowHeart = "💛"
  show OrangeHeart = "🧡"
  show PurpleHeart = "💜"
  show BlackHeart = "🖤"
  show HeartWithRibbon = "💝"
  show RevolvingHearts = "💞"
  show HeartDecoration = "💟"
  show HeavyHeartExclamation = "❣️"
  show LoveLetter = "💌"
  show Zzz = "💤"
  show AngerSymbol = "💢"
  show Bomb = "💣"
  show Collision = "💥"
  show SweatDroplets = "💦"
  show DashingAway = "💨"
  show Dizzy = "💫"
  show SpeechBalloon = "💬"
  show LeftSpeechBubble = "🗨️"
  show RightAngerBubble = "🗯️"
  show ThoughtBalloon = "💭"
  show Hole = "🕳️"
  -- subgroup: clothing
  show Glasses = "👓"
  show Sunglasses = "🕶️"
  show Goggles = "🥽"
  show LabCoat = "🥼"
  show Necktie = "👔"
  show TShirt = "👕"
  show Jeans = "👖"
  show Scarf = "🧣"
  show Gloves = "🧤"
  show Coat = "🧥"
  show Socks = "🧦"
  show Dress = "👗"
  show Kimono = "👘"
  show Bikini = "👙"
  show WomansClothes = "👚"
  show Purse = "👛"
  show Handbag = "👜"
  show ClutchBag = "👝"
  show ShoppingBags = "🛍️"
  show SchoolBackpack = "🎒"
  show MansShoe = "👞"
  show RunningShoe = "👟"
  show HikingBoot = "🥾"
  show WomansFlatShoe = "🥿"
  show HighHeeledShoe = "👠"
  show WomansSandal = "👡"
  show WomansBoot = "👢"
  show Crown = "👑"
  show WomansHat = "👒"
  show TopHat = "🎩"
  show GraduationCap = "🎓"
  show BilledCap = "🧢"
  show RescueWorkersHelmet = "⛑️"
  show PrayerBeads = "📿"
  show Lipstick = "💄"
  show Ring = "💍"
  show GemStone = "💎"
  -- group: Animals & Nature
  -- subgroup: animal-mammal
  show MonkeyFace = "🐵"
  show Monkey = "🐒"
  show Gorilla = "🦍"
  show DogFace = "🐶"
  show Dog = "🐕"
  show Poodle = "🐩"
  show WolfFace = "🐺"
  show FoxFace = "🦊"
  show Raccoon = "🦝"
  show CatFace = "🐱"
  show Cat = "🐈"
  show LionFace = "🦁"
  show TigerFace = "🐯"
  show Tiger = "🐅"
  show Leopard = "🐆"
  show HorseFace = "🐴"
  show Horse = "🐎"
  show UnicornFace = "🦄"
  show Zebra = "🦓"
  show Deer = "🦌"
  show CowFace = "🐮"
  show Ox = "🐂"
  show WaterBuffalo = "🐃"
  show Cow = "🐄"
  show PigFace = "🐷"
  show Pig = "🐖"
  show Boar = "🐗"
  show PigNose = "🐽"
  show Ram = "🐏"
  show Ewe = "🐑"
  show Goat = "🐐"
  show Camel = "🐪"
  show TwoHumpCamel = "🐫"
  show Llama = "🦙"
  show Giraffe = "🦒"
  show Elephant = "🐘"
  show Rhinoceros = "🦏"
  show Hippopotamus = "🦛"
  show MouseFace = "🐭"
  show Mouse = "🐁"
  show Rat = "🐀"
  show HamsterFace = "🐹"
  show RabbitFace = "🐰"
  show Rabbit = "🐇"
  show Chipmunk = "🐿️"
  show Hedgehog = "🦔"
  show Bat = "🦇"
  show BearFace = "🐻"
  show Koala = "🐨"
  show PandaFace = "🐼"
  show Kangaroo = "🦘"
  show Badger = "🦡"
  show PawPrints = "🐾"
  -- subgroup: animal-bird
  show Turkey = "🦃"
  show Chicken = "🐔"
  show Rooster = "🐓"
  show HatchingChick = "🐣"
  show BabyChick = "🐤"
  show FrontFacingBabyChick = "🐥"
  show Bird = "🐦"
  show Penguin = "🐧"
  show Dove = "🕊️"
  show Eagle = "🦅"
  show Duck = "🦆"
  show Swan = "🦢"
  show Owl = "🦉"
  show Peacock = "🦚"
  show Parrot = "🦜"
  -- subgroup: animal-amphibian
  show FrogFace = "🐸"
  -- subgroup: animal-reptile
  show Crocodile = "🐊"
  show Turtle = "🐢"
  show Lizard = "🦎"
  show Snake = "🐍"
  show DragonFace = "🐲"
  show Dragon = "🐉"
  show Sauropod = "🦕"
  show TRex = "🦖"
  -- subgroup: animal-marine
  show SpoutingWhale = "🐳"
  show Whale = "🐋"
  show Dolphin = "🐬"
  show Fish = "🐟"
  show TropicalFish = "🐠"
  show Blowfish = "🐡"
  show Shark = "🦈"
  show Octopus = "🐙"
  show SpiralShell = "🐚"
  show Crab = "🦀"
  show Lobster = "🦞"
  show Shrimp = "🦐"
  show Squid = "🦑"
  -- subgroup: animal-bug
  show Snail = "🐌"
  show Butterfly = "🦋"
  show Bug = "🐛"
  show Ant = "🐜"
  show Honeybee = "🐝"
  show LadyBeetle = "🐞"
  show Cricket = "🦗"
  show Spider = "🕷️"
  show SpiderWeb = "🕸️"
  show Scorpion = "🦂"
  show Mosquito = "🦟"
  show Microbe = "🦠"
  -- subgroup: plant-flower
  show Bouquet = "💐"
  show CherryBlossom = "🌸"
  show WhiteFlower = "💮"
  show Rosette = "🏵️"
  show Rose = "🌹"
  show WiltedFlower = "🥀"
  show Hibiscus = "🌺"
  show Sunflower = "🌻"
  show Blossom = "🌼"
  show Tulip = "🌷"
  -- subgroup: plant-other
  show Seedling = "🌱"
  show EvergreenTree = "🌲"
  show DeciduousTree = "🌳"
  show PalmTree = "🌴"
  show Cactus = "🌵"
  show SheafOfRice = "🌾"
  show Herb = "🌿"
  show Shamrock = "☘️"
  show FourLeafClover = "🍀"
  show MapleLeaf = "🍁"
  show FallenLeaf = "🍂"
  show LeafFlutteringInWind = "🍃"
  -- group: Food & Drink
  -- subgroup: food-fruit
  show Grapes = "🍇"
  show Melon = "🍈"
  show Watermelon = "🍉"
  show Tangerine = "🍊"
  show Lemon = "🍋"
  show Banana = "🍌"
  show Pineapple = "🍍"
  show Mango = "🥭"
  show RedApple = "🍎"
  show GreenApple = "🍏"
  show Pear = "🍐"
  show Peach = "🍑"
  show Cherries = "🍒"
  show Strawberry = "🍓"
  show KiwiFruit = "🥝"
  show Tomato = "🍅"
  show Coconut = "🥥"
  -- subgroup: food-vegetable
  show Avocado = "🥑"
  show Eggplant = "🍆"
  show Potato = "🥔"
  show Carrot = "🥕"
  show EarOfCorn = "🌽"
  show HotPepper = "🌶️"
  show Cucumber = "🥒"
  show LeafyGreen = "🥬"
  show Broccoli = "🥦"
  show Mushroom = "🍄"
  show Peanuts = "🥜"
  show Chestnut = "🌰"
  -- subgroup: food-prepared
  show Bread = "🍞"
  show Croissant = "🥐"
  show BaguetteBread = "🥖"
  show Pretzel = "🥨"
  show Bagel = "🥯"
  show Pancakes = "🥞"
  show CheeseWedge = "🧀"
  show MeatOnBone = "🍖"
  show PoultryLeg = "🍗"
  show CutOfMeat = "🥩"
  show Bacon = "🥓"
  show Hamburger = "🍔"
  show FrenchFries = "🍟"
  show Pizza = "🍕"
  show HotDog = "🌭"
  show Sandwich = "🥪"
  show Taco = "🌮"
  show Burrito = "🌯"
  show StuffedFlatbread = "🥙"
  show Egg = "🥚"
  show Cooking = "🍳"
  show ShallowPanOfFood = "🥘"
  show PotOfFood = "🍲"
  show BowlWithSpoon = "🥣"
  show GreenSalad = "🥗"
  show Popcorn = "🍿"
  show Salt = "🧂"
  show CannedFood = "🥫"
  -- subgroup: food-asian
  show BentoBox = "🍱"
  show RiceCracker = "🍘"
  show RiceBall = "🍙"
  show CookedRice = "🍚"
  show CurryRice = "🍛"
  show SteamingBowl = "🍜"
  show Spaghetti = "🍝"
  show RoastedSweetPotato = "🍠"
  show Oden = "🍢"
  show Sushi = "🍣"
  show FriedShrimp = "🍤"
  show FishCakeWithSwirl = "🍥"
  show MoonCake = "🥮"
  show Dango = "🍡"
  show Dumpling = "🥟"
  show FortuneCookie = "🥠"
  show TakeoutBox = "🥡"
  -- subgroup: food-sweet
  show SoftIceCream = "🍦"
  show ShavedIce = "🍧"
  show IceCream = "🍨"
  show Doughnut = "🍩"
  show Cookie = "🍪"
  show BirthdayCake = "🎂"
  show Shortcake = "🍰"
  show Cupcake = "🧁"
  show Pie = "🥧"
  show ChocolateBar = "🍫"
  show Candy = "🍬"
  show Lollipop = "🍭"
  show Custard = "🍮"
  show HoneyPot = "🍯"
  -- subgroup: drink
  show BabyBottle = "🍼"
  show GlassOfMilk = "🥛"
  show HotBeverage = "☕"
  show TeacupWithoutHandle = "🍵"
  show Sake = "🍶"
  show BottleWithPoppingCork = "🍾"
  show WineGlass = "🍷"
  show CocktailGlass = "🍸"
  show TropicalDrink = "🍹"
  show BeerMug = "🍺"
  show ClinkingBeerMugs = "🍻"
  show ClinkingGlasses = "🥂"
  show TumblerGlass = "🥃"
  show CupWithStraw = "🥤"
  -- subgroup: dishware
  show Chopsticks = "🥢"
  show ForkAndKnifeWithPlate = "🍽️"
  show ForkAndKnife = "🍴"
  show Spoon = "🥄"
  show KitchenKnife = "🔪"
  show Amphora = "🏺"
  -- group: Travel & Places
  -- subgroup: place-map
  show GlobeShowingEuropeAfrica = "🌍"
  show GlobeShowingAmericas = "🌎"
  show GlobeShowingAsiaAustralia = "🌏"
  show GlobeWithMeridians = "🌐"
  show WorldMap = "🗺️"
  show MapOfJapan = "🗾"
  show Compass = "🧭"
  -- subgroup: place-geographic
  show SnowCappedMountain = "🏔️"
  show Mountain = "⛰️"
  show Volcano = "🌋"
  show MountFuji = "🗻"
  show Camping = "🏕️"
  show BeachWithUmbrella = "🏖️"
  show Desert = "🏜️"
  show DesertIsland = "🏝️"
  show NationalPark = "🏞️"
  -- subgroup: place-building
  show Stadium = "🏟️"
  show ClassicalBuilding = "🏛️"
  show BuildingConstruction = "🏗️"
  show Bricks = "🧱"
  show Houses = "🏘️"
  show DerelictHouse = "🏚️"
  show House = "🏠"
  show HouseWithGarden = "🏡"
  show OfficeBuilding = "🏢"
  show JapanesePostOffice = "🏣"
  show PostOffice = "🏤"
  show Hospital = "🏥"
  show Bank = "🏦"
  show Hotel = "🏨"
  show LoveHotel = "🏩"
  show ConvenienceStore = "🏪"
  show School = "🏫"
  show DepartmentStore = "🏬"
  show Factory = "🏭"
  show JapaneseCastle = "🏯"
  show Castle = "🏰"
  show Wedding = "💒"
  show TokyoTower = "🗼"
  show StatueOfLiberty = "🗽"
  -- subgroup: place-religious
  show Church = "⛪"
  show Mosque = "🕌"
  show Synagogue = "🕍"
  show ShintoShrine = "⛩️"
  show Kaaba = "🕋"
  -- subgroup: place-other
  show Fountain = "⛲"
  show Tent = "⛺"
  show Foggy = "🌁"
  show NightWithStars = "🌃"
  show Cityscape = "🏙️"
  show SunriseOverMountains = "🌄"
  show Sunrise = "🌅"
  show CityscapeAtDusk = "🌆"
  show Sunset = "🌇"
  show BridgeAtNight = "🌉"
  show HotSprings = "♨️"
  show MilkyWay = "🌌"
  show CarouselHorse = "🎠"
  show FerrisWheel = "🎡"
  show RollerCoaster = "🎢"
  show BarberPole = "💈"
  show CircusTent = "🎪"
  -- subgroup: transport-ground
  show Locomotive = "🚂"
  show RailwayCar = "🚃"
  show HighSpeedTrain = "🚄"
  show BulletTrain = "🚅"
  show Train = "🚆"
  show Metro = "🚇"
  show LightRail = "🚈"
  show Station = "🚉"
  show Tram = "🚊"
  show Monorail = "🚝"
  show MountainRailway = "🚞"
  show TramCar = "🚋"
  show Bus = "🚌"
  show OncomingBus = "🚍"
  show Trolleybus = "🚎"
  show Minibus = "🚐"
  show Ambulance = "🚑"
  show FireEngine = "🚒"
  show PoliceCar = "🚓"
  show OncomingPoliceCar = "🚔"
  show Taxi = "🚕"
  show OncomingTaxi = "🚖"
  show Automobile = "🚗"
  show OncomingAutomobile = "🚘"
  show SportUtilityVehicle = "🚙"
  show DeliveryTruck = "🚚"
  show ArticulatedLorry = "🚛"
  show Tractor = "🚜"
  show Bicycle = "🚲"
  show KickScooter = "🛴"
  show Skateboard = "🛹"
  show MotorScooter = "🛵"
  show BusStop = "🚏"
  show Motorway = "🛣️"
  show RailwayTrack = "🛤️"
  show OilDrum = "🛢️"
  show FuelPump = "⛽"
  show PoliceCarLight = "🚨"
  show HorizontalTrafficLight = "🚥"
  show VerticalTrafficLight = "🚦"
  show StopSign = "🛑"
  show Construction = "🚧"
  -- subgroup: transport-water
  show Anchor = "⚓"
  show Sailboat = "⛵"
  show Canoe = "🛶"
  show Speedboat = "🚤"
  show PassengerShip = "🛳️"
  show Ferry = "⛴️"
  show MotorBoat = "🛥️"
  show Ship = "🚢"
  -- subgroup: transport-air
  show Airplane = "✈️"
  show SmallAirplane = "🛩️"
  show AirplaneDeparture = "🛫"
  show AirplaneArrival = "🛬"
  show Seat = "💺"
  show Helicopter = "🚁"
  show SuspensionRailway = "🚟"
  show MountainCableway = "🚠"
  show AerialTramway = "🚡"
  show Satellite = "🛰️"
  show Rocket = "🚀"
  show FlyingSaucer = "🛸"
  -- subgroup: hotel
  show BellhopBell = "🛎️"
  show Luggage = "🧳"
  -- subgroup: time
  show HourglassDone = "⌛"
  show HourglassNotDone = "⏳"
  show Watch = "⌚"
  show AlarmClock = "⏰"
  show Stopwatch = "⏱️"
  show TimerClock = "⏲️"
  show MantelpieceClock = "🕰️"
  show TwelveOclock = "🕛"
  show TwelveThirty = "🕧"
  show OneOclock = "🕐"
  show OneThirty = "🕜"
  show TwoOclock = "🕑"
  show TwoThirty = "🕝"
  show ThreeOclock = "🕒"
  show ThreeThirty = "🕞"
  show FourOclock = "🕓"
  show FourThirty = "🕟"
  show FiveOclock = "🕔"
  show FiveThirty = "🕠"
  show SixOclock = "🕕"
  show SixThirty = "🕡"
  show SevenOclock = "🕖"
  show SevenThirty = "🕢"
  show EightOclock = "🕗"
  show EightThirty = "🕣"
  show NineOclock = "🕘"
  show NineThirty = "🕤"
  show TenOclock = "🕙"
  show TenThirty = "🕥"
  show ElevenOclock = "🕚"
  show ElevenThirty = "🕦"
  -- subgroup: sky & weather
  show NewMoon = "🌑"
  show WaxingCrescentMoon = "🌒"
  show FirstQuarterMoon = "🌓"
  show WaxingGibbousMoon = "🌔"
  show FullMoon = "🌕"
  show WaningGibbousMoon = "🌖"
  show LastQuarterMoon = "🌗"
  show WaningCrescentMoon = "🌘"
  show CrescentMoon = "🌙"
  show NewMoonFace = "🌚"
  show FirstQuarterMoonFace = "🌛"
  show LastQuarterMoonFace = "🌜"
  show Thermometer = "🌡️"
  show Sun = "☀️"
  show FullMoonFace = "🌝"
  show SunWithFace = "🌞"
  show Star = "⭐"
  show GlowingStar = "🌟"
  show ShootingStar = "🌠"
  show Cloud = "☁️"
  show SunBehindCloud = "⛅"
  show CloudWithLightningAndRain = "⛈️"
  show SunBehindSmallCloud = "🌤️"
  show SunBehindLargeCloud = "🌥️"
  show SunBehindRainCloud = "🌦️"
  show CloudWithRain = "🌧️"
  show CloudWithSnow = "🌨️"
  show CloudWithLightning = "🌩️"
  show Tornado = "🌪️"
  show Fog = "🌫️"
  show WindFace = "🌬️"
  show Cyclone = "🌀"
  show Rainbow = "🌈"
  show ClosedUmbrella = "🌂"
  show Umbrella = "☂️"
  show UmbrellaWithRainDrops = "☔"
  show UmbrellaOnGround = "⛱️"
  show HighVoltage = "⚡"
  show Snowflake = "❄️"
  show Snowman = "☃️"
  show SnowmanWithoutSnow = "⛄"
  show Comet = "☄️"
  show Fire = "🔥"
  show Droplet = "💧"
  show WaterWave = "🌊"
  -- group: Activities
  -- subgroup: event
  show JackOLantern = "🎃"
  show ChristmasTree = "🎄"
  show Fireworks = "🎆"
  show Sparkler = "🎇"
  show Firecracker = "🧨"
  show Sparkles = "✨"
  show Balloon = "🎈"
  show PartyPopper = "🎉"
  show ConfettiBall = "🎊"
  show TanabataTree = "🎋"
  show PineDecoration = "🎍"
  show JapaneseDolls = "🎎"
  show CarpStreamer = "🎏"
  show WindChime = "🎐"
  show MoonViewingCeremony = "🎑"
  show RedEnvelope = "🧧"
  show Ribbon = "🎀"
  show WrappedGift = "🎁"
  show ReminderRibbon = "🎗️"
  show AdmissionTickets = "🎟️"
  show Ticket = "🎫"
  -- subgroup: award-medal
  show MilitaryMedal = "🎖️"
  show Trophy = "🏆"
  show SportsMedal = "🏅"
  show FirstPlaceMedal = "🥇"
  show SecondPlaceMedal = "🥈"
  show ThirdPlaceMedal = "🥉"
  -- subgroup: sport
  show SoccerBall = "⚽"
  show Baseball = "⚾"
  show Softball = "🥎"
  show Basketball = "🏀"
  show Volleyball = "🏐"
  show AmericanFootball = "🏈"
  show RugbyFootball = "🏉"
  show Tennis = "🎾"
  show FlyingDisc = "🥏"
  show Bowling = "🎳"
  show CricketGame = "🏏"
  show FieldHockey = "🏑"
  show IceHockey = "🏒"
  show Lacrosse = "🥍"
  show PingPong = "🏓"
  show Badminton = "🏸"
  show BoxingGlove = "🥊"
  show MartialArtsUniform = "🥋"
  show GoalNet = "🥅"
  show FlagInHole = "⛳"
  show IceSkate = "⛸️"
  show FishingPole = "🎣"
  show RunningShirt = "🎽"
  show Skis = "🎿"
  show Sled = "🛷"
  show CurlingStone = "🥌"
  -- subgroup: game
  show DirectHit = "🎯"
  show Pool8Ball = "🎱"
  show CrystalBall = "🔮"
  show NazarAmulet = "🧿"
  show VideoGame = "🎮"
  show Joystick = "🕹️"
  show SlotMachine = "🎰"
  show GameDie = "🎲"
  show Jigsaw = "🧩"
  show TeddyBear = "🧸"
  show SpadeSuit = "♠️"
  show HeartSuit = "♥️"
  show DiamondSuit = "♦️"
  show ClubSuit = "♣️"
  show ChessPawn = "♟️"
  show Joker = "🃏"
  show MahjongRedDragon = "🀄"
  show FlowerPlayingCards = "🎴"
  -- subgroup: arts & crafts
  show PerformingArts = "🎭"
  show FramedPicture = "🖼️"
  show ArtistPalette = "🎨"
  show Thread = "🧵"
  show Yarn = "🧶"
  -- group: Objects
  -- subgroup: sound
  show MutedSpeaker = "🔇"
  show SpeakerLowVolume = "🔈"
  show SpeakerMediumVolume = "🔉"
  show SpeakerHighVolume = "🔊"
  show Loudspeaker = "📢"
  show Megaphone = "📣"
  show PostalHorn = "📯"
  show Bell = "🔔"
  show BellWithSlash = "🔕"
  -- subgroup: music
  show MusicalScore = "🎼"
  show MusicalNote = "🎵"
  show MusicalNotes = "🎶"
  show StudioMicrophone = "🎙️"
  show LevelSlider = "🎚️"
  show ControlKnobs = "🎛️"
  show Microphone = "🎤"
  show Headphone = "🎧"
  show Radio = "📻"
  -- subgroup: musical-instrument
  show Saxophone = "🎷"
  show Guitar = "🎸"
  show MusicalKeyboard = "🎹"
  show Trumpet = "🎺"
  show Violin = "🎻"
  show Drum = "🥁"
  -- subgroup: phone
  show MobilePhone = "📱"
  show MobilePhoneWithArrow = "📲"
  show Telephone = "☎️"
  show TelephoneReceiver = "📞"
  show Pager = "📟"
  show FaxMachine = "📠"
  -- subgroup: computer
  show Battery = "🔋"
  show ElectricPlug = "🔌"
  show LaptopComputer = "💻"
  show DesktopComputer = "🖥️"
  show Printer = "🖨️"
  show Keyboard = "⌨️"
  show ComputerMouse = "🖱️"
  show Trackball = "🖲️"
  show ComputerDisk = "💽"
  show FloppyDisk = "💾"
  show OpticalDisk = "💿"
  show Dvd = "📀"
  show Abacus = "🧮"
  -- subgroup: light & video
  show MovieCamera = "🎥"
  show FilmFrames = "🎞️"
  show FilmProjector = "📽️"
  show ClapperBoard = "🎬"
  show Television = "📺"
  show Camera = "📷"
  show CameraWithFlash = "📸"
  show VideoCamera = "📹"
  show Videocassette = "📼"
  show MagnifyingGlassTiltedLeft = "🔍"
  show MagnifyingGlassTiltedRight = "🔎"
  show Candle = "🕯️"
  show LightBulb = "💡"
  show Flashlight = "🔦"
  show RedPaperLantern = "🏮"
  -- subgroup: book-paper
  show NotebookWithDecorativeCover = "📔"
  show ClosedBook = "📕"
  show OpenBook = "📖"
  show GreenBook = "📗"
  show BlueBook = "📘"
  show OrangeBook = "📙"
  show Books = "📚"
  show Notebook = "📓"
  show Ledger = "📒"
  show PageWithCurl = "📃"
  show Scroll = "📜"
  show PageFacingUp = "📄"
  show Newspaper = "📰"
  show RolledUpNewspaper = "🗞️"
  show BookmarkTabs = "📑"
  show Bookmark = "🔖"
  show Label = "🏷️"
  -- subgroup: money
  show MoneyBag = "💰"
  show YenBanknote = "💴"
  show DollarBanknote = "💵"
  show EuroBanknote = "💶"
  show PoundBanknote = "💷"
  show MoneyWithWings = "💸"
  show CreditCard = "💳"
  show Receipt = "🧾"
  show ChartIncreasingWithYen = "💹"
  show CurrencyExchange = "💱"
  show HeavyDollarSign = "💲"
  -- subgroup: mail
  show Envelope = "✉️"
  show EMail = "📧"
  show IncomingEnvelope = "📨"
  show EnvelopeWithArrow = "📩"
  show OutboxTray = "📤"
  show InboxTray = "📥"
  show Package = "📦"
  show ClosedMailboxWithRaisedFlag = "📫"
  show ClosedMailboxWithLoweredFlag = "📪"
  show OpenMailboxWithRaisedFlag = "📬"
  show OpenMailboxWithLoweredFlag = "📭"
  show Postbox = "📮"
  show BallotBoxWithBallot = "🗳️"
  -- subgroup: writing
  show Pencil = "✏️"
  show BlackNib = "✒️"
  show FountainPen = "🖋️"
  show Pen = "🖊️"
  show Paintbrush = "🖌️"
  show Crayon = "🖍️"
  show Memo = "📝"
  -- subgroup: office
  show Briefcase = "💼"
  show FileFolder = "📁"
  show OpenFileFolder = "📂"
  show CardIndexDividers = "🗂️"
  show Calendar = "📅"
  show TearOffCalendar = "📆"
  show SpiralNotepad = "🗒️"
  show SpiralCalendar = "🗓️"
  show CardIndex = "📇"
  show ChartIncreasing = "📈"
  show ChartDecreasing = "📉"
  show BarChart = "📊"
  show Clipboard = "📋"
  show Pushpin = "📌"
  show RoundPushpin = "📍"
  show Paperclip = "📎"
  show LinkedPaperclips = "🖇️"
  show StraightRuler = "📏"
  show TriangularRuler = "📐"
  show Scissors = "✂️"
  show CardFileBox = "🗃️"
  show FileCabinet = "🗄️"
  show Wastebasket = "🗑️"
  -- subgroup: lock
  show Locked = "🔒"
  show Unlocked = "🔓"
  show LockedWithPen = "🔏"
  show LockedWithKey = "🔐"
  show Key = "🔑"
  show OldKey = "🗝️"
  -- subgroup: tool
  show Hammer = "🔨"
  show Pick = "⛏️"
  show HammerAndPick = "⚒️"
  show HammerAndWrench = "🛠️"
  show Dagger = "🗡️"
  show CrossedSwords = "⚔️"
  show Pistol = "🔫"
  show BowAndArrow = "🏹"
  show Shield = "🛡️"
  show Wrench = "🔧"
  show NutAndBolt = "🔩"
  show Gear = "⚙️"
  show Clamp = "🗜️"
  show BalanceScale = "⚖️"
  show Link = "🔗"
  show Chains = "⛓️"
  show Toolbox = "🧰"
  show Magnet = "🧲"
  -- subgroup: science
  show Alembic = "⚗️"
  show TestTube = "🧪"
  show PetriDish = "🧫"
  show Dna = "🧬"
  show Microscope = "🔬"
  show Telescope = "🔭"
  show SatelliteAntenna = "📡"
  -- subgroup: medical
  show Syringe = "💉"
  show Pill = "💊"
  -- subgroup: household
  show Door = "🚪"
  show Bed = "🛏️"
  show CouchAndLamp = "🛋️"
  show Toilet = "🚽"
  show Shower = "🚿"
  show Bathtub = "🛁"
  show LotionBottle = "🧴"
  show SafetyPin = "🧷"
  show Broom = "🧹"
  show Basket = "🧺"
  show RollOfPaper = "🧻"
  show Soap = "🧼"
  show Sponge = "🧽"
  show FireExtinguisher = "🧯"
  show ShoppingCart = "🛒"
  -- subgroup: other-object
  show Cigarette = "🚬"
  show Coffin = "⚰️"
  show FuneralUrn = "⚱️"
  show Moai = "🗿"
  -- group: Symbols
  -- subgroup: transport-sign
  show ATMSign = "🏧"
  show LitterInBinSign = "🚮"
  show PotableWater = "🚰"
  show WheelchairSymbol = "♿"
  show MensRoom = "🚹"
  show WomensRoom = "🚺"
  show Restroom = "🚻"
  show BabySymbol = "🚼"
  show WaterCloset = "🚾"
  show PassportControl = "🛂"
  show Customs = "🛃"
  show BaggageClaim = "🛄"
  show LeftLuggage = "🛅"
  -- subgroup: warning
  show Warning = "⚠️"
  show ChildrenCrossing = "🚸"
  show NoEntry = "⛔"
  show Prohibited = "🚫"
  show NoBicycles = "🚳"
  show NoSmoking = "🚭"
  show NoLittering = "🚯"
  show NonPotableWater = "🚱"
  show NoPedestrians = "🚷"
  show NoMobilePhones = "📵"
  show NoOneUnderEighteen = "🔞"
  show Radioactive = "☢️"
  show Biohazard = "☣️"
  -- subgroup: arrow
  show UpArrow = "⬆️"
  show UpRightArrow = "↗️"
  show RightArrow = "➡️"
  show DownRightArrow = "↘️"
  show DownArrow = "⬇️"
  show DownLeftArrow = "↙️"
  show LeftArrow = "⬅️"
  show UpLeftArrow = "↖️"
  show UpDownArrow = "↕️"
  show LeftRightArrow = "↔️"
  show RightArrowCurvingLeft = "↩️"
  show LeftArrowCurvingRight = "↪️"
  show RightArrowCurvingUp = "⤴️"
  show RightArrowCurvingDown = "⤵️"
  show ClockwiseVerticalArrows = "🔃"
  show CounterclockwiseArrowsButton = "🔄"
  show BACKArrow = "🔙"
  show ENDArrow = "🔚"
  show ONArrow = "🔛"
  show SOONArrow = "🔜"
  show TOPArrow = "🔝"
  -- subgroup: religion
  show PlaceOfWorship = "🛐"
  show AtomSymbol = "⚛️"
  show Om = "🕉️"
  show StarOfDavid = "✡️"
  show WheelOfDharma = "☸️"
  show YinYang = "☯️"
  show LatinCross = "✝️"
  show OrthodoxCross = "☦️"
  show StarAndCrescent = "☪️"
  show PeaceSymbol = "☮️"
  show Menorah = "🕎"
  show DottedSixPointedStar = "🔯"
  -- subgroup: zodiac
  show Aries = "♈"
  show Taurus = "♉"
  show Gemini = "♊"
  show Cancer = "♋"
  show Leo = "♌"
  show Virgo = "♍"
  show Libra = "♎"
  show Scorpio = "♏"
  show Sagittarius = "♐"
  show Capricorn = "♑"
  show Aquarius = "♒"
  show Pisces = "♓"
  show Ophiuchus = "⛎"
  -- subgroup: av-symbol
  show ShuffleTracksButton = "🔀"
  show RepeatButton = "🔁"
  show RepeatSingleButton = "🔂"
  show PlayButton = "▶️"
  show FastForwardButton = "⏩"
  show NextTrackButton = "⏭️"
  show PlayOrPauseButton = "⏯️"
  show ReverseButton = "◀️"
  show FastReverseButton = "⏪"
  show LastTrackButton = "⏮️"
  show UpwardsButton = "🔼"
  show FastUpButton = "⏫"
  show DownwardsButton = "🔽"
  show FastDownButton = "⏬"
  show PauseButton = "⏸️"
  show StopButton = "⏹️"
  show RecordButton = "⏺️"
  show EjectButton = "⏏️"
  show Cinema = "🎦"
  show DimButton = "🔅"
  show BrightButton = "🔆"
  show AntennaBars = "📶"
  show VibrationMode = "📳"
  show MobilePhoneOff = "📴"
  -- subgroup: other-symbol
  show FemaleSign = "♀️"
  show MaleSign = "♂️"
  show MedicalSymbol = "⚕️"
  show Infinity = "♾️"
  show RecyclingSymbol = "♻️"
  show FleurDeLis = "⚜️"
  show TridentEmblem = "🔱"
  show NameBadge = "📛"
  show JapaneseSymbolForBeginner = "🔰"
  show HeavyLargeCircle = "⭕"
  show WhiteHeavyCheckMark = "✅"
  show BallotBoxWithCheck = "☑️"
  show HeavyCheckMark = "✔️"
  show HeavyMultiplicationX = "✖️"
  show CrossMark = "❌"
  show CrossMarkButton = "❎"
  show HeavyPlusSign = "➕"
  show HeavyMinusSign = "➖"
  show HeavyDivisionSign = "➗"
  show CurlyLoop = "➰"
  show DoubleCurlyLoop = "➿"
  show PartAlternationMark = "〽️"
  show EightSpokedAsterisk = "✳️"
  show EightPointedStar = "✴️"
  show Sparkle = "❇️"
  show DoubleExclamationMark = "‼️"
  show ExclamationQuestionMark = "⁉️"
  show QuestionMark = "❓"
  show WhiteQuestionMark = "❔"
  show WhiteExclamationMark = "❕"
  show ExclamationMark = "❗"
  show WavyDash = "〰️"
  show Copyright = "©️"
  show Registered = "®️"
  show TradeMark = "™️"
  -- subgroup: keycap
  show KeycapSharp = "#️⃣"
  show KeycapAsterisk = "*️⃣"
  show Keycap0 = "0️⃣"
  show Keycap1 = "1️⃣"
  show Keycap2 = "2️⃣"
  show Keycap3 = "3️⃣"
  show Keycap4 = "4️⃣"
  show Keycap5 = "5️⃣"
  show Keycap6 = "6️⃣"
  show Keycap7 = "7️⃣"
  show Keycap8 = "8️⃣"
  show Keycap9 = "9️⃣"
  show Keycap10 = "🔟"
  -- subgroup: alphanum
  show HundredPoints = "💯"
  show InputLatinUppercase = "🔠"
  show InputLatinLowercase = "🔡"
  show InputNumbers = "🔢"
  show InputSymbols = "🔣"
  show InputLatinLetters = "🔤"
  show AButtonBloodType = "🅰️"
  show ABButtonBloodType = "🆎"
  show BButtonBloodType = "🅱️"
  show CLButton = "🆑"
  show COOLButton = "🆒"
  show FREEButton = "🆓"
  show Information = "ℹ️"
  show IDButton = "🆔"
  show CircledM = "Ⓜ️"
  show NEWButton = "🆕"
  show NGButton = "🆖"
  show OButtonBloodType = "🅾️"
  show OKButton = "🆗"
  show PButton = "🅿️"
  show SOSButton = "🆘"
  show UPButton = "🆙"
  show VSButton = "🆚"
  show JapaneseHereButton = "🈁"
  show JapaneseServiceChargeButton = "🈂️"
  show JapaneseMonthlyAmountButton = "🈷️"
  show JapaneseNotFreeOfChargeButton = "🈶"
  show JapaneseReservedButton = "🈯"
  show JapaneseBargainButton = "🉐"
  show JapaneseDiscountButton = "🈹"
  show JapaneseFreeOfChargeButton = "🈚"
  show JapaneseProhibitedButton = "🈲"
  show JapaneseAcceptableButton = "🉑"
  show JapaneseApplicationButton = "🈸"
  show JapanesePassingGradeButton = "🈴"
  show JapaneseVacancyButton = "🈳"
  show JapaneseCongratulationsButton = "㊗️"
  show JapaneseSecretButton = "㊙️"
  show JapaneseOpenForBusinessButton = "🈺"
  show JapaneseNoVacancyButton = "🈵"
  -- subgroup: geometric
  show BlackSmallSquare = "▪️"
  show WhiteSmallSquare = "▫️"
  show WhiteMediumSquare = "◻️"
  show BlackMediumSquare = "◼️"
  show WhiteMediumSmallSquare = "◽"
  show BlackMediumSmallSquare = "◾"
  show BlackLargeSquare = "⬛"
  show WhiteLargeSquare = "⬜"
  show LargeOrangeDiamond = "🔶"
  show LargeBlueDiamond = "🔷"
  show SmallOrangeDiamond = "🔸"
  show SmallBlueDiamond = "🔹"
  show RedTrianglePointedUp = "🔺"
  show RedTrianglePointedDown = "🔻"
  show DiamondWithADot = "💠"
  show RadioButton = "🔘"
  show BlackSquareButton = "🔲"
  show WhiteSquareButton = "🔳"
  show WhiteCircle = "⚪"
  show BlackCircle = "⚫"
  show RedCircle = "🔴"
  show BlueCircle = "🔵"
  -- group: Flags
  -- subgroup: flag
  show ChequeredFlag = "🏁"
  show TriangularFlag = "🚩"
  show CrossedFlags = "🎌"
  show BlackFlag = "🏴"
  show WhiteFlag = "🏳️"
  show RainbowFlag = "🏳️‍🌈"
  show PirateFlag = "🏴‍☠️"
  -- subgroup: country-flag
  -- show AscensionIsland = "🇦🇨"
  -- show Andorra = "🇦🇩"
  -- show UnitedArabEmirates = "🇦🇪"
  -- show Afghanistan = "🇦🇫"
  -- show AntiguaAndBarbuda = "🇦🇬"
  -- show Anguilla = "🇦🇮"
  -- show Albania = "🇦🇱"
  -- show Armenia = "🇦🇲"
  -- show Angola = "🇦🇴"
  -- show Antarctica = "🇦🇶"
  -- show Argentina = "🇦🇷"
  -- show AmericanSamoa = "🇦🇸"
  -- show Austria = "🇦🇹"
  -- show Australia = "🇦🇺"
  -- show Aruba = "🇦🇼"
  -- show ÅlandIslands = "🇦🇽"
  -- show Azerbaijan = "🇦🇿"
  -- show BosniaAndHerzegovina = "🇧🇦"
  -- show Barbados = "🇧🇧"
  -- show Bangladesh = "🇧🇩"
  -- show Belgium = "🇧🇪"
  -- show BurkinaFaso = "🇧🇫"
  -- show Bulgaria = "🇧🇬"
  -- show Bahrain = "🇧🇭"
  -- show Burundi = "🇧🇮"
  -- show Benin = "🇧🇯"
  -- show StBarthélemy = "🇧🇱"
  -- show Bermuda = "🇧🇲"
  -- show Brunei = "🇧🇳"
  -- show Bolivia = "🇧🇴"
  -- show CaribbeanNetherlands = "🇧🇶"
  -- show Brazil = "🇧🇷"
  -- show Bahamas = "🇧🇸"
  -- show Bhutan = "🇧🇹"
  -- show BouvetIsland = "🇧🇻"
  -- show Botswana = "🇧🇼"
  -- show Belarus = "🇧🇾"
  -- show Belize = "🇧🇿"
  -- show Canada = "🇨🇦"
  -- show CocosKeelingIslands = "🇨🇨"
  -- show CongoKinshasa = "🇨🇩"
  -- show CentralAfricanRepublic = "🇨🇫"
  -- show CongoBrazzaville = "🇨🇬"
  -- show Switzerland = "🇨🇭"
  -- show CôteDIvoire = "🇨🇮"
  -- show CookIslands = "🇨🇰"
  -- show Chile = "🇨🇱"
  -- show Cameroon = "🇨🇲"
  -- show China = "🇨🇳"
  -- show Colombia = "🇨🇴"
  -- show ClippertonIsland = "🇨🇵"
  -- show CostaRica = "🇨🇷"
  -- show Cuba = "🇨🇺"
  -- show CapeVerde = "🇨🇻"
  -- show Curaçao = "🇨🇼"
  -- show ChristmasIsland = "🇨🇽"
  -- show Cyprus = "🇨🇾"
  -- show Czechia = "🇨🇿"
  -- show Germany = "🇩🇪"
  -- show DiegoGarcia = "🇩🇬"
  -- show Djibouti = "🇩🇯"
  -- show Denmark = "🇩🇰"
  -- show Dominica = "🇩🇲"
  -- show DominicanRepublic = "🇩🇴"
  -- show Algeria = "🇩🇿"
  -- show CeutaAndMelilla = "🇪🇦"
  -- show Ecuador = "🇪🇨"
  -- show Estonia = "🇪🇪"
  -- show Egypt = "🇪🇬"
  -- show WesternSahara = "🇪🇭"
  -- show Eritrea = "🇪🇷"
  -- show Spain = "🇪🇸"
  -- show Ethiopia = "🇪🇹"
  -- show EuropeanUnion = "🇪🇺"
  -- show Finland = "🇫🇮"
  -- show Fiji = "🇫🇯"
  -- show FalklandIslands = "🇫🇰"
  -- show Micronesia = "🇫🇲"
  -- show FaroeIslands = "🇫🇴"
  -- show France = "🇫🇷"
  -- show Gabon = "🇬🇦"
  -- show UnitedKingdom = "🇬🇧"
  -- show Grenada = "🇬🇩"
  -- show Georgia = "🇬🇪"
  -- show FrenchGuiana = "🇬🇫"
  -- show Guernsey = "🇬🇬"
  -- show Ghana = "🇬🇭"
  -- show Gibraltar = "🇬🇮"
  -- show Greenland = "🇬🇱"
  -- show Gambia = "🇬🇲"
  -- show Guinea = "🇬🇳"
  -- show Guadeloupe = "🇬🇵"
  -- show EquatorialGuinea = "🇬🇶"
  -- show Greece = "🇬🇷"
  -- show SouthGeorgiaAndSouthSandwichIslands = "🇬🇸"
  -- show Guatemala = "🇬🇹"
  -- show Guam = "🇬🇺"
  -- show GuineaBissau = "🇬🇼"
  -- show Guyana = "🇬🇾"
  -- show HongKongSARChina = "🇭🇰"
  -- show HeardAndMcDonaldIslands = "🇭🇲"
  -- show Honduras = "🇭🇳"
  -- show Croatia = "🇭🇷"
  -- show Haiti = "🇭🇹"
  -- show Hungary = "🇭🇺"
  -- show CanaryIslands = "🇮🇨"
  -- show Indonesia = "🇮🇩"
  -- show Ireland = "🇮🇪"
  -- show Israel = "🇮🇱"
  -- show IsleOfMan = "🇮🇲"
  -- show India = "🇮🇳"
  -- show BritishIndianOceanTerritory = "🇮🇴"
  -- show Iraq = "🇮🇶"
  -- show Iran = "🇮🇷"
  -- show Iceland = "🇮🇸"
  -- show Italy = "🇮🇹"
  -- show Jersey = "🇯🇪"
  -- show Jamaica = "🇯🇲"
  -- show Jordan = "🇯🇴"
  -- show Japan = "🇯🇵"
  -- show Kenya = "🇰🇪"
  -- show Kyrgyzstan = "🇰🇬"
  -- show Cambodia = "🇰🇭"
  -- show Kiribati = "🇰🇮"
  -- show Comoros = "🇰🇲"
  -- show StKittsAndNevis = "🇰🇳"
  -- show NorthKorea = "🇰🇵"
  -- show SouthKorea = "🇰🇷"
  -- show Kuwait = "🇰🇼"
  -- show CaymanIslands = "🇰🇾"
  -- show Kazakhstan = "🇰🇿"
  -- show Laos = "🇱🇦"
  -- show Lebanon = "🇱🇧"
  -- show StLucia = "🇱🇨"
  -- show Liechtenstein = "🇱🇮"
  -- show SriLanka = "🇱🇰"
  -- show Liberia = "🇱🇷"
  -- show Lesotho = "🇱🇸"
  -- show Lithuania = "🇱🇹"
  -- show Luxembourg = "🇱🇺"
  -- show Latvia = "🇱🇻"
  -- show Libya = "🇱🇾"
  -- show Morocco = "🇲🇦"
  -- show Monaco = "🇲🇨"
  -- show Moldova = "🇲🇩"
  -- show Montenegro = "🇲🇪"
  -- show StMartin = "🇲🇫"
  -- show Madagascar = "🇲🇬"
  -- show MarshallIslands = "🇲🇭"
  -- show Macedonia = "🇲🇰"
  -- show Mali = "🇲🇱"
  -- show MyanmarBurma = "🇲🇲"
  -- show Mongolia = "🇲🇳"
  -- show MacauSARChina = "🇲🇴"
  -- show NorthernMarianaIslands = "🇲🇵"
  -- show Martinique = "🇲🇶"
  -- show Mauritania = "🇲🇷"
  -- show Montserrat = "🇲🇸"
  -- show Malta = "🇲🇹"
  -- show Mauritius = "🇲🇺"
  -- show Maldives = "🇲🇻"
  -- show Malawi = "🇲🇼"
  -- show Mexico = "🇲🇽"
  -- show Malaysia = "🇲🇾"
  -- show Mozambique = "🇲🇿"
  -- show Namibia = "🇳🇦"
  -- show NewCaledonia = "🇳🇨"
  -- show Niger = "🇳🇪"
  -- show NorfolkIsland = "🇳🇫"
  -- show Nigeria = "🇳🇬"
  -- show Nicaragua = "🇳🇮"
  -- show Netherlands = "🇳🇱"
  -- show Norway = "🇳🇴"
  -- show Nepal = "🇳🇵"
  -- show Nauru = "🇳🇷"
  -- show Niue = "🇳🇺"
  -- show NewZealand = "🇳🇿"
  -- show Oman = "🇴🇲"
  -- show Panama = "🇵🇦"
  -- show Peru = "🇵🇪"
  -- show FrenchPolynesia = "🇵🇫"
  -- show PapuaNewGuinea = "🇵🇬"
  -- show Philippines = "🇵🇭"
  -- show Pakistan = "🇵🇰"
  -- show Poland = "🇵🇱"
  -- show StPierreAndMiquelon = "🇵🇲"
  -- show PitcairnIslands = "🇵🇳"
  -- show PuertoRico = "🇵🇷"
  -- show PalestinianTerritories = "🇵🇸"
  -- show Portugal = "🇵🇹"
  -- show Palau = "🇵🇼"
  -- show Paraguay = "🇵🇾"
  -- show Qatar = "🇶🇦"
  -- show Réunion = "🇷🇪"
  -- show Romania = "🇷🇴"
  -- show Serbia = "🇷🇸"
  -- show Russia = "🇷🇺"
  -- show Rwanda = "🇷🇼"
  -- show SaudiArabia = "🇸🇦"
  -- show SolomonIslands = "🇸🇧"
  -- show Seychelles = "🇸🇨"
  -- show Sudan = "🇸🇩"
  -- show Sweden = "🇸🇪"
  -- show Singapore = "🇸🇬"
  -- show StHelena = "🇸🇭"
  -- show Slovenia = "🇸🇮"
  -- show SvalbardAndJanMayen = "🇸🇯"
  -- show Slovakia = "🇸🇰"
  -- show SierraLeone = "🇸🇱"
  -- show SanMarino = "🇸🇲"
  -- show Senegal = "🇸🇳"
  -- show Somalia = "🇸🇴"
  -- show Suriname = "🇸🇷"
  -- show SouthSudan = "🇸🇸"
  -- show SãoToméAndPríncipe = "🇸🇹"
  -- show ElSalvador = "🇸🇻"
  -- show SintMaarten = "🇸🇽"
  -- show Syria = "🇸🇾"
  -- show Swaziland = "🇸🇿"
  -- show TristanDaCunha = "🇹🇦"
  -- show TurksAndCaicosIslands = "🇹🇨"
  -- show Chad = "🇹🇩"
  -- show FrenchSouthernTerritories = "🇹🇫"
  -- show Togo = "🇹🇬"
  -- show Thailand = "🇹🇭"
  -- show Tajikistan = "🇹🇯"
  -- show Tokelau = "🇹🇰"
  -- show TimorLeste = "🇹🇱"
  -- show Turkmenistan = "🇹🇲"
  -- show Tunisia = "🇹🇳"
  -- show Tonga = "🇹🇴"
  -- show TurkeyCountry = "🇹🇷"
  -- show TrinidadAndTobago = "🇹🇹"
  -- show Tuvalu = "🇹🇻"
  -- show Taiwan = "🇹🇼"
  -- show Tanzania = "🇹🇿"
  -- show Ukraine = "🇺🇦"
  -- show Uganda = "🇺🇬"
  -- show USOutlyingIslands = "🇺🇲"
  -- show UnitedNations = "🇺🇳"
  -- show UnitedStates = "🇺🇸"
  -- show Uruguay = "🇺🇾"
  -- show Uzbekistan = "🇺🇿"
  -- show VaticanCity = "🇻🇦"
  -- show StVincentAndGrenadines = "🇻🇨"
  -- show Venezuela = "🇻🇪"
  -- show BritishVirginIslands = "🇻🇬"
  -- show USVirginIslands = "🇻🇮"
  -- show Vietnam = "🇻🇳"
  -- show Vanuatu = "🇻🇺"
  -- show WallisAndFutuna = "🇼🇫"
  -- show Samoa = "🇼🇸"
  -- show Kosovo = "🇽🇰"
  -- show Yemen = "🇾🇪"
  -- show Mayotte = "🇾🇹"
  -- show SouthAfrica = "🇿🇦"
  -- show Zambia = "🇿🇲"
  -- show Zimbabwe = "🇿🇼"
  -- subgroup: subdivision-flag
  -- show England = "🏴󠁧󠁢󠁥󠁮󠁧󠁿"
  -- show Scotland = "🏴󠁧󠁢󠁳󠁣󠁴󠁿"
  -- show Wales = "🏴󠁧󠁢󠁷󠁬󠁳󠁿"

-- TODO: dry but performance is top priority
instance readEmoji :: Show Emoji => Read Emoji where
  read = case _ of
    "😀" -> Right GrinningFace
    "😁" -> Right BeamingFaceWithSmilingEyes
    "😂" -> Right FaceWithTearsOfJoy
    "🤣" -> Right RollingOnTheFloorLaughing
    "😃" -> Right GrinningFaceWithBigEyes
    "😄" -> Right GrinningFaceWithSmilingEyes
    "😅" -> Right GrinningFaceWithSweat
    "😆" -> Right GrinningSquintingFace
    "😉" -> Right WinkingFace
    "😊" -> Right SmilingFaceWithSmilingEyes
    "😋" -> Right FaceSavoringFood
    "😎" -> Right SmilingFaceWithSunglasses
    "😍" -> Right SmilingFaceWithHeartEyes
    "😘" -> Right FaceBlowingAKiss
    "🥰" -> Right SmilingFaceWith3Hearts
    "😗" -> Right KissingFace
    "😙" -> Right KissingFaceWithSmilingEyes
    "😚" -> Right KissingFaceWithClosedEyes
    "☺️" -> Right SmilingFace
    "🙂" -> Right SlightlySmilingFace
    "🤗" -> Right HuggingFace
    "🤩" -> Right StarStruck
    "🤔" -> Right ThinkingFace
    "🤨" -> Right FaceWithRaisedEyebrow
    "😐" -> Right NeutralFace
    "😑" -> Right ExpressionlessFace
    "😶" -> Right FaceWithoutMouth
    "🙄" -> Right FaceWithRollingEyes
    "😏" -> Right SmirkingFace
    "😣" -> Right PerseveringFace
    "😥" -> Right SadButRelievedFace
    "😮" -> Right FaceWithOpenMouth
    "🤐" -> Right ZipperMouthFace
    "😯" -> Right HushedFace
    "😪" -> Right SleepyFace
    "😫" -> Right TiredFace
    "😴" -> Right SleepingFace
    "😌" -> Right RelievedFace
    "😛" -> Right FaceWithTongue
    "😜" -> Right WinkingFaceWithTongue
    "😝" -> Right SquintingFaceWithTongue
    "🤤" -> Right DroolingFace
    "😒" -> Right UnamusedFace
    "😓" -> Right DowncastFaceWithSweat
    "😔" -> Right PensiveFace
    "😕" -> Right ConfusedFace
    "🙃" -> Right UpsideDownFace
    "🤑" -> Right MoneyMouthFace
    "😲" -> Right AstonishedFace
    "☹️" -> Right FrowningFace
    "🙁" -> Right SlightlyFrowningFace
    "😖" -> Right ConfoundedFace
    "😞" -> Right DisappointedFace
    "😟" -> Right WorriedFace
    "😤" -> Right FaceWithSteamFromNose
    "😢" -> Right CryingFace
    "😭" -> Right LoudlyCryingFace
    "😦" -> Right FrowningFaceWithOpenMouth
    "😧" -> Right AnguishedFace
    "😨" -> Right FearfulFace
    "😩" -> Right WearyFace
    "🤯" -> Right ExplodingHead
    "😬" -> Right GrimacingFace
    "😰" -> Right AnxiousFaceWithSweat
    "😱" -> Right FaceScreamingInFear
    "🥵" -> Right HotFace
    "🥶" -> Right ColdFace
    "😳" -> Right FlushedFace
    "🤪" -> Right ZanyFace
    "😵" -> Right DizzyFace
    "😡" -> Right PoutingFace
    "😠" -> Right AngryFace
    "🤬" -> Right FaceWithSymbolsOnMouth
    "😷" -> Right FaceWithMedicalMask
    "🤒" -> Right FaceWithThermometer
    "🤕" -> Right FaceWithHeadBandage
    "🤢" -> Right NauseatedFace
    "🤮" -> Right FaceVomiting
    "🤧" -> Right SneezingFace
    "😇" -> Right SmilingFaceWithHalo
    "🤠" -> Right CowboyHatFace
    "🥳" -> Right PartyingFace
    "🥴" -> Right WoozyFace
    "🥺" -> Right PleadingFace
    "🤥" -> Right LyingFace
    "🤫" -> Right ShushingFace
    "🤭" -> Right FaceWithHandOverMouth
    "🧐" -> Right FaceWithMonocle
    "🤓" -> Right NerdFace
    "😈" -> Right SmilingFaceWithHorns
    "👿" -> Right AngryFaceWithHorns
    "🤡" -> Right ClownFace
    "👹" -> Right Ogre
    "👺" -> Right Goblin
    "💀" -> Right Skull
    "☠️" -> Right SkullAndCrossbones
    "👻" -> Right Ghost
    "👽" -> Right Alien
    "👾" -> Right AlienMonster
    "🤖" -> Right RobotFace
    "💩" -> Right PileOfPoo
    "😺" -> Right GrinningCatFace
    "😸" -> Right GrinningCatFaceWithSmilingEyes
    "😹" -> Right CatFaceWithTearsOfJoy
    "😻" -> Right SmilingCatFaceWithHeartEyes
    "😼" -> Right CatFaceWithWrySmile
    "😽" -> Right KissingCatFace
    "🙀" -> Right WearyCatFace
    "😿" -> Right CryingCatFace
    "😾" -> Right PoutingCatFace
    "🙈" -> Right SeeNoEvilMonkey
    "🙉" -> Right HearNoEvilMonkey
    "🙊" -> Right SpeakNoEvilMonkey
    "🏻" -> Right LightSkinTone
    "🏼" -> Right MediumLightSkinTone
    "🏽" -> Right MediumSkinTone
    "🏾" -> Right MediumDarkSkinTone
    "🏿" -> Right DarkSkinTone
    "👶" -> Right Baby
--     "👶🏻" -> Right BabyLightSkinTone
--     "👶🏼" -> Right BabyMediumLightSkinTone
--     "👶🏽" -> Right BabyMediumSkinTone
--     "👶🏾" -> Right BabyMediumDarkSkinTone
--     "👶🏿" -> Right BabyDarkSkinTone
    "🧒" -> Right Child
--     "🧒🏻" -> Right ChildLightSkinTone
--     "🧒🏼" -> Right ChildMediumLightSkinTone
--     "🧒🏽" -> Right ChildMediumSkinTone
--     "🧒🏾" -> Right ChildMediumDarkSkinTone
--     "🧒🏿" -> Right ChildDarkSkinTone
    "👦" -> Right Boy
--     "👦🏻" -> Right BoyLightSkinTone
--     "👦🏼" -> Right BoyMediumLightSkinTone
--     "👦🏽" -> Right BoyMediumSkinTone
--     "👦🏾" -> Right BoyMediumDarkSkinTone
--     "👦🏿" -> Right BoyDarkSkinTone
    "👧" -> Right Girl
--     "👧🏻" -> Right GirlLightSkinTone
--     "👧🏼" -> Right GirlMediumLightSkinTone
--     "👧🏽" -> Right GirlMediumSkinTone
--     "👧🏾" -> Right GirlMediumDarkSkinTone
--     "👧🏿" -> Right GirlDarkSkinTone
    "🧑" -> Right Adult
--     "🧑🏻" -> Right AdultLightSkinTone
--     "🧑🏼" -> Right AdultMediumLightSkinTone
--     "🧑🏽" -> Right AdultMediumSkinTone
--     "🧑🏾" -> Right AdultMediumDarkSkinTone
--     "🧑🏿" -> Right AdultDarkSkinTone
    "👨" -> Right Man
--     "👨🏻" -> Right ManLightSkinTone
--     "👨🏼" -> Right ManMediumLightSkinTone
--     "👨🏽" -> Right ManMediumSkinTone
--     "👨🏾" -> Right ManMediumDarkSkinTone
--     "👨🏿" -> Right ManDarkSkinTone
    "👩" -> Right Woman
--     "👩🏻" -> Right WomanLightSkinTone
--     "👩🏼" -> Right WomanMediumLightSkinTone
--     "👩🏽" -> Right WomanMediumSkinTone
--     "👩🏾" -> Right WomanMediumDarkSkinTone
--     "👩🏿" -> Right WomanDarkSkinTone
    "🧓" -> Right OlderAdult
--     "🧓🏻" -> Right OlderAdultLightSkinTone
--     "🧓🏼" -> Right OlderAdultMediumLightSkinTone
--     "🧓🏽" -> Right OlderAdultMediumSkinTone
--     "🧓🏾" -> Right OlderAdultMediumDarkSkinTone
--     "🧓🏿" -> Right OlderAdultDarkSkinTone
    "👴" -> Right OldMan
--     "👴🏻" -> Right OldManLightSkinTone
--     "👴🏼" -> Right OldManMediumLightSkinTone
--     "👴🏽" -> Right OldManMediumSkinTone
--     "👴🏾" -> Right OldManMediumDarkSkinTone
--     "👴🏿" -> Right OldManDarkSkinTone
    "👵" -> Right OldWoman
--     "👵🏻" -> Right OldWomanLightSkinTone
--     "👵🏼" -> Right OldWomanMediumLightSkinTone
--     "👵🏽" -> Right OldWomanMediumSkinTone
--     "👵🏾" -> Right OldWomanMediumDarkSkinTone
--     "👵🏿" -> Right OldWomanDarkSkinTone
    "👨‍⚕️" -> Right ManHealthWorker
--     "👨🏻‍⚕️" -> Right ManHealthWorkerLightSkinTone
--     "👨🏼‍⚕️" -> Right ManHealthWorkerMediumLightSkinTone
--     "👨🏽‍⚕️" -> Right ManHealthWorkerMediumSkinTone
--     "👨🏾‍⚕️" -> Right ManHealthWorkerMediumDarkSkinTone
--     "👨🏿‍⚕️" -> Right ManHealthWorkerDarkSkinTone
    "👩‍⚕️" -> Right WomanHealthWorker
--     "👩🏻‍⚕️" -> Right WomanHealthWorkerLightSkinTone
--     "👩🏼‍⚕️" -> Right WomanHealthWorkerMediumLightSkinTone
--     "👩🏽‍⚕️" -> Right WomanHealthWorkerMediumSkinTone
--     "👩🏾‍⚕️" -> Right WomanHealthWorkerMediumDarkSkinTone
--     "👩🏿‍⚕️" -> Right WomanHealthWorkerDarkSkinTone
    "👨‍🎓" -> Right ManStudent
--     "👨🏻‍🎓" -> Right ManStudentLightSkinTone
--     "👨🏼‍🎓" -> Right ManStudentMediumLightSkinTone
--     "👨🏽‍🎓" -> Right ManStudentMediumSkinTone
--     "👨🏾‍🎓" -> Right ManStudentMediumDarkSkinTone
--     "👨🏿‍🎓" -> Right ManStudentDarkSkinTone
    "👩‍🎓" -> Right WomanStudent
--     "👩🏻‍🎓" -> Right WomanStudentLightSkinTone
--     "👩🏼‍🎓" -> Right WomanStudentMediumLightSkinTone
--     "👩🏽‍🎓" -> Right WomanStudentMediumSkinTone
--     "👩🏾‍🎓" -> Right WomanStudentMediumDarkSkinTone
--     "👩🏿‍🎓" -> Right WomanStudentDarkSkinTone
    "👨‍🏫" -> Right ManTeacher
--     "👨🏻‍🏫" -> Right ManTeacherLightSkinTone
--     "👨🏼‍🏫" -> Right ManTeacherMediumLightSkinTone
--     "👨🏽‍🏫" -> Right ManTeacherMediumSkinTone
--     "👨🏾‍🏫" -> Right ManTeacherMediumDarkSkinTone
--     "👨🏿‍🏫" -> Right ManTeacherDarkSkinTone
    "👩‍🏫" -> Right WomanTeacher
--     "👩🏻‍🏫" -> Right WomanTeacherLightSkinTone
--     "👩🏼‍🏫" -> Right WomanTeacherMediumLightSkinTone
--     "👩🏽‍🏫" -> Right WomanTeacherMediumSkinTone
--     "👩🏾‍🏫" -> Right WomanTeacherMediumDarkSkinTone
--     "👩🏿‍🏫" -> Right WomanTeacherDarkSkinTone
    "👨‍⚖️" -> Right ManJudge
--     "👨🏻‍⚖️" -> Right ManJudgeLightSkinTone
--     "👨🏼‍⚖️" -> Right ManJudgeMediumLightSkinTone
--     "👨🏽‍⚖️" -> Right ManJudgeMediumSkinTone
--     "👨🏾‍⚖️" -> Right ManJudgeMediumDarkSkinTone
--     "👨🏿‍⚖️" -> Right ManJudgeDarkSkinTone
    "👩‍⚖️" -> Right WomanJudge
--     "👩🏻‍⚖️" -> Right WomanJudgeLightSkinTone
--     "👩🏼‍⚖️" -> Right WomanJudgeMediumLightSkinTone
--     "👩🏽‍⚖️" -> Right WomanJudgeMediumSkinTone
--     "👩🏾‍⚖️" -> Right WomanJudgeMediumDarkSkinTone
--     "👩🏿‍⚖️" -> Right WomanJudgeDarkSkinTone
    "👨‍🌾" -> Right ManFarmer
--     "👨🏻‍🌾" -> Right ManFarmerLightSkinTone
--     "👨🏼‍🌾" -> Right ManFarmerMediumLightSkinTone
--     "👨🏽‍🌾" -> Right ManFarmerMediumSkinTone
--     "👨🏾‍🌾" -> Right ManFarmerMediumDarkSkinTone
--     "👨🏿‍🌾" -> Right ManFarmerDarkSkinTone
    "👩‍🌾" -> Right WomanFarmer
--     "👩🏻‍🌾" -> Right WomanFarmerLightSkinTone
--     "👩🏼‍🌾" -> Right WomanFarmerMediumLightSkinTone
--     "👩🏽‍🌾" -> Right WomanFarmerMediumSkinTone
--     "👩🏾‍🌾" -> Right WomanFarmerMediumDarkSkinTone
--     "👩🏿‍🌾" -> Right WomanFarmerDarkSkinTone
    "👨‍🍳" -> Right ManCook
--     "👨🏻‍🍳" -> Right ManCookLightSkinTone
--     "👨🏼‍🍳" -> Right ManCookMediumLightSkinTone
--     "👨🏽‍🍳" -> Right ManCookMediumSkinTone
--     "👨🏾‍🍳" -> Right ManCookMediumDarkSkinTone
--     "👨🏿‍🍳" -> Right ManCookDarkSkinTone
    "👩‍🍳" -> Right WomanCook
--     "👩🏻‍🍳" -> Right WomanCookLightSkinTone
--     "👩🏼‍🍳" -> Right WomanCookMediumLightSkinTone
--     "👩🏽‍🍳" -> Right WomanCookMediumSkinTone
--     "👩🏾‍🍳" -> Right WomanCookMediumDarkSkinTone
--     "👩🏿‍🍳" -> Right WomanCookDarkSkinTone
    "👨‍🔧" -> Right ManMechanic
--     "👨🏻‍🔧" -> Right ManMechanicLightSkinTone
--     "👨🏼‍🔧" -> Right ManMechanicMediumLightSkinTone
--     "👨🏽‍🔧" -> Right ManMechanicMediumSkinTone
--     "👨🏾‍🔧" -> Right ManMechanicMediumDarkSkinTone
--     "👨🏿‍🔧" -> Right ManMechanicDarkSkinTone
    "👩‍🔧" -> Right WomanMechanic
--     "👩🏻‍🔧" -> Right WomanMechanicLightSkinTone
--     "👩🏼‍🔧" -> Right WomanMechanicMediumLightSkinTone
--     "👩🏽‍🔧" -> Right WomanMechanicMediumSkinTone
--     "👩🏾‍🔧" -> Right WomanMechanicMediumDarkSkinTone
--     "👩🏿‍🔧" -> Right WomanMechanicDarkSkinTone
    "👨‍🏭" -> Right ManFactoryWorker
--     "👨🏻‍🏭" -> Right ManFactoryWorkerLightSkinTone
--     "👨🏼‍🏭" -> Right ManFactoryWorkerMediumLightSkinTone
--     "👨🏽‍🏭" -> Right ManFactoryWorkerMediumSkinTone
--     "👨🏾‍🏭" -> Right ManFactoryWorkerMediumDarkSkinTone
--     "👨🏿‍🏭" -> Right ManFactoryWorkerDarkSkinTone
    "👩‍🏭" -> Right WomanFactoryWorker
--     "👩🏻‍🏭" -> Right WomanFactoryWorkerLightSkinTone
--     "👩🏼‍🏭" -> Right WomanFactoryWorkerMediumLightSkinTone
--     "👩🏽‍🏭" -> Right WomanFactoryWorkerMediumSkinTone
--     "👩🏾‍🏭" -> Right WomanFactoryWorkerMediumDarkSkinTone
--     "👩🏿‍🏭" -> Right WomanFactoryWorkerDarkSkinTone
    "👨‍💼" -> Right ManOfficeWorker
--     "👨🏻‍💼" -> Right ManOfficeWorkerLightSkinTone
--     "👨🏼‍💼" -> Right ManOfficeWorkerMediumLightSkinTone
--     "👨🏽‍💼" -> Right ManOfficeWorkerMediumSkinTone
--     "👨🏾‍💼" -> Right ManOfficeWorkerMediumDarkSkinTone
--     "👨🏿‍💼" -> Right ManOfficeWorkerDarkSkinTone
    "👩‍💼" -> Right WomanOfficeWorker
--     "👩🏻‍💼" -> Right WomanOfficeWorkerLightSkinTone
--     "👩🏼‍💼" -> Right WomanOfficeWorkerMediumLightSkinTone
--     "👩🏽‍💼" -> Right WomanOfficeWorkerMediumSkinTone
--     "👩🏾‍💼" -> Right WomanOfficeWorkerMediumDarkSkinTone
--     "👩🏿‍💼" -> Right WomanOfficeWorkerDarkSkinTone
    "👨‍🔬" -> Right ManScientist
--     "👨🏻‍🔬" -> Right ManScientistLightSkinTone
--     "👨🏼‍🔬" -> Right ManScientistMediumLightSkinTone
--     "👨🏽‍🔬" -> Right ManScientistMediumSkinTone
--     "👨🏾‍🔬" -> Right ManScientistMediumDarkSkinTone
--     "👨🏿‍🔬" -> Right ManScientistDarkSkinTone
    "👩‍🔬" -> Right WomanScientist
--     "👩🏻‍🔬" -> Right WomanScientistLightSkinTone
--     "👩🏼‍🔬" -> Right WomanScientistMediumLightSkinTone
--     "👩🏽‍🔬" -> Right WomanScientistMediumSkinTone
--     "👩🏾‍🔬" -> Right WomanScientistMediumDarkSkinTone
--     "👩🏿‍🔬" -> Right WomanScientistDarkSkinTone
    "👨‍💻" -> Right ManTechnologist
--     "👨🏻‍💻" -> Right ManTechnologistLightSkinTone
--     "👨🏼‍💻" -> Right ManTechnologistMediumLightSkinTone
--     "👨🏽‍💻" -> Right ManTechnologistMediumSkinTone
--     "👨🏾‍💻" -> Right ManTechnologistMediumDarkSkinTone
--     "👨🏿‍💻" -> Right ManTechnologistDarkSkinTone
    "👩‍💻" -> Right WomanTechnologist
--     "👩🏻‍💻" -> Right WomanTechnologistLightSkinTone
--     "👩🏼‍💻" -> Right WomanTechnologistMediumLightSkinTone
--     "👩🏽‍💻" -> Right WomanTechnologistMediumSkinTone
--     "👩🏾‍💻" -> Right WomanTechnologistMediumDarkSkinTone
--     "👩🏿‍💻" -> Right WomanTechnologistDarkSkinTone
    "👨‍🎤" -> Right ManSinger
--     "👨🏻‍🎤" -> Right ManSingerLightSkinTone
--     "👨🏼‍🎤" -> Right ManSingerMediumLightSkinTone
--     "👨🏽‍🎤" -> Right ManSingerMediumSkinTone
--     "👨🏾‍🎤" -> Right ManSingerMediumDarkSkinTone
--     "👨🏿‍🎤" -> Right ManSingerDarkSkinTone
    "👩‍🎤" -> Right WomanSinger
--     "👩🏻‍🎤" -> Right WomanSingerLightSkinTone
--     "👩🏼‍🎤" -> Right WomanSingerMediumLightSkinTone
--     "👩🏽‍🎤" -> Right WomanSingerMediumSkinTone
--     "👩🏾‍🎤" -> Right WomanSingerMediumDarkSkinTone
--     "👩🏿‍🎤" -> Right WomanSingerDarkSkinTone
    "👨‍🎨" -> Right ManArtist
--     "👨🏻‍🎨" -> Right ManArtistLightSkinTone
--     "👨🏼‍🎨" -> Right ManArtistMediumLightSkinTone
--     "👨🏽‍🎨" -> Right ManArtistMediumSkinTone
--     "👨🏾‍🎨" -> Right ManArtistMediumDarkSkinTone
--     "👨🏿‍🎨" -> Right ManArtistDarkSkinTone
    "👩‍🎨" -> Right WomanArtist
--     "👩🏻‍🎨" -> Right WomanArtistLightSkinTone
--     "👩🏼‍🎨" -> Right WomanArtistMediumLightSkinTone
--     "👩🏽‍🎨" -> Right WomanArtistMediumSkinTone
--     "👩🏾‍🎨" -> Right WomanArtistMediumDarkSkinTone
--     "👩🏿‍🎨" -> Right WomanArtistDarkSkinTone
    "👨‍✈️" -> Right ManPilot
--     "👨🏻‍✈️" -> Right ManPilotLightSkinTone
--     "👨🏼‍✈️" -> Right ManPilotMediumLightSkinTone
--     "👨🏽‍✈️" -> Right ManPilotMediumSkinTone
--     "👨🏾‍✈️" -> Right ManPilotMediumDarkSkinTone
--     "👨🏿‍✈️" -> Right ManPilotDarkSkinTone
    "👩‍✈️" -> Right WomanPilot
--     "👩🏻‍✈️" -> Right WomanPilotLightSkinTone
--     "👩🏼‍✈️" -> Right WomanPilotMediumLightSkinTone
--     "👩🏽‍✈️" -> Right WomanPilotMediumSkinTone
--     "👩🏾‍✈️" -> Right WomanPilotMediumDarkSkinTone
--     "👩🏿‍✈️" -> Right WomanPilotDarkSkinTone
    "👨‍🚀" -> Right ManAstronaut
--     "👨🏻‍🚀" -> Right ManAstronautLightSkinTone
--     "👨🏼‍🚀" -> Right ManAstronautMediumLightSkinTone
--     "👨🏽‍🚀" -> Right ManAstronautMediumSkinTone
--     "👨🏾‍🚀" -> Right ManAstronautMediumDarkSkinTone
--     "👨🏿‍🚀" -> Right ManAstronautDarkSkinTone
    "👩‍🚀" -> Right WomanAstronaut
--     "👩🏻‍🚀" -> Right WomanAstronautLightSkinTone
--     "👩🏼‍🚀" -> Right WomanAstronautMediumLightSkinTone
--     "👩🏽‍🚀" -> Right WomanAstronautMediumSkinTone
--     "👩🏾‍🚀" -> Right WomanAstronautMediumDarkSkinTone
--     "👩🏿‍🚀" -> Right WomanAstronautDarkSkinTone
    "👨‍🚒" -> Right ManFirefighter
--     "👨🏻‍🚒" -> Right ManFirefighterLightSkinTone
--     "👨🏼‍🚒" -> Right ManFirefighterMediumLightSkinTone
--     "👨🏽‍🚒" -> Right ManFirefighterMediumSkinTone
--     "👨🏾‍🚒" -> Right ManFirefighterMediumDarkSkinTone
--     "👨🏿‍🚒" -> Right ManFirefighterDarkSkinTone
    "👩‍🚒" -> Right WomanFirefighter
--     "👩🏻‍🚒" -> Right WomanFirefighterLightSkinTone
--     "👩🏼‍🚒" -> Right WomanFirefighterMediumLightSkinTone
--     "👩🏽‍🚒" -> Right WomanFirefighterMediumSkinTone
--     "👩🏾‍🚒" -> Right WomanFirefighterMediumDarkSkinTone
--     "👩🏿‍🚒" -> Right WomanFirefighterDarkSkinTone
    "👮" -> Right PoliceOfficer
--     "👮🏻" -> Right PoliceOfficerLightSkinTone
--     "👮🏼" -> Right PoliceOfficerMediumLightSkinTone
--     "👮🏽" -> Right PoliceOfficerMediumSkinTone
--     "👮🏾" -> Right PoliceOfficerMediumDarkSkinTone
--     "👮🏿" -> Right PoliceOfficerDarkSkinTone
    "👮‍♂️" -> Right ManPoliceOfficer
--     "👮🏻‍♂️" -> Right ManPoliceOfficerLightSkinTone
--     "👮🏼‍♂️" -> Right ManPoliceOfficerMediumLightSkinTone
--     "👮🏽‍♂️" -> Right ManPoliceOfficerMediumSkinTone
--     "👮🏾‍♂️" -> Right ManPoliceOfficerMediumDarkSkinTone
--     "👮🏿‍♂️" -> Right ManPoliceOfficerDarkSkinTone
    "👮‍♀️" -> Right WomanPoliceOfficer
--     "👮🏻‍♀️" -> Right WomanPoliceOfficerLightSkinTone
--     "👮🏼‍♀️" -> Right WomanPoliceOfficerMediumLightSkinTone
--     "👮🏽‍♀️" -> Right WomanPoliceOfficerMediumSkinTone
--     "👮🏾‍♀️" -> Right WomanPoliceOfficerMediumDarkSkinTone
--     "👮🏿‍♀️" -> Right WomanPoliceOfficerDarkSkinTone
    "🕵️" -> Right Detective
--     "🕵🏻" -> Right DetectiveLightSkinTone
--     "🕵🏼" -> Right DetectiveMediumLightSkinTone
--     "🕵🏽" -> Right DetectiveMediumSkinTone
--     "🕵🏾" -> Right DetectiveMediumDarkSkinTone
--     "🕵🏿" -> Right DetectiveDarkSkinTone
    "🕵️‍♂️" -> Right ManDetective
--     "🕵🏻‍♂️" -> Right ManDetectiveLightSkinTone
--     "🕵🏼‍♂️" -> Right ManDetectiveMediumLightSkinTone
--     "🕵🏽‍♂️" -> Right ManDetectiveMediumSkinTone
--     "🕵🏾‍♂️" -> Right ManDetectiveMediumDarkSkinTone
--     "🕵🏿‍♂️" -> Right ManDetectiveDarkSkinTone
    "🕵️‍♀️" -> Right WomanDetective
--     "🕵🏻‍♀️" -> Right WomanDetectiveLightSkinTone
--     "🕵🏼‍♀️" -> Right WomanDetectiveMediumLightSkinTone
--     "🕵🏽‍♀️" -> Right WomanDetectiveMediumSkinTone
--     "🕵🏾‍♀️" -> Right WomanDetectiveMediumDarkSkinTone
--     "🕵🏿‍♀️" -> Right WomanDetectiveDarkSkinTone
    "💂" -> Right Guard
--     "💂🏻" -> Right GuardLightSkinTone
--     "💂🏼" -> Right GuardMediumLightSkinTone
--     "💂🏽" -> Right GuardMediumSkinTone
--     "💂🏾" -> Right GuardMediumDarkSkinTone
--     "💂🏿" -> Right GuardDarkSkinTone
    "💂‍♂️" -> Right ManGuard
--     "💂🏻‍♂️" -> Right ManGuardLightSkinTone
--     "💂🏼‍♂️" -> Right ManGuardMediumLightSkinTone
--     "💂🏽‍♂️" -> Right ManGuardMediumSkinTone
--     "💂🏾‍♂️" -> Right ManGuardMediumDarkSkinTone
--     "💂🏿‍♂️" -> Right ManGuardDarkSkinTone
    "💂‍♀️" -> Right WomanGuard
--     "💂🏻‍♀️" -> Right WomanGuardLightSkinTone
--     "💂🏼‍♀️" -> Right WomanGuardMediumLightSkinTone
--     "💂🏽‍♀️" -> Right WomanGuardMediumSkinTone
--     "💂🏾‍♀️" -> Right WomanGuardMediumDarkSkinTone
--     "💂🏿‍♀️" -> Right WomanGuardDarkSkinTone
    "👷" -> Right ConstructionWorker
--     "👷🏻" -> Right ConstructionWorkerLightSkinTone
--     "👷🏼" -> Right ConstructionWorkerMediumLightSkinTone
--     "👷🏽" -> Right ConstructionWorkerMediumSkinTone
--     "👷🏾" -> Right ConstructionWorkerMediumDarkSkinTone
--     "👷🏿" -> Right ConstructionWorkerDarkSkinTone
    "👷‍♂️" -> Right ManConstructionWorker
--     "👷🏻‍♂️" -> Right ManConstructionWorkerLightSkinTone
--     "👷🏼‍♂️" -> Right ManConstructionWorkerMediumLightSkinTone
--     "👷🏽‍♂️" -> Right ManConstructionWorkerMediumSkinTone
--     "👷🏾‍♂️" -> Right ManConstructionWorkerMediumDarkSkinTone
--     "👷🏿‍♂️" -> Right ManConstructionWorkerDarkSkinTone
    "👷‍♀️" -> Right WomanConstructionWorker
--     "👷🏻‍♀️" -> Right WomanConstructionWorkerLightSkinTone
--     "👷🏼‍♀️" -> Right WomanConstructionWorkerMediumLightSkinTone
--     "👷🏽‍♀️" -> Right WomanConstructionWorkerMediumSkinTone
--     "👷🏾‍♀️" -> Right WomanConstructionWorkerMediumDarkSkinTone
--     "👷🏿‍♀️" -> Right WomanConstructionWorkerDarkSkinTone
    "🤴" -> Right Prince
--     "🤴🏻" -> Right PrinceLightSkinTone
--     "🤴🏼" -> Right PrinceMediumLightSkinTone
--     "🤴🏽" -> Right PrinceMediumSkinTone
--     "🤴🏾" -> Right PrinceMediumDarkSkinTone
--     "🤴🏿" -> Right PrinceDarkSkinTone
    "👸" -> Right Princess
--     "👸🏻" -> Right PrincessLightSkinTone
--     "👸🏼" -> Right PrincessMediumLightSkinTone
--     "👸🏽" -> Right PrincessMediumSkinTone
--     "👸🏾" -> Right PrincessMediumDarkSkinTone
--     "👸🏿" -> Right PrincessDarkSkinTone
    "👳" -> Right PersonWearingTurban
--     "👳🏻" -> Right PersonWearingTurbanLightSkinTone
--     "👳🏼" -> Right PersonWearingTurbanMediumLightSkinTone
--     "👳🏽" -> Right PersonWearingTurbanMediumSkinTone
--     "👳🏾" -> Right PersonWearingTurbanMediumDarkSkinTone
--     "👳🏿" -> Right PersonWearingTurbanDarkSkinTone
    "👳‍♂️" -> Right ManWearingTurban
--     "👳🏻‍♂️" -> Right ManWearingTurbanLightSkinTone
--     "👳🏼‍♂️" -> Right ManWearingTurbanMediumLightSkinTone
--     "👳🏽‍♂️" -> Right ManWearingTurbanMediumSkinTone
--     "👳🏾‍♂️" -> Right ManWearingTurbanMediumDarkSkinTone
--     "👳🏿‍♂️" -> Right ManWearingTurbanDarkSkinTone
    "👳‍♀️" -> Right WomanWearingTurban
--     "👳🏻‍♀️" -> Right WomanWearingTurbanLightSkinTone
--     "👳🏼‍♀️" -> Right WomanWearingTurbanMediumLightSkinTone
--     "👳🏽‍♀️" -> Right WomanWearingTurbanMediumSkinTone
--     "👳🏾‍♀️" -> Right WomanWearingTurbanMediumDarkSkinTone
--     "👳🏿‍♀️" -> Right WomanWearingTurbanDarkSkinTone
    "👲" -> Right ManWithChineseCap
--     "👲🏻" -> Right ManWithChineseCapLightSkinTone
--     "👲🏼" -> Right ManWithChineseCapMediumLightSkinTone
--     "👲🏽" -> Right ManWithChineseCapMediumSkinTone
--     "👲🏾" -> Right ManWithChineseCapMediumDarkSkinTone
--     "👲🏿" -> Right ManWithChineseCapDarkSkinTone
    "🧕" -> Right WomanWithHeadscarf
--     "🧕🏻" -> Right WomanWithHeadscarfLightSkinTone
--     "🧕🏼" -> Right WomanWithHeadscarfMediumLightSkinTone
--     "🧕🏽" -> Right WomanWithHeadscarfMediumSkinTone
--     "🧕🏾" -> Right WomanWithHeadscarfMediumDarkSkinTone
--     "🧕🏿" -> Right WomanWithHeadscarfDarkSkinTone
    "🧔" -> Right BeardedPerson
--     "🧔🏻" -> Right BeardedPersonLightSkinTone
--     "🧔🏼" -> Right BeardedPersonMediumLightSkinTone
--     "🧔🏽" -> Right BeardedPersonMediumSkinTone
--     "🧔🏾" -> Right BeardedPersonMediumDarkSkinTone
--     "🧔🏿" -> Right BeardedPersonDarkSkinTone
    "👱" -> Right BlondHairedPerson
--     "👱🏻" -> Right BlondHairedPersonLightSkinTone
--     "👱🏼" -> Right BlondHairedPersonMediumLightSkinTone
--     "👱🏽" -> Right BlondHairedPersonMediumSkinTone
--     "👱🏾" -> Right BlondHairedPersonMediumDarkSkinTone
--     "👱🏿" -> Right BlondHairedPersonDarkSkinTone
    "👱‍♂️" -> Right BlondHairedMan
--     "👱🏻‍♂️" -> Right BlondHairedManLightSkinTone
--     "👱🏼‍♂️" -> Right BlondHairedManMediumLightSkinTone
--     "👱🏽‍♂️" -> Right BlondHairedManMediumSkinTone
--     "👱🏾‍♂️" -> Right BlondHairedManMediumDarkSkinTone
--     "👱🏿‍♂️" -> Right BlondHairedManDarkSkinTone
    "👱‍♀️" -> Right BlondHairedWoman
--     "👱🏻‍♀️" -> Right BlondHairedWomanLightSkinTone
--     "👱🏼‍♀️" -> Right BlondHairedWomanMediumLightSkinTone
--     "👱🏽‍♀️" -> Right BlondHairedWomanMediumSkinTone
--     "👱🏾‍♀️" -> Right BlondHairedWomanMediumDarkSkinTone
--     "👱🏿‍♀️" -> Right BlondHairedWomanDarkSkinTone
    "👨‍🦰" -> Right ManRedHaired
--     "👨🏻‍🦰" -> Right ManRedHairedLightSkinTone
--     "👨🏼‍🦰" -> Right ManRedHairedMediumLightSkinTone
--     "👨🏽‍🦰" -> Right ManRedHairedMediumSkinTone
--     "👨🏾‍🦰" -> Right ManRedHairedMediumDarkSkinTone
--     "👨🏿‍🦰" -> Right ManRedHairedDarkSkinTone
    "👩‍🦰" -> Right WomanRedHaired
--     "👩🏻‍🦰" -> Right WomanRedHairedLightSkinTone
--     "👩🏼‍🦰" -> Right WomanRedHairedMediumLightSkinTone
--     "👩🏽‍🦰" -> Right WomanRedHairedMediumSkinTone
--     "👩🏾‍🦰" -> Right WomanRedHairedMediumDarkSkinTone
--     "👩🏿‍🦰" -> Right WomanRedHairedDarkSkinTone
    "👨‍🦱" -> Right ManCurlyHaired
--     "👨🏻‍🦱" -> Right ManCurlyHairedLightSkinTone
--     "👨🏼‍🦱" -> Right ManCurlyHairedMediumLightSkinTone
--     "👨🏽‍🦱" -> Right ManCurlyHairedMediumSkinTone
--     "👨🏾‍🦱" -> Right ManCurlyHairedMediumDarkSkinTone
--     "👨🏿‍🦱" -> Right ManCurlyHairedDarkSkinTone
    "👩‍🦱" -> Right WomanCurlyHaired
--     "👩🏻‍🦱" -> Right WomanCurlyHairedLightSkinTone
--     "👩🏼‍🦱" -> Right WomanCurlyHairedMediumLightSkinTone
--     "👩🏽‍🦱" -> Right WomanCurlyHairedMediumSkinTone
--     "👩🏾‍🦱" -> Right WomanCurlyHairedMediumDarkSkinTone
--     "👩🏿‍🦱" -> Right WomanCurlyHairedDarkSkinTone
    "👨‍🦲" -> Right ManBald
--     "👨🏻‍🦲" -> Right ManBaldLightSkinTone
--     "👨🏼‍🦲" -> Right ManBaldMediumLightSkinTone
--     "👨🏽‍🦲" -> Right ManBaldMediumSkinTone
--     "👨🏾‍🦲" -> Right ManBaldMediumDarkSkinTone
--     "👨🏿‍🦲" -> Right ManBaldDarkSkinTone
    "👩‍🦲" -> Right WomanBald
--     "👩🏻‍🦲" -> Right WomanBaldLightSkinTone
--     "👩🏼‍🦲" -> Right WomanBaldMediumLightSkinTone
--     "👩🏽‍🦲" -> Right WomanBaldMediumSkinTone
--     "👩🏾‍🦲" -> Right WomanBaldMediumDarkSkinTone
--     "👩🏿‍🦲" -> Right WomanBaldDarkSkinTone
    "👨‍🦳" -> Right ManWhiteHaired
--     "👨🏻‍🦳" -> Right ManWhiteHairedLightSkinTone
--     "👨🏼‍🦳" -> Right ManWhiteHairedMediumLightSkinTone
--     "👨🏽‍🦳" -> Right ManWhiteHairedMediumSkinTone
--     "👨🏾‍🦳" -> Right ManWhiteHairedMediumDarkSkinTone
--     "👨🏿‍🦳" -> Right ManWhiteHairedDarkSkinTone
    "👩‍🦳" -> Right WomanWhiteHaired
--     "👩🏻‍🦳" -> Right WomanWhiteHairedLightSkinTone
--     "👩🏼‍🦳" -> Right WomanWhiteHairedMediumLightSkinTone
--     "👩🏽‍🦳" -> Right WomanWhiteHairedMediumSkinTone
--     "👩🏾‍🦳" -> Right WomanWhiteHairedMediumDarkSkinTone
--     "👩🏿‍🦳" -> Right WomanWhiteHairedDarkSkinTone
    "🤵" -> Right ManInTuxedo
--     "🤵🏻" -> Right ManInTuxedoLightSkinTone
--     "🤵🏼" -> Right ManInTuxedoMediumLightSkinTone
--     "🤵🏽" -> Right ManInTuxedoMediumSkinTone
--     "🤵🏾" -> Right ManInTuxedoMediumDarkSkinTone
--     "🤵🏿" -> Right ManInTuxedoDarkSkinTone
    "👰" -> Right BrideWithVeil
--     "👰🏻" -> Right BrideWithVeilLightSkinTone
--     "👰🏼" -> Right BrideWithVeilMediumLightSkinTone
--     "👰🏽" -> Right BrideWithVeilMediumSkinTone
--     "👰🏾" -> Right BrideWithVeilMediumDarkSkinTone
--     "👰🏿" -> Right BrideWithVeilDarkSkinTone
    "🤰" -> Right PregnantWoman
--     "🤰🏻" -> Right PregnantWomanLightSkinTone
--     "🤰🏼" -> Right PregnantWomanMediumLightSkinTone
--     "🤰🏽" -> Right PregnantWomanMediumSkinTone
--     "🤰🏾" -> Right PregnantWomanMediumDarkSkinTone
--     "🤰🏿" -> Right PregnantWomanDarkSkinTone
    "🤱" -> Right BreastFeeding
--     "🤱🏻" -> Right BreastFeedingLightSkinTone
--     "🤱🏼" -> Right BreastFeedingMediumLightSkinTone
--     "🤱🏽" -> Right BreastFeedingMediumSkinTone
--     "🤱🏾" -> Right BreastFeedingMediumDarkSkinTone
--     "🤱🏿" -> Right BreastFeedingDarkSkinTone
    "👼" -> Right BabyAngel
--     "👼🏻" -> Right BabyAngelLightSkinTone
--     "👼🏼" -> Right BabyAngelMediumLightSkinTone
--     "👼🏽" -> Right BabyAngelMediumSkinTone
--     "👼🏾" -> Right BabyAngelMediumDarkSkinTone
--     "👼🏿" -> Right BabyAngelDarkSkinTone
    "🎅" -> Right SantaClaus
--     "🎅🏻" -> Right SantaClausLightSkinTone
--     "🎅🏼" -> Right SantaClausMediumLightSkinTone
--     "🎅🏽" -> Right SantaClausMediumSkinTone
--     "🎅🏾" -> Right SantaClausMediumDarkSkinTone
--     "🎅🏿" -> Right SantaClausDarkSkinTone
    "🤶" -> Right MrsClaus
--     "🤶🏻" -> Right MrsClausLightSkinTone
--     "🤶🏼" -> Right MrsClausMediumLightSkinTone
--     "🤶🏽" -> Right MrsClausMediumSkinTone
--     "🤶🏾" -> Right MrsClausMediumDarkSkinTone
--     "🤶🏿" -> Right MrsClausDarkSkinTone
    "🦸" -> Right Superhero
--     "🦸🏻" -> Right SuperheroLightSkinTone
--     "🦸🏼" -> Right SuperheroMediumLightSkinTone
--     "🦸🏽" -> Right SuperheroMediumSkinTone
--     "🦸🏾" -> Right SuperheroMediumDarkSkinTone
--     "🦸🏿" -> Right SuperheroDarkSkinTone
    "🦸‍♀️" -> Right WomanSuperhero
--     "🦸🏻‍♀️" -> Right WomanSuperheroLightSkinTone
--     "🦸🏼‍♀️" -> Right WomanSuperheroMediumLightSkinTone
--     "🦸🏽‍♀️" -> Right WomanSuperheroMediumSkinTone
--     "🦸🏾‍♀️" -> Right WomanSuperheroMediumDarkSkinTone
--     "🦸🏿‍♀️" -> Right WomanSuperheroDarkSkinTone
    "🦸‍♂️" -> Right ManSuperhero
--     "🦸🏻‍♂️" -> Right ManSuperheroLightSkinTone
--     "🦸🏼‍♂️" -> Right ManSuperheroMediumLightSkinTone
--     "🦸🏽‍♂️" -> Right ManSuperheroMediumSkinTone
--     "🦸🏾‍♂️" -> Right ManSuperheroMediumDarkSkinTone
--     "🦸🏿‍♂️" -> Right ManSuperheroDarkSkinTone
    "🦹" -> Right Supervillain
--     "🦹🏻" -> Right SupervillainLightSkinTone
--     "🦹🏼" -> Right SupervillainMediumLightSkinTone
--     "🦹🏽" -> Right SupervillainMediumSkinTone
--     "🦹🏾" -> Right SupervillainMediumDarkSkinTone
--     "🦹🏿" -> Right SupervillainDarkSkinTone
    "🦹‍♀️" -> Right WomanSupervillain
--     "🦹🏻‍♀️" -> Right WomanSupervillainLightSkinTone
--     "🦹🏼‍♀️" -> Right WomanSupervillainMediumLightSkinTone
--     "🦹🏽‍♀️" -> Right WomanSupervillainMediumSkinTone
--     "🦹🏾‍♀️" -> Right WomanSupervillainMediumDarkSkinTone
--     "🦹🏿‍♀️" -> Right WomanSupervillainDarkSkinTone
    "🦹‍♂️" -> Right ManSupervillain
--     "🦹🏻‍♂️" -> Right ManSupervillainLightSkinTone
--     "🦹🏼‍♂️" -> Right ManSupervillainMediumLightSkinTone
--     "🦹🏽‍♂️" -> Right ManSupervillainMediumSkinTone
--     "🦹🏾‍♂️" -> Right ManSupervillainMediumDarkSkinTone
--     "🦹🏿‍♂️" -> Right ManSupervillainDarkSkinTone
    "🧙" -> Right Mage
--     "🧙🏻" -> Right MageLightSkinTone
--     "🧙🏼" -> Right MageMediumLightSkinTone
--     "🧙🏽" -> Right MageMediumSkinTone
--     "🧙🏾" -> Right MageMediumDarkSkinTone
--     "🧙🏿" -> Right MageDarkSkinTone
    "🧙‍♀️" -> Right WomanMage
--     "🧙🏻‍♀️" -> Right WomanMageLightSkinTone
--     "🧙🏼‍♀️" -> Right WomanMageMediumLightSkinTone
--     "🧙🏽‍♀️" -> Right WomanMageMediumSkinTone
--     "🧙🏾‍♀️" -> Right WomanMageMediumDarkSkinTone
--     "🧙🏿‍♀️" -> Right WomanMageDarkSkinTone
    "🧙‍♂️" -> Right ManMage
--     "🧙🏻‍♂️" -> Right ManMageLightSkinTone
--     "🧙🏼‍♂️" -> Right ManMageMediumLightSkinTone
--     "🧙🏽‍♂️" -> Right ManMageMediumSkinTone
--     "🧙🏾‍♂️" -> Right ManMageMediumDarkSkinTone
--     "🧙🏿‍♂️" -> Right ManMageDarkSkinTone
    "🧚" -> Right Fairy
--     "🧚🏻" -> Right FairyLightSkinTone
--     "🧚🏼" -> Right FairyMediumLightSkinTone
--     "🧚🏽" -> Right FairyMediumSkinTone
--     "🧚🏾" -> Right FairyMediumDarkSkinTone
--     "🧚🏿" -> Right FairyDarkSkinTone
    "🧚‍♀️" -> Right WomanFairy
--     "🧚🏻‍♀️" -> Right WomanFairyLightSkinTone
--     "🧚🏼‍♀️" -> Right WomanFairyMediumLightSkinTone
--     "🧚🏽‍♀️" -> Right WomanFairyMediumSkinTone
--     "🧚🏾‍♀️" -> Right WomanFairyMediumDarkSkinTone
--     "🧚🏿‍♀️" -> Right WomanFairyDarkSkinTone
    "🧚‍♂️" -> Right ManFairy
--     "🧚🏻‍♂️" -> Right ManFairyLightSkinTone
--     "🧚🏼‍♂️" -> Right ManFairyMediumLightSkinTone
--     "🧚🏽‍♂️" -> Right ManFairyMediumSkinTone
--     "🧚🏾‍♂️" -> Right ManFairyMediumDarkSkinTone
--     "🧚🏿‍♂️" -> Right ManFairyDarkSkinTone
    "🧛" -> Right Vampire
--     "🧛🏻" -> Right VampireLightSkinTone
--     "🧛🏼" -> Right VampireMediumLightSkinTone
--     "🧛🏽" -> Right VampireMediumSkinTone
--     "🧛🏾" -> Right VampireMediumDarkSkinTone
--     "🧛🏿" -> Right VampireDarkSkinTone
    "🧛‍♀️" -> Right WomanVampire
--     "🧛🏻‍♀️" -> Right WomanVampireLightSkinTone
--     "🧛🏼‍♀️" -> Right WomanVampireMediumLightSkinTone
--     "🧛🏽‍♀️" -> Right WomanVampireMediumSkinTone
--     "🧛🏾‍♀️" -> Right WomanVampireMediumDarkSkinTone
--     "🧛🏿‍♀️" -> Right WomanVampireDarkSkinTone
    "🧛‍♂️" -> Right ManVampire
--     "🧛🏻‍♂️" -> Right ManVampireLightSkinTone
--     "🧛🏼‍♂️" -> Right ManVampireMediumLightSkinTone
--     "🧛🏽‍♂️" -> Right ManVampireMediumSkinTone
--     "🧛🏾‍♂️" -> Right ManVampireMediumDarkSkinTone
--     "🧛🏿‍♂️" -> Right ManVampireDarkSkinTone
    "🧜" -> Right Merperson
--     "🧜🏻" -> Right MerpersonLightSkinTone
--     "🧜🏼" -> Right MerpersonMediumLightSkinTone
--     "🧜🏽" -> Right MerpersonMediumSkinTone
--     "🧜🏾" -> Right MerpersonMediumDarkSkinTone
--     "🧜🏿" -> Right MerpersonDarkSkinTone
    "🧜‍♀️" -> Right Mermaid
--     "🧜🏻‍♀️" -> Right MermaidLightSkinTone
--     "🧜🏼‍♀️" -> Right MermaidMediumLightSkinTone
--     "🧜🏽‍♀️" -> Right MermaidMediumSkinTone
--     "🧜🏾‍♀️" -> Right MermaidMediumDarkSkinTone
--     "🧜🏿‍♀️" -> Right MermaidDarkSkinTone
    "🧜‍♂️" -> Right Merman
--     "🧜🏻‍♂️" -> Right MermanLightSkinTone
--     "🧜🏼‍♂️" -> Right MermanMediumLightSkinTone
--     "🧜🏽‍♂️" -> Right MermanMediumSkinTone
--     "🧜🏾‍♂️" -> Right MermanMediumDarkSkinTone
--     "🧜🏿‍♂️" -> Right MermanDarkSkinTone
    "🧝" -> Right Elf
--     "🧝🏻" -> Right ElfLightSkinTone
--     "🧝🏼" -> Right ElfMediumLightSkinTone
--     "🧝🏽" -> Right ElfMediumSkinTone
--     "🧝🏾" -> Right ElfMediumDarkSkinTone
--     "🧝🏿" -> Right ElfDarkSkinTone
    "🧝‍♀️" -> Right WomanElf
--     "🧝🏻‍♀️" -> Right WomanElfLightSkinTone
--     "🧝🏼‍♀️" -> Right WomanElfMediumLightSkinTone
--     "🧝🏽‍♀️" -> Right WomanElfMediumSkinTone
--     "🧝🏾‍♀️" -> Right WomanElfMediumDarkSkinTone
--     "🧝🏿‍♀️" -> Right WomanElfDarkSkinTone
    "🧝‍♂️" -> Right ManElf
--     "🧝🏻‍♂️" -> Right ManElfLightSkinTone
--     "🧝🏼‍♂️" -> Right ManElfMediumLightSkinTone
--     "🧝🏽‍♂️" -> Right ManElfMediumSkinTone
--     "🧝🏾‍♂️" -> Right ManElfMediumDarkSkinTone
--     "🧝🏿‍♂️" -> Right ManElfDarkSkinTone
    "🧞" -> Right Genie
    "🧞‍♀️" -> Right WomanGenie
    "🧞‍♂️" -> Right ManGenie
    "🧟" -> Right Zombie
    "🧟‍♀️" -> Right WomanZombie
    "🧟‍♂️" -> Right ManZombie
    "🙍" -> Right PersonFrowning
--     "🙍🏻" -> Right PersonFrowningLightSkinTone
--     "🙍🏼" -> Right PersonFrowningMediumLightSkinTone
--     "🙍🏽" -> Right PersonFrowningMediumSkinTone
--     "🙍🏾" -> Right PersonFrowningMediumDarkSkinTone
--     "🙍🏿" -> Right PersonFrowningDarkSkinTone
    "🙍‍♂️" -> Right ManFrowning
--     "🙍🏻‍♂️" -> Right ManFrowningLightSkinTone
--     "🙍🏼‍♂️" -> Right ManFrowningMediumLightSkinTone
--     "🙍🏽‍♂️" -> Right ManFrowningMediumSkinTone
--     "🙍🏾‍♂️" -> Right ManFrowningMediumDarkSkinTone
--     "🙍🏿‍♂️" -> Right ManFrowningDarkSkinTone
    "🙍‍♀️" -> Right WomanFrowning
--     "🙍🏻‍♀️" -> Right WomanFrowningLightSkinTone
--     "🙍🏼‍♀️" -> Right WomanFrowningMediumLightSkinTone
--     "🙍🏽‍♀️" -> Right WomanFrowningMediumSkinTone
--     "🙍🏾‍♀️" -> Right WomanFrowningMediumDarkSkinTone
--     "🙍🏿‍♀️" -> Right WomanFrowningDarkSkinTone
    "🙎" -> Right PersonPouting
--     "🙎🏻" -> Right PersonPoutingLightSkinTone
--     "🙎🏼" -> Right PersonPoutingMediumLightSkinTone
--     "🙎🏽" -> Right PersonPoutingMediumSkinTone
--     "🙎🏾" -> Right PersonPoutingMediumDarkSkinTone
--     "🙎🏿" -> Right PersonPoutingDarkSkinTone
    "🙎‍♂️" -> Right ManPouting
--     "🙎🏻‍♂️" -> Right ManPoutingLightSkinTone
--     "🙎🏼‍♂️" -> Right ManPoutingMediumLightSkinTone
--     "🙎🏽‍♂️" -> Right ManPoutingMediumSkinTone
--     "🙎🏾‍♂️" -> Right ManPoutingMediumDarkSkinTone
--     "🙎🏿‍♂️" -> Right ManPoutingDarkSkinTone
    "🙎‍♀️" -> Right WomanPouting
--     "🙎🏻‍♀️" -> Right WomanPoutingLightSkinTone
--     "🙎🏼‍♀️" -> Right WomanPoutingMediumLightSkinTone
--     "🙎🏽‍♀️" -> Right WomanPoutingMediumSkinTone
--     "🙎🏾‍♀️" -> Right WomanPoutingMediumDarkSkinTone
--     "🙎🏿‍♀️" -> Right WomanPoutingDarkSkinTone
    "🙅" -> Right PersonGesturingNO
--     "🙅🏻" -> Right PersonGesturingNOLightSkinTone
--     "🙅🏼" -> Right PersonGesturingNOMediumLightSkinTone
--     "🙅🏽" -> Right PersonGesturingNOMediumSkinTone
--     "🙅🏾" -> Right PersonGesturingNOMediumDarkSkinTone
--     "🙅🏿" -> Right PersonGesturingNODarkSkinTone
    "🙅‍♂️" -> Right ManGesturingNO
--     "🙅🏻‍♂️" -> Right ManGesturingNOLightSkinTone
--     "🙅🏼‍♂️" -> Right ManGesturingNOMediumLightSkinTone
--     "🙅🏽‍♂️" -> Right ManGesturingNOMediumSkinTone
--     "🙅🏾‍♂️" -> Right ManGesturingNOMediumDarkSkinTone
--     "🙅🏿‍♂️" -> Right ManGesturingNODarkSkinTone
    "🙅‍♀️" -> Right WomanGesturingNO
--     "🙅🏻‍♀️" -> Right WomanGesturingNOLightSkinTone
--     "🙅🏼‍♀️" -> Right WomanGesturingNOMediumLightSkinTone
--     "🙅🏽‍♀️" -> Right WomanGesturingNOMediumSkinTone
--     "🙅🏾‍♀️" -> Right WomanGesturingNOMediumDarkSkinTone
--     "🙅🏿‍♀️" -> Right WomanGesturingNODarkSkinTone
    "🙆" -> Right PersonGesturingOK
--     "🙆🏻" -> Right PersonGesturingOKLightSkinTone
--     "🙆🏼" -> Right PersonGesturingOKMediumLightSkinTone
--     "🙆🏽" -> Right PersonGesturingOKMediumSkinTone
--     "🙆🏾" -> Right PersonGesturingOKMediumDarkSkinTone
--     "🙆🏿" -> Right PersonGesturingOKDarkSkinTone
    "🙆‍♂️" -> Right ManGesturingOK
--     "🙆🏻‍♂️" -> Right ManGesturingOKLightSkinTone
--     "🙆🏼‍♂️" -> Right ManGesturingOKMediumLightSkinTone
--     "🙆🏽‍♂️" -> Right ManGesturingOKMediumSkinTone
--     "🙆🏾‍♂️" -> Right ManGesturingOKMediumDarkSkinTone
--     "🙆🏿‍♂️" -> Right ManGesturingOKDarkSkinTone
    "🙆‍♀️" -> Right WomanGesturingOK
--     "🙆🏻‍♀️" -> Right WomanGesturingOKLightSkinTone
--     "🙆🏼‍♀️" -> Right WomanGesturingOKMediumLightSkinTone
--     "🙆🏽‍♀️" -> Right WomanGesturingOKMediumSkinTone
--     "🙆🏾‍♀️" -> Right WomanGesturingOKMediumDarkSkinTone
--     "🙆🏿‍♀️" -> Right WomanGesturingOKDarkSkinTone
    "💁" -> Right PersonTippingHand
--     "💁🏻" -> Right PersonTippingHandLightSkinTone
--     "💁🏼" -> Right PersonTippingHandMediumLightSkinTone
--     "💁🏽" -> Right PersonTippingHandMediumSkinTone
--     "💁🏾" -> Right PersonTippingHandMediumDarkSkinTone
--     "💁🏿" -> Right PersonTippingHandDarkSkinTone
    "💁‍♂️" -> Right ManTippingHand
--     "💁🏻‍♂️" -> Right ManTippingHandLightSkinTone
--     "💁🏼‍♂️" -> Right ManTippingHandMediumLightSkinTone
--     "💁🏽‍♂️" -> Right ManTippingHandMediumSkinTone
--     "💁🏾‍♂️" -> Right ManTippingHandMediumDarkSkinTone
--     "💁🏿‍♂️" -> Right ManTippingHandDarkSkinTone
    "💁‍♀️" -> Right WomanTippingHand
--     "💁🏻‍♀️" -> Right WomanTippingHandLightSkinTone
--     "💁🏼‍♀️" -> Right WomanTippingHandMediumLightSkinTone
--     "💁🏽‍♀️" -> Right WomanTippingHandMediumSkinTone
--     "💁🏾‍♀️" -> Right WomanTippingHandMediumDarkSkinTone
--     "💁🏿‍♀️" -> Right WomanTippingHandDarkSkinTone
    "🙋" -> Right PersonRaisingHand
--     "🙋🏻" -> Right PersonRaisingHandLightSkinTone
--     "🙋🏼" -> Right PersonRaisingHandMediumLightSkinTone
--     "🙋🏽" -> Right PersonRaisingHandMediumSkinTone
--     "🙋🏾" -> Right PersonRaisingHandMediumDarkSkinTone
--     "🙋🏿" -> Right PersonRaisingHandDarkSkinTone
    "🙋‍♂️" -> Right ManRaisingHand
--     "🙋🏻‍♂️" -> Right ManRaisingHandLightSkinTone
--     "🙋🏼‍♂️" -> Right ManRaisingHandMediumLightSkinTone
--     "🙋🏽‍♂️" -> Right ManRaisingHandMediumSkinTone
--     "🙋🏾‍♂️" -> Right ManRaisingHandMediumDarkSkinTone
--     "🙋🏿‍♂️" -> Right ManRaisingHandDarkSkinTone
    "🙋‍♀️" -> Right WomanRaisingHand
--     "🙋🏻‍♀️" -> Right WomanRaisingHandLightSkinTone
--     "🙋🏼‍♀️" -> Right WomanRaisingHandMediumLightSkinTone
--     "🙋🏽‍♀️" -> Right WomanRaisingHandMediumSkinTone
--     "🙋🏾‍♀️" -> Right WomanRaisingHandMediumDarkSkinTone
--     "🙋🏿‍♀️" -> Right WomanRaisingHandDarkSkinTone
    "🙇" -> Right PersonBowing
--     "🙇🏻" -> Right PersonBowingLightSkinTone
--     "🙇🏼" -> Right PersonBowingMediumLightSkinTone
--     "🙇🏽" -> Right PersonBowingMediumSkinTone
--     "🙇🏾" -> Right PersonBowingMediumDarkSkinTone
--     "🙇🏿" -> Right PersonBowingDarkSkinTone
    "🙇‍♂️" -> Right ManBowing
--     "🙇🏻‍♂️" -> Right ManBowingLightSkinTone
--     "🙇🏼‍♂️" -> Right ManBowingMediumLightSkinTone
--     "🙇🏽‍♂️" -> Right ManBowingMediumSkinTone
--     "🙇🏾‍♂️" -> Right ManBowingMediumDarkSkinTone
--     "🙇🏿‍♂️" -> Right ManBowingDarkSkinTone
    "🙇‍♀️" -> Right WomanBowing
--     "🙇🏻‍♀️" -> Right WomanBowingLightSkinTone
--     "🙇🏼‍♀️" -> Right WomanBowingMediumLightSkinTone
--     "🙇🏽‍♀️" -> Right WomanBowingMediumSkinTone
--     "🙇🏾‍♀️" -> Right WomanBowingMediumDarkSkinTone
--     "🙇🏿‍♀️" -> Right WomanBowingDarkSkinTone
    "🤦" -> Right PersonFacepalming
--     "🤦🏻" -> Right PersonFacepalmingLightSkinTone
--     "🤦🏼" -> Right PersonFacepalmingMediumLightSkinTone
--     "🤦🏽" -> Right PersonFacepalmingMediumSkinTone
--     "🤦🏾" -> Right PersonFacepalmingMediumDarkSkinTone
--     "🤦🏿" -> Right PersonFacepalmingDarkSkinTone
    "🤦‍♂️" -> Right ManFacepalming
--     "🤦🏻‍♂️" -> Right ManFacepalmingLightSkinTone
--     "🤦🏼‍♂️" -> Right ManFacepalmingMediumLightSkinTone
--     "🤦🏽‍♂️" -> Right ManFacepalmingMediumSkinTone
--     "🤦🏾‍♂️" -> Right ManFacepalmingMediumDarkSkinTone
--     "🤦🏿‍♂️" -> Right ManFacepalmingDarkSkinTone
    "🤦‍♀️" -> Right WomanFacepalming
--     "🤦🏻‍♀️" -> Right WomanFacepalmingLightSkinTone
--     "🤦🏼‍♀️" -> Right WomanFacepalmingMediumLightSkinTone
--     "🤦🏽‍♀️" -> Right WomanFacepalmingMediumSkinTone
--     "🤦🏾‍♀️" -> Right WomanFacepalmingMediumDarkSkinTone
--     "🤦🏿‍♀️" -> Right WomanFacepalmingDarkSkinTone
    "🤷" -> Right PersonShrugging
--     "🤷🏻" -> Right PersonShruggingLightSkinTone
--     "🤷🏼" -> Right PersonShruggingMediumLightSkinTone
--     "🤷🏽" -> Right PersonShruggingMediumSkinTone
--     "🤷🏾" -> Right PersonShruggingMediumDarkSkinTone
--     "🤷🏿" -> Right PersonShruggingDarkSkinTone
    "🤷‍♂️" -> Right ManShrugging
--     "🤷🏻‍♂️" -> Right ManShruggingLightSkinTone
--     "🤷🏼‍♂️" -> Right ManShruggingMediumLightSkinTone
--     "🤷🏽‍♂️" -> Right ManShruggingMediumSkinTone
--     "🤷🏾‍♂️" -> Right ManShruggingMediumDarkSkinTone
--     "🤷🏿‍♂️" -> Right ManShruggingDarkSkinTone
    "🤷‍♀️" -> Right WomanShrugging
--     "🤷🏻‍♀️" -> Right WomanShruggingLightSkinTone
--     "🤷🏼‍♀️" -> Right WomanShruggingMediumLightSkinTone
--     "🤷🏽‍♀️" -> Right WomanShruggingMediumSkinTone
--     "🤷🏾‍♀️" -> Right WomanShruggingMediumDarkSkinTone
--     "🤷🏿‍♀️" -> Right WomanShruggingDarkSkinTone
    "💆" -> Right PersonGettingMassage
--     "💆🏻" -> Right PersonGettingMassageLightSkinTone
--     "💆🏼" -> Right PersonGettingMassageMediumLightSkinTone
--     "💆🏽" -> Right PersonGettingMassageMediumSkinTone
--     "💆🏾" -> Right PersonGettingMassageMediumDarkSkinTone
--     "💆🏿" -> Right PersonGettingMassageDarkSkinTone
    "💆‍♂️" -> Right ManGettingMassage
--     "💆🏻‍♂️" -> Right ManGettingMassageLightSkinTone
--     "💆🏼‍♂️" -> Right ManGettingMassageMediumLightSkinTone
--     "💆🏽‍♂️" -> Right ManGettingMassageMediumSkinTone
--     "💆🏾‍♂️" -> Right ManGettingMassageMediumDarkSkinTone
--     "💆🏿‍♂️" -> Right ManGettingMassageDarkSkinTone
    "💆‍♀️" -> Right WomanGettingMassage
--     "💆🏻‍♀️" -> Right WomanGettingMassageLightSkinTone
--     "💆🏼‍♀️" -> Right WomanGettingMassageMediumLightSkinTone
--     "💆🏽‍♀️" -> Right WomanGettingMassageMediumSkinTone
--     "💆🏾‍♀️" -> Right WomanGettingMassageMediumDarkSkinTone
--     "💆🏿‍♀️" -> Right WomanGettingMassageDarkSkinTone
    "💇" -> Right PersonGettingHaircut
--     "💇🏻" -> Right PersonGettingHaircutLightSkinTone
--     "💇🏼" -> Right PersonGettingHaircutMediumLightSkinTone
--     "💇🏽" -> Right PersonGettingHaircutMediumSkinTone
--     "💇🏾" -> Right PersonGettingHaircutMediumDarkSkinTone
--     "💇🏿" -> Right PersonGettingHaircutDarkSkinTone
    "💇‍♂️" -> Right ManGettingHaircut
--     "💇🏻‍♂️" -> Right ManGettingHaircutLightSkinTone
--     "💇🏼‍♂️" -> Right ManGettingHaircutMediumLightSkinTone
--     "💇🏽‍♂️" -> Right ManGettingHaircutMediumSkinTone
--     "💇🏾‍♂️" -> Right ManGettingHaircutMediumDarkSkinTone
--     "💇🏿‍♂️" -> Right ManGettingHaircutDarkSkinTone
    "💇‍♀️" -> Right WomanGettingHaircut
--     "💇🏻‍♀️" -> Right WomanGettingHaircutLightSkinTone
--     "💇🏼‍♀️" -> Right WomanGettingHaircutMediumLightSkinTone
--     "💇🏽‍♀️" -> Right WomanGettingHaircutMediumSkinTone
--     "💇🏾‍♀️" -> Right WomanGettingHaircutMediumDarkSkinTone
--     "💇🏿‍♀️" -> Right WomanGettingHaircutDarkSkinTone
    "🚶" -> Right PersonWalking
--     "🚶🏻" -> Right PersonWalkingLightSkinTone
--     "🚶🏼" -> Right PersonWalkingMediumLightSkinTone
--     "🚶🏽" -> Right PersonWalkingMediumSkinTone
--     "🚶🏾" -> Right PersonWalkingMediumDarkSkinTone
--     "🚶🏿" -> Right PersonWalkingDarkSkinTone
    "🚶‍♂️" -> Right ManWalking
--     "🚶🏻‍♂️" -> Right ManWalkingLightSkinTone
--     "🚶🏼‍♂️" -> Right ManWalkingMediumLightSkinTone
--     "🚶🏽‍♂️" -> Right ManWalkingMediumSkinTone
--     "🚶🏾‍♂️" -> Right ManWalkingMediumDarkSkinTone
--     "🚶🏿‍♂️" -> Right ManWalkingDarkSkinTone
    "🚶‍♀️" -> Right WomanWalking
--     "🚶🏻‍♀️" -> Right WomanWalkingLightSkinTone
--     "🚶🏼‍♀️" -> Right WomanWalkingMediumLightSkinTone
--     "🚶🏽‍♀️" -> Right WomanWalkingMediumSkinTone
--     "🚶🏾‍♀️" -> Right WomanWalkingMediumDarkSkinTone
--     "🚶🏿‍♀️" -> Right WomanWalkingDarkSkinTone
    "🏃" -> Right PersonRunning
--     "🏃🏻" -> Right PersonRunningLightSkinTone
--     "🏃🏼" -> Right PersonRunningMediumLightSkinTone
--     "🏃🏽" -> Right PersonRunningMediumSkinTone
--     "🏃🏾" -> Right PersonRunningMediumDarkSkinTone
--     "🏃🏿" -> Right PersonRunningDarkSkinTone
    "🏃‍♂️" -> Right ManRunning
--     "🏃🏻‍♂️" -> Right ManRunningLightSkinTone
--     "🏃🏼‍♂️" -> Right ManRunningMediumLightSkinTone
--     "🏃🏽‍♂️" -> Right ManRunningMediumSkinTone
--     "🏃🏾‍♂️" -> Right ManRunningMediumDarkSkinTone
--     "🏃🏿‍♂️" -> Right ManRunningDarkSkinTone
    "🏃‍♀️" -> Right WomanRunning
--     "🏃🏻‍♀️" -> Right WomanRunningLightSkinTone
--     "🏃🏼‍♀️" -> Right WomanRunningMediumLightSkinTone
--     "🏃🏽‍♀️" -> Right WomanRunningMediumSkinTone
--     "🏃🏾‍♀️" -> Right WomanRunningMediumDarkSkinTone
--     "🏃🏿‍♀️" -> Right WomanRunningDarkSkinTone
    "💃" -> Right WomanDancing
--     "💃🏻" -> Right WomanDancingLightSkinTone
--     "💃🏼" -> Right WomanDancingMediumLightSkinTone
--     "💃🏽" -> Right WomanDancingMediumSkinTone
--     "💃🏾" -> Right WomanDancingMediumDarkSkinTone
--     "💃🏿" -> Right WomanDancingDarkSkinTone
    "🕺" -> Right ManDancing
--     "🕺🏻" -> Right ManDancingLightSkinTone
--     "🕺🏼" -> Right ManDancingMediumLightSkinTone
--     "🕺🏽" -> Right ManDancingMediumSkinTone
--     "🕺🏾" -> Right ManDancingMediumDarkSkinTone
--     "🕺🏿" -> Right ManDancingDarkSkinTone
    "👯" -> Right PeopleWithBunnyEars
    "👯‍♂️" -> Right MenWithBunnyEars
    "👯‍♀️" -> Right WomenWithBunnyEars
    "🧖" -> Right PersonInSteamyRoom
--     "🧖🏻" -> Right PersonInSteamyRoomLightSkinTone
--     "🧖🏼" -> Right PersonInSteamyRoomMediumLightSkinTone
--     "🧖🏽" -> Right PersonInSteamyRoomMediumSkinTone
--     "🧖🏾" -> Right PersonInSteamyRoomMediumDarkSkinTone
--     "🧖🏿" -> Right PersonInSteamyRoomDarkSkinTone
    "🧖‍♀️" -> Right WomanInSteamyRoom
--     "🧖🏻‍♀️" -> Right WomanInSteamyRoomLightSkinTone
--     "🧖🏼‍♀️" -> Right WomanInSteamyRoomMediumLightSkinTone
--     "🧖🏽‍♀️" -> Right WomanInSteamyRoomMediumSkinTone
--     "🧖🏾‍♀️" -> Right WomanInSteamyRoomMediumDarkSkinTone
--     "🧖🏿‍♀️" -> Right WomanInSteamyRoomDarkSkinTone
    "🧖‍♂️" -> Right ManInSteamyRoom
--     "🧖🏻‍♂️" -> Right ManInSteamyRoomLightSkinTone
--     "🧖🏼‍♂️" -> Right ManInSteamyRoomMediumLightSkinTone
--     "🧖🏽‍♂️" -> Right ManInSteamyRoomMediumSkinTone
--     "🧖🏾‍♂️" -> Right ManInSteamyRoomMediumDarkSkinTone
--     "🧖🏿‍♂️" -> Right ManInSteamyRoomDarkSkinTone
    "🧗" -> Right PersonClimbing
--     "🧗🏻" -> Right PersonClimbingLightSkinTone
--     "🧗🏼" -> Right PersonClimbingMediumLightSkinTone
--     "🧗🏽" -> Right PersonClimbingMediumSkinTone
--     "🧗🏾" -> Right PersonClimbingMediumDarkSkinTone
--     "🧗🏿" -> Right PersonClimbingDarkSkinTone
    "🧗‍♀️" -> Right WomanClimbing
--     "🧗🏻‍♀️" -> Right WomanClimbingLightSkinTone
--     "🧗🏼‍♀️" -> Right WomanClimbingMediumLightSkinTone
--     "🧗🏽‍♀️" -> Right WomanClimbingMediumSkinTone
--     "🧗🏾‍♀️" -> Right WomanClimbingMediumDarkSkinTone
--     "🧗🏿‍♀️" -> Right WomanClimbingDarkSkinTone
    "🧗‍♂️" -> Right ManClimbing
--     "🧗🏻‍♂️" -> Right ManClimbingLightSkinTone
--     "🧗🏼‍♂️" -> Right ManClimbingMediumLightSkinTone
--     "🧗🏽‍♂️" -> Right ManClimbingMediumSkinTone
--     "🧗🏾‍♂️" -> Right ManClimbingMediumDarkSkinTone
--     "🧗🏿‍♂️" -> Right ManClimbingDarkSkinTone
    "🧘" -> Right PersonInLotusPosition
--     "🧘🏻" -> Right PersonInLotusPositionLightSkinTone
--     "🧘🏼" -> Right PersonInLotusPositionMediumLightSkinTone
--     "🧘🏽" -> Right PersonInLotusPositionMediumSkinTone
--     "🧘🏾" -> Right PersonInLotusPositionMediumDarkSkinTone
--     "🧘🏿" -> Right PersonInLotusPositionDarkSkinTone
    "🧘‍♀️" -> Right WomanInLotusPosition
--     "🧘🏻‍♀️" -> Right WomanInLotusPositionLightSkinTone
--     "🧘🏼‍♀️" -> Right WomanInLotusPositionMediumLightSkinTone
--     "🧘🏽‍♀️" -> Right WomanInLotusPositionMediumSkinTone
--     "🧘🏾‍♀️" -> Right WomanInLotusPositionMediumDarkSkinTone
--     "🧘🏿‍♀️" -> Right WomanInLotusPositionDarkSkinTone
    "🧘‍♂️" -> Right ManInLotusPosition
--     "🧘🏻‍♂️" -> Right ManInLotusPositionLightSkinTone
--     "🧘🏼‍♂️" -> Right ManInLotusPositionMediumLightSkinTone
--     "🧘🏽‍♂️" -> Right ManInLotusPositionMediumSkinTone
--     "🧘🏾‍♂️" -> Right ManInLotusPositionMediumDarkSkinTone
--     "🧘🏿‍♂️" -> Right ManInLotusPositionDarkSkinTone
    "🛀" -> Right PersonTakingBath
--     "🛀🏻" -> Right PersonTakingBathLightSkinTone
--     "🛀🏼" -> Right PersonTakingBathMediumLightSkinTone
--     "🛀🏽" -> Right PersonTakingBathMediumSkinTone
--     "🛀🏾" -> Right PersonTakingBathMediumDarkSkinTone
--     "🛀🏿" -> Right PersonTakingBathDarkSkinTone
    "🛌" -> Right PersonInBed
--     "🛌🏻" -> Right PersonInBedLightSkinTone
--     "🛌🏼" -> Right PersonInBedMediumLightSkinTone
--     "🛌🏽" -> Right PersonInBedMediumSkinTone
--     "🛌🏾" -> Right PersonInBedMediumDarkSkinTone
--     "🛌🏿" -> Right PersonInBedDarkSkinTone
    "🕴️" -> Right ManInSuitLevitating
--     "🕴🏻" -> Right ManInSuitLevitatingLightSkinTone
--     "🕴🏼" -> Right ManInSuitLevitatingMediumLightSkinTone
--     "🕴🏽" -> Right ManInSuitLevitatingMediumSkinTone
--     "🕴🏾" -> Right ManInSuitLevitatingMediumDarkSkinTone
--     "🕴🏿" -> Right ManInSuitLevitatingDarkSkinTone
    "🗣️" -> Right SpeakingHead
    "👤" -> Right BustInSilhouette
    "👥" -> Right BustsInSilhouette
    "🤺" -> Right PersonFencing
    "🏇" -> Right HorseRacing
--     "🏇🏻" -> Right HorseRacingLightSkinTone
--     "🏇🏼" -> Right HorseRacingMediumLightSkinTone
--     "🏇🏽" -> Right HorseRacingMediumSkinTone
--     "🏇🏾" -> Right HorseRacingMediumDarkSkinTone
--     "🏇🏿" -> Right HorseRacingDarkSkinTone
    "⛷️" -> Right Skier
    "🏂" -> Right Snowboarder
--     "🏂🏻" -> Right SnowboarderLightSkinTone
--     "🏂🏼" -> Right SnowboarderMediumLightSkinTone
--     "🏂🏽" -> Right SnowboarderMediumSkinTone
--     "🏂🏾" -> Right SnowboarderMediumDarkSkinTone
--     "🏂🏿" -> Right SnowboarderDarkSkinTone
    "🏌️" -> Right PersonGolfing
--     "🏌🏻" -> Right PersonGolfingLightSkinTone
--     "🏌🏼" -> Right PersonGolfingMediumLightSkinTone
--     "🏌🏽" -> Right PersonGolfingMediumSkinTone
--     "🏌🏾" -> Right PersonGolfingMediumDarkSkinTone
--     "🏌🏿" -> Right PersonGolfingDarkSkinTone
    "🏌️‍♂️" -> Right ManGolfing
--     "🏌🏻‍♂️" -> Right ManGolfingLightSkinTone
--     "🏌🏼‍♂️" -> Right ManGolfingMediumLightSkinTone
--     "🏌🏽‍♂️" -> Right ManGolfingMediumSkinTone
--     "🏌🏾‍♂️" -> Right ManGolfingMediumDarkSkinTone
--     "🏌🏿‍♂️" -> Right ManGolfingDarkSkinTone
    "🏌️‍♀️" -> Right WomanGolfing
--     "🏌🏻‍♀️" -> Right WomanGolfingLightSkinTone
--     "🏌🏼‍♀️" -> Right WomanGolfingMediumLightSkinTone
--     "🏌🏽‍♀️" -> Right WomanGolfingMediumSkinTone
--     "🏌🏾‍♀️" -> Right WomanGolfingMediumDarkSkinTone
--     "🏌🏿‍♀️" -> Right WomanGolfingDarkSkinTone
    "🏄" -> Right PersonSurfing
--     "🏄🏻" -> Right PersonSurfingLightSkinTone
--     "🏄🏼" -> Right PersonSurfingMediumLightSkinTone
--     "🏄🏽" -> Right PersonSurfingMediumSkinTone
--     "🏄🏾" -> Right PersonSurfingMediumDarkSkinTone
--     "🏄🏿" -> Right PersonSurfingDarkSkinTone
    "🏄‍♂️" -> Right ManSurfing
--     "🏄🏻‍♂️" -> Right ManSurfingLightSkinTone
--     "🏄🏼‍♂️" -> Right ManSurfingMediumLightSkinTone
--     "🏄🏽‍♂️" -> Right ManSurfingMediumSkinTone
--     "🏄🏾‍♂️" -> Right ManSurfingMediumDarkSkinTone
--     "🏄🏿‍♂️" -> Right ManSurfingDarkSkinTone
    "🏄‍♀️" -> Right WomanSurfing
--     "🏄🏻‍♀️" -> Right WomanSurfingLightSkinTone
--     "🏄🏼‍♀️" -> Right WomanSurfingMediumLightSkinTone
--     "🏄🏽‍♀️" -> Right WomanSurfingMediumSkinTone
--     "🏄🏾‍♀️" -> Right WomanSurfingMediumDarkSkinTone
--     "🏄🏿‍♀️" -> Right WomanSurfingDarkSkinTone
    "🚣" -> Right PersonRowingBoat
--     "🚣🏻" -> Right PersonRowingBoatLightSkinTone
--     "🚣🏼" -> Right PersonRowingBoatMediumLightSkinTone
--     "🚣🏽" -> Right PersonRowingBoatMediumSkinTone
--     "🚣🏾" -> Right PersonRowingBoatMediumDarkSkinTone
--     "🚣🏿" -> Right PersonRowingBoatDarkSkinTone
    "🚣‍♂️" -> Right ManRowingBoat
--     "🚣🏻‍♂️" -> Right ManRowingBoatLightSkinTone
--     "🚣🏼‍♂️" -> Right ManRowingBoatMediumLightSkinTone
--     "🚣🏽‍♂️" -> Right ManRowingBoatMediumSkinTone
--     "🚣🏾‍♂️" -> Right ManRowingBoatMediumDarkSkinTone
--     "🚣🏿‍♂️" -> Right ManRowingBoatDarkSkinTone
    "🚣‍♀️" -> Right WomanRowingBoat
--     "🚣🏻‍♀️" -> Right WomanRowingBoatLightSkinTone
--     "🚣🏼‍♀️" -> Right WomanRowingBoatMediumLightSkinTone
--     "🚣🏽‍♀️" -> Right WomanRowingBoatMediumSkinTone
--     "🚣🏾‍♀️" -> Right WomanRowingBoatMediumDarkSkinTone
--     "🚣🏿‍♀️" -> Right WomanRowingBoatDarkSkinTone
    "🏊" -> Right PersonSwimming
--     "🏊🏻" -> Right PersonSwimmingLightSkinTone
--     "🏊🏼" -> Right PersonSwimmingMediumLightSkinTone
--     "🏊🏽" -> Right PersonSwimmingMediumSkinTone
--     "🏊🏾" -> Right PersonSwimmingMediumDarkSkinTone
--     "🏊🏿" -> Right PersonSwimmingDarkSkinTone
    "🏊‍♂️" -> Right ManSwimming
--     "🏊🏻‍♂️" -> Right ManSwimmingLightSkinTone
--     "🏊🏼‍♂️" -> Right ManSwimmingMediumLightSkinTone
--     "🏊🏽‍♂️" -> Right ManSwimmingMediumSkinTone
--     "🏊🏾‍♂️" -> Right ManSwimmingMediumDarkSkinTone
--     "🏊🏿‍♂️" -> Right ManSwimmingDarkSkinTone
    "🏊‍♀️" -> Right WomanSwimming
--     "🏊🏻‍♀️" -> Right WomanSwimmingLightSkinTone
--     "🏊🏼‍♀️" -> Right WomanSwimmingMediumLightSkinTone
--     "🏊🏽‍♀️" -> Right WomanSwimmingMediumSkinTone
--     "🏊🏾‍♀️" -> Right WomanSwimmingMediumDarkSkinTone
--     "🏊🏿‍♀️" -> Right WomanSwimmingDarkSkinTone
    "⛹️" -> Right PersonBouncingBall
--     "⛹🏻" -> Right PersonBouncingBallLightSkinTone
--     "⛹🏼" -> Right PersonBouncingBallMediumLightSkinTone
--     "⛹🏽" -> Right PersonBouncingBallMediumSkinTone
--     "⛹🏾" -> Right PersonBouncingBallMediumDarkSkinTone
--     "⛹🏿" -> Right PersonBouncingBallDarkSkinTone
    "⛹️‍♂️" -> Right ManBouncingBall
--     "⛹🏻‍♂️" -> Right ManBouncingBallLightSkinTone
--     "⛹🏼‍♂️" -> Right ManBouncingBallMediumLightSkinTone
--     "⛹🏽‍♂️" -> Right ManBouncingBallMediumSkinTone
--     "⛹🏾‍♂️" -> Right ManBouncingBallMediumDarkSkinTone
--     "⛹🏿‍♂️" -> Right ManBouncingBallDarkSkinTone
    "⛹️‍♀️" -> Right WomanBouncingBall
--     "⛹🏻‍♀️" -> Right WomanBouncingBallLightSkinTone
--     "⛹🏼‍♀️" -> Right WomanBouncingBallMediumLightSkinTone
--     "⛹🏽‍♀️" -> Right WomanBouncingBallMediumSkinTone
--     "⛹🏾‍♀️" -> Right WomanBouncingBallMediumDarkSkinTone
--     "⛹🏿‍♀️" -> Right WomanBouncingBallDarkSkinTone
    "🏋️" -> Right PersonLiftingWeights
--     "🏋🏻" -> Right PersonLiftingWeightsLightSkinTone
--     "🏋🏼" -> Right PersonLiftingWeightsMediumLightSkinTone
--     "🏋🏽" -> Right PersonLiftingWeightsMediumSkinTone
--     "🏋🏾" -> Right PersonLiftingWeightsMediumDarkSkinTone
--     "🏋🏿" -> Right PersonLiftingWeightsDarkSkinTone
    "🏋️‍♂️" -> Right ManLiftingWeights
--     "🏋🏻‍♂️" -> Right ManLiftingWeightsLightSkinTone
--     "🏋🏼‍♂️" -> Right ManLiftingWeightsMediumLightSkinTone
--     "🏋🏽‍♂️" -> Right ManLiftingWeightsMediumSkinTone
--     "🏋🏾‍♂️" -> Right ManLiftingWeightsMediumDarkSkinTone
--     "🏋🏿‍♂️" -> Right ManLiftingWeightsDarkSkinTone
    "🏋️‍♀️" -> Right WomanLiftingWeights
--     "🏋🏻‍♀️" -> Right WomanLiftingWeightsLightSkinTone
--     "🏋🏼‍♀️" -> Right WomanLiftingWeightsMediumLightSkinTone
--     "🏋🏽‍♀️" -> Right WomanLiftingWeightsMediumSkinTone
--     "🏋🏾‍♀️" -> Right WomanLiftingWeightsMediumDarkSkinTone
--     "🏋🏿‍♀️" -> Right WomanLiftingWeightsDarkSkinTone
    "🚴" -> Right PersonBiking
--     "🚴🏻" -> Right PersonBikingLightSkinTone
--     "🚴🏼" -> Right PersonBikingMediumLightSkinTone
--     "🚴🏽" -> Right PersonBikingMediumSkinTone
--     "🚴🏾" -> Right PersonBikingMediumDarkSkinTone
--     "🚴🏿" -> Right PersonBikingDarkSkinTone
    "🚴‍♂️" -> Right ManBiking
--     "🚴🏻‍♂️" -> Right ManBikingLightSkinTone
--     "🚴🏼‍♂️" -> Right ManBikingMediumLightSkinTone
--     "🚴🏽‍♂️" -> Right ManBikingMediumSkinTone
--     "🚴🏾‍♂️" -> Right ManBikingMediumDarkSkinTone
--     "🚴🏿‍♂️" -> Right ManBikingDarkSkinTone
    "🚴‍♀️" -> Right WomanBiking
--     "🚴🏻‍♀️" -> Right WomanBikingLightSkinTone
--     "🚴🏼‍♀️" -> Right WomanBikingMediumLightSkinTone
--     "🚴🏽‍♀️" -> Right WomanBikingMediumSkinTone
--     "🚴🏾‍♀️" -> Right WomanBikingMediumDarkSkinTone
--     "🚴🏿‍♀️" -> Right WomanBikingDarkSkinTone
    "🚵" -> Right PersonMountainBiking
--     "🚵🏻" -> Right PersonMountainBikingLightSkinTone
--     "🚵🏼" -> Right PersonMountainBikingMediumLightSkinTone
--     "🚵🏽" -> Right PersonMountainBikingMediumSkinTone
--     "🚵🏾" -> Right PersonMountainBikingMediumDarkSkinTone
--     "🚵🏿" -> Right PersonMountainBikingDarkSkinTone
    "🚵‍♂️" -> Right ManMountainBiking
--     "🚵🏻‍♂️" -> Right ManMountainBikingLightSkinTone
--     "🚵🏼‍♂️" -> Right ManMountainBikingMediumLightSkinTone
--     "🚵🏽‍♂️" -> Right ManMountainBikingMediumSkinTone
--     "🚵🏾‍♂️" -> Right ManMountainBikingMediumDarkSkinTone
--     "🚵🏿‍♂️" -> Right ManMountainBikingDarkSkinTone
    "🚵‍♀️" -> Right WomanMountainBiking
--     "🚵🏻‍♀️" -> Right WomanMountainBikingLightSkinTone
--     "🚵🏼‍♀️" -> Right WomanMountainBikingMediumLightSkinTone
--     "🚵🏽‍♀️" -> Right WomanMountainBikingMediumSkinTone
--     "🚵🏾‍♀️" -> Right WomanMountainBikingMediumDarkSkinTone
--     "🚵🏿‍♀️" -> Right WomanMountainBikingDarkSkinTone
    "🏎️" -> Right RacingCar
    "🏍️" -> Right Motorcycle
    "🤸" -> Right PersonCartwheeling
--     "🤸🏻" -> Right PersonCartwheelingLightSkinTone
--     "🤸🏼" -> Right PersonCartwheelingMediumLightSkinTone
--     "🤸🏽" -> Right PersonCartwheelingMediumSkinTone
--     "🤸🏾" -> Right PersonCartwheelingMediumDarkSkinTone
--     "🤸🏿" -> Right PersonCartwheelingDarkSkinTone
    "🤸‍♂️" -> Right ManCartwheeling
--     "🤸🏻‍♂️" -> Right ManCartwheelingLightSkinTone
--     "🤸🏼‍♂️" -> Right ManCartwheelingMediumLightSkinTone
--     "🤸🏽‍♂️" -> Right ManCartwheelingMediumSkinTone
--     "🤸🏾‍♂️" -> Right ManCartwheelingMediumDarkSkinTone
--     "🤸🏿‍♂️" -> Right ManCartwheelingDarkSkinTone
    "🤸‍♀️" -> Right WomanCartwheeling
--     "🤸🏻‍♀️" -> Right WomanCartwheelingLightSkinTone
--     "🤸🏼‍♀️" -> Right WomanCartwheelingMediumLightSkinTone
--     "🤸🏽‍♀️" -> Right WomanCartwheelingMediumSkinTone
--     "🤸🏾‍♀️" -> Right WomanCartwheelingMediumDarkSkinTone
--     "🤸🏿‍♀️" -> Right WomanCartwheelingDarkSkinTone
    "🤼" -> Right PeopleWrestling
    "🤼‍♂️" -> Right MenWrestling
    "🤼‍♀️" -> Right WomenWrestling
    "🤽" -> Right PersonPlayingWaterPolo
--     "🤽🏻" -> Right PersonPlayingWaterPoloLightSkinTone
--     "🤽🏼" -> Right PersonPlayingWaterPoloMediumLightSkinTone
--     "🤽🏽" -> Right PersonPlayingWaterPoloMediumSkinTone
--     "🤽🏾" -> Right PersonPlayingWaterPoloMediumDarkSkinTone
--     "🤽🏿" -> Right PersonPlayingWaterPoloDarkSkinTone
    "🤽‍♂️" -> Right ManPlayingWaterPolo
--     "🤽🏻‍♂️" -> Right ManPlayingWaterPoloLightSkinTone
--     "🤽🏼‍♂️" -> Right ManPlayingWaterPoloMediumLightSkinTone
--     "🤽🏽‍♂️" -> Right ManPlayingWaterPoloMediumSkinTone
--     "🤽🏾‍♂️" -> Right ManPlayingWaterPoloMediumDarkSkinTone
--     "🤽🏿‍♂️" -> Right ManPlayingWaterPoloDarkSkinTone
    "🤽‍♀️" -> Right WomanPlayingWaterPolo
--     "🤽🏻‍♀️" -> Right WomanPlayingWaterPoloLightSkinTone
--     "🤽🏼‍♀️" -> Right WomanPlayingWaterPoloMediumLightSkinTone
--     "🤽🏽‍♀️" -> Right WomanPlayingWaterPoloMediumSkinTone
--     "🤽🏾‍♀️" -> Right WomanPlayingWaterPoloMediumDarkSkinTone
--     "🤽🏿‍♀️" -> Right WomanPlayingWaterPoloDarkSkinTone
    "🤾" -> Right PersonPlayingHandball
--     "🤾🏻" -> Right PersonPlayingHandballLightSkinTone
--     "🤾🏼" -> Right PersonPlayingHandballMediumLightSkinTone
--     "🤾🏽" -> Right PersonPlayingHandballMediumSkinTone
--     "🤾🏾" -> Right PersonPlayingHandballMediumDarkSkinTone
--     "🤾🏿" -> Right PersonPlayingHandballDarkSkinTone
    "🤾‍♂️" -> Right ManPlayingHandball
--     "🤾🏻‍♂️" -> Right ManPlayingHandballLightSkinTone
--     "🤾🏼‍♂️" -> Right ManPlayingHandballMediumLightSkinTone
--     "🤾🏽‍♂️" -> Right ManPlayingHandballMediumSkinTone
--     "🤾🏾‍♂️" -> Right ManPlayingHandballMediumDarkSkinTone
--     "🤾🏿‍♂️" -> Right ManPlayingHandballDarkSkinTone
    "🤾‍♀️" -> Right WomanPlayingHandball
--     "🤾🏻‍♀️" -> Right WomanPlayingHandballLightSkinTone
--     "🤾🏼‍♀️" -> Right WomanPlayingHandballMediumLightSkinTone
--     "🤾🏽‍♀️" -> Right WomanPlayingHandballMediumSkinTone
--     "🤾🏾‍♀️" -> Right WomanPlayingHandballMediumDarkSkinTone
--     "🤾🏿‍♀️" -> Right WomanPlayingHandballDarkSkinTone
    "🤹" -> Right PersonJuggling
--     "🤹🏻" -> Right PersonJugglingLightSkinTone
--     "🤹🏼" -> Right PersonJugglingMediumLightSkinTone
--     "🤹🏽" -> Right PersonJugglingMediumSkinTone
--     "🤹🏾" -> Right PersonJugglingMediumDarkSkinTone
--     "🤹🏿" -> Right PersonJugglingDarkSkinTone
    "🤹‍♂️" -> Right ManJuggling
--     "🤹🏻‍♂️" -> Right ManJugglingLightSkinTone
--     "🤹🏼‍♂️" -> Right ManJugglingMediumLightSkinTone
--     "🤹🏽‍♂️" -> Right ManJugglingMediumSkinTone
--     "🤹🏾‍♂️" -> Right ManJugglingMediumDarkSkinTone
--     "🤹🏿‍♂️" -> Right ManJugglingDarkSkinTone
    "🤹‍♀️" -> Right WomanJuggling
--     "🤹🏻‍♀️" -> Right WomanJugglingLightSkinTone
--     "🤹🏼‍♀️" -> Right WomanJugglingMediumLightSkinTone
--     "🤹🏽‍♀️" -> Right WomanJugglingMediumSkinTone
--     "🤹🏾‍♀️" -> Right WomanJugglingMediumDarkSkinTone
--     "🤹🏿‍♀️" -> Right WomanJugglingDarkSkinTone
    "👫" -> Right ManAndWomanHoldingHands
    "👬" -> Right TwoMenHoldingHands
    "👭" -> Right TwoWomenHoldingHands
    "💏" -> Right Kiss
    "👩‍❤️‍💋‍👨" -> Right KissWomanMan
    "👨‍❤️‍💋‍👨" -> Right KissManMan
    "👩‍❤️‍💋‍👩" -> Right KissWomanWoman
    "💑" -> Right CoupleWithHeart
    "👩‍❤️‍👨" -> Right CoupleWithHeartWomanMan
    "👨‍❤️‍👨" -> Right CoupleWithHeartManMan
    "👩‍❤️‍👩" -> Right CoupleWithHeartWomanWoman
    "👪" -> Right Family
    "👨‍👩‍👦" -> Right FamilyManWomanBoy
    "👨‍👩‍👧" -> Right FamilyManWomanGirl
    "👨‍👩‍👧‍👦" -> Right FamilyManWomanGirlBoy
    "👨‍👩‍👦‍👦" -> Right FamilyManWomanBoyBoy
    "👨‍👩‍👧‍👧" -> Right FamilyManWomanGirlGirl
    "👨‍👨‍👦" -> Right FamilyManManBoy
    "👨‍👨‍👧" -> Right FamilyManManGirl
    "👨‍👨‍👧‍👦" -> Right FamilyManManGirlBoy
    "👨‍👨‍👦‍👦" -> Right FamilyManManBoyBoy
    "👨‍👨‍👧‍👧" -> Right FamilyManManGirlGirl
    "👩‍👩‍👦" -> Right FamilyWomanWomanBoy
    "👩‍👩‍👧" -> Right FamilyWomanWomanGirl
    "👩‍👩‍👧‍👦" -> Right FamilyWomanWomanGirlBoy
    "👩‍👩‍👦‍👦" -> Right FamilyWomanWomanBoyBoy
    "👩‍👩‍👧‍👧" -> Right FamilyWomanWomanGirlGirl
    "👨‍👦" -> Right FamilyManBoy
    "👨‍👦‍👦" -> Right FamilyManBoyBoy
    "👨‍👧" -> Right FamilyManGirl
    "👨‍👧‍👦" -> Right FamilyManGirlBoy
    "👨‍👧‍👧" -> Right FamilyManGirlGirl
    "👩‍👦" -> Right FamilyWomanBoy
    "👩‍👦‍👦" -> Right FamilyWomanBoyBoy
    "👩‍👧" -> Right FamilyWomanGirl
    "👩‍👧‍👦" -> Right FamilyWomanGirlBoy
    "👩‍👧‍👧" -> Right FamilyWomanGirlGirl
    "🤳" -> Right Selfie
--     "🤳🏻" -> Right SelfieLightSkinTone
--     "🤳🏼" -> Right SelfieMediumLightSkinTone
--     "🤳🏽" -> Right SelfieMediumSkinTone
--     "🤳🏾" -> Right SelfieMediumDarkSkinTone
--     "🤳🏿" -> Right SelfieDarkSkinTone
    "💪" -> Right FlexedBiceps
--     "💪🏻" -> Right FlexedBicepsLightSkinTone
--     "💪🏼" -> Right FlexedBicepsMediumLightSkinTone
--     "💪🏽" -> Right FlexedBicepsMediumSkinTone
--     "💪🏾" -> Right FlexedBicepsMediumDarkSkinTone
--     "💪🏿" -> Right FlexedBicepsDarkSkinTone
    "🦵" -> Right Leg
--     "🦵🏻" -> Right LegLightSkinTone
--     "🦵🏼" -> Right LegMediumLightSkinTone
--     "🦵🏽" -> Right LegMediumSkinTone
--     "🦵🏾" -> Right LegMediumDarkSkinTone
--     "🦵🏿" -> Right LegDarkSkinTone
    "🦶" -> Right Foot
--     "🦶🏻" -> Right FootLightSkinTone
--     "🦶🏼" -> Right FootMediumLightSkinTone
--     "🦶🏽" -> Right FootMediumSkinTone
--     "🦶🏾" -> Right FootMediumDarkSkinTone
--     "🦶🏿" -> Right FootDarkSkinTone
    "👈" -> Right BackhandIndexPointingLeft
--     "👈🏻" -> Right BackhandIndexPointingLeftLightSkinTone
--     "👈🏼" -> Right BackhandIndexPointingLeftMediumLightSkinTone
--     "👈🏽" -> Right BackhandIndexPointingLeftMediumSkinTone
--     "👈🏾" -> Right BackhandIndexPointingLeftMediumDarkSkinTone
--     "👈🏿" -> Right BackhandIndexPointingLeftDarkSkinTone
    "👉" -> Right BackhandIndexPointingRight
--     "👉🏻" -> Right BackhandIndexPointingRightLightSkinTone
--     "👉🏼" -> Right BackhandIndexPointingRightMediumLightSkinTone
--     "👉🏽" -> Right BackhandIndexPointingRightMediumSkinTone
--     "👉🏾" -> Right BackhandIndexPointingRightMediumDarkSkinTone
--     "👉🏿" -> Right BackhandIndexPointingRightDarkSkinTone
    "☝️" -> Right IndexPointingUp
--     "☝🏻" -> Right IndexPointingUpLightSkinTone
--     "☝🏼" -> Right IndexPointingUpMediumLightSkinTone
--     "☝🏽" -> Right IndexPointingUpMediumSkinTone
--     "☝🏾" -> Right IndexPointingUpMediumDarkSkinTone
--     "☝🏿" -> Right IndexPointingUpDarkSkinTone
    "👆" -> Right BackhandIndexPointingUp
--     "👆🏻" -> Right BackhandIndexPointingUpLightSkinTone
--     "👆🏼" -> Right BackhandIndexPointingUpMediumLightSkinTone
--     "👆🏽" -> Right BackhandIndexPointingUpMediumSkinTone
--     "👆🏾" -> Right BackhandIndexPointingUpMediumDarkSkinTone
--     "👆🏿" -> Right BackhandIndexPointingUpDarkSkinTone
    "🖕" -> Right MiddleFinger
--     "🖕🏻" -> Right MiddleFingerLightSkinTone
--     "🖕🏼" -> Right MiddleFingerMediumLightSkinTone
--     "🖕🏽" -> Right MiddleFingerMediumSkinTone
--     "🖕🏾" -> Right MiddleFingerMediumDarkSkinTone
--     "🖕🏿" -> Right MiddleFingerDarkSkinTone
    "👇" -> Right BackhandIndexPointingDown
--     "👇🏻" -> Right BackhandIndexPointingDownLightSkinTone
--     "👇🏼" -> Right BackhandIndexPointingDownMediumLightSkinTone
--     "👇🏽" -> Right BackhandIndexPointingDownMediumSkinTone
--     "👇🏾" -> Right BackhandIndexPointingDownMediumDarkSkinTone
--     "👇🏿" -> Right BackhandIndexPointingDownDarkSkinTone
    "✌️" -> Right VictoryHand
--     "✌🏻" -> Right VictoryHandLightSkinTone
--     "✌🏼" -> Right VictoryHandMediumLightSkinTone
--     "✌🏽" -> Right VictoryHandMediumSkinTone
--     "✌🏾" -> Right VictoryHandMediumDarkSkinTone
--     "✌🏿" -> Right VictoryHandDarkSkinTone
    "🤞" -> Right CrossedFingers
--     "🤞🏻" -> Right CrossedFingersLightSkinTone
--     "🤞🏼" -> Right CrossedFingersMediumLightSkinTone
--     "🤞🏽" -> Right CrossedFingersMediumSkinTone
--     "🤞🏾" -> Right CrossedFingersMediumDarkSkinTone
--     "🤞🏿" -> Right CrossedFingersDarkSkinTone
    "🖖" -> Right VulcanSalute
--     "🖖🏻" -> Right VulcanSaluteLightSkinTone
--     "🖖🏼" -> Right VulcanSaluteMediumLightSkinTone
--     "🖖🏽" -> Right VulcanSaluteMediumSkinTone
--     "🖖🏾" -> Right VulcanSaluteMediumDarkSkinTone
--     "🖖🏿" -> Right VulcanSaluteDarkSkinTone
    "🤘" -> Right SignOfTheHorns
--     "🤘🏻" -> Right SignOfTheHornsLightSkinTone
--     "🤘🏼" -> Right SignOfTheHornsMediumLightSkinTone
--     "🤘🏽" -> Right SignOfTheHornsMediumSkinTone
--     "🤘🏾" -> Right SignOfTheHornsMediumDarkSkinTone
--     "🤘🏿" -> Right SignOfTheHornsDarkSkinTone
    "🤙" -> Right CallMeHand
--     "🤙🏻" -> Right CallMeHandLightSkinTone
--     "🤙🏼" -> Right CallMeHandMediumLightSkinTone
--     "🤙🏽" -> Right CallMeHandMediumSkinTone
--     "🤙🏾" -> Right CallMeHandMediumDarkSkinTone
--     "🤙🏿" -> Right CallMeHandDarkSkinTone
    "🖐️" -> Right HandWithFingersSplayed
--     "🖐🏻" -> Right HandWithFingersSplayedLightSkinTone
--     "🖐🏼" -> Right HandWithFingersSplayedMediumLightSkinTone
--     "🖐🏽" -> Right HandWithFingersSplayedMediumSkinTone
--     "🖐🏾" -> Right HandWithFingersSplayedMediumDarkSkinTone
--     "🖐🏿" -> Right HandWithFingersSplayedDarkSkinTone
    "✋" -> Right RaisedHand
--     "✋🏻" -> Right RaisedHandLightSkinTone
--     "✋🏼" -> Right RaisedHandMediumLightSkinTone
--     "✋🏽" -> Right RaisedHandMediumSkinTone
--     "✋🏾" -> Right RaisedHandMediumDarkSkinTone
--     "✋🏿" -> Right RaisedHandDarkSkinTone
    "👌" -> Right OKHand
--     "👌🏻" -> Right OKHandLightSkinTone
--     "👌🏼" -> Right OKHandMediumLightSkinTone
--     "👌🏽" -> Right OKHandMediumSkinTone
--     "👌🏾" -> Right OKHandMediumDarkSkinTone
--     "👌🏿" -> Right OKHandDarkSkinTone
    "👍" -> Right ThumbsUp
--     "👍🏻" -> Right ThumbsUpLightSkinTone
--     "👍🏼" -> Right ThumbsUpMediumLightSkinTone
--     "👍🏽" -> Right ThumbsUpMediumSkinTone
--     "👍🏾" -> Right ThumbsUpMediumDarkSkinTone
--     "👍🏿" -> Right ThumbsUpDarkSkinTone
    "👎" -> Right ThumbsDown
--     "👎🏻" -> Right ThumbsDownLightSkinTone
--     "👎🏼" -> Right ThumbsDownMediumLightSkinTone
--     "👎🏽" -> Right ThumbsDownMediumSkinTone
--     "👎🏾" -> Right ThumbsDownMediumDarkSkinTone
--     "👎🏿" -> Right ThumbsDownDarkSkinTone
    "✊" -> Right RaisedFist
--     "✊🏻" -> Right RaisedFistLightSkinTone
--     "✊🏼" -> Right RaisedFistMediumLightSkinTone
--     "✊🏽" -> Right RaisedFistMediumSkinTone
--     "✊🏾" -> Right RaisedFistMediumDarkSkinTone
--     "✊🏿" -> Right RaisedFistDarkSkinTone
    "👊" -> Right OncomingFist
--     "👊🏻" -> Right OncomingFistLightSkinTone
--     "👊🏼" -> Right OncomingFistMediumLightSkinTone
--     "👊🏽" -> Right OncomingFistMediumSkinTone
--     "👊🏾" -> Right OncomingFistMediumDarkSkinTone
--     "👊🏿" -> Right OncomingFistDarkSkinTone
    "🤛" -> Right LeftFacingFist
--     "🤛🏻" -> Right LeftFacingFistLightSkinTone
--     "🤛🏼" -> Right LeftFacingFistMediumLightSkinTone
--     "🤛🏽" -> Right LeftFacingFistMediumSkinTone
--     "🤛🏾" -> Right LeftFacingFistMediumDarkSkinTone
--     "🤛🏿" -> Right LeftFacingFistDarkSkinTone
    "🤜" -> Right RightFacingFist
--     "🤜🏻" -> Right RightFacingFistLightSkinTone
--     "🤜🏼" -> Right RightFacingFistMediumLightSkinTone
--     "🤜🏽" -> Right RightFacingFistMediumSkinTone
--     "🤜🏾" -> Right RightFacingFistMediumDarkSkinTone
--     "🤜🏿" -> Right RightFacingFistDarkSkinTone
    "🤚" -> Right RaisedBackOfHand
--     "🤚🏻" -> Right RaisedBackOfHandLightSkinTone
--     "🤚🏼" -> Right RaisedBackOfHandMediumLightSkinTone
--     "🤚🏽" -> Right RaisedBackOfHandMediumSkinTone
--     "🤚🏾" -> Right RaisedBackOfHandMediumDarkSkinTone
--     "🤚🏿" -> Right RaisedBackOfHandDarkSkinTone
    "👋" -> Right WavingHand
--     "👋🏻" -> Right WavingHandLightSkinTone
--     "👋🏼" -> Right WavingHandMediumLightSkinTone
--     "👋🏽" -> Right WavingHandMediumSkinTone
--     "👋🏾" -> Right WavingHandMediumDarkSkinTone
--     "👋🏿" -> Right WavingHandDarkSkinTone
    "🤟" -> Right LoveYouGesture
--     "🤟🏻" -> Right LoveYouGestureLightSkinTone
--     "🤟🏼" -> Right LoveYouGestureMediumLightSkinTone
--     "🤟🏽" -> Right LoveYouGestureMediumSkinTone
--     "🤟🏾" -> Right LoveYouGestureMediumDarkSkinTone
--     "🤟🏿" -> Right LoveYouGestureDarkSkinTone
    "✍️" -> Right WritingHand
--     "✍🏻" -> Right WritingHandLightSkinTone
--     "✍🏼" -> Right WritingHandMediumLightSkinTone
--     "✍🏽" -> Right WritingHandMediumSkinTone
--     "✍🏾" -> Right WritingHandMediumDarkSkinTone
--     "✍🏿" -> Right WritingHandDarkSkinTone
    "👏" -> Right ClappingHands
--     "👏🏻" -> Right ClappingHandsLightSkinTone
--     "👏🏼" -> Right ClappingHandsMediumLightSkinTone
--     "👏🏽" -> Right ClappingHandsMediumSkinTone
--     "👏🏾" -> Right ClappingHandsMediumDarkSkinTone
--     "👏🏿" -> Right ClappingHandsDarkSkinTone
    "👐" -> Right OpenHands
--     "👐🏻" -> Right OpenHandsLightSkinTone
--     "👐🏼" -> Right OpenHandsMediumLightSkinTone
--     "👐🏽" -> Right OpenHandsMediumSkinTone
--     "👐🏾" -> Right OpenHandsMediumDarkSkinTone
--     "👐🏿" -> Right OpenHandsDarkSkinTone
    "🙌" -> Right RaisingHands
--     "🙌🏻" -> Right RaisingHandsLightSkinTone
--     "🙌🏼" -> Right RaisingHandsMediumLightSkinTone
--     "🙌🏽" -> Right RaisingHandsMediumSkinTone
--     "🙌🏾" -> Right RaisingHandsMediumDarkSkinTone
--     "🙌🏿" -> Right RaisingHandsDarkSkinTone
    "🤲" -> Right PalmsUpTogether
--     "🤲🏻" -> Right PalmsUpTogetherLightSkinTone
--     "🤲🏼" -> Right PalmsUpTogetherMediumLightSkinTone
--     "🤲🏽" -> Right PalmsUpTogetherMediumSkinTone
--     "🤲🏾" -> Right PalmsUpTogetherMediumDarkSkinTone
--     "🤲🏿" -> Right PalmsUpTogetherDarkSkinTone
    "🙏" -> Right FoldedHands
--     "🙏🏻" -> Right FoldedHandsLightSkinTone
--     "🙏🏼" -> Right FoldedHandsMediumLightSkinTone
--     "🙏🏽" -> Right FoldedHandsMediumSkinTone
--     "🙏🏾" -> Right FoldedHandsMediumDarkSkinTone
--     "🙏🏿" -> Right FoldedHandsDarkSkinTone
    "🤝" -> Right Handshake
    "💅" -> Right NailPolish
--     "💅🏻" -> Right NailPolishLightSkinTone
--     "💅🏼" -> Right NailPolishMediumLightSkinTone
--     "💅🏽" -> Right NailPolishMediumSkinTone
--     "💅🏾" -> Right NailPolishMediumDarkSkinTone
--     "💅🏿" -> Right NailPolishDarkSkinTone
    "👂" -> Right Ear
--     "👂🏻" -> Right EarLightSkinTone
--     "👂🏼" -> Right EarMediumLightSkinTone
--     "👂🏽" -> Right EarMediumSkinTone
--     "👂🏾" -> Right EarMediumDarkSkinTone
--     "👂🏿" -> Right EarDarkSkinTone
    "👃" -> Right Nose
--     "👃🏻" -> Right NoseLightSkinTone
--     "👃🏼" -> Right NoseMediumLightSkinTone
--     "👃🏽" -> Right NoseMediumSkinTone
--     "👃🏾" -> Right NoseMediumDarkSkinTone
--     "👃🏿" -> Right NoseDarkSkinTone
    "🦰" -> Right RedHaired
    "🦱" -> Right CurlyHaired
    "🦲" -> Right Bald
    "🦳" -> Right WhiteHaired
    "👣" -> Right Footprints
    "👀" -> Right Eyes
    "👁️" -> Right Eye
    "👁️‍🗨️" -> Right EyeInSpeechBubble
    "🧠" -> Right Brain
    "🦴" -> Right Bone
    "🦷" -> Right Tooth
    "👅" -> Right Tongue
    "👄" -> Right Mouth
    "💋" -> Right KissMark
    "💘" -> Right HeartWithArrow
    "❤️" -> Right RedHeart
    "💓" -> Right BeatingHeart
    "💔" -> Right BrokenHeart
    "💕" -> Right TwoHearts
    "💖" -> Right SparklingHeart
    "💗" -> Right GrowingHeart
    "💙" -> Right BlueHeart
    "💚" -> Right GreenHeart
    "💛" -> Right YellowHeart
    "🧡" -> Right OrangeHeart
    "💜" -> Right PurpleHeart
    "🖤" -> Right BlackHeart
    "💝" -> Right HeartWithRibbon
    "💞" -> Right RevolvingHearts
    "💟" -> Right HeartDecoration
    "❣️" -> Right HeavyHeartExclamation
    "💌" -> Right LoveLetter
    "💤" -> Right Zzz
    "💢" -> Right AngerSymbol
    "💣" -> Right Bomb
    "💥" -> Right Collision
    "💦" -> Right SweatDroplets
    "💨" -> Right DashingAway
    "💫" -> Right Dizzy
    "💬" -> Right SpeechBalloon
    "🗨️" -> Right LeftSpeechBubble
    "🗯️" -> Right RightAngerBubble
    "💭" -> Right ThoughtBalloon
    "🕳️" -> Right Hole
    "👓" -> Right Glasses
    "🕶️" -> Right Sunglasses
    "🥽" -> Right Goggles
    "🥼" -> Right LabCoat
    "👔" -> Right Necktie
    "👕" -> Right TShirt
    "👖" -> Right Jeans
    "🧣" -> Right Scarf
    "🧤" -> Right Gloves
    "🧥" -> Right Coat
    "🧦" -> Right Socks
    "👗" -> Right Dress
    "👘" -> Right Kimono
    "👙" -> Right Bikini
    "👚" -> Right WomansClothes
    "👛" -> Right Purse
    "👜" -> Right Handbag
    "👝" -> Right ClutchBag
    "🛍️" -> Right ShoppingBags
    "🎒" -> Right SchoolBackpack
    "👞" -> Right MansShoe
    "👟" -> Right RunningShoe
    "🥾" -> Right HikingBoot
    "🥿" -> Right WomansFlatShoe
    "👠" -> Right HighHeeledShoe
    "👡" -> Right WomansSandal
    "👢" -> Right WomansBoot
    "👑" -> Right Crown
    "👒" -> Right WomansHat
    "🎩" -> Right TopHat
    "🎓" -> Right GraduationCap
    "🧢" -> Right BilledCap
    "⛑️" -> Right RescueWorkersHelmet
    "📿" -> Right PrayerBeads
    "💄" -> Right Lipstick
    "💍" -> Right Ring
    "💎" -> Right GemStone
    "🐵" -> Right MonkeyFace
    "🐒" -> Right Monkey
    "🦍" -> Right Gorilla
    "🐶" -> Right DogFace
    "🐕" -> Right Dog
    "🐩" -> Right Poodle
    "🐺" -> Right WolfFace
    "🦊" -> Right FoxFace
    "🦝" -> Right Raccoon
    "🐱" -> Right CatFace
    "🐈" -> Right Cat
    "🦁" -> Right LionFace
    "🐯" -> Right TigerFace
    "🐅" -> Right Tiger
    "🐆" -> Right Leopard
    "🐴" -> Right HorseFace
    "🐎" -> Right Horse
    "🦄" -> Right UnicornFace
    "🦓" -> Right Zebra
    "🦌" -> Right Deer
    "🐮" -> Right CowFace
    "🐂" -> Right Ox
    "🐃" -> Right WaterBuffalo
    "🐄" -> Right Cow
    "🐷" -> Right PigFace
    "🐖" -> Right Pig
    "🐗" -> Right Boar
    "🐽" -> Right PigNose
    "🐏" -> Right Ram
    "🐑" -> Right Ewe
    "🐐" -> Right Goat
    "🐪" -> Right Camel
    "🐫" -> Right TwoHumpCamel
    "🦙" -> Right Llama
    "🦒" -> Right Giraffe
    "🐘" -> Right Elephant
    "🦏" -> Right Rhinoceros
    "🦛" -> Right Hippopotamus
    "🐭" -> Right MouseFace
    "🐁" -> Right Mouse
    "🐀" -> Right Rat
    "🐹" -> Right HamsterFace
    "🐰" -> Right RabbitFace
    "🐇" -> Right Rabbit
    "🐿️" -> Right Chipmunk
    "🦔" -> Right Hedgehog
    "🦇" -> Right Bat
    "🐻" -> Right BearFace
    "🐨" -> Right Koala
    "🐼" -> Right PandaFace
    "🦘" -> Right Kangaroo
    "🦡" -> Right Badger
    "🐾" -> Right PawPrints
    "🦃" -> Right Turkey
    "🐔" -> Right Chicken
    "🐓" -> Right Rooster
    "🐣" -> Right HatchingChick
    "🐤" -> Right BabyChick
    "🐥" -> Right FrontFacingBabyChick
    "🐦" -> Right Bird
    "🐧" -> Right Penguin
    "🕊️" -> Right Dove
    "🦅" -> Right Eagle
    "🦆" -> Right Duck
    "🦢" -> Right Swan
    "🦉" -> Right Owl
    "🦚" -> Right Peacock
    "🦜" -> Right Parrot
    "🐸" -> Right FrogFace
    "🐊" -> Right Crocodile
    "🐢" -> Right Turtle
    "🦎" -> Right Lizard
    "🐍" -> Right Snake
    "🐲" -> Right DragonFace
    "🐉" -> Right Dragon
    "🦕" -> Right Sauropod
    "🦖" -> Right TRex
    "🐳" -> Right SpoutingWhale
    "🐋" -> Right Whale
    "🐬" -> Right Dolphin
    "🐟" -> Right Fish
    "🐠" -> Right TropicalFish
    "🐡" -> Right Blowfish
    "🦈" -> Right Shark
    "🐙" -> Right Octopus
    "🐚" -> Right SpiralShell
    "🦀" -> Right Crab
    "🦞" -> Right Lobster
    "🦐" -> Right Shrimp
    "🦑" -> Right Squid
    "🐌" -> Right Snail
    "🦋" -> Right Butterfly
    "🐛" -> Right Bug
    "🐜" -> Right Ant
    "🐝" -> Right Honeybee
    "🐞" -> Right LadyBeetle
    "🦗" -> Right Cricket
    "🕷️" -> Right Spider
    "🕸️" -> Right SpiderWeb
    "🦂" -> Right Scorpion
    "🦟" -> Right Mosquito
    "🦠" -> Right Microbe
    "💐" -> Right Bouquet
    "🌸" -> Right CherryBlossom
    "💮" -> Right WhiteFlower
    "🏵️" -> Right Rosette
    "🌹" -> Right Rose
    "🥀" -> Right WiltedFlower
    "🌺" -> Right Hibiscus
    "🌻" -> Right Sunflower
    "🌼" -> Right Blossom
    "🌷" -> Right Tulip
    "🌱" -> Right Seedling
    "🌲" -> Right EvergreenTree
    "🌳" -> Right DeciduousTree
    "🌴" -> Right PalmTree
    "🌵" -> Right Cactus
    "🌾" -> Right SheafOfRice
    "🌿" -> Right Herb
    "☘️" -> Right Shamrock
    "🍀" -> Right FourLeafClover
    "🍁" -> Right MapleLeaf
    "🍂" -> Right FallenLeaf
    "🍃" -> Right LeafFlutteringInWind
    "🍇" -> Right Grapes
    "🍈" -> Right Melon
    "🍉" -> Right Watermelon
    "🍊" -> Right Tangerine
    "🍋" -> Right Lemon
    "🍌" -> Right Banana
    "🍍" -> Right Pineapple
    "🥭" -> Right Mango
    "🍎" -> Right RedApple
    "🍏" -> Right GreenApple
    "🍐" -> Right Pear
    "🍑" -> Right Peach
    "🍒" -> Right Cherries
    "🍓" -> Right Strawberry
    "🥝" -> Right KiwiFruit
    "🍅" -> Right Tomato
    "🥥" -> Right Coconut
    "🥑" -> Right Avocado
    "🍆" -> Right Eggplant
    "🥔" -> Right Potato
    "🥕" -> Right Carrot
    "🌽" -> Right EarOfCorn
    "🌶️" -> Right HotPepper
    "🥒" -> Right Cucumber
    "🥬" -> Right LeafyGreen
    "🥦" -> Right Broccoli
    "🍄" -> Right Mushroom
    "🥜" -> Right Peanuts
    "🌰" -> Right Chestnut
    "🍞" -> Right Bread
    "🥐" -> Right Croissant
    "🥖" -> Right BaguetteBread
    "🥨" -> Right Pretzel
    "🥯" -> Right Bagel
    "🥞" -> Right Pancakes
    "🧀" -> Right CheeseWedge
    "🍖" -> Right MeatOnBone
    "🍗" -> Right PoultryLeg
    "🥩" -> Right CutOfMeat
    "🥓" -> Right Bacon
    "🍔" -> Right Hamburger
    "🍟" -> Right FrenchFries
    "🍕" -> Right Pizza
    "🌭" -> Right HotDog
    "🥪" -> Right Sandwich
    "🌮" -> Right Taco
    "🌯" -> Right Burrito
    "🥙" -> Right StuffedFlatbread
    "🥚" -> Right Egg
    "🍳" -> Right Cooking
    "🥘" -> Right ShallowPanOfFood
    "🍲" -> Right PotOfFood
    "🥣" -> Right BowlWithSpoon
    "🥗" -> Right GreenSalad
    "🍿" -> Right Popcorn
    "🧂" -> Right Salt
    "🥫" -> Right CannedFood
    "🍱" -> Right BentoBox
    "🍘" -> Right RiceCracker
    "🍙" -> Right RiceBall
    "🍚" -> Right CookedRice
    "🍛" -> Right CurryRice
    "🍜" -> Right SteamingBowl
    "🍝" -> Right Spaghetti
    "🍠" -> Right RoastedSweetPotato
    "🍢" -> Right Oden
    "🍣" -> Right Sushi
    "🍤" -> Right FriedShrimp
    "🍥" -> Right FishCakeWithSwirl
    "🥮" -> Right MoonCake
    "🍡" -> Right Dango
    "🥟" -> Right Dumpling
    "🥠" -> Right FortuneCookie
    "🥡" -> Right TakeoutBox
    "🍦" -> Right SoftIceCream
    "🍧" -> Right ShavedIce
    "🍨" -> Right IceCream
    "🍩" -> Right Doughnut
    "🍪" -> Right Cookie
    "🎂" -> Right BirthdayCake
    "🍰" -> Right Shortcake
    "🧁" -> Right Cupcake
    "🥧" -> Right Pie
    "🍫" -> Right ChocolateBar
    "🍬" -> Right Candy
    "🍭" -> Right Lollipop
    "🍮" -> Right Custard
    "🍯" -> Right HoneyPot
    "🍼" -> Right BabyBottle
    "🥛" -> Right GlassOfMilk
    "☕" -> Right HotBeverage
    "🍵" -> Right TeacupWithoutHandle
    "🍶" -> Right Sake
    "🍾" -> Right BottleWithPoppingCork
    "🍷" -> Right WineGlass
    "🍸" -> Right CocktailGlass
    "🍹" -> Right TropicalDrink
    "🍺" -> Right BeerMug
    "🍻" -> Right ClinkingBeerMugs
    "🥂" -> Right ClinkingGlasses
    "🥃" -> Right TumblerGlass
    "🥤" -> Right CupWithStraw
    "🥢" -> Right Chopsticks
    "🍽️" -> Right ForkAndKnifeWithPlate
    "🍴" -> Right ForkAndKnife
    "🥄" -> Right Spoon
    "🔪" -> Right KitchenKnife
    "🏺" -> Right Amphora
    "🌍" -> Right GlobeShowingEuropeAfrica
    "🌎" -> Right GlobeShowingAmericas
    "🌏" -> Right GlobeShowingAsiaAustralia
    "🌐" -> Right GlobeWithMeridians
    "🗺️" -> Right WorldMap
    "🗾" -> Right MapOfJapan
    "🧭" -> Right Compass
    "🏔️" -> Right SnowCappedMountain
    "⛰️" -> Right Mountain
    "🌋" -> Right Volcano
    "🗻" -> Right MountFuji
    "🏕️" -> Right Camping
    "🏖️" -> Right BeachWithUmbrella
    "🏜️" -> Right Desert
    "🏝️" -> Right DesertIsland
    "🏞️" -> Right NationalPark
    "🏟️" -> Right Stadium
    "🏛️" -> Right ClassicalBuilding
    "🏗️" -> Right BuildingConstruction
    "🧱" -> Right Bricks
    "🏘️" -> Right Houses
    "🏚️" -> Right DerelictHouse
    "🏠" -> Right House
    "🏡" -> Right HouseWithGarden
    "🏢" -> Right OfficeBuilding
    "🏣" -> Right JapanesePostOffice
    "🏤" -> Right PostOffice
    "🏥" -> Right Hospital
    "🏦" -> Right Bank
    "🏨" -> Right Hotel
    "🏩" -> Right LoveHotel
    "🏪" -> Right ConvenienceStore
    "🏫" -> Right School
    "🏬" -> Right DepartmentStore
    "🏭" -> Right Factory
    "🏯" -> Right JapaneseCastle
    "🏰" -> Right Castle
    "💒" -> Right Wedding
    "🗼" -> Right TokyoTower
    "🗽" -> Right StatueOfLiberty
    "⛪" -> Right Church
    "🕌" -> Right Mosque
    "🕍" -> Right Synagogue
    "⛩️" -> Right ShintoShrine
    "🕋" -> Right Kaaba
    "⛲" -> Right Fountain
    "⛺" -> Right Tent
    "🌁" -> Right Foggy
    "🌃" -> Right NightWithStars
    "🏙️" -> Right Cityscape
    "🌄" -> Right SunriseOverMountains
    "🌅" -> Right Sunrise
    "🌆" -> Right CityscapeAtDusk
    "🌇" -> Right Sunset
    "🌉" -> Right BridgeAtNight
    "♨️" -> Right HotSprings
    "🌌" -> Right MilkyWay
    "🎠" -> Right CarouselHorse
    "🎡" -> Right FerrisWheel
    "🎢" -> Right RollerCoaster
    "💈" -> Right BarberPole
    "🎪" -> Right CircusTent
    "🚂" -> Right Locomotive
    "🚃" -> Right RailwayCar
    "🚄" -> Right HighSpeedTrain
    "🚅" -> Right BulletTrain
    "🚆" -> Right Train
    "🚇" -> Right Metro
    "🚈" -> Right LightRail
    "🚉" -> Right Station
    "🚊" -> Right Tram
    "🚝" -> Right Monorail
    "🚞" -> Right MountainRailway
    "🚋" -> Right TramCar
    "🚌" -> Right Bus
    "🚍" -> Right OncomingBus
    "🚎" -> Right Trolleybus
    "🚐" -> Right Minibus
    "🚑" -> Right Ambulance
    "🚒" -> Right FireEngine
    "🚓" -> Right PoliceCar
    "🚔" -> Right OncomingPoliceCar
    "🚕" -> Right Taxi
    "🚖" -> Right OncomingTaxi
    "🚗" -> Right Automobile
    "🚘" -> Right OncomingAutomobile
    "🚙" -> Right SportUtilityVehicle
    "🚚" -> Right DeliveryTruck
    "🚛" -> Right ArticulatedLorry
    "🚜" -> Right Tractor
    "🚲" -> Right Bicycle
    "🛴" -> Right KickScooter
    "🛹" -> Right Skateboard
    "🛵" -> Right MotorScooter
    "🚏" -> Right BusStop
    "🛣️" -> Right Motorway
    "🛤️" -> Right RailwayTrack
    "🛢️" -> Right OilDrum
    "⛽" -> Right FuelPump
    "🚨" -> Right PoliceCarLight
    "🚥" -> Right HorizontalTrafficLight
    "🚦" -> Right VerticalTrafficLight
    "🛑" -> Right StopSign
    "🚧" -> Right Construction
    "⚓" -> Right Anchor
    "⛵" -> Right Sailboat
    "🛶" -> Right Canoe
    "🚤" -> Right Speedboat
    "🛳️" -> Right PassengerShip
    "⛴️" -> Right Ferry
    "🛥️" -> Right MotorBoat
    "🚢" -> Right Ship
    "✈️" -> Right Airplane
    "🛩️" -> Right SmallAirplane
    "🛫" -> Right AirplaneDeparture
    "🛬" -> Right AirplaneArrival
    "💺" -> Right Seat
    "🚁" -> Right Helicopter
    "🚟" -> Right SuspensionRailway
    "🚠" -> Right MountainCableway
    "🚡" -> Right AerialTramway
    "🛰️" -> Right Satellite
    "🚀" -> Right Rocket
    "🛸" -> Right FlyingSaucer
    "🛎️" -> Right BellhopBell
    "🧳" -> Right Luggage
    "⌛" -> Right HourglassDone
    "⏳" -> Right HourglassNotDone
    "⌚" -> Right Watch
    "⏰" -> Right AlarmClock
    "⏱️" -> Right Stopwatch
    "⏲️" -> Right TimerClock
    "🕰️" -> Right MantelpieceClock
    "🕛" -> Right TwelveOclock
    "🕧" -> Right TwelveThirty
    "🕐" -> Right OneOclock
    "🕜" -> Right OneThirty
    "🕑" -> Right TwoOclock
    "🕝" -> Right TwoThirty
    "🕒" -> Right ThreeOclock
    "🕞" -> Right ThreeThirty
    "🕓" -> Right FourOclock
    "🕟" -> Right FourThirty
    "🕔" -> Right FiveOclock
    "🕠" -> Right FiveThirty
    "🕕" -> Right SixOclock
    "🕡" -> Right SixThirty
    "🕖" -> Right SevenOclock
    "🕢" -> Right SevenThirty
    "🕗" -> Right EightOclock
    "🕣" -> Right EightThirty
    "🕘" -> Right NineOclock
    "🕤" -> Right NineThirty
    "🕙" -> Right TenOclock
    "🕥" -> Right TenThirty
    "🕚" -> Right ElevenOclock
    "🕦" -> Right ElevenThirty
    "🌑" -> Right NewMoon
    "🌒" -> Right WaxingCrescentMoon
    "🌓" -> Right FirstQuarterMoon
    "🌔" -> Right WaxingGibbousMoon
    "🌕" -> Right FullMoon
    "🌖" -> Right WaningGibbousMoon
    "🌗" -> Right LastQuarterMoon
    "🌘" -> Right WaningCrescentMoon
    "🌙" -> Right CrescentMoon
    "🌚" -> Right NewMoonFace
    "🌛" -> Right FirstQuarterMoonFace
    "🌜" -> Right LastQuarterMoonFace
    "🌡️" -> Right Thermometer
    "☀️" -> Right Sun
    "🌝" -> Right FullMoonFace
    "🌞" -> Right SunWithFace
    "⭐" -> Right Star
    "🌟" -> Right GlowingStar
    "🌠" -> Right ShootingStar
    "☁️" -> Right Cloud
    "⛅" -> Right SunBehindCloud
    "⛈️" -> Right CloudWithLightningAndRain
    "🌤️" -> Right SunBehindSmallCloud
    "🌥️" -> Right SunBehindLargeCloud
    "🌦️" -> Right SunBehindRainCloud
    "🌧️" -> Right CloudWithRain
    "🌨️" -> Right CloudWithSnow
    "🌩️" -> Right CloudWithLightning
    "🌪️" -> Right Tornado
    "🌫️" -> Right Fog
    "🌬️" -> Right WindFace
    "🌀" -> Right Cyclone
    "🌈" -> Right Rainbow
    "🌂" -> Right ClosedUmbrella
    "☂️" -> Right Umbrella
    "☔" -> Right UmbrellaWithRainDrops
    "⛱️" -> Right UmbrellaOnGround
    "⚡" -> Right HighVoltage
    "❄️" -> Right Snowflake
    "☃️" -> Right Snowman
    "⛄" -> Right SnowmanWithoutSnow
    "☄️" -> Right Comet
    "🔥" -> Right Fire
    "💧" -> Right Droplet
    "🌊" -> Right WaterWave
    "🎃" -> Right JackOLantern
    "🎄" -> Right ChristmasTree
    "🎆" -> Right Fireworks
    "🎇" -> Right Sparkler
    "🧨" -> Right Firecracker
    "✨" -> Right Sparkles
    "🎈" -> Right Balloon
    "🎉" -> Right PartyPopper
    "🎊" -> Right ConfettiBall
    "🎋" -> Right TanabataTree
    "🎍" -> Right PineDecoration
    "🎎" -> Right JapaneseDolls
    "🎏" -> Right CarpStreamer
    "🎐" -> Right WindChime
    "🎑" -> Right MoonViewingCeremony
    "🧧" -> Right RedEnvelope
    "🎀" -> Right Ribbon
    "🎁" -> Right WrappedGift
    "🎗️" -> Right ReminderRibbon
    "🎟️" -> Right AdmissionTickets
    "🎫" -> Right Ticket
    "🎖️" -> Right MilitaryMedal
    "🏆" -> Right Trophy
    "🏅" -> Right SportsMedal
    "🥇" -> Right FirstPlaceMedal
    "🥈" -> Right SecondPlaceMedal
    "🥉" -> Right ThirdPlaceMedal
    "⚽" -> Right SoccerBall
    "⚾" -> Right Baseball
    "🥎" -> Right Softball
    "🏀" -> Right Basketball
    "🏐" -> Right Volleyball
    "🏈" -> Right AmericanFootball
    "🏉" -> Right RugbyFootball
    "🎾" -> Right Tennis
    "🥏" -> Right FlyingDisc
    "🎳" -> Right Bowling
    "🏏" -> Right CricketGame
    "🏑" -> Right FieldHockey
    "🏒" -> Right IceHockey
    "🥍" -> Right Lacrosse
    "🏓" -> Right PingPong
    "🏸" -> Right Badminton
    "🥊" -> Right BoxingGlove
    "🥋" -> Right MartialArtsUniform
    "🥅" -> Right GoalNet
    "⛳" -> Right FlagInHole
    "⛸️" -> Right IceSkate
    "🎣" -> Right FishingPole
    "🎽" -> Right RunningShirt
    "🎿" -> Right Skis
    "🛷" -> Right Sled
    "🥌" -> Right CurlingStone
    "🎯" -> Right DirectHit
    "🎱" -> Right Pool8Ball
    "🔮" -> Right CrystalBall
    "🧿" -> Right NazarAmulet
    "🎮" -> Right VideoGame
    "🕹️" -> Right Joystick
    "🎰" -> Right SlotMachine
    "🎲" -> Right GameDie
    "🧩" -> Right Jigsaw
    "🧸" -> Right TeddyBear
    "♠️" -> Right SpadeSuit
    "♥️" -> Right HeartSuit
    "♦️" -> Right DiamondSuit
    "♣️" -> Right ClubSuit
    "♟️" -> Right ChessPawn
    "🃏" -> Right Joker
    "🀄" -> Right MahjongRedDragon
    "🎴" -> Right FlowerPlayingCards
    "🎭" -> Right PerformingArts
    "🖼️" -> Right FramedPicture
    "🎨" -> Right ArtistPalette
    "🧵" -> Right Thread
    "🧶" -> Right Yarn
    "🔇" -> Right MutedSpeaker
    "🔈" -> Right SpeakerLowVolume
    "🔉" -> Right SpeakerMediumVolume
    "🔊" -> Right SpeakerHighVolume
    "📢" -> Right Loudspeaker
    "📣" -> Right Megaphone
    "📯" -> Right PostalHorn
    "🔔" -> Right Bell
    "🔕" -> Right BellWithSlash
    "🎼" -> Right MusicalScore
    "🎵" -> Right MusicalNote
    "🎶" -> Right MusicalNotes
    "🎙️" -> Right StudioMicrophone
    "🎚️" -> Right LevelSlider
    "🎛️" -> Right ControlKnobs
    "🎤" -> Right Microphone
    "🎧" -> Right Headphone
    "📻" -> Right Radio
    "🎷" -> Right Saxophone
    "🎸" -> Right Guitar
    "🎹" -> Right MusicalKeyboard
    "🎺" -> Right Trumpet
    "🎻" -> Right Violin
    "🥁" -> Right Drum
    "📱" -> Right MobilePhone
    "📲" -> Right MobilePhoneWithArrow
    "☎️" -> Right Telephone
    "📞" -> Right TelephoneReceiver
    "📟" -> Right Pager
    "📠" -> Right FaxMachine
    "🔋" -> Right Battery
    "🔌" -> Right ElectricPlug
    "💻" -> Right LaptopComputer
    "🖥️" -> Right DesktopComputer
    "🖨️" -> Right Printer
    "⌨️" -> Right Keyboard
    "🖱️" -> Right ComputerMouse
    "🖲️" -> Right Trackball
    "💽" -> Right ComputerDisk
    "💾" -> Right FloppyDisk
    "💿" -> Right OpticalDisk
    "📀" -> Right Dvd
    "🧮" -> Right Abacus
    "🎥" -> Right MovieCamera
    "🎞️" -> Right FilmFrames
    "📽️" -> Right FilmProjector
    "🎬" -> Right ClapperBoard
    "📺" -> Right Television
    "📷" -> Right Camera
    "📸" -> Right CameraWithFlash
    "📹" -> Right VideoCamera
    "📼" -> Right Videocassette
    "🔍" -> Right MagnifyingGlassTiltedLeft
    "🔎" -> Right MagnifyingGlassTiltedRight
    "🕯️" -> Right Candle
    "💡" -> Right LightBulb
    "🔦" -> Right Flashlight
    "🏮" -> Right RedPaperLantern
    "📔" -> Right NotebookWithDecorativeCover
    "📕" -> Right ClosedBook
    "📖" -> Right OpenBook
    "📗" -> Right GreenBook
    "📘" -> Right BlueBook
    "📙" -> Right OrangeBook
    "📚" -> Right Books
    "📓" -> Right Notebook
    "📒" -> Right Ledger
    "📃" -> Right PageWithCurl
    "📜" -> Right Scroll
    "📄" -> Right PageFacingUp
    "📰" -> Right Newspaper
    "🗞️" -> Right RolledUpNewspaper
    "📑" -> Right BookmarkTabs
    "🔖" -> Right Bookmark
    "🏷️" -> Right Label
    "💰" -> Right MoneyBag
    "💴" -> Right YenBanknote
    "💵" -> Right DollarBanknote
    "💶" -> Right EuroBanknote
    "💷" -> Right PoundBanknote
    "💸" -> Right MoneyWithWings
    "💳" -> Right CreditCard
    "🧾" -> Right Receipt
    "💹" -> Right ChartIncreasingWithYen
    "💱" -> Right CurrencyExchange
    "💲" -> Right HeavyDollarSign
    "✉️" -> Right Envelope
    "📧" -> Right EMail
    "📨" -> Right IncomingEnvelope
    "📩" -> Right EnvelopeWithArrow
    "📤" -> Right OutboxTray
    "📥" -> Right InboxTray
    "📦" -> Right Package
    "📫" -> Right ClosedMailboxWithRaisedFlag
    "📪" -> Right ClosedMailboxWithLoweredFlag
    "📬" -> Right OpenMailboxWithRaisedFlag
    "📭" -> Right OpenMailboxWithLoweredFlag
    "📮" -> Right Postbox
    "🗳️" -> Right BallotBoxWithBallot
    "✏️" -> Right Pencil
    "✒️" -> Right BlackNib
    "🖋️" -> Right FountainPen
    "🖊️" -> Right Pen
    "🖌️" -> Right Paintbrush
    "🖍️" -> Right Crayon
    "📝" -> Right Memo
    "💼" -> Right Briefcase
    "📁" -> Right FileFolder
    "📂" -> Right OpenFileFolder
    "🗂️" -> Right CardIndexDividers
    "📅" -> Right Calendar
    "📆" -> Right TearOffCalendar
    "🗒️" -> Right SpiralNotepad
    "🗓️" -> Right SpiralCalendar
    "📇" -> Right CardIndex
    "📈" -> Right ChartIncreasing
    "📉" -> Right ChartDecreasing
    "📊" -> Right BarChart
    "📋" -> Right Clipboard
    "📌" -> Right Pushpin
    "📍" -> Right RoundPushpin
    "📎" -> Right Paperclip
    "🖇️" -> Right LinkedPaperclips
    "📏" -> Right StraightRuler
    "📐" -> Right TriangularRuler
    "✂️" -> Right Scissors
    "🗃️" -> Right CardFileBox
    "🗄️" -> Right FileCabinet
    "🗑️" -> Right Wastebasket
    "🔒" -> Right Locked
    "🔓" -> Right Unlocked
    "🔏" -> Right LockedWithPen
    "🔐" -> Right LockedWithKey
    "🔑" -> Right Key
    "🗝️" -> Right OldKey
    "🔨" -> Right Hammer
    "⛏️" -> Right Pick
    "⚒️" -> Right HammerAndPick
    "🛠️" -> Right HammerAndWrench
    "🗡️" -> Right Dagger
    "⚔️" -> Right CrossedSwords
    "🔫" -> Right Pistol
    "🏹" -> Right BowAndArrow
    "🛡️" -> Right Shield
    "🔧" -> Right Wrench
    "🔩" -> Right NutAndBolt
    "⚙️" -> Right Gear
    "🗜️" -> Right Clamp
    "⚖️" -> Right BalanceScale
    "🔗" -> Right Link
    "⛓️" -> Right Chains
    "🧰" -> Right Toolbox
    "🧲" -> Right Magnet
    "⚗️" -> Right Alembic
    "🧪" -> Right TestTube
    "🧫" -> Right PetriDish
    "🧬" -> Right Dna
    "🔬" -> Right Microscope
    "🔭" -> Right Telescope
    "📡" -> Right SatelliteAntenna
    "💉" -> Right Syringe
    "💊" -> Right Pill
    "🚪" -> Right Door
    "🛏️" -> Right Bed
    "🛋️" -> Right CouchAndLamp
    "🚽" -> Right Toilet
    "🚿" -> Right Shower
    "🛁" -> Right Bathtub
    "🧴" -> Right LotionBottle
    "🧷" -> Right SafetyPin
    "🧹" -> Right Broom
    "🧺" -> Right Basket
    "🧻" -> Right RollOfPaper
    "🧼" -> Right Soap
    "🧽" -> Right Sponge
    "🧯" -> Right FireExtinguisher
    "🛒" -> Right ShoppingCart
    "🚬" -> Right Cigarette
    "⚰️" -> Right Coffin
    "⚱️" -> Right FuneralUrn
    "🗿" -> Right Moai
    "🏧" -> Right ATMSign
    "🚮" -> Right LitterInBinSign
    "🚰" -> Right PotableWater
    "♿" -> Right WheelchairSymbol
    "🚹" -> Right MensRoom
    "🚺" -> Right WomensRoom
    "🚻" -> Right Restroom
    "🚼" -> Right BabySymbol
    "🚾" -> Right WaterCloset
    "🛂" -> Right PassportControl
    "🛃" -> Right Customs
    "🛄" -> Right BaggageClaim
    "🛅" -> Right LeftLuggage
    "⚠️" -> Right Warning
    "🚸" -> Right ChildrenCrossing
    "⛔" -> Right NoEntry
    "🚫" -> Right Prohibited
    "🚳" -> Right NoBicycles
    "🚭" -> Right NoSmoking
    "🚯" -> Right NoLittering
    "🚱" -> Right NonPotableWater
    "🚷" -> Right NoPedestrians
    "📵" -> Right NoMobilePhones
    "🔞" -> Right NoOneUnderEighteen
    "☢️" -> Right Radioactive
    "☣️" -> Right Biohazard
    "⬆️" -> Right UpArrow
    "↗️" -> Right UpRightArrow
    "➡️" -> Right RightArrow
    "↘️" -> Right DownRightArrow
    "⬇️" -> Right DownArrow
    "↙️" -> Right DownLeftArrow
    "⬅️" -> Right LeftArrow
    "↖️" -> Right UpLeftArrow
    "↕️" -> Right UpDownArrow
    "↔️" -> Right LeftRightArrow
    "↩️" -> Right RightArrowCurvingLeft
    "↪️" -> Right LeftArrowCurvingRight
    "⤴️" -> Right RightArrowCurvingUp
    "⤵️" -> Right RightArrowCurvingDown
    "🔃" -> Right ClockwiseVerticalArrows
    "🔄" -> Right CounterclockwiseArrowsButton
    "🔙" -> Right BACKArrow
    "🔚" -> Right ENDArrow
    "🔛" -> Right ONArrow
    "🔜" -> Right SOONArrow
    "🔝" -> Right TOPArrow
    "🛐" -> Right PlaceOfWorship
    "⚛️" -> Right AtomSymbol
    "🕉️" -> Right Om
    "✡️" -> Right StarOfDavid
    "☸️" -> Right WheelOfDharma
    "☯️" -> Right YinYang
    "✝️" -> Right LatinCross
    "☦️" -> Right OrthodoxCross
    "☪️" -> Right StarAndCrescent
    "☮️" -> Right PeaceSymbol
    "🕎" -> Right Menorah
    "🔯" -> Right DottedSixPointedStar
    "♈" -> Right Aries
    "♉" -> Right Taurus
    "♊" -> Right Gemini
    "♋" -> Right Cancer
    "♌" -> Right Leo
    "♍" -> Right Virgo
    "♎" -> Right Libra
    "♏" -> Right Scorpio
    "♐" -> Right Sagittarius
    "♑" -> Right Capricorn
    "♒" -> Right Aquarius
    "♓" -> Right Pisces
    "⛎" -> Right Ophiuchus
    "🔀" -> Right ShuffleTracksButton
    "🔁" -> Right RepeatButton
    "🔂" -> Right RepeatSingleButton
    "▶️" -> Right PlayButton
    "⏩" -> Right FastForwardButton
    "⏭️" -> Right NextTrackButton
    "⏯️" -> Right PlayOrPauseButton
    "◀️" -> Right ReverseButton
    "⏪" -> Right FastReverseButton
    "⏮️" -> Right LastTrackButton
    "🔼" -> Right UpwardsButton
    "⏫" -> Right FastUpButton
    "🔽" -> Right DownwardsButton
    "⏬" -> Right FastDownButton
    "⏸️" -> Right PauseButton
    "⏹️" -> Right StopButton
    "⏺️" -> Right RecordButton
    "⏏️" -> Right EjectButton
    "🎦" -> Right Cinema
    "🔅" -> Right DimButton
    "🔆" -> Right BrightButton
    "📶" -> Right AntennaBars
    "📳" -> Right VibrationMode
    "📴" -> Right MobilePhoneOff
    "♀️" -> Right FemaleSign
    "♂️" -> Right MaleSign
    "⚕️" -> Right MedicalSymbol
    "♾️" -> Right Infinity
    "♻️" -> Right RecyclingSymbol
    "⚜️" -> Right FleurDeLis
    "🔱" -> Right TridentEmblem
    "📛" -> Right NameBadge
    "🔰" -> Right JapaneseSymbolForBeginner
    "⭕" -> Right HeavyLargeCircle
    "✅" -> Right WhiteHeavyCheckMark
    "☑️" -> Right BallotBoxWithCheck
    "✔️" -> Right HeavyCheckMark
    "✖️" -> Right HeavyMultiplicationX
    "❌" -> Right CrossMark
    "❎" -> Right CrossMarkButton
    "➕" -> Right HeavyPlusSign
    "➖" -> Right HeavyMinusSign
    "➗" -> Right HeavyDivisionSign
    "➰" -> Right CurlyLoop
    "➿" -> Right DoubleCurlyLoop
    "〽️" -> Right PartAlternationMark
    "✳️" -> Right EightSpokedAsterisk
    "✴️" -> Right EightPointedStar
    "❇️" -> Right Sparkle
    "‼️" -> Right DoubleExclamationMark
    "⁉️" -> Right ExclamationQuestionMark
    "❓" -> Right QuestionMark
    "❔" -> Right WhiteQuestionMark
    "❕" -> Right WhiteExclamationMark
    "❗" -> Right ExclamationMark
    "〰️" -> Right WavyDash
    "©️" -> Right Copyright
    "®️" -> Right Registered
    "™️" -> Right TradeMark
    "#️⃣" -> Right KeycapSharp
    "*️⃣" -> Right KeycapAsterisk
    "0️⃣" -> Right Keycap0
    "1️⃣" -> Right Keycap1
    "2️⃣" -> Right Keycap2
    "3️⃣" -> Right Keycap3
    "4️⃣" -> Right Keycap4
    "5️⃣" -> Right Keycap5
    "6️⃣" -> Right Keycap6
    "7️⃣" -> Right Keycap7
    "8️⃣" -> Right Keycap8
    "9️⃣" -> Right Keycap9
    "🔟" -> Right Keycap10
    "💯" -> Right HundredPoints
    "🔠" -> Right InputLatinUppercase
    "🔡" -> Right InputLatinLowercase
    "🔢" -> Right InputNumbers
    "🔣" -> Right InputSymbols
    "🔤" -> Right InputLatinLetters
    "🅰️" -> Right AButtonBloodType
    "🆎" -> Right ABButtonBloodType
    "🅱️" -> Right BButtonBloodType
    "🆑" -> Right CLButton
    "🆒" -> Right COOLButton
    "🆓" -> Right FREEButton
    "ℹ️" -> Right Information
    "🆔" -> Right IDButton
    "Ⓜ️" -> Right CircledM
    "🆕" -> Right NEWButton
    "🆖" -> Right NGButton
    "🅾️" -> Right OButtonBloodType
    "🆗" -> Right OKButton
    "🅿️" -> Right PButton
    "🆘" -> Right SOSButton
    "🆙" -> Right UPButton
    "🆚" -> Right VSButton
    "🈁" -> Right JapaneseHereButton
    "🈂️" -> Right JapaneseServiceChargeButton
    "🈷️" -> Right JapaneseMonthlyAmountButton
    "🈶" -> Right JapaneseNotFreeOfChargeButton
    "🈯" -> Right JapaneseReservedButton
    "🉐" -> Right JapaneseBargainButton
    "🈹" -> Right JapaneseDiscountButton
    "🈚" -> Right JapaneseFreeOfChargeButton
    "🈲" -> Right JapaneseProhibitedButton
    "🉑" -> Right JapaneseAcceptableButton
    "🈸" -> Right JapaneseApplicationButton
    "🈴" -> Right JapanesePassingGradeButton
    "🈳" -> Right JapaneseVacancyButton
    "㊗️" -> Right JapaneseCongratulationsButton
    "㊙️" -> Right JapaneseSecretButton
    "🈺" -> Right JapaneseOpenForBusinessButton
    "🈵" -> Right JapaneseNoVacancyButton
    "▪️" -> Right BlackSmallSquare
    "▫️" -> Right WhiteSmallSquare
    "◻️" -> Right WhiteMediumSquare
    "◼️" -> Right BlackMediumSquare
    "◽" -> Right WhiteMediumSmallSquare
    "◾" -> Right BlackMediumSmallSquare
    "⬛" -> Right BlackLargeSquare
    "⬜" -> Right WhiteLargeSquare
    "🔶" -> Right LargeOrangeDiamond
    "🔷" -> Right LargeBlueDiamond
    "🔸" -> Right SmallOrangeDiamond
    "🔹" -> Right SmallBlueDiamond
    "🔺" -> Right RedTrianglePointedUp
    "🔻" -> Right RedTrianglePointedDown
    "💠" -> Right DiamondWithADot
    "🔘" -> Right RadioButton
    "🔲" -> Right BlackSquareButton
    "🔳" -> Right WhiteSquareButton
    "⚪" -> Right WhiteCircle
    "⚫" -> Right BlackCircle
    "🔴" -> Right RedCircle
    "🔵" -> Right BlueCircle
    "🏁" -> Right ChequeredFlag
    "🚩" -> Right TriangularFlag
    "🎌" -> Right CrossedFlags
    "🏴" -> Right BlackFlag
    "🏳️" -> Right WhiteFlag
    "🏳️‍🌈" -> Right RainbowFlag
    "🏴‍☠️" -> Right PirateFlag
    -- "🇦🇨" -> Right AscensionIsland
    -- "🇦🇩" -> Right Andorra
    -- "🇦🇪" -> Right UnitedArabEmirates
    -- "🇦🇫" -> Right Afghanistan
    -- "🇦🇬" -> Right AntiguaAndBarbuda
    -- "🇦🇮" -> Right Anguilla
    -- "🇦🇱" -> Right Albania
    -- "🇦🇲" -> Right Armenia
    -- "🇦🇴" -> Right Angola
    -- "🇦🇶" -> Right Antarctica
    -- "🇦🇷" -> Right Argentina
    -- "🇦🇸" -> Right AmericanSamoa
    -- "🇦🇹" -> Right Austria
    -- "🇦🇺" -> Right Australia
    -- "🇦🇼" -> Right Aruba
    -- "🇦🇽" -> Right ÅlandIslands
    -- "🇦🇿" -> Right Azerbaijan
    -- "🇧🇦" -> Right BosniaAndHerzegovina
    -- "🇧🇧" -> Right Barbados
    -- "🇧🇩" -> Right Bangladesh
    -- "🇧🇪" -> Right Belgium
    -- "🇧🇫" -> Right BurkinaFaso
    -- "🇧🇬" -> Right Bulgaria
    -- "🇧🇭" -> Right Bahrain
    -- "🇧🇮" -> Right Burundi
    -- "🇧🇯" -> Right Benin
    -- "🇧🇱" -> Right StBarthélemy
    -- "🇧🇲" -> Right Bermuda
    -- "🇧🇳" -> Right Brunei
    -- "🇧🇴" -> Right Bolivia
    -- "🇧🇶" -> Right CaribbeanNetherlands
    -- "🇧🇷" -> Right Brazil
    -- "🇧🇸" -> Right Bahamas
    -- "🇧🇹" -> Right Bhutan
    -- "🇧🇻" -> Right BouvetIsland
    -- "🇧🇼" -> Right Botswana
    -- "🇧🇾" -> Right Belarus
    -- "🇧🇿" -> Right Belize
    -- "🇨🇦" -> Right Canada
    -- "🇨🇨" -> Right CocosKeelingIslands
    -- "🇨🇩" -> Right CongoKinshasa
    -- "🇨🇫" -> Right CentralAfricanRepublic
    -- "🇨🇬" -> Right CongoBrazzaville
    -- "🇨🇭" -> Right Switzerland
    -- "🇨🇮" -> Right CôteDIvoire
    -- "🇨🇰" -> Right CookIslands
    -- "🇨🇱" -> Right Chile
    -- "🇨🇲" -> Right Cameroon
    -- "🇨🇳" -> Right China
    -- "🇨🇴" -> Right Colombia
    -- "🇨🇵" -> Right ClippertonIsland
    -- "🇨🇷" -> Right CostaRica
    -- "🇨🇺" -> Right Cuba
    -- "🇨🇻" -> Right CapeVerde
    -- "🇨🇼" -> Right Curaçao
    -- "🇨🇽" -> Right ChristmasIsland
    -- "🇨🇾" -> Right Cyprus
    -- "🇨🇿" -> Right Czechia
    -- "🇩🇪" -> Right Germany
    -- "🇩🇬" -> Right DiegoGarcia
    -- "🇩🇯" -> Right Djibouti
    -- "🇩🇰" -> Right Denmark
    -- "🇩🇲" -> Right Dominica
    -- "🇩🇴" -> Right DominicanRepublic
    -- "🇩🇿" -> Right Algeria
    -- "🇪🇦" -> Right CeutaAndMelilla
    -- "🇪🇨" -> Right Ecuador
    -- "🇪🇪" -> Right Estonia
    -- "🇪🇬" -> Right Egypt
    -- "🇪🇭" -> Right WesternSahara
    -- "🇪🇷" -> Right Eritrea
    -- "🇪🇸" -> Right Spain
    -- "🇪🇹" -> Right Ethiopia
    -- "🇪🇺" -> Right EuropeanUnion
    -- "🇫🇮" -> Right Finland
    -- "🇫🇯" -> Right Fiji
    -- "🇫🇰" -> Right FalklandIslands
    -- "🇫🇲" -> Right Micronesia
    -- "🇫🇴" -> Right FaroeIslands
    -- "🇫🇷" -> Right France
    -- "🇬🇦" -> Right Gabon
    -- "🇬🇧" -> Right UnitedKingdom
    -- "🇬🇩" -> Right Grenada
    -- "🇬🇪" -> Right Georgia
    -- "🇬🇫" -> Right FrenchGuiana
    -- "🇬🇬" -> Right Guernsey
    -- "🇬🇭" -> Right Ghana
    -- "🇬🇮" -> Right Gibraltar
    -- "🇬🇱" -> Right Greenland
    -- "🇬🇲" -> Right Gambia
    -- "🇬🇳" -> Right Guinea
    -- "🇬🇵" -> Right Guadeloupe
    -- "🇬🇶" -> Right EquatorialGuinea
    -- "🇬🇷" -> Right Greece
    -- "🇬🇸" -> Right SouthGeorgiaAndSouthSandwichIslands
    -- "🇬🇹" -> Right Guatemala
    -- "🇬🇺" -> Right Guam
    -- "🇬🇼" -> Right GuineaBissau
    -- "🇬🇾" -> Right Guyana
    -- "🇭🇰" -> Right HongKongSARChina
    -- "🇭🇲" -> Right HeardAndMcDonaldIslands
    -- "🇭🇳" -> Right Honduras
    -- "🇭🇷" -> Right Croatia
    -- "🇭🇹" -> Right Haiti
    -- "🇭🇺" -> Right Hungary
    -- "🇮🇨" -> Right CanaryIslands
    -- "🇮🇩" -> Right Indonesia
    -- "🇮🇪" -> Right Ireland
    -- "🇮🇱" -> Right Israel
    -- "🇮🇲" -> Right IsleOfMan
    -- "🇮🇳" -> Right India
    -- "🇮🇴" -> Right BritishIndianOceanTerritory
    -- "🇮🇶" -> Right Iraq
    -- "🇮🇷" -> Right Iran
    -- "🇮🇸" -> Right Iceland
    -- "🇮🇹" -> Right Italy
    -- "🇯🇪" -> Right Jersey
    -- "🇯🇲" -> Right Jamaica
    -- "🇯🇴" -> Right Jordan
    -- "🇯🇵" -> Right Japan
    -- "🇰🇪" -> Right Kenya
    -- "🇰🇬" -> Right Kyrgyzstan
    -- "🇰🇭" -> Right Cambodia
    -- "🇰🇮" -> Right Kiribati
    -- "🇰🇲" -> Right Comoros
    -- "🇰🇳" -> Right StKittsAndNevis
    -- "🇰🇵" -> Right NorthKorea
    -- "🇰🇷" -> Right SouthKorea
    -- "🇰🇼" -> Right Kuwait
    -- "🇰🇾" -> Right CaymanIslands
    -- "🇰🇿" -> Right Kazakhstan
    -- "🇱🇦" -> Right Laos
    -- "🇱🇧" -> Right Lebanon
    -- "🇱🇨" -> Right StLucia
    -- "🇱🇮" -> Right Liechtenstein
    -- "🇱🇰" -> Right SriLanka
    -- "🇱🇷" -> Right Liberia
    -- "🇱🇸" -> Right Lesotho
    -- "🇱🇹" -> Right Lithuania
    -- "🇱🇺" -> Right Luxembourg
    -- "🇱🇻" -> Right Latvia
    -- "🇱🇾" -> Right Libya
    -- "🇲🇦" -> Right Morocco
    -- "🇲🇨" -> Right Monaco
    -- "🇲🇩" -> Right Moldova
    -- "🇲🇪" -> Right Montenegro
    -- "🇲🇫" -> Right StMartin
    -- "🇲🇬" -> Right Madagascar
    -- "🇲🇭" -> Right MarshallIslands
    -- "🇲🇰" -> Right Macedonia
    -- "🇲🇱" -> Right Mali
    -- "🇲🇲" -> Right MyanmarBurma
    -- "🇲🇳" -> Right Mongolia
    -- "🇲🇴" -> Right MacauSARChina
    -- "🇲🇵" -> Right NorthernMarianaIslands
    -- "🇲🇶" -> Right Martinique
    -- "🇲🇷" -> Right Mauritania
    -- "🇲🇸" -> Right Montserrat
    -- "🇲🇹" -> Right Malta
    -- "🇲🇺" -> Right Mauritius
    -- "🇲🇻" -> Right Maldives
    -- "🇲🇼" -> Right Malawi
    -- "🇲🇽" -> Right Mexico
    -- "🇲🇾" -> Right Malaysia
    -- "🇲🇿" -> Right Mozambique
    -- "🇳🇦" -> Right Namibia
    -- "🇳🇨" -> Right NewCaledonia
    -- "🇳🇪" -> Right Niger
    -- "🇳🇫" -> Right NorfolkIsland
    -- "🇳🇬" -> Right Nigeria
    -- "🇳🇮" -> Right Nicaragua
    -- "🇳🇱" -> Right Netherlands
    -- "🇳🇴" -> Right Norway
    -- "🇳🇵" -> Right Nepal
    -- "🇳🇷" -> Right Nauru
    -- "🇳🇺" -> Right Niue
    -- "🇳🇿" -> Right NewZealand
    -- "🇴🇲" -> Right Oman
    -- "🇵🇦" -> Right Panama
    -- "🇵🇪" -> Right Peru
    -- "🇵🇫" -> Right FrenchPolynesia
    -- "🇵🇬" -> Right PapuaNewGuinea
    -- "🇵🇭" -> Right Philippines
    -- "🇵🇰" -> Right Pakistan
    -- "🇵🇱" -> Right Poland
    -- "🇵🇲" -> Right StPierreAndMiquelon
    -- "🇵🇳" -> Right PitcairnIslands
    -- "🇵🇷" -> Right PuertoRico
    -- "🇵🇸" -> Right PalestinianTerritories
    -- "🇵🇹" -> Right Portugal
    -- "🇵🇼" -> Right Palau
    -- "🇵🇾" -> Right Paraguay
    -- "🇶🇦" -> Right Qatar
    -- "🇷🇪" -> Right Réunion
    -- "🇷🇴" -> Right Romania
    -- "🇷🇸" -> Right Serbia
    -- "🇷🇺" -> Right Russia
    -- "🇷🇼" -> Right Rwanda
    -- "🇸🇦" -> Right SaudiArabia
    -- "🇸🇧" -> Right SolomonIslands
    -- "🇸🇨" -> Right Seychelles
    -- "🇸🇩" -> Right Sudan
    -- "🇸🇪" -> Right Sweden
    -- "🇸🇬" -> Right Singapore
    -- "🇸🇭" -> Right StHelena
    -- "🇸🇮" -> Right Slovenia
    -- "🇸🇯" -> Right SvalbardAndJanMayen
    -- "🇸🇰" -> Right Slovakia
    -- "🇸🇱" -> Right SierraLeone
    -- "🇸🇲" -> Right SanMarino
    -- "🇸🇳" -> Right Senegal
    -- "🇸🇴" -> Right Somalia
    -- "🇸🇷" -> Right Suriname
    -- "🇸🇸" -> Right SouthSudan
    -- "🇸🇹" -> Right SãoToméAndPríncipe
    -- "🇸🇻" -> Right ElSalvador
    -- "🇸🇽" -> Right SintMaarten
    -- "🇸🇾" -> Right Syria
    -- "🇸🇿" -> Right Swaziland
    -- "🇹🇦" -> Right TristanDaCunha
    -- "🇹🇨" -> Right TurksAndCaicosIslands
    -- "🇹🇩" -> Right Chad
    -- "🇹🇫" -> Right FrenchSouthernTerritories
    -- "🇹🇬" -> Right Togo
    -- "🇹🇭" -> Right Thailand
    -- "🇹🇯" -> Right Tajikistan
    -- "🇹🇰" -> Right Tokelau
    -- "🇹🇱" -> Right TimorLeste
    -- "🇹🇲" -> Right Turkmenistan
    -- "🇹🇳" -> Right Tunisia
    -- "🇹🇴" -> Right Tonga
    -- "🇹🇷" -> Right TurkeyCountry
    -- "🇹🇹" -> Right TrinidadAndTobago
    -- "🇹🇻" -> Right Tuvalu
    -- "🇹🇼" -> Right Taiwan
    -- "🇹🇿" -> Right Tanzania
    -- "🇺🇦" -> Right Ukraine
    -- "🇺🇬" -> Right Uganda
    -- "🇺🇲" -> Right USOutlyingIslands
    -- "🇺🇳" -> Right UnitedNations
    -- "🇺🇸" -> Right UnitedStates
    -- "🇺🇾" -> Right Uruguay
    -- "🇺🇿" -> Right Uzbekistan
    -- "🇻🇦" -> Right VaticanCity
    -- "🇻🇨" -> Right StVincentAndGrenadines
    -- "🇻🇪" -> Right Venezuela
    -- "🇻🇬" -> Right BritishVirginIslands
    -- "🇻🇮" -> Right USVirginIslands
    -- "🇻🇳" -> Right Vietnam
    -- "🇻🇺" -> Right Vanuatu
    -- "🇼🇫" -> Right WallisAndFutuna
    -- "🇼🇸" -> Right Samoa
    -- "🇽🇰" -> Right Kosovo
    -- "🇾🇪" -> Right Yemen
    -- "🇾🇹" -> Right Mayotte
    -- "🇿🇦" -> Right SouthAfrica
    -- "🇿🇲" -> Right Zambia
    -- "🇿🇼" -> Right Zimbabwe
    -- "🏴󠁧󠁢󠁥󠁮󠁧󠁿" -> Right England
    -- "🏴󠁧󠁢󠁳󠁣󠁴󠁿" -> Right Scotland
    -- "🏴󠁧󠁢󠁷󠁬󠁳󠁿" -> Right Wales
    s -> Left $ joinWith " " ["Sorry.", s, "is not supported."]


instance eqEmoji :: Eq Emoji where
  eq a b = emojiToNum a == emojiToNum b

-- NOTE: assign number for eq performance
emojiToNum :: Emoji -> Int
emojiToNum GrinningFace = 1
emojiToNum BeamingFaceWithSmilingEyes = 2
emojiToNum FaceWithTearsOfJoy = 3
emojiToNum RollingOnTheFloorLaughing = 4
emojiToNum GrinningFaceWithBigEyes = 5
emojiToNum GrinningFaceWithSmilingEyes = 6
emojiToNum GrinningFaceWithSweat = 7
emojiToNum GrinningSquintingFace = 8
emojiToNum WinkingFace = 9
emojiToNum SmilingFaceWithSmilingEyes = 10
emojiToNum FaceSavoringFood = 11
emojiToNum SmilingFaceWithSunglasses = 12
emojiToNum SmilingFaceWithHeartEyes = 13
emojiToNum FaceBlowingAKiss = 14
emojiToNum SmilingFaceWith3Hearts = 15
emojiToNum KissingFace = 16
emojiToNum KissingFaceWithSmilingEyes = 17
emojiToNum KissingFaceWithClosedEyes = 18
emojiToNum SmilingFace = 19
emojiToNum SlightlySmilingFace = 20
emojiToNum HuggingFace = 21
emojiToNum StarStruck = 22
emojiToNum ThinkingFace = 23
emojiToNum FaceWithRaisedEyebrow = 24
emojiToNum NeutralFace = 25
emojiToNum ExpressionlessFace = 26
emojiToNum FaceWithoutMouth = 27
emojiToNum FaceWithRollingEyes = 28
emojiToNum SmirkingFace = 29
emojiToNum PerseveringFace = 30
emojiToNum SadButRelievedFace = 31
emojiToNum FaceWithOpenMouth = 32
emojiToNum ZipperMouthFace = 33
emojiToNum HushedFace = 34
emojiToNum SleepyFace = 35
emojiToNum TiredFace = 36
emojiToNum SleepingFace = 37
emojiToNum RelievedFace = 38
emojiToNum FaceWithTongue = 39
emojiToNum WinkingFaceWithTongue = 40
emojiToNum SquintingFaceWithTongue = 41
emojiToNum DroolingFace = 42
emojiToNum UnamusedFace = 43
emojiToNum DowncastFaceWithSweat = 44
emojiToNum PensiveFace = 45
emojiToNum ConfusedFace = 46
emojiToNum UpsideDownFace = 47
emojiToNum MoneyMouthFace = 48
emojiToNum AstonishedFace = 49
emojiToNum FrowningFace = 50
emojiToNum SlightlyFrowningFace = 51
emojiToNum ConfoundedFace = 52
emojiToNum DisappointedFace = 53
emojiToNum WorriedFace = 54
emojiToNum FaceWithSteamFromNose = 55
emojiToNum CryingFace = 56
emojiToNum LoudlyCryingFace = 57
emojiToNum FrowningFaceWithOpenMouth = 58
emojiToNum AnguishedFace = 59
emojiToNum FearfulFace = 60
emojiToNum WearyFace = 61
emojiToNum ExplodingHead = 62
emojiToNum GrimacingFace = 63
emojiToNum AnxiousFaceWithSweat = 64
emojiToNum FaceScreamingInFear = 65
emojiToNum HotFace = 66
emojiToNum ColdFace = 67
emojiToNum FlushedFace = 68
emojiToNum ZanyFace = 69
emojiToNum DizzyFace = 70
emojiToNum PoutingFace = 71
emojiToNum AngryFace = 72
emojiToNum FaceWithSymbolsOnMouth = 73
emojiToNum FaceWithMedicalMask = 74
emojiToNum FaceWithThermometer = 75
emojiToNum FaceWithHeadBandage = 76
emojiToNum NauseatedFace = 77
emojiToNum FaceVomiting = 78
emojiToNum SneezingFace = 79
emojiToNum SmilingFaceWithHalo = 80
emojiToNum CowboyHatFace = 81
emojiToNum PartyingFace = 82
emojiToNum WoozyFace = 83
emojiToNum PleadingFace = 84
emojiToNum LyingFace = 85
emojiToNum ShushingFace = 86
emojiToNum FaceWithHandOverMouth = 87
emojiToNum FaceWithMonocle = 88
emojiToNum NerdFace = 89
emojiToNum SmilingFaceWithHorns = 90
emojiToNum AngryFaceWithHorns = 91
emojiToNum ClownFace = 92
emojiToNum Ogre = 93
emojiToNum Goblin = 94
emojiToNum Skull = 95
emojiToNum SkullAndCrossbones = 96
emojiToNum Ghost = 97
emojiToNum Alien = 98
emojiToNum AlienMonster = 99
emojiToNum RobotFace = 100
emojiToNum PileOfPoo = 101
emojiToNum GrinningCatFace = 102
emojiToNum GrinningCatFaceWithSmilingEyes = 103
emojiToNum CatFaceWithTearsOfJoy = 104
emojiToNum SmilingCatFaceWithHeartEyes = 105
emojiToNum CatFaceWithWrySmile = 106
emojiToNum KissingCatFace = 107
emojiToNum WearyCatFace = 108
emojiToNum CryingCatFace = 109
emojiToNum PoutingCatFace = 110
emojiToNum SeeNoEvilMonkey = 111
emojiToNum HearNoEvilMonkey = 112
emojiToNum SpeakNoEvilMonkey = 113
emojiToNum LightSkinTone = 114
emojiToNum MediumLightSkinTone = 115
emojiToNum MediumSkinTone = 116
emojiToNum MediumDarkSkinTone = 117
emojiToNum DarkSkinTone = 118
emojiToNum Baby = 119
-- emojiToNum BabyLightSkinTone = 120
-- emojiToNum BabyMediumLightSkinTone = 121
-- emojiToNum BabyMediumSkinTone = 122
-- emojiToNum BabyMediumDarkSkinTone = 123
-- emojiToNum BabyDarkSkinTone = 124
emojiToNum Child = 125
-- emojiToNum ChildLightSkinTone = 126
-- emojiToNum ChildMediumLightSkinTone = 127
-- emojiToNum ChildMediumSkinTone = 128
-- emojiToNum ChildMediumDarkSkinTone = 129
-- emojiToNum ChildDarkSkinTone = 130
emojiToNum Boy = 131
-- emojiToNum BoyLightSkinTone = 132
-- emojiToNum BoyMediumLightSkinTone = 133
-- emojiToNum BoyMediumSkinTone = 134
-- emojiToNum BoyMediumDarkSkinTone = 135
-- emojiToNum BoyDarkSkinTone = 136
emojiToNum Girl = 137
-- emojiToNum GirlLightSkinTone = 138
-- emojiToNum GirlMediumLightSkinTone = 139
-- emojiToNum GirlMediumSkinTone = 140
-- emojiToNum GirlMediumDarkSkinTone = 141
-- emojiToNum GirlDarkSkinTone = 142
emojiToNum Adult = 143
-- emojiToNum AdultLightSkinTone = 144
-- emojiToNum AdultMediumLightSkinTone = 145
-- emojiToNum AdultMediumSkinTone = 146
-- emojiToNum AdultMediumDarkSkinTone = 147
-- emojiToNum AdultDarkSkinTone = 148
emojiToNum Man = 149
-- emojiToNum ManLightSkinTone = 150
-- emojiToNum ManMediumLightSkinTone = 151
-- emojiToNum ManMediumSkinTone = 152
-- emojiToNum ManMediumDarkSkinTone = 153
-- emojiToNum ManDarkSkinTone = 154
emojiToNum Woman = 155
-- emojiToNum WomanLightSkinTone = 156
-- emojiToNum WomanMediumLightSkinTone = 157
-- emojiToNum WomanMediumSkinTone = 158
-- emojiToNum WomanMediumDarkSkinTone = 159
-- emojiToNum WomanDarkSkinTone = 160
emojiToNum OlderAdult = 161
-- emojiToNum OlderAdultLightSkinTone = 162
-- emojiToNum OlderAdultMediumLightSkinTone = 163
-- emojiToNum OlderAdultMediumSkinTone = 164
-- emojiToNum OlderAdultMediumDarkSkinTone = 165
-- emojiToNum OlderAdultDarkSkinTone = 166
emojiToNum OldMan = 167
-- emojiToNum OldManLightSkinTone = 168
-- emojiToNum OldManMediumLightSkinTone = 169
-- emojiToNum OldManMediumSkinTone = 170
-- emojiToNum OldManMediumDarkSkinTone = 171
-- emojiToNum OldManDarkSkinTone = 172
emojiToNum OldWoman = 173
-- emojiToNum OldWomanLightSkinTone = 174
-- emojiToNum OldWomanMediumLightSkinTone = 175
-- emojiToNum OldWomanMediumSkinTone = 176
-- emojiToNum OldWomanMediumDarkSkinTone = 177
-- emojiToNum OldWomanDarkSkinTone = 178
emojiToNum ManHealthWorker = 179
-- emojiToNum ManHealthWorkerLightSkinTone = 180
-- emojiToNum ManHealthWorkerMediumLightSkinTone = 181
-- emojiToNum ManHealthWorkerMediumSkinTone = 182
-- emojiToNum ManHealthWorkerMediumDarkSkinTone = 183
-- emojiToNum ManHealthWorkerDarkSkinTone = 184
emojiToNum WomanHealthWorker = 185
-- emojiToNum WomanHealthWorkerLightSkinTone = 186
-- emojiToNum WomanHealthWorkerMediumLightSkinTone = 187
-- emojiToNum WomanHealthWorkerMediumSkinTone = 188
-- emojiToNum WomanHealthWorkerMediumDarkSkinTone = 189
-- emojiToNum WomanHealthWorkerDarkSkinTone = 190
emojiToNum ManStudent = 191
-- emojiToNum ManStudentLightSkinTone = 192
-- emojiToNum ManStudentMediumLightSkinTone = 193
-- emojiToNum ManStudentMediumSkinTone = 194
-- emojiToNum ManStudentMediumDarkSkinTone = 195
-- emojiToNum ManStudentDarkSkinTone = 196
emojiToNum WomanStudent = 197
-- emojiToNum WomanStudentLightSkinTone = 198
-- emojiToNum WomanStudentMediumLightSkinTone = 199
-- emojiToNum WomanStudentMediumSkinTone = 200
-- emojiToNum WomanStudentMediumDarkSkinTone = 201
-- emojiToNum WomanStudentDarkSkinTone = 202
emojiToNum ManTeacher = 203
-- emojiToNum ManTeacherLightSkinTone = 204
-- emojiToNum ManTeacherMediumLightSkinTone = 205
-- emojiToNum ManTeacherMediumSkinTone = 206
-- emojiToNum ManTeacherMediumDarkSkinTone = 207
-- emojiToNum ManTeacherDarkSkinTone = 208
emojiToNum WomanTeacher = 209
-- emojiToNum WomanTeacherLightSkinTone = 210
-- emojiToNum WomanTeacherMediumLightSkinTone = 211
-- emojiToNum WomanTeacherMediumSkinTone = 212
-- emojiToNum WomanTeacherMediumDarkSkinTone = 213
-- emojiToNum WomanTeacherDarkSkinTone = 214
emojiToNum ManJudge = 215
-- emojiToNum ManJudgeLightSkinTone = 216
-- emojiToNum ManJudgeMediumLightSkinTone = 217
-- emojiToNum ManJudgeMediumSkinTone = 218
-- emojiToNum ManJudgeMediumDarkSkinTone = 219
-- emojiToNum ManJudgeDarkSkinTone = 220
emojiToNum WomanJudge = 221
-- emojiToNum WomanJudgeLightSkinTone = 222
-- emojiToNum WomanJudgeMediumLightSkinTone = 223
-- emojiToNum WomanJudgeMediumSkinTone = 224
-- emojiToNum WomanJudgeMediumDarkSkinTone = 225
-- emojiToNum WomanJudgeDarkSkinTone = 226
emojiToNum ManFarmer = 227
-- emojiToNum ManFarmerLightSkinTone = 228
-- emojiToNum ManFarmerMediumLightSkinTone = 229
-- emojiToNum ManFarmerMediumSkinTone = 230
-- emojiToNum ManFarmerMediumDarkSkinTone = 231
-- emojiToNum ManFarmerDarkSkinTone = 232
emojiToNum WomanFarmer = 233
-- emojiToNum WomanFarmerLightSkinTone = 234
-- emojiToNum WomanFarmerMediumLightSkinTone = 235
-- emojiToNum WomanFarmerMediumSkinTone = 236
-- emojiToNum WomanFarmerMediumDarkSkinTone = 237
-- emojiToNum WomanFarmerDarkSkinTone = 238
emojiToNum ManCook = 239
-- emojiToNum ManCookLightSkinTone = 240
-- emojiToNum ManCookMediumLightSkinTone = 241
-- emojiToNum ManCookMediumSkinTone = 242
-- emojiToNum ManCookMediumDarkSkinTone = 243
-- emojiToNum ManCookDarkSkinTone = 244
emojiToNum WomanCook = 245
-- emojiToNum WomanCookLightSkinTone = 246
-- emojiToNum WomanCookMediumLightSkinTone = 247
-- emojiToNum WomanCookMediumSkinTone = 248
-- emojiToNum WomanCookMediumDarkSkinTone = 249
-- emojiToNum WomanCookDarkSkinTone = 250
emojiToNum ManMechanic = 251
-- emojiToNum ManMechanicLightSkinTone = 252
-- emojiToNum ManMechanicMediumLightSkinTone = 253
-- emojiToNum ManMechanicMediumSkinTone = 254
-- emojiToNum ManMechanicMediumDarkSkinTone = 255
-- emojiToNum ManMechanicDarkSkinTone = 256
emojiToNum WomanMechanic = 257
-- emojiToNum WomanMechanicLightSkinTone = 258
-- emojiToNum WomanMechanicMediumLightSkinTone = 259
-- emojiToNum WomanMechanicMediumSkinTone = 260
-- emojiToNum WomanMechanicMediumDarkSkinTone = 261
-- emojiToNum WomanMechanicDarkSkinTone = 262
emojiToNum ManFactoryWorker = 263
-- emojiToNum ManFactoryWorkerLightSkinTone = 264
-- emojiToNum ManFactoryWorkerMediumLightSkinTone = 265
-- emojiToNum ManFactoryWorkerMediumSkinTone = 266
-- emojiToNum ManFactoryWorkerMediumDarkSkinTone = 267
-- emojiToNum ManFactoryWorkerDarkSkinTone = 268
emojiToNum WomanFactoryWorker = 269
-- emojiToNum WomanFactoryWorkerLightSkinTone = 270
-- emojiToNum WomanFactoryWorkerMediumLightSkinTone = 271
-- emojiToNum WomanFactoryWorkerMediumSkinTone = 272
-- emojiToNum WomanFactoryWorkerMediumDarkSkinTone = 273
-- emojiToNum WomanFactoryWorkerDarkSkinTone = 274
emojiToNum ManOfficeWorker = 275
-- emojiToNum ManOfficeWorkerLightSkinTone = 276
-- emojiToNum ManOfficeWorkerMediumLightSkinTone = 277
-- emojiToNum ManOfficeWorkerMediumSkinTone = 278
-- emojiToNum ManOfficeWorkerMediumDarkSkinTone = 279
-- emojiToNum ManOfficeWorkerDarkSkinTone = 280
emojiToNum WomanOfficeWorker = 281
-- emojiToNum WomanOfficeWorkerLightSkinTone = 282
-- emojiToNum WomanOfficeWorkerMediumLightSkinTone = 283
-- emojiToNum WomanOfficeWorkerMediumSkinTone = 284
-- emojiToNum WomanOfficeWorkerMediumDarkSkinTone = 285
-- emojiToNum WomanOfficeWorkerDarkSkinTone = 286
emojiToNum ManScientist = 287
-- emojiToNum ManScientistLightSkinTone = 288
-- emojiToNum ManScientistMediumLightSkinTone = 289
-- emojiToNum ManScientistMediumSkinTone = 290
-- emojiToNum ManScientistMediumDarkSkinTone = 291
-- emojiToNum ManScientistDarkSkinTone = 292
emojiToNum WomanScientist = 293
-- emojiToNum WomanScientistLightSkinTone = 294
-- emojiToNum WomanScientistMediumLightSkinTone = 295
-- emojiToNum WomanScientistMediumSkinTone = 296
-- emojiToNum WomanScientistMediumDarkSkinTone = 297
-- emojiToNum WomanScientistDarkSkinTone = 298
emojiToNum ManTechnologist = 299
-- emojiToNum ManTechnologistLightSkinTone = 300
-- emojiToNum ManTechnologistMediumLightSkinTone = 301
-- emojiToNum ManTechnologistMediumSkinTone = 302
-- emojiToNum ManTechnologistMediumDarkSkinTone = 303
-- emojiToNum ManTechnologistDarkSkinTone = 304
emojiToNum WomanTechnologist = 305
-- emojiToNum WomanTechnologistLightSkinTone = 306
-- emojiToNum WomanTechnologistMediumLightSkinTone = 307
-- emojiToNum WomanTechnologistMediumSkinTone = 308
-- emojiToNum WomanTechnologistMediumDarkSkinTone = 309
-- emojiToNum WomanTechnologistDarkSkinTone = 310
emojiToNum ManSinger = 311
-- emojiToNum ManSingerLightSkinTone = 312
-- emojiToNum ManSingerMediumLightSkinTone = 313
-- emojiToNum ManSingerMediumSkinTone = 314
-- emojiToNum ManSingerMediumDarkSkinTone = 315
-- emojiToNum ManSingerDarkSkinTone = 316
emojiToNum WomanSinger = 317
-- emojiToNum WomanSingerLightSkinTone = 318
-- emojiToNum WomanSingerMediumLightSkinTone = 319
-- emojiToNum WomanSingerMediumSkinTone = 320
-- emojiToNum WomanSingerMediumDarkSkinTone = 321
-- emojiToNum WomanSingerDarkSkinTone = 322
emojiToNum ManArtist = 323
-- emojiToNum ManArtistLightSkinTone = 324
-- emojiToNum ManArtistMediumLightSkinTone = 325
-- emojiToNum ManArtistMediumSkinTone = 326
-- emojiToNum ManArtistMediumDarkSkinTone = 327
-- emojiToNum ManArtistDarkSkinTone = 328
emojiToNum WomanArtist = 329
-- emojiToNum WomanArtistLightSkinTone = 330
-- emojiToNum WomanArtistMediumLightSkinTone = 331
-- emojiToNum WomanArtistMediumSkinTone = 332
-- emojiToNum WomanArtistMediumDarkSkinTone = 333
-- emojiToNum WomanArtistDarkSkinTone = 334
emojiToNum ManPilot = 335
-- emojiToNum ManPilotLightSkinTone = 336
-- emojiToNum ManPilotMediumLightSkinTone = 337
-- emojiToNum ManPilotMediumSkinTone = 338
-- emojiToNum ManPilotMediumDarkSkinTone = 339
-- emojiToNum ManPilotDarkSkinTone = 340
emojiToNum WomanPilot = 341
-- emojiToNum WomanPilotLightSkinTone = 342
-- emojiToNum WomanPilotMediumLightSkinTone = 343
-- emojiToNum WomanPilotMediumSkinTone = 344
-- emojiToNum WomanPilotMediumDarkSkinTone = 345
-- emojiToNum WomanPilotDarkSkinTone = 346
emojiToNum ManAstronaut = 347
-- emojiToNum ManAstronautLightSkinTone = 348
-- emojiToNum ManAstronautMediumLightSkinTone = 349
-- emojiToNum ManAstronautMediumSkinTone = 350
-- emojiToNum ManAstronautMediumDarkSkinTone = 351
-- emojiToNum ManAstronautDarkSkinTone = 352
emojiToNum WomanAstronaut = 353
-- emojiToNum WomanAstronautLightSkinTone = 354
-- emojiToNum WomanAstronautMediumLightSkinTone = 355
-- emojiToNum WomanAstronautMediumSkinTone = 356
-- emojiToNum WomanAstronautMediumDarkSkinTone = 357
-- emojiToNum WomanAstronautDarkSkinTone = 358
emojiToNum ManFirefighter = 359
-- emojiToNum ManFirefighterLightSkinTone = 360
-- emojiToNum ManFirefighterMediumLightSkinTone = 361
-- emojiToNum ManFirefighterMediumSkinTone = 362
-- emojiToNum ManFirefighterMediumDarkSkinTone = 363
-- emojiToNum ManFirefighterDarkSkinTone = 364
emojiToNum WomanFirefighter = 365
-- emojiToNum WomanFirefighterLightSkinTone = 366
-- emojiToNum WomanFirefighterMediumLightSkinTone = 367
-- emojiToNum WomanFirefighterMediumSkinTone = 368
-- emojiToNum WomanFirefighterMediumDarkSkinTone = 369
-- emojiToNum WomanFirefighterDarkSkinTone = 370
emojiToNum PoliceOfficer = 371
-- emojiToNum PoliceOfficerLightSkinTone = 372
-- emojiToNum PoliceOfficerMediumLightSkinTone = 373
-- emojiToNum PoliceOfficerMediumSkinTone = 374
-- emojiToNum PoliceOfficerMediumDarkSkinTone = 375
-- emojiToNum PoliceOfficerDarkSkinTone = 376
emojiToNum ManPoliceOfficer = 377
-- emojiToNum ManPoliceOfficerLightSkinTone = 378
-- emojiToNum ManPoliceOfficerMediumLightSkinTone = 379
-- emojiToNum ManPoliceOfficerMediumSkinTone = 380
-- emojiToNum ManPoliceOfficerMediumDarkSkinTone = 381
-- emojiToNum ManPoliceOfficerDarkSkinTone = 382
emojiToNum WomanPoliceOfficer = 383
-- emojiToNum WomanPoliceOfficerLightSkinTone = 384
-- emojiToNum WomanPoliceOfficerMediumLightSkinTone = 385
-- emojiToNum WomanPoliceOfficerMediumSkinTone = 386
-- emojiToNum WomanPoliceOfficerMediumDarkSkinTone = 387
-- emojiToNum WomanPoliceOfficerDarkSkinTone = 388
emojiToNum Detective = 389
-- emojiToNum DetectiveLightSkinTone = 390
-- emojiToNum DetectiveMediumLightSkinTone = 391
-- emojiToNum DetectiveMediumSkinTone = 392
-- emojiToNum DetectiveMediumDarkSkinTone = 393
-- emojiToNum DetectiveDarkSkinTone = 394
emojiToNum ManDetective = 395
-- emojiToNum ManDetectiveLightSkinTone = 396
-- emojiToNum ManDetectiveMediumLightSkinTone = 397
-- emojiToNum ManDetectiveMediumSkinTone = 398
-- emojiToNum ManDetectiveMediumDarkSkinTone = 399
-- emojiToNum ManDetectiveDarkSkinTone = 400
emojiToNum WomanDetective = 401
-- emojiToNum WomanDetectiveLightSkinTone = 402
-- emojiToNum WomanDetectiveMediumLightSkinTone = 403
-- emojiToNum WomanDetectiveMediumSkinTone = 404
-- emojiToNum WomanDetectiveMediumDarkSkinTone = 405
-- emojiToNum WomanDetectiveDarkSkinTone = 406
emojiToNum Guard = 407
-- emojiToNum GuardLightSkinTone = 408
-- emojiToNum GuardMediumLightSkinTone = 409
-- emojiToNum GuardMediumSkinTone = 410
-- emojiToNum GuardMediumDarkSkinTone = 411
-- emojiToNum GuardDarkSkinTone = 412
emojiToNum ManGuard = 413
-- emojiToNum ManGuardLightSkinTone = 414
-- emojiToNum ManGuardMediumLightSkinTone = 415
-- emojiToNum ManGuardMediumSkinTone = 416
-- emojiToNum ManGuardMediumDarkSkinTone = 417
-- emojiToNum ManGuardDarkSkinTone = 418
emojiToNum WomanGuard = 419
-- emojiToNum WomanGuardLightSkinTone = 420
-- emojiToNum WomanGuardMediumLightSkinTone = 421
-- emojiToNum WomanGuardMediumSkinTone = 422
-- emojiToNum WomanGuardMediumDarkSkinTone = 423
-- emojiToNum WomanGuardDarkSkinTone = 424
emojiToNum ConstructionWorker = 425
-- emojiToNum ConstructionWorkerLightSkinTone = 426
-- emojiToNum ConstructionWorkerMediumLightSkinTone = 427
-- emojiToNum ConstructionWorkerMediumSkinTone = 428
-- emojiToNum ConstructionWorkerMediumDarkSkinTone = 429
-- emojiToNum ConstructionWorkerDarkSkinTone = 430
emojiToNum ManConstructionWorker = 431
-- emojiToNum ManConstructionWorkerLightSkinTone = 432
-- emojiToNum ManConstructionWorkerMediumLightSkinTone = 433
-- emojiToNum ManConstructionWorkerMediumSkinTone = 434
-- emojiToNum ManConstructionWorkerMediumDarkSkinTone = 435
-- emojiToNum ManConstructionWorkerDarkSkinTone = 436
emojiToNum WomanConstructionWorker = 437
-- emojiToNum WomanConstructionWorkerLightSkinTone = 438
-- emojiToNum WomanConstructionWorkerMediumLightSkinTone = 439
-- emojiToNum WomanConstructionWorkerMediumSkinTone = 440
-- emojiToNum WomanConstructionWorkerMediumDarkSkinTone = 441
-- emojiToNum WomanConstructionWorkerDarkSkinTone = 442
emojiToNum Prince = 443
-- emojiToNum PrinceLightSkinTone = 444
-- emojiToNum PrinceMediumLightSkinTone = 445
-- emojiToNum PrinceMediumSkinTone = 446
-- emojiToNum PrinceMediumDarkSkinTone = 447
-- emojiToNum PrinceDarkSkinTone = 448
emojiToNum Princess = 449
-- emojiToNum PrincessLightSkinTone = 450
-- emojiToNum PrincessMediumLightSkinTone = 451
-- emojiToNum PrincessMediumSkinTone = 452
-- emojiToNum PrincessMediumDarkSkinTone = 453
-- emojiToNum PrincessDarkSkinTone = 454
emojiToNum PersonWearingTurban = 455
-- emojiToNum PersonWearingTurbanLightSkinTone = 456
-- emojiToNum PersonWearingTurbanMediumLightSkinTone = 457
-- emojiToNum PersonWearingTurbanMediumSkinTone = 458
-- emojiToNum PersonWearingTurbanMediumDarkSkinTone = 459
-- emojiToNum PersonWearingTurbanDarkSkinTone = 460
emojiToNum ManWearingTurban = 461
-- emojiToNum ManWearingTurbanLightSkinTone = 462
-- emojiToNum ManWearingTurbanMediumLightSkinTone = 463
-- emojiToNum ManWearingTurbanMediumSkinTone = 464
-- emojiToNum ManWearingTurbanMediumDarkSkinTone = 465
-- emojiToNum ManWearingTurbanDarkSkinTone = 466
emojiToNum WomanWearingTurban = 467
-- emojiToNum WomanWearingTurbanLightSkinTone = 468
-- emojiToNum WomanWearingTurbanMediumLightSkinTone = 469
-- emojiToNum WomanWearingTurbanMediumSkinTone = 470
-- emojiToNum WomanWearingTurbanMediumDarkSkinTone = 471
-- emojiToNum WomanWearingTurbanDarkSkinTone = 472
emojiToNum ManWithChineseCap = 473
-- emojiToNum ManWithChineseCapLightSkinTone = 474
-- emojiToNum ManWithChineseCapMediumLightSkinTone = 475
-- emojiToNum ManWithChineseCapMediumSkinTone = 476
-- emojiToNum ManWithChineseCapMediumDarkSkinTone = 477
-- emojiToNum ManWithChineseCapDarkSkinTone = 478
emojiToNum WomanWithHeadscarf = 479
-- emojiToNum WomanWithHeadscarfLightSkinTone = 480
-- emojiToNum WomanWithHeadscarfMediumLightSkinTone = 481
-- emojiToNum WomanWithHeadscarfMediumSkinTone = 482
-- emojiToNum WomanWithHeadscarfMediumDarkSkinTone = 483
-- emojiToNum WomanWithHeadscarfDarkSkinTone = 484
emojiToNum BeardedPerson = 485
-- emojiToNum BeardedPersonLightSkinTone = 486
-- emojiToNum BeardedPersonMediumLightSkinTone = 487
-- emojiToNum BeardedPersonMediumSkinTone = 488
-- emojiToNum BeardedPersonMediumDarkSkinTone = 489
-- emojiToNum BeardedPersonDarkSkinTone = 490
emojiToNum BlondHairedPerson = 491
-- emojiToNum BlondHairedPersonLightSkinTone = 492
-- emojiToNum BlondHairedPersonMediumLightSkinTone = 493
-- emojiToNum BlondHairedPersonMediumSkinTone = 494
-- emojiToNum BlondHairedPersonMediumDarkSkinTone = 495
-- emojiToNum BlondHairedPersonDarkSkinTone = 496
emojiToNum BlondHairedMan = 497
-- emojiToNum BlondHairedManLightSkinTone = 498
-- emojiToNum BlondHairedManMediumLightSkinTone = 499
-- emojiToNum BlondHairedManMediumSkinTone = 500
-- emojiToNum BlondHairedManMediumDarkSkinTone = 501
-- emojiToNum BlondHairedManDarkSkinTone = 502
emojiToNum BlondHairedWoman = 503
-- emojiToNum BlondHairedWomanLightSkinTone = 504
-- emojiToNum BlondHairedWomanMediumLightSkinTone = 505
-- emojiToNum BlondHairedWomanMediumSkinTone = 506
-- emojiToNum BlondHairedWomanMediumDarkSkinTone = 507
-- emojiToNum BlondHairedWomanDarkSkinTone = 508
emojiToNum ManRedHaired = 509
-- emojiToNum ManRedHairedLightSkinTone = 510
-- emojiToNum ManRedHairedMediumLightSkinTone = 511
-- emojiToNum ManRedHairedMediumSkinTone = 512
-- emojiToNum ManRedHairedMediumDarkSkinTone = 513
-- emojiToNum ManRedHairedDarkSkinTone = 514
emojiToNum WomanRedHaired = 515
-- emojiToNum WomanRedHairedLightSkinTone = 516
-- emojiToNum WomanRedHairedMediumLightSkinTone = 517
-- emojiToNum WomanRedHairedMediumSkinTone = 518
-- emojiToNum WomanRedHairedMediumDarkSkinTone = 519
-- emojiToNum WomanRedHairedDarkSkinTone = 520
emojiToNum ManCurlyHaired = 521
-- emojiToNum ManCurlyHairedLightSkinTone = 522
-- emojiToNum ManCurlyHairedMediumLightSkinTone = 523
-- emojiToNum ManCurlyHairedMediumSkinTone = 524
-- emojiToNum ManCurlyHairedMediumDarkSkinTone = 525
-- emojiToNum ManCurlyHairedDarkSkinTone = 526
emojiToNum WomanCurlyHaired = 527
-- emojiToNum WomanCurlyHairedLightSkinTone = 528
-- emojiToNum WomanCurlyHairedMediumLightSkinTone = 529
-- emojiToNum WomanCurlyHairedMediumSkinTone = 530
-- emojiToNum WomanCurlyHairedMediumDarkSkinTone = 531
-- emojiToNum WomanCurlyHairedDarkSkinTone = 532
emojiToNum ManBald = 533
-- emojiToNum ManBaldLightSkinTone = 534
-- emojiToNum ManBaldMediumLightSkinTone = 535
-- emojiToNum ManBaldMediumSkinTone = 536
-- emojiToNum ManBaldMediumDarkSkinTone = 537
-- emojiToNum ManBaldDarkSkinTone = 538
emojiToNum WomanBald = 539
-- emojiToNum WomanBaldLightSkinTone = 540
-- emojiToNum WomanBaldMediumLightSkinTone = 541
-- emojiToNum WomanBaldMediumSkinTone = 542
-- emojiToNum WomanBaldMediumDarkSkinTone = 543
-- emojiToNum WomanBaldDarkSkinTone = 544
emojiToNum ManWhiteHaired = 545
-- emojiToNum ManWhiteHairedLightSkinTone = 546
-- emojiToNum ManWhiteHairedMediumLightSkinTone = 547
-- emojiToNum ManWhiteHairedMediumSkinTone = 548
-- emojiToNum ManWhiteHairedMediumDarkSkinTone = 549
-- emojiToNum ManWhiteHairedDarkSkinTone = 550
emojiToNum WomanWhiteHaired = 551
-- emojiToNum WomanWhiteHairedLightSkinTone = 552
-- emojiToNum WomanWhiteHairedMediumLightSkinTone = 553
-- emojiToNum WomanWhiteHairedMediumSkinTone = 554
-- emojiToNum WomanWhiteHairedMediumDarkSkinTone = 555
-- emojiToNum WomanWhiteHairedDarkSkinTone = 556
emojiToNum ManInTuxedo = 557
-- emojiToNum ManInTuxedoLightSkinTone = 558
-- emojiToNum ManInTuxedoMediumLightSkinTone = 559
-- emojiToNum ManInTuxedoMediumSkinTone = 560
-- emojiToNum ManInTuxedoMediumDarkSkinTone = 561
-- emojiToNum ManInTuxedoDarkSkinTone = 562
emojiToNum BrideWithVeil = 563
-- emojiToNum BrideWithVeilLightSkinTone = 564
-- emojiToNum BrideWithVeilMediumLightSkinTone = 565
-- emojiToNum BrideWithVeilMediumSkinTone = 566
-- emojiToNum BrideWithVeilMediumDarkSkinTone = 567
-- emojiToNum BrideWithVeilDarkSkinTone = 568
emojiToNum PregnantWoman = 569
-- emojiToNum PregnantWomanLightSkinTone = 570
-- emojiToNum PregnantWomanMediumLightSkinTone = 571
-- emojiToNum PregnantWomanMediumSkinTone = 572
-- emojiToNum PregnantWomanMediumDarkSkinTone = 573
-- emojiToNum PregnantWomanDarkSkinTone = 574
emojiToNum BreastFeeding = 575
-- emojiToNum BreastFeedingLightSkinTone = 576
-- emojiToNum BreastFeedingMediumLightSkinTone = 577
-- emojiToNum BreastFeedingMediumSkinTone = 578
-- emojiToNum BreastFeedingMediumDarkSkinTone = 579
-- emojiToNum BreastFeedingDarkSkinTone = 580
emojiToNum BabyAngel = 581
-- emojiToNum BabyAngelLightSkinTone = 582
-- emojiToNum BabyAngelMediumLightSkinTone = 583
-- emojiToNum BabyAngelMediumSkinTone = 584
-- emojiToNum BabyAngelMediumDarkSkinTone = 585
-- emojiToNum BabyAngelDarkSkinTone = 586
emojiToNum SantaClaus = 587
-- emojiToNum SantaClausLightSkinTone = 588
-- emojiToNum SantaClausMediumLightSkinTone = 589
-- emojiToNum SantaClausMediumSkinTone = 590
-- emojiToNum SantaClausMediumDarkSkinTone = 591
-- emojiToNum SantaClausDarkSkinTone = 592
emojiToNum MrsClaus = 593
-- emojiToNum MrsClausLightSkinTone = 594
-- emojiToNum MrsClausMediumLightSkinTone = 595
-- emojiToNum MrsClausMediumSkinTone = 596
-- emojiToNum MrsClausMediumDarkSkinTone = 597
-- emojiToNum MrsClausDarkSkinTone = 598
emojiToNum Superhero = 599
-- emojiToNum SuperheroLightSkinTone = 600
-- emojiToNum SuperheroMediumLightSkinTone = 601
-- emojiToNum SuperheroMediumSkinTone = 602
-- emojiToNum SuperheroMediumDarkSkinTone = 603
-- emojiToNum SuperheroDarkSkinTone = 604
emojiToNum WomanSuperhero = 605
-- emojiToNum WomanSuperheroLightSkinTone = 606
-- emojiToNum WomanSuperheroMediumLightSkinTone = 607
-- emojiToNum WomanSuperheroMediumSkinTone = 608
-- emojiToNum WomanSuperheroMediumDarkSkinTone = 609
-- emojiToNum WomanSuperheroDarkSkinTone = 610
emojiToNum ManSuperhero = 611
-- emojiToNum ManSuperheroLightSkinTone = 612
-- emojiToNum ManSuperheroMediumLightSkinTone = 613
-- emojiToNum ManSuperheroMediumSkinTone = 614
-- emojiToNum ManSuperheroMediumDarkSkinTone = 615
-- emojiToNum ManSuperheroDarkSkinTone = 616
emojiToNum Supervillain = 617
-- emojiToNum SupervillainLightSkinTone = 618
-- emojiToNum SupervillainMediumLightSkinTone = 619
-- emojiToNum SupervillainMediumSkinTone = 620
-- emojiToNum SupervillainMediumDarkSkinTone = 621
-- emojiToNum SupervillainDarkSkinTone = 622
emojiToNum WomanSupervillain = 623
-- emojiToNum WomanSupervillainLightSkinTone = 624
-- emojiToNum WomanSupervillainMediumLightSkinTone = 625
-- emojiToNum WomanSupervillainMediumSkinTone = 626
-- emojiToNum WomanSupervillainMediumDarkSkinTone = 627
-- emojiToNum WomanSupervillainDarkSkinTone = 628
emojiToNum ManSupervillain = 629
-- emojiToNum ManSupervillainLightSkinTone = 630
-- emojiToNum ManSupervillainMediumLightSkinTone = 631
-- emojiToNum ManSupervillainMediumSkinTone = 632
-- emojiToNum ManSupervillainMediumDarkSkinTone = 633
-- emojiToNum ManSupervillainDarkSkinTone = 634
emojiToNum Mage = 635
-- emojiToNum MageLightSkinTone = 636
-- emojiToNum MageMediumLightSkinTone = 637
-- emojiToNum MageMediumSkinTone = 638
-- emojiToNum MageMediumDarkSkinTone = 639
-- emojiToNum MageDarkSkinTone = 640
emojiToNum WomanMage = 641
-- emojiToNum WomanMageLightSkinTone = 642
-- emojiToNum WomanMageMediumLightSkinTone = 643
-- emojiToNum WomanMageMediumSkinTone = 644
-- emojiToNum WomanMageMediumDarkSkinTone = 645
-- emojiToNum WomanMageDarkSkinTone = 646
emojiToNum ManMage = 647
-- emojiToNum ManMageLightSkinTone = 648
-- emojiToNum ManMageMediumLightSkinTone = 649
-- emojiToNum ManMageMediumSkinTone = 650
-- emojiToNum ManMageMediumDarkSkinTone = 651
-- emojiToNum ManMageDarkSkinTone = 652
emojiToNum Fairy = 653
-- emojiToNum FairyLightSkinTone = 654
-- emojiToNum FairyMediumLightSkinTone = 655
-- emojiToNum FairyMediumSkinTone = 656
-- emojiToNum FairyMediumDarkSkinTone = 657
-- emojiToNum FairyDarkSkinTone = 658
emojiToNum WomanFairy = 659
-- emojiToNum WomanFairyLightSkinTone = 660
-- emojiToNum WomanFairyMediumLightSkinTone = 661
-- emojiToNum WomanFairyMediumSkinTone = 662
-- emojiToNum WomanFairyMediumDarkSkinTone = 663
-- emojiToNum WomanFairyDarkSkinTone = 664
emojiToNum ManFairy = 665
-- emojiToNum ManFairyLightSkinTone = 666
-- emojiToNum ManFairyMediumLightSkinTone = 667
-- emojiToNum ManFairyMediumSkinTone = 668
-- emojiToNum ManFairyMediumDarkSkinTone = 669
-- emojiToNum ManFairyDarkSkinTone = 670
emojiToNum Vampire = 671
-- emojiToNum VampireLightSkinTone = 672
-- emojiToNum VampireMediumLightSkinTone = 673
-- emojiToNum VampireMediumSkinTone = 674
-- emojiToNum VampireMediumDarkSkinTone = 675
-- emojiToNum VampireDarkSkinTone = 676
emojiToNum WomanVampire = 677
-- emojiToNum WomanVampireLightSkinTone = 678
-- emojiToNum WomanVampireMediumLightSkinTone = 679
-- emojiToNum WomanVampireMediumSkinTone = 680
-- emojiToNum WomanVampireMediumDarkSkinTone = 681
-- emojiToNum WomanVampireDarkSkinTone = 682
emojiToNum ManVampire = 683
-- emojiToNum ManVampireLightSkinTone = 684
-- emojiToNum ManVampireMediumLightSkinTone = 685
-- emojiToNum ManVampireMediumSkinTone = 686
-- emojiToNum ManVampireMediumDarkSkinTone = 687
-- emojiToNum ManVampireDarkSkinTone = 688
emojiToNum Merperson = 689
-- emojiToNum MerpersonLightSkinTone = 690
-- emojiToNum MerpersonMediumLightSkinTone = 691
-- emojiToNum MerpersonMediumSkinTone = 692
-- emojiToNum MerpersonMediumDarkSkinTone = 693
-- emojiToNum MerpersonDarkSkinTone = 694
emojiToNum Mermaid = 695
-- emojiToNum MermaidLightSkinTone = 696
-- emojiToNum MermaidMediumLightSkinTone = 697
-- emojiToNum MermaidMediumSkinTone = 698
-- emojiToNum MermaidMediumDarkSkinTone = 699
-- emojiToNum MermaidDarkSkinTone = 700
emojiToNum Merman = 701
-- emojiToNum MermanLightSkinTone = 702
-- emojiToNum MermanMediumLightSkinTone = 703
-- emojiToNum MermanMediumSkinTone = 704
-- emojiToNum MermanMediumDarkSkinTone = 705
-- emojiToNum MermanDarkSkinTone = 706
emojiToNum Elf = 707
-- emojiToNum ElfLightSkinTone = 708
-- emojiToNum ElfMediumLightSkinTone = 709
-- emojiToNum ElfMediumSkinTone = 710
-- emojiToNum ElfMediumDarkSkinTone = 711
-- emojiToNum ElfDarkSkinTone = 712
emojiToNum WomanElf = 713
-- emojiToNum WomanElfLightSkinTone = 714
-- emojiToNum WomanElfMediumLightSkinTone = 715
-- emojiToNum WomanElfMediumSkinTone = 716
-- emojiToNum WomanElfMediumDarkSkinTone = 717
-- emojiToNum WomanElfDarkSkinTone = 718
emojiToNum ManElf = 719
-- emojiToNum ManElfLightSkinTone = 720
-- emojiToNum ManElfMediumLightSkinTone = 721
-- emojiToNum ManElfMediumSkinTone = 722
-- emojiToNum ManElfMediumDarkSkinTone = 723
-- emojiToNum ManElfDarkSkinTone = 724
emojiToNum Genie = 725
emojiToNum WomanGenie = 726
emojiToNum ManGenie = 727
emojiToNum Zombie = 728
emojiToNum WomanZombie = 729
emojiToNum ManZombie = 730
emojiToNum PersonFrowning = 731
-- emojiToNum PersonFrowningLightSkinTone = 732
-- emojiToNum PersonFrowningMediumLightSkinTone = 733
-- emojiToNum PersonFrowningMediumSkinTone = 734
-- emojiToNum PersonFrowningMediumDarkSkinTone = 735
-- emojiToNum PersonFrowningDarkSkinTone = 736
emojiToNum ManFrowning = 737
-- emojiToNum ManFrowningLightSkinTone = 738
-- emojiToNum ManFrowningMediumLightSkinTone = 739
-- emojiToNum ManFrowningMediumSkinTone = 740
-- emojiToNum ManFrowningMediumDarkSkinTone = 741
-- emojiToNum ManFrowningDarkSkinTone = 742
emojiToNum WomanFrowning = 743
-- emojiToNum WomanFrowningLightSkinTone = 744
-- emojiToNum WomanFrowningMediumLightSkinTone = 745
-- emojiToNum WomanFrowningMediumSkinTone = 746
-- emojiToNum WomanFrowningMediumDarkSkinTone = 747
-- emojiToNum WomanFrowningDarkSkinTone = 748
emojiToNum PersonPouting = 749
-- emojiToNum PersonPoutingLightSkinTone = 750
-- emojiToNum PersonPoutingMediumLightSkinTone = 751
-- emojiToNum PersonPoutingMediumSkinTone = 752
-- emojiToNum PersonPoutingMediumDarkSkinTone = 753
-- emojiToNum PersonPoutingDarkSkinTone = 754
emojiToNum ManPouting = 755
-- emojiToNum ManPoutingLightSkinTone = 756
-- emojiToNum ManPoutingMediumLightSkinTone = 757
-- emojiToNum ManPoutingMediumSkinTone = 758
-- emojiToNum ManPoutingMediumDarkSkinTone = 759
-- emojiToNum ManPoutingDarkSkinTone = 760
emojiToNum WomanPouting = 761
-- emojiToNum WomanPoutingLightSkinTone = 762
-- emojiToNum WomanPoutingMediumLightSkinTone = 763
-- emojiToNum WomanPoutingMediumSkinTone = 764
-- emojiToNum WomanPoutingMediumDarkSkinTone = 765
-- emojiToNum WomanPoutingDarkSkinTone = 766
emojiToNum PersonGesturingNO = 767
-- emojiToNum PersonGesturingNOLightSkinTone = 768
-- emojiToNum PersonGesturingNOMediumLightSkinTone = 769
-- emojiToNum PersonGesturingNOMediumSkinTone = 770
-- emojiToNum PersonGesturingNOMediumDarkSkinTone = 771
-- emojiToNum PersonGesturingNODarkSkinTone = 772
emojiToNum ManGesturingNO = 773
-- emojiToNum ManGesturingNOLightSkinTone = 774
-- emojiToNum ManGesturingNOMediumLightSkinTone = 775
-- emojiToNum ManGesturingNOMediumSkinTone = 776
-- emojiToNum ManGesturingNOMediumDarkSkinTone = 777
-- emojiToNum ManGesturingNODarkSkinTone = 778
emojiToNum WomanGesturingNO = 779
-- emojiToNum WomanGesturingNOLightSkinTone = 780
-- emojiToNum WomanGesturingNOMediumLightSkinTone = 781
-- emojiToNum WomanGesturingNOMediumSkinTone = 782
-- emojiToNum WomanGesturingNOMediumDarkSkinTone = 783
-- emojiToNum WomanGesturingNODarkSkinTone = 784
emojiToNum PersonGesturingOK = 785
-- emojiToNum PersonGesturingOKLightSkinTone = 786
-- emojiToNum PersonGesturingOKMediumLightSkinTone = 787
-- emojiToNum PersonGesturingOKMediumSkinTone = 788
-- emojiToNum PersonGesturingOKMediumDarkSkinTone = 789
-- emojiToNum PersonGesturingOKDarkSkinTone = 790
emojiToNum ManGesturingOK = 791
-- emojiToNum ManGesturingOKLightSkinTone = 792
-- emojiToNum ManGesturingOKMediumLightSkinTone = 793
-- emojiToNum ManGesturingOKMediumSkinTone = 794
-- emojiToNum ManGesturingOKMediumDarkSkinTone = 795
-- emojiToNum ManGesturingOKDarkSkinTone = 796
emojiToNum WomanGesturingOK = 797
-- emojiToNum WomanGesturingOKLightSkinTone = 798
-- emojiToNum WomanGesturingOKMediumLightSkinTone = 799
-- emojiToNum WomanGesturingOKMediumSkinTone = 800
-- emojiToNum WomanGesturingOKMediumDarkSkinTone = 801
-- emojiToNum WomanGesturingOKDarkSkinTone = 802
emojiToNum PersonTippingHand = 803
-- emojiToNum PersonTippingHandLightSkinTone = 804
-- emojiToNum PersonTippingHandMediumLightSkinTone = 805
-- emojiToNum PersonTippingHandMediumSkinTone = 806
-- emojiToNum PersonTippingHandMediumDarkSkinTone = 807
-- emojiToNum PersonTippingHandDarkSkinTone = 808
emojiToNum ManTippingHand = 809
-- emojiToNum ManTippingHandLightSkinTone = 810
-- emojiToNum ManTippingHandMediumLightSkinTone = 811
-- emojiToNum ManTippingHandMediumSkinTone = 812
-- emojiToNum ManTippingHandMediumDarkSkinTone = 813
-- emojiToNum ManTippingHandDarkSkinTone = 814
emojiToNum WomanTippingHand = 815
-- emojiToNum WomanTippingHandLightSkinTone = 816
-- emojiToNum WomanTippingHandMediumLightSkinTone = 817
-- emojiToNum WomanTippingHandMediumSkinTone = 818
-- emojiToNum WomanTippingHandMediumDarkSkinTone = 819
-- emojiToNum WomanTippingHandDarkSkinTone = 820
emojiToNum PersonRaisingHand = 821
-- emojiToNum PersonRaisingHandLightSkinTone = 822
-- emojiToNum PersonRaisingHandMediumLightSkinTone = 823
-- emojiToNum PersonRaisingHandMediumSkinTone = 824
-- emojiToNum PersonRaisingHandMediumDarkSkinTone = 825
-- emojiToNum PersonRaisingHandDarkSkinTone = 826
emojiToNum ManRaisingHand = 827
-- emojiToNum ManRaisingHandLightSkinTone = 828
-- emojiToNum ManRaisingHandMediumLightSkinTone = 829
-- emojiToNum ManRaisingHandMediumSkinTone = 830
-- emojiToNum ManRaisingHandMediumDarkSkinTone = 831
-- emojiToNum ManRaisingHandDarkSkinTone = 832
emojiToNum WomanRaisingHand = 833
-- emojiToNum WomanRaisingHandLightSkinTone = 834
-- emojiToNum WomanRaisingHandMediumLightSkinTone = 835
-- emojiToNum WomanRaisingHandMediumSkinTone = 836
-- emojiToNum WomanRaisingHandMediumDarkSkinTone = 837
-- emojiToNum WomanRaisingHandDarkSkinTone = 838
emojiToNum PersonBowing = 839
-- emojiToNum PersonBowingLightSkinTone = 840
-- emojiToNum PersonBowingMediumLightSkinTone = 841
-- emojiToNum PersonBowingMediumSkinTone = 842
-- emojiToNum PersonBowingMediumDarkSkinTone = 843
-- emojiToNum PersonBowingDarkSkinTone = 844
emojiToNum ManBowing = 845
-- emojiToNum ManBowingLightSkinTone = 846
-- emojiToNum ManBowingMediumLightSkinTone = 847
-- emojiToNum ManBowingMediumSkinTone = 848
-- emojiToNum ManBowingMediumDarkSkinTone = 849
-- emojiToNum ManBowingDarkSkinTone = 850
emojiToNum WomanBowing = 851
-- emojiToNum WomanBowingLightSkinTone = 852
-- emojiToNum WomanBowingMediumLightSkinTone = 853
-- emojiToNum WomanBowingMediumSkinTone = 854
-- emojiToNum WomanBowingMediumDarkSkinTone = 855
-- emojiToNum WomanBowingDarkSkinTone = 856
emojiToNum PersonFacepalming = 857
-- emojiToNum PersonFacepalmingLightSkinTone = 858
-- emojiToNum PersonFacepalmingMediumLightSkinTone = 859
-- emojiToNum PersonFacepalmingMediumSkinTone = 860
-- emojiToNum PersonFacepalmingMediumDarkSkinTone = 861
-- emojiToNum PersonFacepalmingDarkSkinTone = 862
emojiToNum ManFacepalming = 863
-- emojiToNum ManFacepalmingLightSkinTone = 864
-- emojiToNum ManFacepalmingMediumLightSkinTone = 865
-- emojiToNum ManFacepalmingMediumSkinTone = 866
-- emojiToNum ManFacepalmingMediumDarkSkinTone = 867
-- emojiToNum ManFacepalmingDarkSkinTone = 868
emojiToNum WomanFacepalming = 869
-- emojiToNum WomanFacepalmingLightSkinTone = 870
-- emojiToNum WomanFacepalmingMediumLightSkinTone = 871
-- emojiToNum WomanFacepalmingMediumSkinTone = 872
-- emojiToNum WomanFacepalmingMediumDarkSkinTone = 873
-- emojiToNum WomanFacepalmingDarkSkinTone = 874
emojiToNum PersonShrugging = 875
-- emojiToNum PersonShruggingLightSkinTone = 876
-- emojiToNum PersonShruggingMediumLightSkinTone = 877
-- emojiToNum PersonShruggingMediumSkinTone = 878
-- emojiToNum PersonShruggingMediumDarkSkinTone = 879
-- emojiToNum PersonShruggingDarkSkinTone = 880
emojiToNum ManShrugging = 881
-- emojiToNum ManShruggingLightSkinTone = 882
-- emojiToNum ManShruggingMediumLightSkinTone = 883
-- emojiToNum ManShruggingMediumSkinTone = 884
-- emojiToNum ManShruggingMediumDarkSkinTone = 885
-- emojiToNum ManShruggingDarkSkinTone = 886
emojiToNum WomanShrugging = 887
-- emojiToNum WomanShruggingLightSkinTone = 888
-- emojiToNum WomanShruggingMediumLightSkinTone = 889
-- emojiToNum WomanShruggingMediumSkinTone = 890
-- emojiToNum WomanShruggingMediumDarkSkinTone = 891
-- emojiToNum WomanShruggingDarkSkinTone = 892
emojiToNum PersonGettingMassage = 893
-- emojiToNum PersonGettingMassageLightSkinTone = 894
-- emojiToNum PersonGettingMassageMediumLightSkinTone = 895
-- emojiToNum PersonGettingMassageMediumSkinTone = 896
-- emojiToNum PersonGettingMassageMediumDarkSkinTone = 897
-- emojiToNum PersonGettingMassageDarkSkinTone = 898
emojiToNum ManGettingMassage = 899
-- emojiToNum ManGettingMassageLightSkinTone = 900
-- emojiToNum ManGettingMassageMediumLightSkinTone = 901
-- emojiToNum ManGettingMassageMediumSkinTone = 902
-- emojiToNum ManGettingMassageMediumDarkSkinTone = 903
-- emojiToNum ManGettingMassageDarkSkinTone = 904
emojiToNum WomanGettingMassage = 905
-- emojiToNum WomanGettingMassageLightSkinTone = 906
-- emojiToNum WomanGettingMassageMediumLightSkinTone = 907
-- emojiToNum WomanGettingMassageMediumSkinTone = 908
-- emojiToNum WomanGettingMassageMediumDarkSkinTone = 909
-- emojiToNum WomanGettingMassageDarkSkinTone = 910
emojiToNum PersonGettingHaircut = 911
-- emojiToNum PersonGettingHaircutLightSkinTone = 912
-- emojiToNum PersonGettingHaircutMediumLightSkinTone = 913
-- emojiToNum PersonGettingHaircutMediumSkinTone = 914
-- emojiToNum PersonGettingHaircutMediumDarkSkinTone = 915
-- emojiToNum PersonGettingHaircutDarkSkinTone = 916
emojiToNum ManGettingHaircut = 917
-- emojiToNum ManGettingHaircutLightSkinTone = 918
-- emojiToNum ManGettingHaircutMediumLightSkinTone = 919
-- emojiToNum ManGettingHaircutMediumSkinTone = 920
-- emojiToNum ManGettingHaircutMediumDarkSkinTone = 921
-- emojiToNum ManGettingHaircutDarkSkinTone = 922
emojiToNum WomanGettingHaircut = 923
-- emojiToNum WomanGettingHaircutLightSkinTone = 924
-- emojiToNum WomanGettingHaircutMediumLightSkinTone = 925
-- emojiToNum WomanGettingHaircutMediumSkinTone = 926
-- emojiToNum WomanGettingHaircutMediumDarkSkinTone = 927
-- emojiToNum WomanGettingHaircutDarkSkinTone = 928
emojiToNum PersonWalking = 929
-- emojiToNum PersonWalkingLightSkinTone = 930
-- emojiToNum PersonWalkingMediumLightSkinTone = 931
-- emojiToNum PersonWalkingMediumSkinTone = 932
-- emojiToNum PersonWalkingMediumDarkSkinTone = 933
-- emojiToNum PersonWalkingDarkSkinTone = 934
emojiToNum ManWalking = 935
-- emojiToNum ManWalkingLightSkinTone = 936
-- emojiToNum ManWalkingMediumLightSkinTone = 937
-- emojiToNum ManWalkingMediumSkinTone = 938
-- emojiToNum ManWalkingMediumDarkSkinTone = 939
-- emojiToNum ManWalkingDarkSkinTone = 940
emojiToNum WomanWalking = 941
-- emojiToNum WomanWalkingLightSkinTone = 942
-- emojiToNum WomanWalkingMediumLightSkinTone = 943
-- emojiToNum WomanWalkingMediumSkinTone = 944
-- emojiToNum WomanWalkingMediumDarkSkinTone = 945
-- emojiToNum WomanWalkingDarkSkinTone = 946
emojiToNum PersonRunning = 947
-- emojiToNum PersonRunningLightSkinTone = 948
-- emojiToNum PersonRunningMediumLightSkinTone = 949
-- emojiToNum PersonRunningMediumSkinTone = 950
-- emojiToNum PersonRunningMediumDarkSkinTone = 951
-- emojiToNum PersonRunningDarkSkinTone = 952
emojiToNum ManRunning = 953
-- emojiToNum ManRunningLightSkinTone = 954
-- emojiToNum ManRunningMediumLightSkinTone = 955
-- emojiToNum ManRunningMediumSkinTone = 956
-- emojiToNum ManRunningMediumDarkSkinTone = 957
-- emojiToNum ManRunningDarkSkinTone = 958
emojiToNum WomanRunning = 959
-- emojiToNum WomanRunningLightSkinTone = 960
-- emojiToNum WomanRunningMediumLightSkinTone = 961
-- emojiToNum WomanRunningMediumSkinTone = 962
-- emojiToNum WomanRunningMediumDarkSkinTone = 963
-- emojiToNum WomanRunningDarkSkinTone = 964
emojiToNum WomanDancing = 965
-- emojiToNum WomanDancingLightSkinTone = 966
-- emojiToNum WomanDancingMediumLightSkinTone = 967
-- emojiToNum WomanDancingMediumSkinTone = 968
-- emojiToNum WomanDancingMediumDarkSkinTone = 969
-- emojiToNum WomanDancingDarkSkinTone = 970
emojiToNum ManDancing = 971
-- emojiToNum ManDancingLightSkinTone = 972
-- emojiToNum ManDancingMediumLightSkinTone = 973
-- emojiToNum ManDancingMediumSkinTone = 974
-- emojiToNum ManDancingMediumDarkSkinTone = 975
-- emojiToNum ManDancingDarkSkinTone = 976
emojiToNum PeopleWithBunnyEars = 977
emojiToNum MenWithBunnyEars = 978
emojiToNum WomenWithBunnyEars = 979
emojiToNum PersonInSteamyRoom = 980
-- emojiToNum PersonInSteamyRoomLightSkinTone = 981
-- emojiToNum PersonInSteamyRoomMediumLightSkinTone = 982
-- emojiToNum PersonInSteamyRoomMediumSkinTone = 983
-- emojiToNum PersonInSteamyRoomMediumDarkSkinTone = 984
-- emojiToNum PersonInSteamyRoomDarkSkinTone = 985
emojiToNum WomanInSteamyRoom = 986
-- emojiToNum WomanInSteamyRoomLightSkinTone = 987
-- emojiToNum WomanInSteamyRoomMediumLightSkinTone = 988
-- emojiToNum WomanInSteamyRoomMediumSkinTone = 989
-- emojiToNum WomanInSteamyRoomMediumDarkSkinTone = 990
-- emojiToNum WomanInSteamyRoomDarkSkinTone = 991
emojiToNum ManInSteamyRoom = 992
-- emojiToNum ManInSteamyRoomLightSkinTone = 993
-- emojiToNum ManInSteamyRoomMediumLightSkinTone = 994
-- emojiToNum ManInSteamyRoomMediumSkinTone = 995
-- emojiToNum ManInSteamyRoomMediumDarkSkinTone = 996
-- emojiToNum ManInSteamyRoomDarkSkinTone = 997
emojiToNum PersonClimbing = 998
-- emojiToNum PersonClimbingLightSkinTone = 999
-- emojiToNum PersonClimbingMediumLightSkinTone = 1000
-- emojiToNum PersonClimbingMediumSkinTone = 1001
-- emojiToNum PersonClimbingMediumDarkSkinTone = 1002
-- emojiToNum PersonClimbingDarkSkinTone = 1003
emojiToNum WomanClimbing = 1004
-- emojiToNum WomanClimbingLightSkinTone = 1005
-- emojiToNum WomanClimbingMediumLightSkinTone = 1006
-- emojiToNum WomanClimbingMediumSkinTone = 1007
-- emojiToNum WomanClimbingMediumDarkSkinTone = 1008
-- emojiToNum WomanClimbingDarkSkinTone = 1009
emojiToNum ManClimbing = 1010
-- emojiToNum ManClimbingLightSkinTone = 1011
-- emojiToNum ManClimbingMediumLightSkinTone = 1012
-- emojiToNum ManClimbingMediumSkinTone = 1013
-- emojiToNum ManClimbingMediumDarkSkinTone = 1014
-- emojiToNum ManClimbingDarkSkinTone = 1015
emojiToNum PersonInLotusPosition = 1016
-- emojiToNum PersonInLotusPositionLightSkinTone = 1017
-- emojiToNum PersonInLotusPositionMediumLightSkinTone = 1018
-- emojiToNum PersonInLotusPositionMediumSkinTone = 1019
-- emojiToNum PersonInLotusPositionMediumDarkSkinTone = 1020
-- emojiToNum PersonInLotusPositionDarkSkinTone = 1021
emojiToNum WomanInLotusPosition = 1022
-- emojiToNum WomanInLotusPositionLightSkinTone = 1023
-- emojiToNum WomanInLotusPositionMediumLightSkinTone = 1024
-- emojiToNum WomanInLotusPositionMediumSkinTone = 1025
-- emojiToNum WomanInLotusPositionMediumDarkSkinTone = 1026
-- emojiToNum WomanInLotusPositionDarkSkinTone = 1027
emojiToNum ManInLotusPosition = 1028
-- emojiToNum ManInLotusPositionLightSkinTone = 1029
-- emojiToNum ManInLotusPositionMediumLightSkinTone = 1030
-- emojiToNum ManInLotusPositionMediumSkinTone = 1031
-- emojiToNum ManInLotusPositionMediumDarkSkinTone = 1032
-- emojiToNum ManInLotusPositionDarkSkinTone = 1033
emojiToNum PersonTakingBath = 1034
-- emojiToNum PersonTakingBathLightSkinTone = 1035
-- emojiToNum PersonTakingBathMediumLightSkinTone = 1036
-- emojiToNum PersonTakingBathMediumSkinTone = 1037
-- emojiToNum PersonTakingBathMediumDarkSkinTone = 1038
-- emojiToNum PersonTakingBathDarkSkinTone = 1039
emojiToNum PersonInBed = 1040
-- emojiToNum PersonInBedLightSkinTone = 1041
-- emojiToNum PersonInBedMediumLightSkinTone = 1042
-- emojiToNum PersonInBedMediumSkinTone = 1043
-- emojiToNum PersonInBedMediumDarkSkinTone = 1044
-- emojiToNum PersonInBedDarkSkinTone = 1045
emojiToNum ManInSuitLevitating = 1046
-- emojiToNum ManInSuitLevitatingLightSkinTone = 1047
-- emojiToNum ManInSuitLevitatingMediumLightSkinTone = 1048
-- emojiToNum ManInSuitLevitatingMediumSkinTone = 1049
-- emojiToNum ManInSuitLevitatingMediumDarkSkinTone = 1050
-- emojiToNum ManInSuitLevitatingDarkSkinTone = 1051
emojiToNum SpeakingHead = 1052
emojiToNum BustInSilhouette = 1053
emojiToNum BustsInSilhouette = 1054
emojiToNum PersonFencing = 1055
emojiToNum HorseRacing = 1056
-- emojiToNum HorseRacingLightSkinTone = 1057
-- emojiToNum HorseRacingMediumLightSkinTone = 1058
-- emojiToNum HorseRacingMediumSkinTone = 1059
-- emojiToNum HorseRacingMediumDarkSkinTone = 1060
-- emojiToNum HorseRacingDarkSkinTone = 1061
emojiToNum Skier = 1062
emojiToNum Snowboarder = 1063
-- emojiToNum SnowboarderLightSkinTone = 1064
-- emojiToNum SnowboarderMediumLightSkinTone = 1065
-- emojiToNum SnowboarderMediumSkinTone = 1066
-- emojiToNum SnowboarderMediumDarkSkinTone = 1067
-- emojiToNum SnowboarderDarkSkinTone = 1068
emojiToNum PersonGolfing = 1069
-- emojiToNum PersonGolfingLightSkinTone = 1070
-- emojiToNum PersonGolfingMediumLightSkinTone = 1071
-- emojiToNum PersonGolfingMediumSkinTone = 1072
-- emojiToNum PersonGolfingMediumDarkSkinTone = 1073
-- emojiToNum PersonGolfingDarkSkinTone = 1074
emojiToNum ManGolfing = 1075
-- emojiToNum ManGolfingLightSkinTone = 1076
-- emojiToNum ManGolfingMediumLightSkinTone = 1077
-- emojiToNum ManGolfingMediumSkinTone = 1078
-- emojiToNum ManGolfingMediumDarkSkinTone = 1079
-- emojiToNum ManGolfingDarkSkinTone = 1080
emojiToNum WomanGolfing = 1081
-- emojiToNum WomanGolfingLightSkinTone = 1082
-- emojiToNum WomanGolfingMediumLightSkinTone = 1083
-- emojiToNum WomanGolfingMediumSkinTone = 1084
-- emojiToNum WomanGolfingMediumDarkSkinTone = 1085
-- emojiToNum WomanGolfingDarkSkinTone = 1086
emojiToNum PersonSurfing = 1087
-- emojiToNum PersonSurfingLightSkinTone = 1088
-- emojiToNum PersonSurfingMediumLightSkinTone = 1089
-- emojiToNum PersonSurfingMediumSkinTone = 1090
-- emojiToNum PersonSurfingMediumDarkSkinTone = 1091
-- emojiToNum PersonSurfingDarkSkinTone = 1092
emojiToNum ManSurfing = 1093
-- emojiToNum ManSurfingLightSkinTone = 1094
-- emojiToNum ManSurfingMediumLightSkinTone = 1095
-- emojiToNum ManSurfingMediumSkinTone = 1096
-- emojiToNum ManSurfingMediumDarkSkinTone = 1097
-- emojiToNum ManSurfingDarkSkinTone = 1098
emojiToNum WomanSurfing = 1099
-- emojiToNum WomanSurfingLightSkinTone = 1100
-- emojiToNum WomanSurfingMediumLightSkinTone = 1101
-- emojiToNum WomanSurfingMediumSkinTone = 1102
-- emojiToNum WomanSurfingMediumDarkSkinTone = 1103
-- emojiToNum WomanSurfingDarkSkinTone = 1104
emojiToNum PersonRowingBoat = 1105
-- emojiToNum PersonRowingBoatLightSkinTone = 1106
-- emojiToNum PersonRowingBoatMediumLightSkinTone = 1107
-- emojiToNum PersonRowingBoatMediumSkinTone = 1108
-- emojiToNum PersonRowingBoatMediumDarkSkinTone = 1109
-- emojiToNum PersonRowingBoatDarkSkinTone = 1110
emojiToNum ManRowingBoat = 1111
-- emojiToNum ManRowingBoatLightSkinTone = 1112
-- emojiToNum ManRowingBoatMediumLightSkinTone = 1113
-- emojiToNum ManRowingBoatMediumSkinTone = 1114
-- emojiToNum ManRowingBoatMediumDarkSkinTone = 1115
-- emojiToNum ManRowingBoatDarkSkinTone = 1116
emojiToNum WomanRowingBoat = 1117
-- emojiToNum WomanRowingBoatLightSkinTone = 1118
-- emojiToNum WomanRowingBoatMediumLightSkinTone = 1119
-- emojiToNum WomanRowingBoatMediumSkinTone = 1120
-- emojiToNum WomanRowingBoatMediumDarkSkinTone = 1121
-- emojiToNum WomanRowingBoatDarkSkinTone = 1122
emojiToNum PersonSwimming = 1123
-- emojiToNum PersonSwimmingLightSkinTone = 1124
-- emojiToNum PersonSwimmingMediumLightSkinTone = 1125
-- emojiToNum PersonSwimmingMediumSkinTone = 1126
-- emojiToNum PersonSwimmingMediumDarkSkinTone = 1127
-- emojiToNum PersonSwimmingDarkSkinTone = 1128
emojiToNum ManSwimming = 1129
-- emojiToNum ManSwimmingLightSkinTone = 1130
-- emojiToNum ManSwimmingMediumLightSkinTone = 1131
-- emojiToNum ManSwimmingMediumSkinTone = 1132
-- emojiToNum ManSwimmingMediumDarkSkinTone = 1133
-- emojiToNum ManSwimmingDarkSkinTone = 1134
emojiToNum WomanSwimming = 1135
-- emojiToNum WomanSwimmingLightSkinTone = 1136
-- emojiToNum WomanSwimmingMediumLightSkinTone = 1137
-- emojiToNum WomanSwimmingMediumSkinTone = 1138
-- emojiToNum WomanSwimmingMediumDarkSkinTone = 1139
-- emojiToNum WomanSwimmingDarkSkinTone = 1140
emojiToNum PersonBouncingBall = 1141
-- emojiToNum PersonBouncingBallLightSkinTone = 1142
-- emojiToNum PersonBouncingBallMediumLightSkinTone = 1143
-- emojiToNum PersonBouncingBallMediumSkinTone = 1144
-- emojiToNum PersonBouncingBallMediumDarkSkinTone = 1145
-- emojiToNum PersonBouncingBallDarkSkinTone = 1146
emojiToNum ManBouncingBall = 1147
-- emojiToNum ManBouncingBallLightSkinTone = 1148
-- emojiToNum ManBouncingBallMediumLightSkinTone = 1149
-- emojiToNum ManBouncingBallMediumSkinTone = 1150
-- emojiToNum ManBouncingBallMediumDarkSkinTone = 1151
-- emojiToNum ManBouncingBallDarkSkinTone = 1152
emojiToNum WomanBouncingBall = 1153
-- emojiToNum WomanBouncingBallLightSkinTone = 1154
-- emojiToNum WomanBouncingBallMediumLightSkinTone = 1155
-- emojiToNum WomanBouncingBallMediumSkinTone = 1156
-- emojiToNum WomanBouncingBallMediumDarkSkinTone = 1157
-- emojiToNum WomanBouncingBallDarkSkinTone = 1158
emojiToNum PersonLiftingWeights = 1159
-- emojiToNum PersonLiftingWeightsLightSkinTone = 1160
-- emojiToNum PersonLiftingWeightsMediumLightSkinTone = 1161
-- emojiToNum PersonLiftingWeightsMediumSkinTone = 1162
-- emojiToNum PersonLiftingWeightsMediumDarkSkinTone = 1163
-- emojiToNum PersonLiftingWeightsDarkSkinTone = 1164
emojiToNum ManLiftingWeights = 1165
-- emojiToNum ManLiftingWeightsLightSkinTone = 1166
-- emojiToNum ManLiftingWeightsMediumLightSkinTone = 1167
-- emojiToNum ManLiftingWeightsMediumSkinTone = 1168
-- emojiToNum ManLiftingWeightsMediumDarkSkinTone = 1169
-- emojiToNum ManLiftingWeightsDarkSkinTone = 1170
emojiToNum WomanLiftingWeights = 1171
-- emojiToNum WomanLiftingWeightsLightSkinTone = 1172
-- emojiToNum WomanLiftingWeightsMediumLightSkinTone = 1173
-- emojiToNum WomanLiftingWeightsMediumSkinTone = 1174
-- emojiToNum WomanLiftingWeightsMediumDarkSkinTone = 1175
-- emojiToNum WomanLiftingWeightsDarkSkinTone = 1176
emojiToNum PersonBiking = 1177
-- emojiToNum PersonBikingLightSkinTone = 1178
-- emojiToNum PersonBikingMediumLightSkinTone = 1179
-- emojiToNum PersonBikingMediumSkinTone = 1180
-- emojiToNum PersonBikingMediumDarkSkinTone = 1181
-- emojiToNum PersonBikingDarkSkinTone = 1182
emojiToNum ManBiking = 1183
-- emojiToNum ManBikingLightSkinTone = 1184
-- emojiToNum ManBikingMediumLightSkinTone = 1185
-- emojiToNum ManBikingMediumSkinTone = 1186
-- emojiToNum ManBikingMediumDarkSkinTone = 1187
-- emojiToNum ManBikingDarkSkinTone = 1188
emojiToNum WomanBiking = 1189
-- emojiToNum WomanBikingLightSkinTone = 1190
-- emojiToNum WomanBikingMediumLightSkinTone = 1191
-- emojiToNum WomanBikingMediumSkinTone = 1192
-- emojiToNum WomanBikingMediumDarkSkinTone = 1193
-- emojiToNum WomanBikingDarkSkinTone = 1194
emojiToNum PersonMountainBiking = 1195
-- emojiToNum PersonMountainBikingLightSkinTone = 1196
-- emojiToNum PersonMountainBikingMediumLightSkinTone = 1197
-- emojiToNum PersonMountainBikingMediumSkinTone = 1198
-- emojiToNum PersonMountainBikingMediumDarkSkinTone = 1199
-- emojiToNum PersonMountainBikingDarkSkinTone = 1200
emojiToNum ManMountainBiking = 1201
-- emojiToNum ManMountainBikingLightSkinTone = 1202
-- emojiToNum ManMountainBikingMediumLightSkinTone = 1203
-- emojiToNum ManMountainBikingMediumSkinTone = 1204
-- emojiToNum ManMountainBikingMediumDarkSkinTone = 1205
-- emojiToNum ManMountainBikingDarkSkinTone = 1206
emojiToNum WomanMountainBiking = 1207
-- emojiToNum WomanMountainBikingLightSkinTone = 1208
-- emojiToNum WomanMountainBikingMediumLightSkinTone = 1209
-- emojiToNum WomanMountainBikingMediumSkinTone = 1210
-- emojiToNum WomanMountainBikingMediumDarkSkinTone = 1211
-- emojiToNum WomanMountainBikingDarkSkinTone = 1212
emojiToNum RacingCar = 1213
emojiToNum Motorcycle = 1214
emojiToNum PersonCartwheeling = 1215
-- emojiToNum PersonCartwheelingLightSkinTone = 1216
-- emojiToNum PersonCartwheelingMediumLightSkinTone = 1217
-- emojiToNum PersonCartwheelingMediumSkinTone = 1218
-- emojiToNum PersonCartwheelingMediumDarkSkinTone = 1219
-- emojiToNum PersonCartwheelingDarkSkinTone = 1220
emojiToNum ManCartwheeling = 1221
-- emojiToNum ManCartwheelingLightSkinTone = 1222
-- emojiToNum ManCartwheelingMediumLightSkinTone = 1223
-- emojiToNum ManCartwheelingMediumSkinTone = 1224
-- emojiToNum ManCartwheelingMediumDarkSkinTone = 1225
-- emojiToNum ManCartwheelingDarkSkinTone = 1226
emojiToNum WomanCartwheeling = 1227
-- emojiToNum WomanCartwheelingLightSkinTone = 1228
-- emojiToNum WomanCartwheelingMediumLightSkinTone = 1229
-- emojiToNum WomanCartwheelingMediumSkinTone = 1230
-- emojiToNum WomanCartwheelingMediumDarkSkinTone = 1231
-- emojiToNum WomanCartwheelingDarkSkinTone = 1232
emojiToNum PeopleWrestling = 1233
emojiToNum MenWrestling = 1234
emojiToNum WomenWrestling = 1235
emojiToNum PersonPlayingWaterPolo = 1236
-- emojiToNum PersonPlayingWaterPoloLightSkinTone = 1237
-- emojiToNum PersonPlayingWaterPoloMediumLightSkinTone = 1238
-- emojiToNum PersonPlayingWaterPoloMediumSkinTone = 1239
-- emojiToNum PersonPlayingWaterPoloMediumDarkSkinTone = 1240
-- emojiToNum PersonPlayingWaterPoloDarkSkinTone = 1241
emojiToNum ManPlayingWaterPolo = 1242
-- emojiToNum ManPlayingWaterPoloLightSkinTone = 1243
-- emojiToNum ManPlayingWaterPoloMediumLightSkinTone = 1244
-- emojiToNum ManPlayingWaterPoloMediumSkinTone = 1245
-- emojiToNum ManPlayingWaterPoloMediumDarkSkinTone = 1246
-- emojiToNum ManPlayingWaterPoloDarkSkinTone = 1247
emojiToNum WomanPlayingWaterPolo = 1248
-- emojiToNum WomanPlayingWaterPoloLightSkinTone = 1249
-- emojiToNum WomanPlayingWaterPoloMediumLightSkinTone = 1250
-- emojiToNum WomanPlayingWaterPoloMediumSkinTone = 1251
-- emojiToNum WomanPlayingWaterPoloMediumDarkSkinTone = 1252
-- emojiToNum WomanPlayingWaterPoloDarkSkinTone = 1253
emojiToNum PersonPlayingHandball = 1254
-- emojiToNum PersonPlayingHandballLightSkinTone = 1255
-- emojiToNum PersonPlayingHandballMediumLightSkinTone = 1256
-- emojiToNum PersonPlayingHandballMediumSkinTone = 1257
-- emojiToNum PersonPlayingHandballMediumDarkSkinTone = 1258
-- emojiToNum PersonPlayingHandballDarkSkinTone = 1259
emojiToNum ManPlayingHandball = 1260
-- emojiToNum ManPlayingHandballLightSkinTone = 1261
-- emojiToNum ManPlayingHandballMediumLightSkinTone = 1262
-- emojiToNum ManPlayingHandballMediumSkinTone = 1263
-- emojiToNum ManPlayingHandballMediumDarkSkinTone = 1264
-- emojiToNum ManPlayingHandballDarkSkinTone = 1265
emojiToNum WomanPlayingHandball = 1266
-- emojiToNum WomanPlayingHandballLightSkinTone = 1267
-- emojiToNum WomanPlayingHandballMediumLightSkinTone = 1268
-- emojiToNum WomanPlayingHandballMediumSkinTone = 1269
-- emojiToNum WomanPlayingHandballMediumDarkSkinTone = 1270
-- emojiToNum WomanPlayingHandballDarkSkinTone = 1271
emojiToNum PersonJuggling = 1272
-- emojiToNum PersonJugglingLightSkinTone = 1273
-- emojiToNum PersonJugglingMediumLightSkinTone = 1274
-- emojiToNum PersonJugglingMediumSkinTone = 1275
-- emojiToNum PersonJugglingMediumDarkSkinTone = 1276
-- emojiToNum PersonJugglingDarkSkinTone = 1277
emojiToNum ManJuggling = 1278
-- emojiToNum ManJugglingLightSkinTone = 1279
-- emojiToNum ManJugglingMediumLightSkinTone = 1280
-- emojiToNum ManJugglingMediumSkinTone = 1281
-- emojiToNum ManJugglingMediumDarkSkinTone = 1282
-- emojiToNum ManJugglingDarkSkinTone = 1283
emojiToNum WomanJuggling = 1284
-- emojiToNum WomanJugglingLightSkinTone = 1285
-- emojiToNum WomanJugglingMediumLightSkinTone = 1286
-- emojiToNum WomanJugglingMediumSkinTone = 1287
-- emojiToNum WomanJugglingMediumDarkSkinTone = 1288
-- emojiToNum WomanJugglingDarkSkinTone = 1289
emojiToNum ManAndWomanHoldingHands = 1290
emojiToNum TwoMenHoldingHands = 1291
emojiToNum TwoWomenHoldingHands = 1292
emojiToNum Kiss = 1293
emojiToNum KissWomanMan = 1294
emojiToNum KissManMan = 1295
emojiToNum KissWomanWoman = 1296
emojiToNum CoupleWithHeart = 1297
emojiToNum CoupleWithHeartWomanMan = 1298
emojiToNum CoupleWithHeartManMan = 1299
emojiToNum CoupleWithHeartWomanWoman = 1300
emojiToNum Family = 1301
emojiToNum FamilyManWomanBoy = 1302
emojiToNum FamilyManWomanGirl = 1303
emojiToNum FamilyManWomanGirlBoy = 1304
emojiToNum FamilyManWomanBoyBoy = 1305
emojiToNum FamilyManWomanGirlGirl = 1306
emojiToNum FamilyManManBoy = 1307
emojiToNum FamilyManManGirl = 1308
emojiToNum FamilyManManGirlBoy = 1309
emojiToNum FamilyManManBoyBoy = 1310
emojiToNum FamilyManManGirlGirl = 1311
emojiToNum FamilyWomanWomanBoy = 1312
emojiToNum FamilyWomanWomanGirl = 1313
emojiToNum FamilyWomanWomanGirlBoy = 1314
emojiToNum FamilyWomanWomanBoyBoy = 1315
emojiToNum FamilyWomanWomanGirlGirl = 1316
emojiToNum FamilyManBoy = 1317
emojiToNum FamilyManBoyBoy = 1318
emojiToNum FamilyManGirl = 1319
emojiToNum FamilyManGirlBoy = 1320
emojiToNum FamilyManGirlGirl = 1321
emojiToNum FamilyWomanBoy = 1322
emojiToNum FamilyWomanBoyBoy = 1323
emojiToNum FamilyWomanGirl = 1324
emojiToNum FamilyWomanGirlBoy = 1325
emojiToNum FamilyWomanGirlGirl = 1326
emojiToNum Selfie = 1327
-- emojiToNum SelfieLightSkinTone = 1328
-- emojiToNum SelfieMediumLightSkinTone = 1329
-- emojiToNum SelfieMediumSkinTone = 1330
-- emojiToNum SelfieMediumDarkSkinTone = 1331
-- emojiToNum SelfieDarkSkinTone = 1332
emojiToNum FlexedBiceps = 1333
-- emojiToNum FlexedBicepsLightSkinTone = 1334
-- emojiToNum FlexedBicepsMediumLightSkinTone = 1335
-- emojiToNum FlexedBicepsMediumSkinTone = 1336
-- emojiToNum FlexedBicepsMediumDarkSkinTone = 1337
-- emojiToNum FlexedBicepsDarkSkinTone = 1338
emojiToNum Leg = 1339
-- emojiToNum LegLightSkinTone = 1340
-- emojiToNum LegMediumLightSkinTone = 1341
-- emojiToNum LegMediumSkinTone = 1342
-- emojiToNum LegMediumDarkSkinTone = 1343
-- emojiToNum LegDarkSkinTone = 1344
emojiToNum Foot = 1345
-- emojiToNum FootLightSkinTone = 1346
-- emojiToNum FootMediumLightSkinTone = 1347
-- emojiToNum FootMediumSkinTone = 1348
-- emojiToNum FootMediumDarkSkinTone = 1349
-- emojiToNum FootDarkSkinTone = 1350
emojiToNum BackhandIndexPointingLeft = 1351
-- emojiToNum BackhandIndexPointingLeftLightSkinTone = 1352
-- emojiToNum BackhandIndexPointingLeftMediumLightSkinTone = 1353
-- emojiToNum BackhandIndexPointingLeftMediumSkinTone = 1354
-- emojiToNum BackhandIndexPointingLeftMediumDarkSkinTone = 1355
-- emojiToNum BackhandIndexPointingLeftDarkSkinTone = 1356
emojiToNum BackhandIndexPointingRight = 1357
-- emojiToNum BackhandIndexPointingRightLightSkinTone = 1358
-- emojiToNum BackhandIndexPointingRightMediumLightSkinTone = 1359
-- emojiToNum BackhandIndexPointingRightMediumSkinTone = 1360
-- emojiToNum BackhandIndexPointingRightMediumDarkSkinTone = 1361
-- emojiToNum BackhandIndexPointingRightDarkSkinTone = 1362
emojiToNum IndexPointingUp = 1363
-- emojiToNum IndexPointingUpLightSkinTone = 1364
-- emojiToNum IndexPointingUpMediumLightSkinTone = 1365
-- emojiToNum IndexPointingUpMediumSkinTone = 1366
-- emojiToNum IndexPointingUpMediumDarkSkinTone = 1367
-- emojiToNum IndexPointingUpDarkSkinTone = 1368
emojiToNum BackhandIndexPointingUp = 1369
-- emojiToNum BackhandIndexPointingUpLightSkinTone = 1370
-- emojiToNum BackhandIndexPointingUpMediumLightSkinTone = 1371
-- emojiToNum BackhandIndexPointingUpMediumSkinTone = 1372
-- emojiToNum BackhandIndexPointingUpMediumDarkSkinTone = 1373
-- emojiToNum BackhandIndexPointingUpDarkSkinTone = 1374
emojiToNum MiddleFinger = 1375
-- emojiToNum MiddleFingerLightSkinTone = 1376
-- emojiToNum MiddleFingerMediumLightSkinTone = 1377
-- emojiToNum MiddleFingerMediumSkinTone = 1378
-- emojiToNum MiddleFingerMediumDarkSkinTone = 1379
-- emojiToNum MiddleFingerDarkSkinTone = 1380
emojiToNum BackhandIndexPointingDown = 1381
-- emojiToNum BackhandIndexPointingDownLightSkinTone = 1382
-- emojiToNum BackhandIndexPointingDownMediumLightSkinTone = 1383
-- emojiToNum BackhandIndexPointingDownMediumSkinTone = 1384
-- emojiToNum BackhandIndexPointingDownMediumDarkSkinTone = 1385
-- emojiToNum BackhandIndexPointingDownDarkSkinTone = 1386
emojiToNum VictoryHand = 1387
-- emojiToNum VictoryHandLightSkinTone = 1388
-- emojiToNum VictoryHandMediumLightSkinTone = 1389
-- emojiToNum VictoryHandMediumSkinTone = 1390
-- emojiToNum VictoryHandMediumDarkSkinTone = 1391
-- emojiToNum VictoryHandDarkSkinTone = 1392
emojiToNum CrossedFingers = 1393
-- emojiToNum CrossedFingersLightSkinTone = 1394
-- emojiToNum CrossedFingersMediumLightSkinTone = 1395
-- emojiToNum CrossedFingersMediumSkinTone = 1396
-- emojiToNum CrossedFingersMediumDarkSkinTone = 1397
-- emojiToNum CrossedFingersDarkSkinTone = 1398
emojiToNum VulcanSalute = 1399
-- emojiToNum VulcanSaluteLightSkinTone = 1400
-- emojiToNum VulcanSaluteMediumLightSkinTone = 1401
-- emojiToNum VulcanSaluteMediumSkinTone = 1402
-- emojiToNum VulcanSaluteMediumDarkSkinTone = 1403
-- emojiToNum VulcanSaluteDarkSkinTone = 1404
emojiToNum SignOfTheHorns = 1405
-- emojiToNum SignOfTheHornsLightSkinTone = 1406
-- emojiToNum SignOfTheHornsMediumLightSkinTone = 1407
-- emojiToNum SignOfTheHornsMediumSkinTone = 1408
-- emojiToNum SignOfTheHornsMediumDarkSkinTone = 1409
-- emojiToNum SignOfTheHornsDarkSkinTone = 1410
emojiToNum CallMeHand = 1411
-- emojiToNum CallMeHandLightSkinTone = 1412
-- emojiToNum CallMeHandMediumLightSkinTone = 1413
-- emojiToNum CallMeHandMediumSkinTone = 1414
-- emojiToNum CallMeHandMediumDarkSkinTone = 1415
-- emojiToNum CallMeHandDarkSkinTone = 1416
emojiToNum HandWithFingersSplayed = 1417
-- emojiToNum HandWithFingersSplayedLightSkinTone = 1418
-- emojiToNum HandWithFingersSplayedMediumLightSkinTone = 1419
-- emojiToNum HandWithFingersSplayedMediumSkinTone = 1420
-- emojiToNum HandWithFingersSplayedMediumDarkSkinTone = 1421
-- emojiToNum HandWithFingersSplayedDarkSkinTone = 1422
emojiToNum RaisedHand = 1423
-- emojiToNum RaisedHandLightSkinTone = 1424
-- emojiToNum RaisedHandMediumLightSkinTone = 1425
-- emojiToNum RaisedHandMediumSkinTone = 1426
-- emojiToNum RaisedHandMediumDarkSkinTone = 1427
-- emojiToNum RaisedHandDarkSkinTone = 1428
emojiToNum OKHand = 1429
-- emojiToNum OKHandLightSkinTone = 1430
-- emojiToNum OKHandMediumLightSkinTone = 1431
-- emojiToNum OKHandMediumSkinTone = 1432
-- emojiToNum OKHandMediumDarkSkinTone = 1433
-- emojiToNum OKHandDarkSkinTone = 1434
emojiToNum ThumbsUp = 1435
-- emojiToNum ThumbsUpLightSkinTone = 1436
-- emojiToNum ThumbsUpMediumLightSkinTone = 1437
-- emojiToNum ThumbsUpMediumSkinTone = 1438
-- emojiToNum ThumbsUpMediumDarkSkinTone = 1439
-- emojiToNum ThumbsUpDarkSkinTone = 1440
emojiToNum ThumbsDown = 1441
-- emojiToNum ThumbsDownLightSkinTone = 1442
-- emojiToNum ThumbsDownMediumLightSkinTone = 1443
-- emojiToNum ThumbsDownMediumSkinTone = 1444
-- emojiToNum ThumbsDownMediumDarkSkinTone = 1445
-- emojiToNum ThumbsDownDarkSkinTone = 1446
emojiToNum RaisedFist = 1447
-- emojiToNum RaisedFistLightSkinTone = 1448
-- emojiToNum RaisedFistMediumLightSkinTone = 1449
-- emojiToNum RaisedFistMediumSkinTone = 1450
-- emojiToNum RaisedFistMediumDarkSkinTone = 1451
-- emojiToNum RaisedFistDarkSkinTone = 1452
emojiToNum OncomingFist = 1453
-- emojiToNum OncomingFistLightSkinTone = 1454
-- emojiToNum OncomingFistMediumLightSkinTone = 1455
-- emojiToNum OncomingFistMediumSkinTone = 1456
-- emojiToNum OncomingFistMediumDarkSkinTone = 1457
-- emojiToNum OncomingFistDarkSkinTone = 1458
emojiToNum LeftFacingFist = 1459
-- emojiToNum LeftFacingFistLightSkinTone = 1460
-- emojiToNum LeftFacingFistMediumLightSkinTone = 1461
-- emojiToNum LeftFacingFistMediumSkinTone = 1462
-- emojiToNum LeftFacingFistMediumDarkSkinTone = 1463
-- emojiToNum LeftFacingFistDarkSkinTone = 1464
emojiToNum RightFacingFist = 1465
-- emojiToNum RightFacingFistLightSkinTone = 1466
-- emojiToNum RightFacingFistMediumLightSkinTone = 1467
-- emojiToNum RightFacingFistMediumSkinTone = 1468
-- emojiToNum RightFacingFistMediumDarkSkinTone = 1469
-- emojiToNum RightFacingFistDarkSkinTone = 1470
emojiToNum RaisedBackOfHand = 1471
-- emojiToNum RaisedBackOfHandLightSkinTone = 1472
-- emojiToNum RaisedBackOfHandMediumLightSkinTone = 1473
-- emojiToNum RaisedBackOfHandMediumSkinTone = 1474
-- emojiToNum RaisedBackOfHandMediumDarkSkinTone = 1475
-- emojiToNum RaisedBackOfHandDarkSkinTone = 1476
emojiToNum WavingHand = 1477
-- emojiToNum WavingHandLightSkinTone = 1478
-- emojiToNum WavingHandMediumLightSkinTone = 1479
-- emojiToNum WavingHandMediumSkinTone = 1480
-- emojiToNum WavingHandMediumDarkSkinTone = 1481
-- emojiToNum WavingHandDarkSkinTone = 1482
emojiToNum LoveYouGesture = 1483
-- emojiToNum LoveYouGestureLightSkinTone = 1484
-- emojiToNum LoveYouGestureMediumLightSkinTone = 1485
-- emojiToNum LoveYouGestureMediumSkinTone = 1486
-- emojiToNum LoveYouGestureMediumDarkSkinTone = 1487
-- emojiToNum LoveYouGestureDarkSkinTone = 1488
emojiToNum WritingHand = 1489
-- emojiToNum WritingHandLightSkinTone = 1490
-- emojiToNum WritingHandMediumLightSkinTone = 1491
-- emojiToNum WritingHandMediumSkinTone = 1492
-- emojiToNum WritingHandMediumDarkSkinTone = 1493
-- emojiToNum WritingHandDarkSkinTone = 1494
emojiToNum ClappingHands = 1495
-- emojiToNum ClappingHandsLightSkinTone = 1496
-- emojiToNum ClappingHandsMediumLightSkinTone = 1497
-- emojiToNum ClappingHandsMediumSkinTone = 1498
-- emojiToNum ClappingHandsMediumDarkSkinTone = 1499
-- emojiToNum ClappingHandsDarkSkinTone = 1500
emojiToNum OpenHands = 1501
-- emojiToNum OpenHandsLightSkinTone = 1502
-- emojiToNum OpenHandsMediumLightSkinTone = 1503
-- emojiToNum OpenHandsMediumSkinTone = 1504
-- emojiToNum OpenHandsMediumDarkSkinTone = 1505
-- emojiToNum OpenHandsDarkSkinTone = 1506
emojiToNum RaisingHands = 1507
-- emojiToNum RaisingHandsLightSkinTone = 1508
-- emojiToNum RaisingHandsMediumLightSkinTone = 1509
-- emojiToNum RaisingHandsMediumSkinTone = 1510
-- emojiToNum RaisingHandsMediumDarkSkinTone = 1511
-- emojiToNum RaisingHandsDarkSkinTone = 1512
emojiToNum PalmsUpTogether = 1513
-- emojiToNum PalmsUpTogetherLightSkinTone = 1514
-- emojiToNum PalmsUpTogetherMediumLightSkinTone = 1515
-- emojiToNum PalmsUpTogetherMediumSkinTone = 1516
-- emojiToNum PalmsUpTogetherMediumDarkSkinTone = 1517
-- emojiToNum PalmsUpTogetherDarkSkinTone = 1518
emojiToNum FoldedHands = 1519
-- emojiToNum FoldedHandsLightSkinTone = 1520
-- emojiToNum FoldedHandsMediumLightSkinTone = 1521
-- emojiToNum FoldedHandsMediumSkinTone = 1522
-- emojiToNum FoldedHandsMediumDarkSkinTone = 1523
-- emojiToNum FoldedHandsDarkSkinTone = 1524
emojiToNum Handshake = 1525
emojiToNum NailPolish = 1526
-- emojiToNum NailPolishLightSkinTone = 1527
-- emojiToNum NailPolishMediumLightSkinTone = 1528
-- emojiToNum NailPolishMediumSkinTone = 1529
-- emojiToNum NailPolishMediumDarkSkinTone = 1530
-- emojiToNum NailPolishDarkSkinTone = 1531
emojiToNum Ear = 1532
-- emojiToNum EarLightSkinTone = 1533
-- emojiToNum EarMediumLightSkinTone = 1534
-- emojiToNum EarMediumSkinTone = 1535
-- emojiToNum EarMediumDarkSkinTone = 1536
-- emojiToNum EarDarkSkinTone = 1537
emojiToNum Nose = 1538
-- emojiToNum NoseLightSkinTone = 1539
-- emojiToNum NoseMediumLightSkinTone = 1540
-- emojiToNum NoseMediumSkinTone = 1541
-- emojiToNum NoseMediumDarkSkinTone = 1542
-- emojiToNum NoseDarkSkinTone = 1543
emojiToNum RedHaired = 1544
emojiToNum CurlyHaired = 1545
emojiToNum Bald = 1546
emojiToNum WhiteHaired = 1547
emojiToNum Footprints = 1548
emojiToNum Eyes = 1549
emojiToNum Eye = 1550
emojiToNum EyeInSpeechBubble = 1551
emojiToNum Brain = 1552
emojiToNum Bone = 1553
emojiToNum Tooth = 1554
emojiToNum Tongue = 1555
emojiToNum Mouth = 1556
emojiToNum KissMark = 1557
emojiToNum HeartWithArrow = 1558
emojiToNum RedHeart = 1559
emojiToNum BeatingHeart = 1560
emojiToNum BrokenHeart = 1561
emojiToNum TwoHearts = 1562
emojiToNum SparklingHeart = 1563
emojiToNum GrowingHeart = 1564
emojiToNum BlueHeart = 1565
emojiToNum GreenHeart = 1566
emojiToNum YellowHeart = 1567
emojiToNum OrangeHeart = 1568
emojiToNum PurpleHeart = 1569
emojiToNum BlackHeart = 1570
emojiToNum HeartWithRibbon = 1571
emojiToNum RevolvingHearts = 1572
emojiToNum HeartDecoration = 1573
emojiToNum HeavyHeartExclamation = 1574
emojiToNum LoveLetter = 1575
emojiToNum Zzz = 1576
emojiToNum AngerSymbol = 1577
emojiToNum Bomb = 1578
emojiToNum Collision = 1579
emojiToNum SweatDroplets = 1580
emojiToNum DashingAway = 1581
emojiToNum Dizzy = 1582
emojiToNum SpeechBalloon = 1583
emojiToNum LeftSpeechBubble = 1584
emojiToNum RightAngerBubble = 1585
emojiToNum ThoughtBalloon = 1586
emojiToNum Hole = 1587
emojiToNum Glasses = 1588
emojiToNum Sunglasses = 1589
emojiToNum Goggles = 1590
emojiToNum LabCoat = 1591
emojiToNum Necktie = 1592
emojiToNum TShirt = 1593
emojiToNum Jeans = 1594
emojiToNum Scarf = 1595
emojiToNum Gloves = 1596
emojiToNum Coat = 1597
emojiToNum Socks = 1598
emojiToNum Dress = 1599
emojiToNum Kimono = 1600
emojiToNum Bikini = 1601
emojiToNum WomansClothes = 1602
emojiToNum Purse = 1603
emojiToNum Handbag = 1604
emojiToNum ClutchBag = 1605
emojiToNum ShoppingBags = 1606
emojiToNum SchoolBackpack = 1607
emojiToNum MansShoe = 1608
emojiToNum RunningShoe = 1609
emojiToNum HikingBoot = 1610
emojiToNum WomansFlatShoe = 1611
emojiToNum HighHeeledShoe = 1612
emojiToNum WomansSandal = 1613
emojiToNum WomansBoot = 1614
emojiToNum Crown = 1615
emojiToNum WomansHat = 1616
emojiToNum TopHat = 1617
emojiToNum GraduationCap = 1618
emojiToNum BilledCap = 1619
emojiToNum RescueWorkersHelmet = 1620
emojiToNum PrayerBeads = 1621
emojiToNum Lipstick = 1622
emojiToNum Ring = 1623
emojiToNum GemStone = 1624
emojiToNum MonkeyFace = 1625
emojiToNum Monkey = 1626
emojiToNum Gorilla = 1627
emojiToNum DogFace = 1628
emojiToNum Dog = 1629
emojiToNum Poodle = 1630
emojiToNum WolfFace = 1631
emojiToNum FoxFace = 1632
emojiToNum Raccoon = 1633
emojiToNum CatFace = 1634
emojiToNum Cat = 1635
emojiToNum LionFace = 1636
emojiToNum TigerFace = 1637
emojiToNum Tiger = 1638
emojiToNum Leopard = 1639
emojiToNum HorseFace = 1640
emojiToNum Horse = 1641
emojiToNum UnicornFace = 1642
emojiToNum Zebra = 1643
emojiToNum Deer = 1644
emojiToNum CowFace = 1645
emojiToNum Ox = 1646
emojiToNum WaterBuffalo = 1647
emojiToNum Cow = 1648
emojiToNum PigFace = 1649
emojiToNum Pig = 1650
emojiToNum Boar = 1651
emojiToNum PigNose = 1652
emojiToNum Ram = 1653
emojiToNum Ewe = 1654
emojiToNum Goat = 1655
emojiToNum Camel = 1656
emojiToNum TwoHumpCamel = 1657
emojiToNum Llama = 1658
emojiToNum Giraffe = 1659
emojiToNum Elephant = 1660
emojiToNum Rhinoceros = 1661
emojiToNum Hippopotamus = 1662
emojiToNum MouseFace = 1663
emojiToNum Mouse = 1664
emojiToNum Rat = 1665
emojiToNum HamsterFace = 1666
emojiToNum RabbitFace = 1667
emojiToNum Rabbit = 1668
emojiToNum Chipmunk = 1669
emojiToNum Hedgehog = 1670
emojiToNum Bat = 1671
emojiToNum BearFace = 1672
emojiToNum Koala = 1673
emojiToNum PandaFace = 1674
emojiToNum Kangaroo = 1675
emojiToNum Badger = 1676
emojiToNum PawPrints = 1677
emojiToNum Turkey = 1678
emojiToNum Chicken = 1679
emojiToNum Rooster = 1680
emojiToNum HatchingChick = 1681
emojiToNum BabyChick = 1682
emojiToNum FrontFacingBabyChick = 1683
emojiToNum Bird = 1684
emojiToNum Penguin = 1685
emojiToNum Dove = 1686
emojiToNum Eagle = 1687
emojiToNum Duck = 1688
emojiToNum Swan = 1689
emojiToNum Owl = 1690
emojiToNum Peacock = 1691
emojiToNum Parrot = 1692
emojiToNum FrogFace = 1693
emojiToNum Crocodile = 1694
emojiToNum Turtle = 1695
emojiToNum Lizard = 1696
emojiToNum Snake = 1697
emojiToNum DragonFace = 1698
emojiToNum Dragon = 1699
emojiToNum Sauropod = 1700
emojiToNum TRex = 1701
emojiToNum SpoutingWhale = 1702
emojiToNum Whale = 1703
emojiToNum Dolphin = 1704
emojiToNum Fish = 1705
emojiToNum TropicalFish = 1706
emojiToNum Blowfish = 1707
emojiToNum Shark = 1708
emojiToNum Octopus = 1709
emojiToNum SpiralShell = 1710
emojiToNum Crab = 1711
emojiToNum Lobster = 1712
emojiToNum Shrimp = 1713
emojiToNum Squid = 1714
emojiToNum Snail = 1715
emojiToNum Butterfly = 1716
emojiToNum Bug = 1717
emojiToNum Ant = 1718
emojiToNum Honeybee = 1719
emojiToNum LadyBeetle = 1720
emojiToNum Cricket = 1721
emojiToNum Spider = 1722
emojiToNum SpiderWeb = 1723
emojiToNum Scorpion = 1724
emojiToNum Mosquito = 1725
emojiToNum Microbe = 1726
emojiToNum Bouquet = 1727
emojiToNum CherryBlossom = 1728
emojiToNum WhiteFlower = 1729
emojiToNum Rosette = 1730
emojiToNum Rose = 1731
emojiToNum WiltedFlower = 1732
emojiToNum Hibiscus = 1733
emojiToNum Sunflower = 1734
emojiToNum Blossom = 1735
emojiToNum Tulip = 1736
emojiToNum Seedling = 1737
emojiToNum EvergreenTree = 1738
emojiToNum DeciduousTree = 1739
emojiToNum PalmTree = 1740
emojiToNum Cactus = 1741
emojiToNum SheafOfRice = 1742
emojiToNum Herb = 1743
emojiToNum Shamrock = 1744
emojiToNum FourLeafClover = 1745
emojiToNum MapleLeaf = 1746
emojiToNum FallenLeaf = 1747
emojiToNum LeafFlutteringInWind = 1748
emojiToNum Grapes = 1749
emojiToNum Melon = 1750
emojiToNum Watermelon = 1751
emojiToNum Tangerine = 1752
emojiToNum Lemon = 1753
emojiToNum Banana = 1754
emojiToNum Pineapple = 1755
emojiToNum Mango = 1756
emojiToNum RedApple = 1757
emojiToNum GreenApple = 1758
emojiToNum Pear = 1759
emojiToNum Peach = 1760
emojiToNum Cherries = 1761
emojiToNum Strawberry = 1762
emojiToNum KiwiFruit = 1763
emojiToNum Tomato = 1764
emojiToNum Coconut = 1765
emojiToNum Avocado = 1766
emojiToNum Eggplant = 1767
emojiToNum Potato = 1768
emojiToNum Carrot = 1769
emojiToNum EarOfCorn = 1770
emojiToNum HotPepper = 1771
emojiToNum Cucumber = 1772
emojiToNum LeafyGreen = 1773
emojiToNum Broccoli = 1774
emojiToNum Mushroom = 1775
emojiToNum Peanuts = 1776
emojiToNum Chestnut = 1777
emojiToNum Bread = 1778
emojiToNum Croissant = 1779
emojiToNum BaguetteBread = 1780
emojiToNum Pretzel = 1781
emojiToNum Bagel = 1782
emojiToNum Pancakes = 1783
emojiToNum CheeseWedge = 1784
emojiToNum MeatOnBone = 1785
emojiToNum PoultryLeg = 1786
emojiToNum CutOfMeat = 1787
emojiToNum Bacon = 1788
emojiToNum Hamburger = 1789
emojiToNum FrenchFries = 1790
emojiToNum Pizza = 1791
emojiToNum HotDog = 1792
emojiToNum Sandwich = 1793
emojiToNum Taco = 1794
emojiToNum Burrito = 1795
emojiToNum StuffedFlatbread = 1796
emojiToNum Egg = 1797
emojiToNum Cooking = 1798
emojiToNum ShallowPanOfFood = 1799
emojiToNum PotOfFood = 1800
emojiToNum BowlWithSpoon = 1801
emojiToNum GreenSalad = 1802
emojiToNum Popcorn = 1803
emojiToNum Salt = 1804
emojiToNum CannedFood = 1805
emojiToNum BentoBox = 1806
emojiToNum RiceCracker = 1807
emojiToNum RiceBall = 1808
emojiToNum CookedRice = 1809
emojiToNum CurryRice = 1810
emojiToNum SteamingBowl = 1811
emojiToNum Spaghetti = 1812
emojiToNum RoastedSweetPotato = 1813
emojiToNum Oden = 1814
emojiToNum Sushi = 1815
emojiToNum FriedShrimp = 1816
emojiToNum FishCakeWithSwirl = 1817
emojiToNum MoonCake = 1818
emojiToNum Dango = 1819
emojiToNum Dumpling = 1820
emojiToNum FortuneCookie = 1821
emojiToNum TakeoutBox = 1822
emojiToNum SoftIceCream = 1823
emojiToNum ShavedIce = 1824
emojiToNum IceCream = 1825
emojiToNum Doughnut = 1826
emojiToNum Cookie = 1827
emojiToNum BirthdayCake = 1828
emojiToNum Shortcake = 1829
emojiToNum Cupcake = 1830
emojiToNum Pie = 1831
emojiToNum ChocolateBar = 1832
emojiToNum Candy = 1833
emojiToNum Lollipop = 1834
emojiToNum Custard = 1835
emojiToNum HoneyPot = 1836
emojiToNum BabyBottle = 1837
emojiToNum GlassOfMilk = 1838
emojiToNum HotBeverage = 1839
emojiToNum TeacupWithoutHandle = 1840
emojiToNum Sake = 1841
emojiToNum BottleWithPoppingCork = 1842
emojiToNum WineGlass = 1843
emojiToNum CocktailGlass = 1844
emojiToNum TropicalDrink = 1845
emojiToNum BeerMug = 1846
emojiToNum ClinkingBeerMugs = 1847
emojiToNum ClinkingGlasses = 1848
emojiToNum TumblerGlass = 1849
emojiToNum CupWithStraw = 1850
emojiToNum Chopsticks = 1851
emojiToNum ForkAndKnifeWithPlate = 1852
emojiToNum ForkAndKnife = 1853
emojiToNum Spoon = 1854
emojiToNum KitchenKnife = 1855
emojiToNum Amphora = 1856
emojiToNum GlobeShowingEuropeAfrica = 1857
emojiToNum GlobeShowingAmericas = 1858
emojiToNum GlobeShowingAsiaAustralia = 1859
emojiToNum GlobeWithMeridians = 1860
emojiToNum WorldMap = 1861
emojiToNum MapOfJapan = 1862
emojiToNum Compass = 1863
emojiToNum SnowCappedMountain = 1864
emojiToNum Mountain = 1865
emojiToNum Volcano = 1866
emojiToNum MountFuji = 1867
emojiToNum Camping = 1868
emojiToNum BeachWithUmbrella = 1869
emojiToNum Desert = 1870
emojiToNum DesertIsland = 1871
emojiToNum NationalPark = 1872
emojiToNum Stadium = 1873
emojiToNum ClassicalBuilding = 1874
emojiToNum BuildingConstruction = 1875
emojiToNum Bricks = 1876
emojiToNum Houses = 1877
emojiToNum DerelictHouse = 1878
emojiToNum House = 1879
emojiToNum HouseWithGarden = 1880
emojiToNum OfficeBuilding = 1881
emojiToNum JapanesePostOffice = 1882
emojiToNum PostOffice = 1883
emojiToNum Hospital = 1884
emojiToNum Bank = 1885
emojiToNum Hotel = 1886
emojiToNum LoveHotel = 1887
emojiToNum ConvenienceStore = 1888
emojiToNum School = 1889
emojiToNum DepartmentStore = 1890
emojiToNum Factory = 1891
emojiToNum JapaneseCastle = 1892
emojiToNum Castle = 1893
emojiToNum Wedding = 1894
emojiToNum TokyoTower = 1895
emojiToNum StatueOfLiberty = 1896
emojiToNum Church = 1897
emojiToNum Mosque = 1898
emojiToNum Synagogue = 1899
emojiToNum ShintoShrine = 1900
emojiToNum Kaaba = 1901
emojiToNum Fountain = 1902
emojiToNum Tent = 1903
emojiToNum Foggy = 1904
emojiToNum NightWithStars = 1905
emojiToNum Cityscape = 1906
emojiToNum SunriseOverMountains = 1907
emojiToNum Sunrise = 1908
emojiToNum CityscapeAtDusk = 1909
emojiToNum Sunset = 1910
emojiToNum BridgeAtNight = 1911
emojiToNum HotSprings = 1912
emojiToNum MilkyWay = 1913
emojiToNum CarouselHorse = 1914
emojiToNum FerrisWheel = 1915
emojiToNum RollerCoaster = 1916
emojiToNum BarberPole = 1917
emojiToNum CircusTent = 1918
emojiToNum Locomotive = 1919
emojiToNum RailwayCar = 1920
emojiToNum HighSpeedTrain = 1921
emojiToNum BulletTrain = 1922
emojiToNum Train = 1923
emojiToNum Metro = 1924
emojiToNum LightRail = 1925
emojiToNum Station = 1926
emojiToNum Tram = 1927
emojiToNum Monorail = 1928
emojiToNum MountainRailway = 1929
emojiToNum TramCar = 1930
emojiToNum Bus = 1931
emojiToNum OncomingBus = 1932
emojiToNum Trolleybus = 1933
emojiToNum Minibus = 1934
emojiToNum Ambulance = 1935
emojiToNum FireEngine = 1936
emojiToNum PoliceCar = 1937
emojiToNum OncomingPoliceCar = 1938
emojiToNum Taxi = 1939
emojiToNum OncomingTaxi = 1940
emojiToNum Automobile = 1941
emojiToNum OncomingAutomobile = 1942
emojiToNum SportUtilityVehicle = 1943
emojiToNum DeliveryTruck = 1944
emojiToNum ArticulatedLorry = 1945
emojiToNum Tractor = 1946
emojiToNum Bicycle = 1947
emojiToNum KickScooter = 1948
emojiToNum Skateboard = 1949
emojiToNum MotorScooter = 1950
emojiToNum BusStop = 1951
emojiToNum Motorway = 1952
emojiToNum RailwayTrack = 1953
emojiToNum OilDrum = 1954
emojiToNum FuelPump = 1955
emojiToNum PoliceCarLight = 1956
emojiToNum HorizontalTrafficLight = 1957
emojiToNum VerticalTrafficLight = 1958
emojiToNum StopSign = 1959
emojiToNum Construction = 1960
emojiToNum Anchor = 1961
emojiToNum Sailboat = 1962
emojiToNum Canoe = 1963
emojiToNum Speedboat = 1964
emojiToNum PassengerShip = 1965
emojiToNum Ferry = 1966
emojiToNum MotorBoat = 1967
emojiToNum Ship = 1968
emojiToNum Airplane = 1969
emojiToNum SmallAirplane = 1970
emojiToNum AirplaneDeparture = 1971
emojiToNum AirplaneArrival = 1972
emojiToNum Seat = 1973
emojiToNum Helicopter = 1974
emojiToNum SuspensionRailway = 1975
emojiToNum MountainCableway = 1976
emojiToNum AerialTramway = 1977
emojiToNum Satellite = 1978
emojiToNum Rocket = 1979
emojiToNum FlyingSaucer = 1980
emojiToNum BellhopBell = 1981
emojiToNum Luggage = 1982
emojiToNum HourglassDone = 1983
emojiToNum HourglassNotDone = 1984
emojiToNum Watch = 1985
emojiToNum AlarmClock = 1986
emojiToNum Stopwatch = 1987
emojiToNum TimerClock = 1988
emojiToNum MantelpieceClock = 1989
emojiToNum TwelveOclock = 1990
emojiToNum TwelveThirty = 1991
emojiToNum OneOclock = 1992
emojiToNum OneThirty = 1993
emojiToNum TwoOclock = 1994
emojiToNum TwoThirty = 1995
emojiToNum ThreeOclock = 1996
emojiToNum ThreeThirty = 1997
emojiToNum FourOclock = 1998
emojiToNum FourThirty = 1999
emojiToNum FiveOclock = 2000
emojiToNum FiveThirty = 2001
emojiToNum SixOclock = 2002
emojiToNum SixThirty = 2003
emojiToNum SevenOclock = 2004
emojiToNum SevenThirty = 2005
emojiToNum EightOclock = 2006
emojiToNum EightThirty = 2007
emojiToNum NineOclock = 2008
emojiToNum NineThirty = 2009
emojiToNum TenOclock = 2010
emojiToNum TenThirty = 2011
emojiToNum ElevenOclock = 2012
emojiToNum ElevenThirty = 2013
emojiToNum NewMoon = 2014
emojiToNum WaxingCrescentMoon = 2015
emojiToNum FirstQuarterMoon = 2016
emojiToNum WaxingGibbousMoon = 2017
emojiToNum FullMoon = 2018
emojiToNum WaningGibbousMoon = 2019
emojiToNum LastQuarterMoon = 2020
emojiToNum WaningCrescentMoon = 2021
emojiToNum CrescentMoon = 2022
emojiToNum NewMoonFace = 2023
emojiToNum FirstQuarterMoonFace = 2024
emojiToNum LastQuarterMoonFace = 2025
emojiToNum Thermometer = 2026
emojiToNum Sun = 2027
emojiToNum FullMoonFace = 2028
emojiToNum SunWithFace = 2029
emojiToNum Star = 2030
emojiToNum GlowingStar = 2031
emojiToNum ShootingStar = 2032
emojiToNum Cloud = 2033
emojiToNum SunBehindCloud = 2034
emojiToNum CloudWithLightningAndRain = 2035
emojiToNum SunBehindSmallCloud = 2036
emojiToNum SunBehindLargeCloud = 2037
emojiToNum SunBehindRainCloud = 2038
emojiToNum CloudWithRain = 2039
emojiToNum CloudWithSnow = 2040
emojiToNum CloudWithLightning = 2041
emojiToNum Tornado = 2042
emojiToNum Fog = 2043
emojiToNum WindFace = 2044
emojiToNum Cyclone = 2045
emojiToNum Rainbow = 2046
emojiToNum ClosedUmbrella = 2047
emojiToNum Umbrella = 2048
emojiToNum UmbrellaWithRainDrops = 2049
emojiToNum UmbrellaOnGround = 2050
emojiToNum HighVoltage = 2051
emojiToNum Snowflake = 2052
emojiToNum Snowman = 2053
emojiToNum SnowmanWithoutSnow = 2054
emojiToNum Comet = 2055
emojiToNum Fire = 2056
emojiToNum Droplet = 2057
emojiToNum WaterWave = 2058
emojiToNum JackOLantern = 2059
emojiToNum ChristmasTree = 2060
emojiToNum Fireworks = 2061
emojiToNum Sparkler = 2062
emojiToNum Firecracker = 2063
emojiToNum Sparkles = 2064
emojiToNum Balloon = 2065
emojiToNum PartyPopper = 2066
emojiToNum ConfettiBall = 2067
emojiToNum TanabataTree = 2068
emojiToNum PineDecoration = 2069
emojiToNum JapaneseDolls = 2070
emojiToNum CarpStreamer = 2071
emojiToNum WindChime = 2072
emojiToNum MoonViewingCeremony = 2073
emojiToNum RedEnvelope = 2074
emojiToNum Ribbon = 2075
emojiToNum WrappedGift = 2076
emojiToNum ReminderRibbon = 2077
emojiToNum AdmissionTickets = 2078
emojiToNum Ticket = 2079
emojiToNum MilitaryMedal = 2080
emojiToNum Trophy = 2081
emojiToNum SportsMedal = 2082
emojiToNum FirstPlaceMedal = 2083
emojiToNum SecondPlaceMedal = 2084
emojiToNum ThirdPlaceMedal = 2085
emojiToNum SoccerBall = 2086
emojiToNum Baseball = 2087
emojiToNum Softball = 2088
emojiToNum Basketball = 2089
emojiToNum Volleyball = 2090
emojiToNum AmericanFootball = 2091
emojiToNum RugbyFootball = 2092
emojiToNum Tennis = 2093
emojiToNum FlyingDisc = 2094
emojiToNum Bowling = 2095
emojiToNum CricketGame = 2096
emojiToNum FieldHockey = 2097
emojiToNum IceHockey = 2098
emojiToNum Lacrosse = 2099
emojiToNum PingPong = 2100
emojiToNum Badminton = 2101
emojiToNum BoxingGlove = 2102
emojiToNum MartialArtsUniform = 2103
emojiToNum GoalNet = 2104
emojiToNum FlagInHole = 2105
emojiToNum IceSkate = 2106
emojiToNum FishingPole = 2107
emojiToNum RunningShirt = 2108
emojiToNum Skis = 2109
emojiToNum Sled = 2110
emojiToNum CurlingStone = 2111
emojiToNum DirectHit = 2112
emojiToNum Pool8Ball = 2113
emojiToNum CrystalBall = 2114
emojiToNum NazarAmulet = 2115
emojiToNum VideoGame = 2116
emojiToNum Joystick = 2117
emojiToNum SlotMachine = 2118
emojiToNum GameDie = 2119
emojiToNum Jigsaw = 2120
emojiToNum TeddyBear = 2121
emojiToNum SpadeSuit = 2122
emojiToNum HeartSuit = 2123
emojiToNum DiamondSuit = 2124
emojiToNum ClubSuit = 2125
emojiToNum ChessPawn = 2126
emojiToNum Joker = 2127
emojiToNum MahjongRedDragon = 2128
emojiToNum FlowerPlayingCards = 2129
emojiToNum PerformingArts = 2130
emojiToNum FramedPicture = 2131
emojiToNum ArtistPalette = 2132
emojiToNum Thread = 2133
emojiToNum Yarn = 2134
emojiToNum MutedSpeaker = 2135
emojiToNum SpeakerLowVolume = 2136
emojiToNum SpeakerMediumVolume = 2137
emojiToNum SpeakerHighVolume = 2138
emojiToNum Loudspeaker = 2139
emojiToNum Megaphone = 2140
emojiToNum PostalHorn = 2141
emojiToNum Bell = 2142
emojiToNum BellWithSlash = 2143
emojiToNum MusicalScore = 2144
emojiToNum MusicalNote = 2145
emojiToNum MusicalNotes = 2146
emojiToNum StudioMicrophone = 2147
emojiToNum LevelSlider = 2148
emojiToNum ControlKnobs = 2149
emojiToNum Microphone = 2150
emojiToNum Headphone = 2151
emojiToNum Radio = 2152
emojiToNum Saxophone = 2153
emojiToNum Guitar = 2154
emojiToNum MusicalKeyboard = 2155
emojiToNum Trumpet = 2156
emojiToNum Violin = 2157
emojiToNum Drum = 2158
emojiToNum MobilePhone = 2159
emojiToNum MobilePhoneWithArrow = 2160
emojiToNum Telephone = 2161
emojiToNum TelephoneReceiver = 2162
emojiToNum Pager = 2163
emojiToNum FaxMachine = 2164
emojiToNum Battery = 2165
emojiToNum ElectricPlug = 2166
emojiToNum LaptopComputer = 2167
emojiToNum DesktopComputer = 2168
emojiToNum Printer = 2169
emojiToNum Keyboard = 2170
emojiToNum ComputerMouse = 2171
emojiToNum Trackball = 2172
emojiToNum ComputerDisk = 2173
emojiToNum FloppyDisk = 2174
emojiToNum OpticalDisk = 2175
emojiToNum Dvd = 2176
emojiToNum Abacus = 2177
emojiToNum MovieCamera = 2178
emojiToNum FilmFrames = 2179
emojiToNum FilmProjector = 2180
emojiToNum ClapperBoard = 2181
emojiToNum Television = 2182
emojiToNum Camera = 2183
emojiToNum CameraWithFlash = 2184
emojiToNum VideoCamera = 2185
emojiToNum Videocassette = 2186
emojiToNum MagnifyingGlassTiltedLeft = 2187
emojiToNum MagnifyingGlassTiltedRight = 2188
emojiToNum Candle = 2189
emojiToNum LightBulb = 2190
emojiToNum Flashlight = 2191
emojiToNum RedPaperLantern = 2192
emojiToNum NotebookWithDecorativeCover = 2193
emojiToNum ClosedBook = 2194
emojiToNum OpenBook = 2195
emojiToNum GreenBook = 2196
emojiToNum BlueBook = 2197
emojiToNum OrangeBook = 2198
emojiToNum Books = 2199
emojiToNum Notebook = 2200
emojiToNum Ledger = 2201
emojiToNum PageWithCurl = 2202
emojiToNum Scroll = 2203
emojiToNum PageFacingUp = 2204
emojiToNum Newspaper = 2205
emojiToNum RolledUpNewspaper = 2206
emojiToNum BookmarkTabs = 2207
emojiToNum Bookmark = 2208
emojiToNum Label = 2209
emojiToNum MoneyBag = 2210
emojiToNum YenBanknote = 2211
emojiToNum DollarBanknote = 2212
emojiToNum EuroBanknote = 2213
emojiToNum PoundBanknote = 2214
emojiToNum MoneyWithWings = 2215
emojiToNum CreditCard = 2216
emojiToNum Receipt = 2217
emojiToNum ChartIncreasingWithYen = 2218
emojiToNum CurrencyExchange = 2219
emojiToNum HeavyDollarSign = 2220
emojiToNum Envelope = 2221
emojiToNum EMail = 2222
emojiToNum IncomingEnvelope = 2223
emojiToNum EnvelopeWithArrow = 2224
emojiToNum OutboxTray = 2225
emojiToNum InboxTray = 2226
emojiToNum Package = 2227
emojiToNum ClosedMailboxWithRaisedFlag = 2228
emojiToNum ClosedMailboxWithLoweredFlag = 2229
emojiToNum OpenMailboxWithRaisedFlag = 2230
emojiToNum OpenMailboxWithLoweredFlag = 2231
emojiToNum Postbox = 2232
emojiToNum BallotBoxWithBallot = 2233
emojiToNum Pencil = 2234
emojiToNum BlackNib = 2235
emojiToNum FountainPen = 2236
emojiToNum Pen = 2237
emojiToNum Paintbrush = 2238
emojiToNum Crayon = 2239
emojiToNum Memo = 2240
emojiToNum Briefcase = 2241
emojiToNum FileFolder = 2242
emojiToNum OpenFileFolder = 2243
emojiToNum CardIndexDividers = 2244
emojiToNum Calendar = 2245
emojiToNum TearOffCalendar = 2246
emojiToNum SpiralNotepad = 2247
emojiToNum SpiralCalendar = 2248
emojiToNum CardIndex = 2249
emojiToNum ChartIncreasing = 2250
emojiToNum ChartDecreasing = 2251
emojiToNum BarChart = 2252
emojiToNum Clipboard = 2253
emojiToNum Pushpin = 2254
emojiToNum RoundPushpin = 2255
emojiToNum Paperclip = 2256
emojiToNum LinkedPaperclips = 2257
emojiToNum StraightRuler = 2258
emojiToNum TriangularRuler = 2259
emojiToNum Scissors = 2260
emojiToNum CardFileBox = 2261
emojiToNum FileCabinet = 2262
emojiToNum Wastebasket = 2263
emojiToNum Locked = 2264
emojiToNum Unlocked = 2265
emojiToNum LockedWithPen = 2266
emojiToNum LockedWithKey = 2267
emojiToNum Key = 2268
emojiToNum OldKey = 2269
emojiToNum Hammer = 2270
emojiToNum Pick = 2271
emojiToNum HammerAndPick = 2272
emojiToNum HammerAndWrench = 2273
emojiToNum Dagger = 2274
emojiToNum CrossedSwords = 2275
emojiToNum Pistol = 2276
emojiToNum BowAndArrow = 2277
emojiToNum Shield = 2278
emojiToNum Wrench = 2279
emojiToNum NutAndBolt = 2280
emojiToNum Gear = 2281
emojiToNum Clamp = 2282
emojiToNum BalanceScale = 2283
emojiToNum Link = 2284
emojiToNum Chains = 2285
emojiToNum Toolbox = 2286
emojiToNum Magnet = 2287
emojiToNum Alembic = 2288
emojiToNum TestTube = 2289
emojiToNum PetriDish = 2290
emojiToNum Dna = 2291
emojiToNum Microscope = 2292
emojiToNum Telescope = 2293
emojiToNum SatelliteAntenna = 2294
emojiToNum Syringe = 2295
emojiToNum Pill = 2296
emojiToNum Door = 2297
emojiToNum Bed = 2298
emojiToNum CouchAndLamp = 2299
emojiToNum Toilet = 2300
emojiToNum Shower = 2301
emojiToNum Bathtub = 2302
emojiToNum LotionBottle = 2303
emojiToNum SafetyPin = 2304
emojiToNum Broom = 2305
emojiToNum Basket = 2306
emojiToNum RollOfPaper = 2307
emojiToNum Soap = 2308
emojiToNum Sponge = 2309
emojiToNum FireExtinguisher = 2310
emojiToNum ShoppingCart = 2311
emojiToNum Cigarette = 2312
emojiToNum Coffin = 2313
emojiToNum FuneralUrn = 2314
emojiToNum Moai = 2315
emojiToNum ATMSign = 2316
emojiToNum LitterInBinSign = 2317
emojiToNum PotableWater = 2318
emojiToNum WheelchairSymbol = 2319
emojiToNum MensRoom = 2320
emojiToNum WomensRoom = 2321
emojiToNum Restroom = 2322
emojiToNum BabySymbol = 2323
emojiToNum WaterCloset = 2324
emojiToNum PassportControl = 2325
emojiToNum Customs = 2326
emojiToNum BaggageClaim = 2327
emojiToNum LeftLuggage = 2328
emojiToNum Warning = 2329
emojiToNum ChildrenCrossing = 2330
emojiToNum NoEntry = 2331
emojiToNum Prohibited = 2332
emojiToNum NoBicycles = 2333
emojiToNum NoSmoking = 2334
emojiToNum NoLittering = 2335
emojiToNum NonPotableWater = 2336
emojiToNum NoPedestrians = 2337
emojiToNum NoMobilePhones = 2338
emojiToNum NoOneUnderEighteen = 2339
emojiToNum Radioactive = 2340
emojiToNum Biohazard = 2341
emojiToNum UpArrow = 2342
emojiToNum UpRightArrow = 2343
emojiToNum RightArrow = 2344
emojiToNum DownRightArrow = 2345
emojiToNum DownArrow = 2346
emojiToNum DownLeftArrow = 2347
emojiToNum LeftArrow = 2348
emojiToNum UpLeftArrow = 2349
emojiToNum UpDownArrow = 2350
emojiToNum LeftRightArrow = 2351
emojiToNum RightArrowCurvingLeft = 2352
emojiToNum LeftArrowCurvingRight = 2353
emojiToNum RightArrowCurvingUp = 2354
emojiToNum RightArrowCurvingDown = 2355
emojiToNum ClockwiseVerticalArrows = 2356
emojiToNum CounterclockwiseArrowsButton = 2357
emojiToNum BACKArrow = 2358
emojiToNum ENDArrow = 2359
emojiToNum ONArrow = 2360
emojiToNum SOONArrow = 2361
emojiToNum TOPArrow = 2362
emojiToNum PlaceOfWorship = 2363
emojiToNum AtomSymbol = 2364
emojiToNum Om = 2365
emojiToNum StarOfDavid = 2366
emojiToNum WheelOfDharma = 2367
emojiToNum YinYang = 2368
emojiToNum LatinCross = 2369
emojiToNum OrthodoxCross = 2370
emojiToNum StarAndCrescent = 2371
emojiToNum PeaceSymbol = 2372
emojiToNum Menorah = 2373
emojiToNum DottedSixPointedStar = 2374
emojiToNum Aries = 2375
emojiToNum Taurus = 2376
emojiToNum Gemini = 2377
emojiToNum Cancer = 2378
emojiToNum Leo = 2379
emojiToNum Virgo = 2380
emojiToNum Libra = 2381
emojiToNum Scorpio = 2382
emojiToNum Sagittarius = 2383
emojiToNum Capricorn = 2384
emojiToNum Aquarius = 2385
emojiToNum Pisces = 2386
emojiToNum Ophiuchus = 2387
emojiToNum ShuffleTracksButton = 2388
emojiToNum RepeatButton = 2389
emojiToNum RepeatSingleButton = 2390
emojiToNum PlayButton = 2391
emojiToNum FastForwardButton = 2392
emojiToNum NextTrackButton = 2393
emojiToNum PlayOrPauseButton = 2394
emojiToNum ReverseButton = 2395
emojiToNum FastReverseButton = 2396
emojiToNum LastTrackButton = 2397
emojiToNum UpwardsButton = 2398
emojiToNum FastUpButton = 2399
emojiToNum DownwardsButton = 2400
emojiToNum FastDownButton = 2401
emojiToNum PauseButton = 2402
emojiToNum StopButton = 2403
emojiToNum RecordButton = 2404
emojiToNum EjectButton = 2405
emojiToNum Cinema = 2406
emojiToNum DimButton = 2407
emojiToNum BrightButton = 2408
emojiToNum AntennaBars = 2409
emojiToNum VibrationMode = 2410
emojiToNum MobilePhoneOff = 2411
emojiToNum FemaleSign = 2412
emojiToNum MaleSign = 2413
emojiToNum MedicalSymbol = 2414
emojiToNum Infinity = 2415
emojiToNum RecyclingSymbol = 2416
emojiToNum FleurDeLis = 2417
emojiToNum TridentEmblem = 2418
emojiToNum NameBadge = 2419
emojiToNum JapaneseSymbolForBeginner = 2420
emojiToNum HeavyLargeCircle = 2421
emojiToNum WhiteHeavyCheckMark = 2422
emojiToNum BallotBoxWithCheck = 2423
emojiToNum HeavyCheckMark = 2424
emojiToNum HeavyMultiplicationX = 2425
emojiToNum CrossMark = 2426
emojiToNum CrossMarkButton = 2427
emojiToNum HeavyPlusSign = 2428
emojiToNum HeavyMinusSign = 2429
emojiToNum HeavyDivisionSign = 2430
emojiToNum CurlyLoop = 2431
emojiToNum DoubleCurlyLoop = 2432
emojiToNum PartAlternationMark = 2433
emojiToNum EightSpokedAsterisk = 2434
emojiToNum EightPointedStar = 2435
emojiToNum Sparkle = 2436
emojiToNum DoubleExclamationMark = 2437
emojiToNum ExclamationQuestionMark = 2438
emojiToNum QuestionMark = 2439
emojiToNum WhiteQuestionMark = 2440
emojiToNum WhiteExclamationMark = 2441
emojiToNum ExclamationMark = 2442
emojiToNum WavyDash = 2443
emojiToNum Copyright = 2444
emojiToNum Registered = 2445
emojiToNum TradeMark = 2446
emojiToNum KeycapSharp = 2447
emojiToNum KeycapAsterisk = 2448
emojiToNum Keycap0 = 2449
emojiToNum Keycap1 = 2450
emojiToNum Keycap2 = 2451
emojiToNum Keycap3 = 2452
emojiToNum Keycap4 = 2453
emojiToNum Keycap5 = 2454
emojiToNum Keycap6 = 2455
emojiToNum Keycap7 = 2456
emojiToNum Keycap8 = 2457
emojiToNum Keycap9 = 2458
emojiToNum Keycap10 = 2459
emojiToNum HundredPoints = 2460
emojiToNum InputLatinUppercase = 2461
emojiToNum InputLatinLowercase = 2462
emojiToNum InputNumbers = 2463
emojiToNum InputSymbols = 2464
emojiToNum InputLatinLetters = 2465
emojiToNum AButtonBloodType = 2466
emojiToNum ABButtonBloodType = 2467
emojiToNum BButtonBloodType = 2468
emojiToNum CLButton = 2469
emojiToNum COOLButton = 2470
emojiToNum FREEButton = 2471
emojiToNum Information = 2472
emojiToNum IDButton = 2473
emojiToNum CircledM = 2474
emojiToNum NEWButton = 2475
emojiToNum NGButton = 2476
emojiToNum OButtonBloodType = 2477
emojiToNum OKButton = 2478
emojiToNum PButton = 2479
emojiToNum SOSButton = 2480
emojiToNum UPButton = 2481
emojiToNum VSButton = 2482
emojiToNum JapaneseHereButton = 2483
emojiToNum JapaneseServiceChargeButton = 2484
emojiToNum JapaneseMonthlyAmountButton = 2485
emojiToNum JapaneseNotFreeOfChargeButton = 2486
emojiToNum JapaneseReservedButton = 2487
emojiToNum JapaneseBargainButton = 2488
emojiToNum JapaneseDiscountButton = 2489
emojiToNum JapaneseFreeOfChargeButton = 2490
emojiToNum JapaneseProhibitedButton = 2491
emojiToNum JapaneseAcceptableButton = 2492
emojiToNum JapaneseApplicationButton = 2493
emojiToNum JapanesePassingGradeButton = 2494
emojiToNum JapaneseVacancyButton = 2495
emojiToNum JapaneseCongratulationsButton = 2496
emojiToNum JapaneseSecretButton = 2497
emojiToNum JapaneseOpenForBusinessButton = 2498
emojiToNum JapaneseNoVacancyButton = 2499
emojiToNum BlackSmallSquare = 2500
emojiToNum WhiteSmallSquare = 2501
emojiToNum WhiteMediumSquare = 2502
emojiToNum BlackMediumSquare = 2503
emojiToNum WhiteMediumSmallSquare = 2504
emojiToNum BlackMediumSmallSquare = 2505
emojiToNum BlackLargeSquare = 2506
emojiToNum WhiteLargeSquare = 2507
emojiToNum LargeOrangeDiamond = 2508
emojiToNum LargeBlueDiamond = 2509
emojiToNum SmallOrangeDiamond = 2510
emojiToNum SmallBlueDiamond = 2511
emojiToNum RedTrianglePointedUp = 2512
emojiToNum RedTrianglePointedDown = 2513
emojiToNum DiamondWithADot = 2514
emojiToNum RadioButton = 2515
emojiToNum BlackSquareButton = 2516
emojiToNum WhiteSquareButton = 2517
emojiToNum WhiteCircle = 2518
emojiToNum BlackCircle = 2519
emojiToNum RedCircle = 2520
emojiToNum BlueCircle = 2521
emojiToNum ChequeredFlag = 2522
emojiToNum TriangularFlag = 2523
emojiToNum CrossedFlags = 2524
emojiToNum BlackFlag = 2525
emojiToNum WhiteFlag = 2526
emojiToNum RainbowFlag = 2527
emojiToNum PirateFlag = 2528
-- emojiToNum AscensionIsland = 2529
-- emojiToNum Andorra = 2530
-- emojiToNum UnitedArabEmirates = 2531
-- emojiToNum Afghanistan = 2532
-- emojiToNum AntiguaAndBarbuda = 2533
-- emojiToNum Anguilla = 2534
-- emojiToNum Albania = 2535
-- emojiToNum Armenia = 2536
-- emojiToNum Angola = 2537
-- emojiToNum Antarctica = 2538
-- emojiToNum Argentina = 2539
-- emojiToNum AmericanSamoa = 2540
-- emojiToNum Austria = 2541
-- emojiToNum Australia = 2542
-- emojiToNum Aruba = 2543
-- emojiToNum ÅlandIslands = 2544
-- emojiToNum Azerbaijan = 2545
-- emojiToNum BosniaAndHerzegovina = 2546
-- emojiToNum Barbados = 2547
-- emojiToNum Bangladesh = 2548
-- emojiToNum Belgium = 2549
-- emojiToNum BurkinaFaso = 2550
-- emojiToNum Bulgaria = 2551
-- emojiToNum Bahrain = 2552
-- emojiToNum Burundi = 2553
-- emojiToNum Benin = 2554
-- emojiToNum StBarthélemy = 2555
-- emojiToNum Bermuda = 2556
-- emojiToNum Brunei = 2557
-- emojiToNum Bolivia = 2558
-- emojiToNum CaribbeanNetherlands = 2559
-- emojiToNum Brazil = 2560
-- emojiToNum Bahamas = 2561
-- emojiToNum Bhutan = 2562
-- emojiToNum BouvetIsland = 2563
-- emojiToNum Botswana = 2564
-- emojiToNum Belarus = 2565
-- emojiToNum Belize = 2566
-- emojiToNum Canada = 2567
-- emojiToNum CocosKeelingIslands = 2568
-- emojiToNum CongoKinshasa = 2569
-- emojiToNum CentralAfricanRepublic = 2570
-- emojiToNum CongoBrazzaville = 2571
-- emojiToNum Switzerland = 2572
-- emojiToNum CôteDIvoire = 2573
-- emojiToNum CookIslands = 2574
-- emojiToNum Chile = 2575
-- emojiToNum Cameroon = 2576
-- emojiToNum China = 2577
-- emojiToNum Colombia = 2578
-- emojiToNum ClippertonIsland = 2579
-- emojiToNum CostaRica = 2580
-- emojiToNum Cuba = 2581
-- emojiToNum CapeVerde = 2582
-- emojiToNum Curaçao = 2583
-- emojiToNum ChristmasIsland = 2584
-- emojiToNum Cyprus = 2585
-- emojiToNum Czechia = 2586
-- emojiToNum Germany = 2587
-- emojiToNum DiegoGarcia = 2588
-- emojiToNum Djibouti = 2589
-- emojiToNum Denmark = 2590
-- emojiToNum Dominica = 2591
-- emojiToNum DominicanRepublic = 2592
-- emojiToNum Algeria = 2593
-- emojiToNum CeutaAndMelilla = 2594
-- emojiToNum Ecuador = 2595
-- emojiToNum Estonia = 2596
-- emojiToNum Egypt = 2597
-- emojiToNum WesternSahara = 2598
-- emojiToNum Eritrea = 2599
-- emojiToNum Spain = 2600
-- emojiToNum Ethiopia = 2601
-- emojiToNum EuropeanUnion = 2602
-- emojiToNum Finland = 2603
-- emojiToNum Fiji = 2604
-- emojiToNum FalklandIslands = 2605
-- emojiToNum Micronesia = 2606
-- emojiToNum FaroeIslands = 2607
-- emojiToNum France = 2608
-- emojiToNum Gabon = 2609
-- emojiToNum UnitedKingdom = 2610
-- emojiToNum Grenada = 2611
-- emojiToNum Georgia = 2612
-- emojiToNum FrenchGuiana = 2613
-- emojiToNum Guernsey = 2614
-- emojiToNum Ghana = 2615
-- emojiToNum Gibraltar = 2616
-- emojiToNum Greenland = 2617
-- emojiToNum Gambia = 2618
-- emojiToNum Guinea = 2619
-- emojiToNum Guadeloupe = 2620
-- emojiToNum EquatorialGuinea = 2621
-- emojiToNum Greece = 2622
-- emojiToNum SouthGeorgiaAndSouthSandwichIslands = 2623
-- emojiToNum Guatemala = 2624
-- emojiToNum Guam = 2625
-- emojiToNum GuineaBissau = 2626
-- emojiToNum Guyana = 2627
-- emojiToNum HongKongSARChina = 2628
-- emojiToNum HeardAndMcDonaldIslands = 2629
-- emojiToNum Honduras = 2630
-- emojiToNum Croatia = 2631
-- emojiToNum Haiti = 2632
-- emojiToNum Hungary = 2633
-- emojiToNum CanaryIslands = 2634
-- emojiToNum Indonesia = 2635
-- emojiToNum Ireland = 2636
-- emojiToNum Israel = 2637
-- emojiToNum IsleOfMan = 2638
-- emojiToNum India = 2639
-- emojiToNum BritishIndianOceanTerritory = 2640
-- emojiToNum Iraq = 2641
-- emojiToNum Iran = 2642
-- emojiToNum Iceland = 2643
-- emojiToNum Italy = 2644
-- emojiToNum Jersey = 2645
-- emojiToNum Jamaica = 2646
-- emojiToNum Jordan = 2647
-- emojiToNum Japan = 2648
-- emojiToNum Kenya = 2649
-- emojiToNum Kyrgyzstan = 2650
-- emojiToNum Cambodia = 2651
-- emojiToNum Kiribati = 2652
-- emojiToNum Comoros = 2653
-- emojiToNum StKittsAndNevis = 2654
-- emojiToNum NorthKorea = 2655
-- emojiToNum SouthKorea = 2656
-- emojiToNum Kuwait = 2657
-- emojiToNum CaymanIslands = 2658
-- emojiToNum Kazakhstan = 2659
-- emojiToNum Laos = 2660
-- emojiToNum Lebanon = 2661
-- emojiToNum StLucia = 2662
-- emojiToNum Liechtenstein = 2663
-- emojiToNum SriLanka = 2664
-- emojiToNum Liberia = 2665
-- emojiToNum Lesotho = 2666
-- emojiToNum Lithuania = 2667
-- emojiToNum Luxembourg = 2668
-- emojiToNum Latvia = 2669
-- emojiToNum Libya = 2670
-- emojiToNum Morocco = 2671
-- emojiToNum Monaco = 2672
-- emojiToNum Moldova = 2673
-- emojiToNum Montenegro = 2674
-- emojiToNum StMartin = 2675
-- emojiToNum Madagascar = 2676
-- emojiToNum MarshallIslands = 2677
-- emojiToNum Macedonia = 2678
-- emojiToNum Mali = 2679
-- emojiToNum MyanmarBurma = 2680
-- emojiToNum Mongolia = 2681
-- emojiToNum MacauSARChina = 2682
-- emojiToNum NorthernMarianaIslands = 2683
-- emojiToNum Martinique = 2684
-- emojiToNum Mauritania = 2685
-- emojiToNum Montserrat = 2686
-- emojiToNum Malta = 2687
-- emojiToNum Mauritius = 2688
-- emojiToNum Maldives = 2689
-- emojiToNum Malawi = 2690
-- emojiToNum Mexico = 2691
-- emojiToNum Malaysia = 2692
-- emojiToNum Mozambique = 2693
-- emojiToNum Namibia = 2694
-- emojiToNum NewCaledonia = 2695
-- emojiToNum Niger = 2696
-- emojiToNum NorfolkIsland = 2697
-- emojiToNum Nigeria = 2698
-- emojiToNum Nicaragua = 2699
-- emojiToNum Netherlands = 2700
-- emojiToNum Norway = 2701
-- emojiToNum Nepal = 2702
-- emojiToNum Nauru = 2703
-- emojiToNum Niue = 2704
-- emojiToNum NewZealand = 2705
-- emojiToNum Oman = 2706
-- emojiToNum Panama = 2707
-- emojiToNum Peru = 2708
-- emojiToNum FrenchPolynesia = 2709
-- emojiToNum PapuaNewGuinea = 2710
-- emojiToNum Philippines = 2711
-- emojiToNum Pakistan = 2712
-- emojiToNum Poland = 2713
-- emojiToNum StPierreAndMiquelon = 2714
-- emojiToNum PitcairnIslands = 2715
-- emojiToNum PuertoRico = 2716
-- emojiToNum PalestinianTerritories = 2717
-- emojiToNum Portugal = 2718
-- emojiToNum Palau = 2719
-- emojiToNum Paraguay = 2720
-- emojiToNum Qatar = 2721
-- emojiToNum Réunion = 2722
-- emojiToNum Romania = 2723
-- emojiToNum Serbia = 2724
-- emojiToNum Russia = 2725
-- emojiToNum Rwanda = 2726
-- emojiToNum SaudiArabia = 2727
-- emojiToNum SolomonIslands = 2728
-- emojiToNum Seychelles = 2729
-- emojiToNum Sudan = 2730
-- emojiToNum Sweden = 2731
-- emojiToNum Singapore = 2732
-- emojiToNum StHelena = 2733
-- emojiToNum Slovenia = 2734
-- emojiToNum SvalbardAndJanMayen = 2735
-- emojiToNum Slovakia = 2736
-- emojiToNum SierraLeone = 2737
-- emojiToNum SanMarino = 2738
-- emojiToNum Senegal = 2739
-- emojiToNum Somalia = 2740
-- emojiToNum Suriname = 2741
-- emojiToNum SouthSudan = 2742
-- emojiToNum SãoToméAndPríncipe = 2743
-- emojiToNum ElSalvador = 2744
-- emojiToNum SintMaarten = 2745
-- emojiToNum Syria = 2746
-- emojiToNum Swaziland = 2747
-- emojiToNum TristanDaCunha = 2748
-- emojiToNum TurksAndCaicosIslands = 2749
-- emojiToNum Chad = 2750
-- emojiToNum FrenchSouthernTerritories = 2751
-- emojiToNum Togo = 2752
-- emojiToNum Thailand = 2753
-- emojiToNum Tajikistan = 2754
-- emojiToNum Tokelau = 2755
-- emojiToNum TimorLeste = 2756
-- emojiToNum Turkmenistan = 2757
-- emojiToNum Tunisia = 2758
-- emojiToNum Tonga = 2759
-- emojiToNum TurkeyCountry = 2760
-- emojiToNum TrinidadAndTobago = 2761
-- emojiToNum Tuvalu = 2762
-- emojiToNum Taiwan = 2763
-- emojiToNum Tanzania = 2764
-- emojiToNum Ukraine = 2765
-- emojiToNum Uganda = 2766
-- emojiToNum USOutlyingIslands = 2767
-- emojiToNum UnitedNations = 2768
-- emojiToNum UnitedStates = 2769
-- emojiToNum Uruguay = 2770
-- emojiToNum Uzbekistan = 2771
-- emojiToNum VaticanCity = 2772
-- emojiToNum StVincentAndGrenadines = 2773
-- emojiToNum Venezuela = 2774
-- emojiToNum BritishVirginIslands = 2775
-- emojiToNum USVirginIslands = 2776
-- emojiToNum Vietnam = 2777
-- emojiToNum Vanuatu = 2778
-- emojiToNum WallisAndFutuna = 2779
-- emojiToNum Samoa = 2780
-- emojiToNum Kosovo = 2781
-- emojiToNum Yemen = 2782
-- emojiToNum Mayotte = 2783
-- emojiToNum SouthAfrica = 2784
-- emojiToNum Zambia = 2785
-- emojiToNum Zimbabwe = 2786
-- emojiToNum England = 2787
-- emojiToNum Scotland = 2788
-- emojiToNum Wales = 2789