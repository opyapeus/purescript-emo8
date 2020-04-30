module Emo8.Parser.ETo
  ( class ETo
  , eto
  ) where

import Prelude
import Data.Either (Either(..))
import Data.List as L
import Emo8.Data.Emoji as E
import Emo8.Parser.EList as EL
import Emo8.Parser.Emoji as PE
import Emo8.Parser.SpecChar as SC
import Emo8.Parser.Type (NoEmoji(..), Result)

class ETo (el :: EL.EList) where
  eto :: EL.ELProxy el -> L.List (Result E.Emoji)

instance toENil :: ETo EL.ENil where
  eto _ = L.Nil

instance toEConsSpace :: ETo el => ETo (EL.ECons (PE.Rest SC.Space) el) where
  eto _ = helpS Space (EL.ELProxy :: EL.ELProxy el)

instance toEConsReturn :: ETo el => ETo (EL.ECons (PE.Rest SC.Return) el) where
  eto _ = helpS Return (EL.ELProxy :: EL.ELProxy el)

instance toEConsGrinningFace :: ETo el => ETo (EL.ECons PE.GrinningFace el) where
  eto _ = helpE E.grinningFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsGrinningFaceWithBigEyes :: ETo el => ETo (EL.ECons PE.GrinningFaceWithBigEyes el) where
  eto _ = helpE E.grinningFaceWithBigEyes (EL.ELProxy :: EL.ELProxy el)

instance toEConsGrinningFaceWithSmilingEyes :: ETo el => ETo (EL.ECons PE.GrinningFaceWithSmilingEyes el) where
  eto _ = helpE E.grinningFaceWithSmilingEyes (EL.ELProxy :: EL.ELProxy el)

instance toEConsBeamingFaceWithSmilingEyes :: ETo el => ETo (EL.ECons PE.BeamingFaceWithSmilingEyes el) where
  eto _ = helpE E.beamingFaceWithSmilingEyes (EL.ELProxy :: EL.ELProxy el)

instance toEConsGrinningSquintingFace :: ETo el => ETo (EL.ECons PE.GrinningSquintingFace el) where
  eto _ = helpE E.grinningSquintingFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsGrinningFaceWithSweat :: ETo el => ETo (EL.ECons PE.GrinningFaceWithSweat el) where
  eto _ = helpE E.grinningFaceWithSweat (EL.ELProxy :: EL.ELProxy el)

instance toEConsRollingOnTheFloorLaughing :: ETo el => ETo (EL.ECons PE.RollingOnTheFloorLaughing el) where
  eto _ = helpE E.rollingOnTheFloorLaughing (EL.ELProxy :: EL.ELProxy el)

instance toEConsFaceWithTearsOfJoy :: ETo el => ETo (EL.ECons PE.FaceWithTearsOfJoy el) where
  eto _ = helpE E.faceWithTearsOfJoy (EL.ELProxy :: EL.ELProxy el)

instance toEConsSlightlySmilingFace :: ETo el => ETo (EL.ECons PE.SlightlySmilingFace el) where
  eto _ = helpE E.slightlySmilingFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsUpsideDownFace :: ETo el => ETo (EL.ECons PE.UpsideDownFace el) where
  eto _ = helpE E.upsideDownFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsWinkingFace :: ETo el => ETo (EL.ECons PE.WinkingFace el) where
  eto _ = helpE E.winkingFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsSmilingFaceWithSmilingEyes :: ETo el => ETo (EL.ECons PE.SmilingFaceWithSmilingEyes el) where
  eto _ = helpE E.smilingFaceWithSmilingEyes (EL.ELProxy :: EL.ELProxy el)

instance toEConsSmilingFaceWithHalo :: ETo el => ETo (EL.ECons PE.SmilingFaceWithHalo el) where
  eto _ = helpE E.smilingFaceWithHalo (EL.ELProxy :: EL.ELProxy el)

instance toEConsSmilingFaceWithHearts :: ETo el => ETo (EL.ECons PE.SmilingFaceWithHearts el) where
  eto _ = helpE E.smilingFaceWithHearts (EL.ELProxy :: EL.ELProxy el)

instance toEConsSmilingFaceWithHeartEyes :: ETo el => ETo (EL.ECons PE.SmilingFaceWithHeartEyes el) where
  eto _ = helpE E.smilingFaceWithHeartEyes (EL.ELProxy :: EL.ELProxy el)

instance toEConsStarStruck :: ETo el => ETo (EL.ECons PE.StarStruck el) where
  eto _ = helpE E.starStruck (EL.ELProxy :: EL.ELProxy el)

instance toEConsFaceBlowingAKiss :: ETo el => ETo (EL.ECons PE.FaceBlowingAKiss el) where
  eto _ = helpE E.faceBlowingAKiss (EL.ELProxy :: EL.ELProxy el)

instance toEConsKissingFace :: ETo el => ETo (EL.ECons PE.KissingFace el) where
  eto _ = helpE E.kissingFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsSmilingFace :: ETo el => ETo (EL.ECons PE.SmilingFace el) where
  eto _ = helpE E.smilingFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsKissingFaceWithClosedEyes :: ETo el => ETo (EL.ECons PE.KissingFaceWithClosedEyes el) where
  eto _ = helpE E.kissingFaceWithClosedEyes (EL.ELProxy :: EL.ELProxy el)

instance toEConsKissingFaceWithSmilingEyes :: ETo el => ETo (EL.ECons PE.KissingFaceWithSmilingEyes el) where
  eto _ = helpE E.kissingFaceWithSmilingEyes (EL.ELProxy :: EL.ELProxy el)

instance toEConsSmilingFaceWithTear :: ETo el => ETo (EL.ECons PE.SmilingFaceWithTear el) where
  eto _ = helpE E.smilingFaceWithTear (EL.ELProxy :: EL.ELProxy el)

instance toEConsFaceSavoringFood :: ETo el => ETo (EL.ECons PE.FaceSavoringFood el) where
  eto _ = helpE E.faceSavoringFood (EL.ELProxy :: EL.ELProxy el)

instance toEConsFaceWithTongue :: ETo el => ETo (EL.ECons PE.FaceWithTongue el) where
  eto _ = helpE E.faceWithTongue (EL.ELProxy :: EL.ELProxy el)

instance toEConsWinkingFaceWithTongue :: ETo el => ETo (EL.ECons PE.WinkingFaceWithTongue el) where
  eto _ = helpE E.winkingFaceWithTongue (EL.ELProxy :: EL.ELProxy el)

instance toEConsZanyFace :: ETo el => ETo (EL.ECons PE.ZanyFace el) where
  eto _ = helpE E.zanyFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsSquintingFaceWithTongue :: ETo el => ETo (EL.ECons PE.SquintingFaceWithTongue el) where
  eto _ = helpE E.squintingFaceWithTongue (EL.ELProxy :: EL.ELProxy el)

instance toEConsMoneyMouthFace :: ETo el => ETo (EL.ECons PE.MoneyMouthFace el) where
  eto _ = helpE E.moneyMouthFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsHuggingFace :: ETo el => ETo (EL.ECons PE.HuggingFace el) where
  eto _ = helpE E.huggingFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsFaceWithHandOverMouth :: ETo el => ETo (EL.ECons PE.FaceWithHandOverMouth el) where
  eto _ = helpE E.faceWithHandOverMouth (EL.ELProxy :: EL.ELProxy el)

instance toEConsShushingFace :: ETo el => ETo (EL.ECons PE.ShushingFace el) where
  eto _ = helpE E.shushingFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsThinkingFace :: ETo el => ETo (EL.ECons PE.ThinkingFace el) where
  eto _ = helpE E.thinkingFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsZipperMouthFace :: ETo el => ETo (EL.ECons PE.ZipperMouthFace el) where
  eto _ = helpE E.zipperMouthFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsFaceWithRaisedEyebrow :: ETo el => ETo (EL.ECons PE.FaceWithRaisedEyebrow el) where
  eto _ = helpE E.faceWithRaisedEyebrow (EL.ELProxy :: EL.ELProxy el)

instance toEConsNeutralFace :: ETo el => ETo (EL.ECons PE.NeutralFace el) where
  eto _ = helpE E.neutralFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsExpressionlessFace :: ETo el => ETo (EL.ECons PE.ExpressionlessFace el) where
  eto _ = helpE E.expressionlessFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsFaceWithoutMouth :: ETo el => ETo (EL.ECons PE.FaceWithoutMouth el) where
  eto _ = helpE E.faceWithoutMouth (EL.ELProxy :: EL.ELProxy el)

instance toEConsSmirkingFace :: ETo el => ETo (EL.ECons PE.SmirkingFace el) where
  eto _ = helpE E.smirkingFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsUnamusedFace :: ETo el => ETo (EL.ECons PE.UnamusedFace el) where
  eto _ = helpE E.unamusedFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsFaceWithRollingEyes :: ETo el => ETo (EL.ECons PE.FaceWithRollingEyes el) where
  eto _ = helpE E.faceWithRollingEyes (EL.ELProxy :: EL.ELProxy el)

instance toEConsGrimacingFace :: ETo el => ETo (EL.ECons PE.GrimacingFace el) where
  eto _ = helpE E.grimacingFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsLyingFace :: ETo el => ETo (EL.ECons PE.LyingFace el) where
  eto _ = helpE E.lyingFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsRelievedFace :: ETo el => ETo (EL.ECons PE.RelievedFace el) where
  eto _ = helpE E.relievedFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsPensiveFace :: ETo el => ETo (EL.ECons PE.PensiveFace el) where
  eto _ = helpE E.pensiveFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsSleepyFace :: ETo el => ETo (EL.ECons PE.SleepyFace el) where
  eto _ = helpE E.sleepyFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsDroolingFace :: ETo el => ETo (EL.ECons PE.DroolingFace el) where
  eto _ = helpE E.droolingFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsSleepingFace :: ETo el => ETo (EL.ECons PE.SleepingFace el) where
  eto _ = helpE E.sleepingFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsFaceWithMedicalMask :: ETo el => ETo (EL.ECons PE.FaceWithMedicalMask el) where
  eto _ = helpE E.faceWithMedicalMask (EL.ELProxy :: EL.ELProxy el)

instance toEConsFaceWithThermometer :: ETo el => ETo (EL.ECons PE.FaceWithThermometer el) where
  eto _ = helpE E.faceWithThermometer (EL.ELProxy :: EL.ELProxy el)

instance toEConsFaceWithHeadBandage :: ETo el => ETo (EL.ECons PE.FaceWithHeadBandage el) where
  eto _ = helpE E.faceWithHeadBandage (EL.ELProxy :: EL.ELProxy el)

instance toEConsNauseatedFace :: ETo el => ETo (EL.ECons PE.NauseatedFace el) where
  eto _ = helpE E.nauseatedFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsFaceVomiting :: ETo el => ETo (EL.ECons PE.FaceVomiting el) where
  eto _ = helpE E.faceVomiting (EL.ELProxy :: EL.ELProxy el)

instance toEConsSneezingFace :: ETo el => ETo (EL.ECons PE.SneezingFace el) where
  eto _ = helpE E.sneezingFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsHotFace :: ETo el => ETo (EL.ECons PE.HotFace el) where
  eto _ = helpE E.hotFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsColdFace :: ETo el => ETo (EL.ECons PE.ColdFace el) where
  eto _ = helpE E.coldFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsWoozyFace :: ETo el => ETo (EL.ECons PE.WoozyFace el) where
  eto _ = helpE E.woozyFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsDizzyFace :: ETo el => ETo (EL.ECons PE.DizzyFace el) where
  eto _ = helpE E.dizzyFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsExplodingHead :: ETo el => ETo (EL.ECons PE.ExplodingHead el) where
  eto _ = helpE E.explodingHead (EL.ELProxy :: EL.ELProxy el)

instance toEConsCowboyHatFace :: ETo el => ETo (EL.ECons PE.CowboyHatFace el) where
  eto _ = helpE E.cowboyHatFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsPartyingFace :: ETo el => ETo (EL.ECons PE.PartyingFace el) where
  eto _ = helpE E.partyingFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsDisguisedFace :: ETo el => ETo (EL.ECons PE.DisguisedFace el) where
  eto _ = helpE E.disguisedFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsSmilingFaceWithSunglasses :: ETo el => ETo (EL.ECons PE.SmilingFaceWithSunglasses el) where
  eto _ = helpE E.smilingFaceWithSunglasses (EL.ELProxy :: EL.ELProxy el)

instance toEConsNerdFace :: ETo el => ETo (EL.ECons PE.NerdFace el) where
  eto _ = helpE E.nerdFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsFaceWithMonocle :: ETo el => ETo (EL.ECons PE.FaceWithMonocle el) where
  eto _ = helpE E.faceWithMonocle (EL.ELProxy :: EL.ELProxy el)

instance toEConsConfusedFace :: ETo el => ETo (EL.ECons PE.ConfusedFace el) where
  eto _ = helpE E.confusedFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsWorriedFace :: ETo el => ETo (EL.ECons PE.WorriedFace el) where
  eto _ = helpE E.worriedFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsSlightlyFrowningFace :: ETo el => ETo (EL.ECons PE.SlightlyFrowningFace el) where
  eto _ = helpE E.slightlyFrowningFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsFrowningFace :: ETo el => ETo (EL.ECons PE.FrowningFace el) where
  eto _ = helpE E.frowningFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsFaceWithOpenMouth :: ETo el => ETo (EL.ECons PE.FaceWithOpenMouth el) where
  eto _ = helpE E.faceWithOpenMouth (EL.ELProxy :: EL.ELProxy el)

instance toEConsHushedFace :: ETo el => ETo (EL.ECons PE.HushedFace el) where
  eto _ = helpE E.hushedFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsAstonishedFace :: ETo el => ETo (EL.ECons PE.AstonishedFace el) where
  eto _ = helpE E.astonishedFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsFlushedFace :: ETo el => ETo (EL.ECons PE.FlushedFace el) where
  eto _ = helpE E.flushedFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsPleadingFace :: ETo el => ETo (EL.ECons PE.PleadingFace el) where
  eto _ = helpE E.pleadingFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsFrowningFaceWithOpenMouth :: ETo el => ETo (EL.ECons PE.FrowningFaceWithOpenMouth el) where
  eto _ = helpE E.frowningFaceWithOpenMouth (EL.ELProxy :: EL.ELProxy el)

instance toEConsAnguishedFace :: ETo el => ETo (EL.ECons PE.AnguishedFace el) where
  eto _ = helpE E.anguishedFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsFearfulFace :: ETo el => ETo (EL.ECons PE.FearfulFace el) where
  eto _ = helpE E.fearfulFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsAnxiousFaceWithSweat :: ETo el => ETo (EL.ECons PE.AnxiousFaceWithSweat el) where
  eto _ = helpE E.anxiousFaceWithSweat (EL.ELProxy :: EL.ELProxy el)

instance toEConsSadButRelievedFace :: ETo el => ETo (EL.ECons PE.SadButRelievedFace el) where
  eto _ = helpE E.sadButRelievedFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsCryingFace :: ETo el => ETo (EL.ECons PE.CryingFace el) where
  eto _ = helpE E.cryingFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsLoudlyCryingFace :: ETo el => ETo (EL.ECons PE.LoudlyCryingFace el) where
  eto _ = helpE E.loudlyCryingFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsFaceScreamingInFear :: ETo el => ETo (EL.ECons PE.FaceScreamingInFear el) where
  eto _ = helpE E.faceScreamingInFear (EL.ELProxy :: EL.ELProxy el)

instance toEConsConfoundedFace :: ETo el => ETo (EL.ECons PE.ConfoundedFace el) where
  eto _ = helpE E.confoundedFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsPerseveringFace :: ETo el => ETo (EL.ECons PE.PerseveringFace el) where
  eto _ = helpE E.perseveringFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsDisappointedFace :: ETo el => ETo (EL.ECons PE.DisappointedFace el) where
  eto _ = helpE E.disappointedFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsDowncastFaceWithSweat :: ETo el => ETo (EL.ECons PE.DowncastFaceWithSweat el) where
  eto _ = helpE E.downcastFaceWithSweat (EL.ELProxy :: EL.ELProxy el)

instance toEConsWearyFace :: ETo el => ETo (EL.ECons PE.WearyFace el) where
  eto _ = helpE E.wearyFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsTiredFace :: ETo el => ETo (EL.ECons PE.TiredFace el) where
  eto _ = helpE E.tiredFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsYawningFace :: ETo el => ETo (EL.ECons PE.YawningFace el) where
  eto _ = helpE E.yawningFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsFaceWithSteamFromNose :: ETo el => ETo (EL.ECons PE.FaceWithSteamFromNose el) where
  eto _ = helpE E.faceWithSteamFromNose (EL.ELProxy :: EL.ELProxy el)

instance toEConsPoutingFace :: ETo el => ETo (EL.ECons PE.PoutingFace el) where
  eto _ = helpE E.poutingFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsAngryFace :: ETo el => ETo (EL.ECons PE.AngryFace el) where
  eto _ = helpE E.angryFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsFaceWithSymbolsOnMouth :: ETo el => ETo (EL.ECons PE.FaceWithSymbolsOnMouth el) where
  eto _ = helpE E.faceWithSymbolsOnMouth (EL.ELProxy :: EL.ELProxy el)

instance toEConsSmilingFaceWithHorns :: ETo el => ETo (EL.ECons PE.SmilingFaceWithHorns el) where
  eto _ = helpE E.smilingFaceWithHorns (EL.ELProxy :: EL.ELProxy el)

instance toEConsAngryFaceWithHorns :: ETo el => ETo (EL.ECons PE.AngryFaceWithHorns el) where
  eto _ = helpE E.angryFaceWithHorns (EL.ELProxy :: EL.ELProxy el)

instance toEConsSkull :: ETo el => ETo (EL.ECons PE.Skull el) where
  eto _ = helpE E.skull (EL.ELProxy :: EL.ELProxy el)

instance toEConsSkullAndCrossbones :: ETo el => ETo (EL.ECons PE.SkullAndCrossbones el) where
  eto _ = helpE E.skullAndCrossbones (EL.ELProxy :: EL.ELProxy el)

instance toEConsPileOfPoo :: ETo el => ETo (EL.ECons PE.PileOfPoo el) where
  eto _ = helpE E.pileOfPoo (EL.ELProxy :: EL.ELProxy el)

instance toEConsClownFace :: ETo el => ETo (EL.ECons PE.ClownFace el) where
  eto _ = helpE E.clownFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsOgre :: ETo el => ETo (EL.ECons PE.Ogre el) where
  eto _ = helpE E.ogre (EL.ELProxy :: EL.ELProxy el)

instance toEConsGoblin :: ETo el => ETo (EL.ECons PE.Goblin el) where
  eto _ = helpE E.goblin (EL.ELProxy :: EL.ELProxy el)

instance toEConsGhost :: ETo el => ETo (EL.ECons PE.Ghost el) where
  eto _ = helpE E.ghost (EL.ELProxy :: EL.ELProxy el)

instance toEConsAlien :: ETo el => ETo (EL.ECons PE.Alien el) where
  eto _ = helpE E.alien (EL.ELProxy :: EL.ELProxy el)

instance toEConsAlienMonster :: ETo el => ETo (EL.ECons PE.AlienMonster el) where
  eto _ = helpE E.alienMonster (EL.ELProxy :: EL.ELProxy el)

instance toEConsRobot :: ETo el => ETo (EL.ECons PE.Robot el) where
  eto _ = helpE E.robot (EL.ELProxy :: EL.ELProxy el)

instance toEConsGrinningCat :: ETo el => ETo (EL.ECons PE.GrinningCat el) where
  eto _ = helpE E.grinningCat (EL.ELProxy :: EL.ELProxy el)

instance toEConsGrinningCatWithSmilingEyes :: ETo el => ETo (EL.ECons PE.GrinningCatWithSmilingEyes el) where
  eto _ = helpE E.grinningCatWithSmilingEyes (EL.ELProxy :: EL.ELProxy el)

instance toEConsCatWithTearsOfJoy :: ETo el => ETo (EL.ECons PE.CatWithTearsOfJoy el) where
  eto _ = helpE E.catWithTearsOfJoy (EL.ELProxy :: EL.ELProxy el)

instance toEConsSmilingCatWithHeartEyes :: ETo el => ETo (EL.ECons PE.SmilingCatWithHeartEyes el) where
  eto _ = helpE E.smilingCatWithHeartEyes (EL.ELProxy :: EL.ELProxy el)

instance toEConsCatWithWrySmile :: ETo el => ETo (EL.ECons PE.CatWithWrySmile el) where
  eto _ = helpE E.catWithWrySmile (EL.ELProxy :: EL.ELProxy el)

instance toEConsKissingCat :: ETo el => ETo (EL.ECons PE.KissingCat el) where
  eto _ = helpE E.kissingCat (EL.ELProxy :: EL.ELProxy el)

instance toEConsWearyCat :: ETo el => ETo (EL.ECons PE.WearyCat el) where
  eto _ = helpE E.wearyCat (EL.ELProxy :: EL.ELProxy el)

instance toEConsCryingCat :: ETo el => ETo (EL.ECons PE.CryingCat el) where
  eto _ = helpE E.cryingCat (EL.ELProxy :: EL.ELProxy el)

instance toEConsPoutingCat :: ETo el => ETo (EL.ECons PE.PoutingCat el) where
  eto _ = helpE E.poutingCat (EL.ELProxy :: EL.ELProxy el)

instance toEConsSeeNoEvilMonkey :: ETo el => ETo (EL.ECons PE.SeeNoEvilMonkey el) where
  eto _ = helpE E.seeNoEvilMonkey (EL.ELProxy :: EL.ELProxy el)

instance toEConsHearNoEvilMonkey :: ETo el => ETo (EL.ECons PE.HearNoEvilMonkey el) where
  eto _ = helpE E.hearNoEvilMonkey (EL.ELProxy :: EL.ELProxy el)

instance toEConsSpeakNoEvilMonkey :: ETo el => ETo (EL.ECons PE.SpeakNoEvilMonkey el) where
  eto _ = helpE E.speakNoEvilMonkey (EL.ELProxy :: EL.ELProxy el)

instance toEConsKissMark :: ETo el => ETo (EL.ECons PE.KissMark el) where
  eto _ = helpE E.kissMark (EL.ELProxy :: EL.ELProxy el)

instance toEConsLoveLetter :: ETo el => ETo (EL.ECons PE.LoveLetter el) where
  eto _ = helpE E.loveLetter (EL.ELProxy :: EL.ELProxy el)

instance toEConsHeartWithArrow :: ETo el => ETo (EL.ECons PE.HeartWithArrow el) where
  eto _ = helpE E.heartWithArrow (EL.ELProxy :: EL.ELProxy el)

instance toEConsHeartWithRibbon :: ETo el => ETo (EL.ECons PE.HeartWithRibbon el) where
  eto _ = helpE E.heartWithRibbon (EL.ELProxy :: EL.ELProxy el)

instance toEConsSparklingHeart :: ETo el => ETo (EL.ECons PE.SparklingHeart el) where
  eto _ = helpE E.sparklingHeart (EL.ELProxy :: EL.ELProxy el)

instance toEConsGrowingHeart :: ETo el => ETo (EL.ECons PE.GrowingHeart el) where
  eto _ = helpE E.growingHeart (EL.ELProxy :: EL.ELProxy el)

instance toEConsBeatingHeart :: ETo el => ETo (EL.ECons PE.BeatingHeart el) where
  eto _ = helpE E.beatingHeart (EL.ELProxy :: EL.ELProxy el)

instance toEConsRevolvingHearts :: ETo el => ETo (EL.ECons PE.RevolvingHearts el) where
  eto _ = helpE E.revolvingHearts (EL.ELProxy :: EL.ELProxy el)

instance toEConsTwoHearts :: ETo el => ETo (EL.ECons PE.TwoHearts el) where
  eto _ = helpE E.twoHearts (EL.ELProxy :: EL.ELProxy el)

instance toEConsHeartDecoration :: ETo el => ETo (EL.ECons PE.HeartDecoration el) where
  eto _ = helpE E.heartDecoration (EL.ELProxy :: EL.ELProxy el)

instance toEConsHeartExclamation :: ETo el => ETo (EL.ECons PE.HeartExclamation el) where
  eto _ = helpE E.heartExclamation (EL.ELProxy :: EL.ELProxy el)

instance toEConsBrokenHeart :: ETo el => ETo (EL.ECons PE.BrokenHeart el) where
  eto _ = helpE E.brokenHeart (EL.ELProxy :: EL.ELProxy el)

instance toEConsRedHeart :: ETo el => ETo (EL.ECons PE.RedHeart el) where
  eto _ = helpE E.redHeart (EL.ELProxy :: EL.ELProxy el)

instance toEConsOrangeHeart :: ETo el => ETo (EL.ECons PE.OrangeHeart el) where
  eto _ = helpE E.orangeHeart (EL.ELProxy :: EL.ELProxy el)

instance toEConsYellowHeart :: ETo el => ETo (EL.ECons PE.YellowHeart el) where
  eto _ = helpE E.yellowHeart (EL.ELProxy :: EL.ELProxy el)

instance toEConsGreenHeart :: ETo el => ETo (EL.ECons PE.GreenHeart el) where
  eto _ = helpE E.greenHeart (EL.ELProxy :: EL.ELProxy el)

instance toEConsBlueHeart :: ETo el => ETo (EL.ECons PE.BlueHeart el) where
  eto _ = helpE E.blueHeart (EL.ELProxy :: EL.ELProxy el)

instance toEConsPurpleHeart :: ETo el => ETo (EL.ECons PE.PurpleHeart el) where
  eto _ = helpE E.purpleHeart (EL.ELProxy :: EL.ELProxy el)

instance toEConsBrownHeart :: ETo el => ETo (EL.ECons PE.BrownHeart el) where
  eto _ = helpE E.brownHeart (EL.ELProxy :: EL.ELProxy el)

instance toEConsBlackHeart :: ETo el => ETo (EL.ECons PE.BlackHeart el) where
  eto _ = helpE E.blackHeart (EL.ELProxy :: EL.ELProxy el)

instance toEConsWhiteHeart :: ETo el => ETo (EL.ECons PE.WhiteHeart el) where
  eto _ = helpE E.whiteHeart (EL.ELProxy :: EL.ELProxy el)

instance toEConsHundredPoints :: ETo el => ETo (EL.ECons PE.HundredPoints el) where
  eto _ = helpE E.hundredPoints (EL.ELProxy :: EL.ELProxy el)

instance toEConsAngerSymbol :: ETo el => ETo (EL.ECons PE.AngerSymbol el) where
  eto _ = helpE E.angerSymbol (EL.ELProxy :: EL.ELProxy el)

instance toEConsCollision :: ETo el => ETo (EL.ECons PE.Collision el) where
  eto _ = helpE E.collision (EL.ELProxy :: EL.ELProxy el)

instance toEConsDizzy :: ETo el => ETo (EL.ECons PE.Dizzy el) where
  eto _ = helpE E.dizzy (EL.ELProxy :: EL.ELProxy el)

instance toEConsSweatDroplets :: ETo el => ETo (EL.ECons PE.SweatDroplets el) where
  eto _ = helpE E.sweatDroplets (EL.ELProxy :: EL.ELProxy el)

instance toEConsDashingAway :: ETo el => ETo (EL.ECons PE.DashingAway el) where
  eto _ = helpE E.dashingAway (EL.ELProxy :: EL.ELProxy el)

instance toEConsHole :: ETo el => ETo (EL.ECons PE.Hole el) where
  eto _ = helpE E.hole (EL.ELProxy :: EL.ELProxy el)

instance toEConsBomb :: ETo el => ETo (EL.ECons PE.Bomb el) where
  eto _ = helpE E.bomb (EL.ELProxy :: EL.ELProxy el)

instance toEConsSpeechBalloon :: ETo el => ETo (EL.ECons PE.SpeechBalloon el) where
  eto _ = helpE E.speechBalloon (EL.ELProxy :: EL.ELProxy el)

instance toEConsLeftSpeechBubble :: ETo el => ETo (EL.ECons PE.LeftSpeechBubble el) where
  eto _ = helpE E.leftSpeechBubble (EL.ELProxy :: EL.ELProxy el)

instance toEConsRightAngerBubble :: ETo el => ETo (EL.ECons PE.RightAngerBubble el) where
  eto _ = helpE E.rightAngerBubble (EL.ELProxy :: EL.ELProxy el)

instance toEConsThoughtBalloon :: ETo el => ETo (EL.ECons PE.ThoughtBalloon el) where
  eto _ = helpE E.thoughtBalloon (EL.ELProxy :: EL.ELProxy el)

instance toEConsZzz :: ETo el => ETo (EL.ECons PE.Zzz el) where
  eto _ = helpE E.zzz (EL.ELProxy :: EL.ELProxy el)

instance toEConsWavingHand :: ETo el => ETo (EL.ECons PE.WavingHand el) where
  eto _ = helpE E.wavingHand (EL.ELProxy :: EL.ELProxy el)

instance toEConsRaisedBackOfHand :: ETo el => ETo (EL.ECons PE.RaisedBackOfHand el) where
  eto _ = helpE E.raisedBackOfHand (EL.ELProxy :: EL.ELProxy el)

instance toEConsHandWithFingersSplayed :: ETo el => ETo (EL.ECons PE.HandWithFingersSplayed el) where
  eto _ = helpE E.handWithFingersSplayed (EL.ELProxy :: EL.ELProxy el)

instance toEConsRaisedHand :: ETo el => ETo (EL.ECons PE.RaisedHand el) where
  eto _ = helpE E.raisedHand (EL.ELProxy :: EL.ELProxy el)

instance toEConsVulcanSalute :: ETo el => ETo (EL.ECons PE.VulcanSalute el) where
  eto _ = helpE E.vulcanSalute (EL.ELProxy :: EL.ELProxy el)

instance toEConsOkHand :: ETo el => ETo (EL.ECons PE.OkHand el) where
  eto _ = helpE E.okHand (EL.ELProxy :: EL.ELProxy el)

instance toEConsPinchedFingers :: ETo el => ETo (EL.ECons PE.PinchedFingers el) where
  eto _ = helpE E.pinchedFingers (EL.ELProxy :: EL.ELProxy el)

instance toEConsPinchingHand :: ETo el => ETo (EL.ECons PE.PinchingHand el) where
  eto _ = helpE E.pinchingHand (EL.ELProxy :: EL.ELProxy el)

instance toEConsVictoryHand :: ETo el => ETo (EL.ECons PE.VictoryHand el) where
  eto _ = helpE E.victoryHand (EL.ELProxy :: EL.ELProxy el)

instance toEConsCrossedFingers :: ETo el => ETo (EL.ECons PE.CrossedFingers el) where
  eto _ = helpE E.crossedFingers (EL.ELProxy :: EL.ELProxy el)

instance toEConsLoveYouGesture :: ETo el => ETo (EL.ECons PE.LoveYouGesture el) where
  eto _ = helpE E.loveYouGesture (EL.ELProxy :: EL.ELProxy el)

instance toEConsSignOfTheHorns :: ETo el => ETo (EL.ECons PE.SignOfTheHorns el) where
  eto _ = helpE E.signOfTheHorns (EL.ELProxy :: EL.ELProxy el)

instance toEConsCallMeHand :: ETo el => ETo (EL.ECons PE.CallMeHand el) where
  eto _ = helpE E.callMeHand (EL.ELProxy :: EL.ELProxy el)

instance toEConsBackhandIndexPointingLeft :: ETo el => ETo (EL.ECons PE.BackhandIndexPointingLeft el) where
  eto _ = helpE E.backhandIndexPointingLeft (EL.ELProxy :: EL.ELProxy el)

instance toEConsBackhandIndexPointingRight :: ETo el => ETo (EL.ECons PE.BackhandIndexPointingRight el) where
  eto _ = helpE E.backhandIndexPointingRight (EL.ELProxy :: EL.ELProxy el)

instance toEConsBackhandIndexPointingUp :: ETo el => ETo (EL.ECons PE.BackhandIndexPointingUp el) where
  eto _ = helpE E.backhandIndexPointingUp (EL.ELProxy :: EL.ELProxy el)

instance toEConsMiddleFinger :: ETo el => ETo (EL.ECons PE.MiddleFinger el) where
  eto _ = helpE E.middleFinger (EL.ELProxy :: EL.ELProxy el)

instance toEConsBackhandIndexPointingDown :: ETo el => ETo (EL.ECons PE.BackhandIndexPointingDown el) where
  eto _ = helpE E.backhandIndexPointingDown (EL.ELProxy :: EL.ELProxy el)

instance toEConsIndexPointingUp :: ETo el => ETo (EL.ECons PE.IndexPointingUp el) where
  eto _ = helpE E.indexPointingUp (EL.ELProxy :: EL.ELProxy el)

instance toEConsThumbsUp :: ETo el => ETo (EL.ECons PE.ThumbsUp el) where
  eto _ = helpE E.thumbsUp (EL.ELProxy :: EL.ELProxy el)

instance toEConsThumbsDown :: ETo el => ETo (EL.ECons PE.ThumbsDown el) where
  eto _ = helpE E.thumbsDown (EL.ELProxy :: EL.ELProxy el)

instance toEConsRaisedFist :: ETo el => ETo (EL.ECons PE.RaisedFist el) where
  eto _ = helpE E.raisedFist (EL.ELProxy :: EL.ELProxy el)

instance toEConsOncomingFist :: ETo el => ETo (EL.ECons PE.OncomingFist el) where
  eto _ = helpE E.oncomingFist (EL.ELProxy :: EL.ELProxy el)

instance toEConsLeftFacingFist :: ETo el => ETo (EL.ECons PE.LeftFacingFist el) where
  eto _ = helpE E.leftFacingFist (EL.ELProxy :: EL.ELProxy el)

instance toEConsRightFacingFist :: ETo el => ETo (EL.ECons PE.RightFacingFist el) where
  eto _ = helpE E.rightFacingFist (EL.ELProxy :: EL.ELProxy el)

instance toEConsClappingHands :: ETo el => ETo (EL.ECons PE.ClappingHands el) where
  eto _ = helpE E.clappingHands (EL.ELProxy :: EL.ELProxy el)

instance toEConsRaisingHands :: ETo el => ETo (EL.ECons PE.RaisingHands el) where
  eto _ = helpE E.raisingHands (EL.ELProxy :: EL.ELProxy el)

instance toEConsOpenHands :: ETo el => ETo (EL.ECons PE.OpenHands el) where
  eto _ = helpE E.openHands (EL.ELProxy :: EL.ELProxy el)

instance toEConsPalmsUpTogether :: ETo el => ETo (EL.ECons PE.PalmsUpTogether el) where
  eto _ = helpE E.palmsUpTogether (EL.ELProxy :: EL.ELProxy el)

instance toEConsHandshake :: ETo el => ETo (EL.ECons PE.Handshake el) where
  eto _ = helpE E.handshake (EL.ELProxy :: EL.ELProxy el)

instance toEConsFoldedHands :: ETo el => ETo (EL.ECons PE.FoldedHands el) where
  eto _ = helpE E.foldedHands (EL.ELProxy :: EL.ELProxy el)

instance toEConsWritingHand :: ETo el => ETo (EL.ECons PE.WritingHand el) where
  eto _ = helpE E.writingHand (EL.ELProxy :: EL.ELProxy el)

instance toEConsNailPolish :: ETo el => ETo (EL.ECons PE.NailPolish el) where
  eto _ = helpE E.nailPolish (EL.ELProxy :: EL.ELProxy el)

instance toEConsSelfie :: ETo el => ETo (EL.ECons PE.Selfie el) where
  eto _ = helpE E.selfie (EL.ELProxy :: EL.ELProxy el)

instance toEConsFlexedBiceps :: ETo el => ETo (EL.ECons PE.FlexedBiceps el) where
  eto _ = helpE E.flexedBiceps (EL.ELProxy :: EL.ELProxy el)

instance toEConsMechanicalArm :: ETo el => ETo (EL.ECons PE.MechanicalArm el) where
  eto _ = helpE E.mechanicalArm (EL.ELProxy :: EL.ELProxy el)

instance toEConsMechanicalLeg :: ETo el => ETo (EL.ECons PE.MechanicalLeg el) where
  eto _ = helpE E.mechanicalLeg (EL.ELProxy :: EL.ELProxy el)

instance toEConsLeg :: ETo el => ETo (EL.ECons PE.Leg el) where
  eto _ = helpE E.leg (EL.ELProxy :: EL.ELProxy el)

instance toEConsFoot :: ETo el => ETo (EL.ECons PE.Foot el) where
  eto _ = helpE E.foot (EL.ELProxy :: EL.ELProxy el)

instance toEConsEar :: ETo el => ETo (EL.ECons PE.Ear el) where
  eto _ = helpE E.ear (EL.ELProxy :: EL.ELProxy el)

instance toEConsEarWithHearingAid :: ETo el => ETo (EL.ECons PE.EarWithHearingAid el) where
  eto _ = helpE E.earWithHearingAid (EL.ELProxy :: EL.ELProxy el)

instance toEConsNose :: ETo el => ETo (EL.ECons PE.Nose el) where
  eto _ = helpE E.nose (EL.ELProxy :: EL.ELProxy el)

instance toEConsBrain :: ETo el => ETo (EL.ECons PE.Brain el) where
  eto _ = helpE E.brain (EL.ELProxy :: EL.ELProxy el)

instance toEConsAnatomicalHeart :: ETo el => ETo (EL.ECons PE.AnatomicalHeart el) where
  eto _ = helpE E.anatomicalHeart (EL.ELProxy :: EL.ELProxy el)

instance toEConsLungs :: ETo el => ETo (EL.ECons PE.Lungs el) where
  eto _ = helpE E.lungs (EL.ELProxy :: EL.ELProxy el)

instance toEConsTooth :: ETo el => ETo (EL.ECons PE.Tooth el) where
  eto _ = helpE E.tooth (EL.ELProxy :: EL.ELProxy el)

instance toEConsBone :: ETo el => ETo (EL.ECons PE.Bone el) where
  eto _ = helpE E.bone (EL.ELProxy :: EL.ELProxy el)

instance toEConsEyes :: ETo el => ETo (EL.ECons PE.Eyes el) where
  eto _ = helpE E.eyes (EL.ELProxy :: EL.ELProxy el)

instance toEConsEye :: ETo el => ETo (EL.ECons PE.Eye el) where
  eto _ = helpE E.eye (EL.ELProxy :: EL.ELProxy el)

instance toEConsTongue :: ETo el => ETo (EL.ECons PE.Tongue el) where
  eto _ = helpE E.tongue (EL.ELProxy :: EL.ELProxy el)

instance toEConsMouth :: ETo el => ETo (EL.ECons PE.Mouth el) where
  eto _ = helpE E.mouth (EL.ELProxy :: EL.ELProxy el)

instance toEConsBaby :: ETo el => ETo (EL.ECons PE.Baby el) where
  eto _ = helpE E.baby (EL.ELProxy :: EL.ELProxy el)

instance toEConsChild :: ETo el => ETo (EL.ECons PE.Child el) where
  eto _ = helpE E.child (EL.ELProxy :: EL.ELProxy el)

instance toEConsBoy :: ETo el => ETo (EL.ECons PE.Boy el) where
  eto _ = helpE E.boy (EL.ELProxy :: EL.ELProxy el)

instance toEConsGirl :: ETo el => ETo (EL.ECons PE.Girl el) where
  eto _ = helpE E.girl (EL.ELProxy :: EL.ELProxy el)

instance toEConsPerson :: ETo el => ETo (EL.ECons PE.Person el) where
  eto _ = helpE E.person (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonBlondHair :: ETo el => ETo (EL.ECons PE.PersonBlondHair el) where
  eto _ = helpE E.personBlondHair (EL.ELProxy :: EL.ELProxy el)

instance toEConsMan :: ETo el => ETo (EL.ECons PE.Man el) where
  eto _ = helpE E.man (EL.ELProxy :: EL.ELProxy el)

instance toEConsManBeard :: ETo el => ETo (EL.ECons PE.ManBeard el) where
  eto _ = helpE E.manBeard (EL.ELProxy :: EL.ELProxy el)

instance toEConsWoman :: ETo el => ETo (EL.ECons PE.Woman el) where
  eto _ = helpE E.woman (EL.ELProxy :: EL.ELProxy el)

instance toEConsOlderPerson :: ETo el => ETo (EL.ECons PE.OlderPerson el) where
  eto _ = helpE E.olderPerson (EL.ELProxy :: EL.ELProxy el)

instance toEConsOldMan :: ETo el => ETo (EL.ECons PE.OldMan el) where
  eto _ = helpE E.oldMan (EL.ELProxy :: EL.ELProxy el)

instance toEConsOldWoman :: ETo el => ETo (EL.ECons PE.OldWoman el) where
  eto _ = helpE E.oldWoman (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonFrowning :: ETo el => ETo (EL.ECons PE.PersonFrowning el) where
  eto _ = helpE E.personFrowning (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonPouting :: ETo el => ETo (EL.ECons PE.PersonPouting el) where
  eto _ = helpE E.personPouting (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonGesturingNo :: ETo el => ETo (EL.ECons PE.PersonGesturingNo el) where
  eto _ = helpE E.personGesturingNo (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonGesturingOk :: ETo el => ETo (EL.ECons PE.PersonGesturingOk el) where
  eto _ = helpE E.personGesturingOk (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonTippingHand :: ETo el => ETo (EL.ECons PE.PersonTippingHand el) where
  eto _ = helpE E.personTippingHand (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonRaisingHand :: ETo el => ETo (EL.ECons PE.PersonRaisingHand el) where
  eto _ = helpE E.personRaisingHand (EL.ELProxy :: EL.ELProxy el)

instance toEConsDeafPerson :: ETo el => ETo (EL.ECons PE.DeafPerson el) where
  eto _ = helpE E.deafPerson (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonBowing :: ETo el => ETo (EL.ECons PE.PersonBowing el) where
  eto _ = helpE E.personBowing (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonFacepalming :: ETo el => ETo (EL.ECons PE.PersonFacepalming el) where
  eto _ = helpE E.personFacepalming (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonShrugging :: ETo el => ETo (EL.ECons PE.PersonShrugging el) where
  eto _ = helpE E.personShrugging (EL.ELProxy :: EL.ELProxy el)

instance toEConsPoliceOfficer :: ETo el => ETo (EL.ECons PE.PoliceOfficer el) where
  eto _ = helpE E.policeOfficer (EL.ELProxy :: EL.ELProxy el)

instance toEConsDetective :: ETo el => ETo (EL.ECons PE.Detective el) where
  eto _ = helpE E.detective (EL.ELProxy :: EL.ELProxy el)

instance toEConsGuard :: ETo el => ETo (EL.ECons PE.Guard el) where
  eto _ = helpE E.guard (EL.ELProxy :: EL.ELProxy el)

instance toEConsNinja :: ETo el => ETo (EL.ECons PE.Ninja el) where
  eto _ = helpE E.ninja (EL.ELProxy :: EL.ELProxy el)

instance toEConsConstructionWorker :: ETo el => ETo (EL.ECons PE.ConstructionWorker el) where
  eto _ = helpE E.constructionWorker (EL.ELProxy :: EL.ELProxy el)

instance toEConsPrince :: ETo el => ETo (EL.ECons PE.Prince el) where
  eto _ = helpE E.prince (EL.ELProxy :: EL.ELProxy el)

instance toEConsPrincess :: ETo el => ETo (EL.ECons PE.Princess el) where
  eto _ = helpE E.princess (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonWearingTurban :: ETo el => ETo (EL.ECons PE.PersonWearingTurban el) where
  eto _ = helpE E.personWearingTurban (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonWithSkullcap :: ETo el => ETo (EL.ECons PE.PersonWithSkullcap el) where
  eto _ = helpE E.personWithSkullcap (EL.ELProxy :: EL.ELProxy el)

instance toEConsWomanWithHeadscarf :: ETo el => ETo (EL.ECons PE.WomanWithHeadscarf el) where
  eto _ = helpE E.womanWithHeadscarf (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonInTuxedo :: ETo el => ETo (EL.ECons PE.PersonInTuxedo el) where
  eto _ = helpE E.personInTuxedo (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonWithVeil :: ETo el => ETo (EL.ECons PE.PersonWithVeil el) where
  eto _ = helpE E.personWithVeil (EL.ELProxy :: EL.ELProxy el)

instance toEConsPregnantWoman :: ETo el => ETo (EL.ECons PE.PregnantWoman el) where
  eto _ = helpE E.pregnantWoman (EL.ELProxy :: EL.ELProxy el)

instance toEConsBreastFeeding :: ETo el => ETo (EL.ECons PE.BreastFeeding el) where
  eto _ = helpE E.breastFeeding (EL.ELProxy :: EL.ELProxy el)

instance toEConsBabyAngel :: ETo el => ETo (EL.ECons PE.BabyAngel el) where
  eto _ = helpE E.babyAngel (EL.ELProxy :: EL.ELProxy el)

instance toEConsSantaClaus :: ETo el => ETo (EL.ECons PE.SantaClaus el) where
  eto _ = helpE E.santaClaus (EL.ELProxy :: EL.ELProxy el)

instance toEConsMrsClaus :: ETo el => ETo (EL.ECons PE.MrsClaus el) where
  eto _ = helpE E.mrsClaus (EL.ELProxy :: EL.ELProxy el)

instance toEConsSuperhero :: ETo el => ETo (EL.ECons PE.Superhero el) where
  eto _ = helpE E.superhero (EL.ELProxy :: EL.ELProxy el)

instance toEConsSupervillain :: ETo el => ETo (EL.ECons PE.Supervillain el) where
  eto _ = helpE E.supervillain (EL.ELProxy :: EL.ELProxy el)

instance toEConsMage :: ETo el => ETo (EL.ECons PE.Mage el) where
  eto _ = helpE E.mage (EL.ELProxy :: EL.ELProxy el)

instance toEConsFairy :: ETo el => ETo (EL.ECons PE.Fairy el) where
  eto _ = helpE E.fairy (EL.ELProxy :: EL.ELProxy el)

instance toEConsVampire :: ETo el => ETo (EL.ECons PE.Vampire el) where
  eto _ = helpE E.vampire (EL.ELProxy :: EL.ELProxy el)

instance toEConsMerperson :: ETo el => ETo (EL.ECons PE.Merperson el) where
  eto _ = helpE E.merperson (EL.ELProxy :: EL.ELProxy el)

instance toEConsElf :: ETo el => ETo (EL.ECons PE.Elf el) where
  eto _ = helpE E.elf (EL.ELProxy :: EL.ELProxy el)

instance toEConsGenie :: ETo el => ETo (EL.ECons PE.Genie el) where
  eto _ = helpE E.genie (EL.ELProxy :: EL.ELProxy el)

instance toEConsZombie :: ETo el => ETo (EL.ECons PE.Zombie el) where
  eto _ = helpE E.zombie (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonGettingMassage :: ETo el => ETo (EL.ECons PE.PersonGettingMassage el) where
  eto _ = helpE E.personGettingMassage (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonGettingHaircut :: ETo el => ETo (EL.ECons PE.PersonGettingHaircut el) where
  eto _ = helpE E.personGettingHaircut (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonWalking :: ETo el => ETo (EL.ECons PE.PersonWalking el) where
  eto _ = helpE E.personWalking (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonStanding :: ETo el => ETo (EL.ECons PE.PersonStanding el) where
  eto _ = helpE E.personStanding (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonKneeling :: ETo el => ETo (EL.ECons PE.PersonKneeling el) where
  eto _ = helpE E.personKneeling (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonRunning :: ETo el => ETo (EL.ECons PE.PersonRunning el) where
  eto _ = helpE E.personRunning (EL.ELProxy :: EL.ELProxy el)

instance toEConsWomanDancing :: ETo el => ETo (EL.ECons PE.WomanDancing el) where
  eto _ = helpE E.womanDancing (EL.ELProxy :: EL.ELProxy el)

instance toEConsManDancing :: ETo el => ETo (EL.ECons PE.ManDancing el) where
  eto _ = helpE E.manDancing (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonInSuitLevitating :: ETo el => ETo (EL.ECons PE.PersonInSuitLevitating el) where
  eto _ = helpE E.personInSuitLevitating (EL.ELProxy :: EL.ELProxy el)

instance toEConsPeopleWithBunnyEars :: ETo el => ETo (EL.ECons PE.PeopleWithBunnyEars el) where
  eto _ = helpE E.peopleWithBunnyEars (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonInSteamyRoom :: ETo el => ETo (EL.ECons PE.PersonInSteamyRoom el) where
  eto _ = helpE E.personInSteamyRoom (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonClimbing :: ETo el => ETo (EL.ECons PE.PersonClimbing el) where
  eto _ = helpE E.personClimbing (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonFencing :: ETo el => ETo (EL.ECons PE.PersonFencing el) where
  eto _ = helpE E.personFencing (EL.ELProxy :: EL.ELProxy el)

instance toEConsHorseRacing :: ETo el => ETo (EL.ECons PE.HorseRacing el) where
  eto _ = helpE E.horseRacing (EL.ELProxy :: EL.ELProxy el)

instance toEConsSkier :: ETo el => ETo (EL.ECons PE.Skier el) where
  eto _ = helpE E.skier (EL.ELProxy :: EL.ELProxy el)

instance toEConsSnowboarder :: ETo el => ETo (EL.ECons PE.Snowboarder el) where
  eto _ = helpE E.snowboarder (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonGolfing :: ETo el => ETo (EL.ECons PE.PersonGolfing el) where
  eto _ = helpE E.personGolfing (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonSurfing :: ETo el => ETo (EL.ECons PE.PersonSurfing el) where
  eto _ = helpE E.personSurfing (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonRowingBoat :: ETo el => ETo (EL.ECons PE.PersonRowingBoat el) where
  eto _ = helpE E.personRowingBoat (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonSwimming :: ETo el => ETo (EL.ECons PE.PersonSwimming el) where
  eto _ = helpE E.personSwimming (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonBouncingBall :: ETo el => ETo (EL.ECons PE.PersonBouncingBall el) where
  eto _ = helpE E.personBouncingBall (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonLiftingWeights :: ETo el => ETo (EL.ECons PE.PersonLiftingWeights el) where
  eto _ = helpE E.personLiftingWeights (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonBiking :: ETo el => ETo (EL.ECons PE.PersonBiking el) where
  eto _ = helpE E.personBiking (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonMountainBiking :: ETo el => ETo (EL.ECons PE.PersonMountainBiking el) where
  eto _ = helpE E.personMountainBiking (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonCartwheeling :: ETo el => ETo (EL.ECons PE.PersonCartwheeling el) where
  eto _ = helpE E.personCartwheeling (EL.ELProxy :: EL.ELProxy el)

instance toEConsPeopleWrestling :: ETo el => ETo (EL.ECons PE.PeopleWrestling el) where
  eto _ = helpE E.peopleWrestling (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonPlayingWaterPolo :: ETo el => ETo (EL.ECons PE.PersonPlayingWaterPolo el) where
  eto _ = helpE E.personPlayingWaterPolo (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonPlayingHandball :: ETo el => ETo (EL.ECons PE.PersonPlayingHandball el) where
  eto _ = helpE E.personPlayingHandball (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonJuggling :: ETo el => ETo (EL.ECons PE.PersonJuggling el) where
  eto _ = helpE E.personJuggling (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonInLotusPosition :: ETo el => ETo (EL.ECons PE.PersonInLotusPosition el) where
  eto _ = helpE E.personInLotusPosition (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonTakingBath :: ETo el => ETo (EL.ECons PE.PersonTakingBath el) where
  eto _ = helpE E.personTakingBath (EL.ELProxy :: EL.ELProxy el)

instance toEConsPersonInBed :: ETo el => ETo (EL.ECons PE.PersonInBed el) where
  eto _ = helpE E.personInBed (EL.ELProxy :: EL.ELProxy el)

instance toEConsWomenHoldingHands :: ETo el => ETo (EL.ECons PE.WomenHoldingHands el) where
  eto _ = helpE E.womenHoldingHands (EL.ELProxy :: EL.ELProxy el)

instance toEConsWomanAndManHoldingHands :: ETo el => ETo (EL.ECons PE.WomanAndManHoldingHands el) where
  eto _ = helpE E.womanAndManHoldingHands (EL.ELProxy :: EL.ELProxy el)

instance toEConsMenHoldingHands :: ETo el => ETo (EL.ECons PE.MenHoldingHands el) where
  eto _ = helpE E.menHoldingHands (EL.ELProxy :: EL.ELProxy el)

instance toEConsKiss :: ETo el => ETo (EL.ECons PE.Kiss el) where
  eto _ = helpE E.kiss (EL.ELProxy :: EL.ELProxy el)

instance toEConsCoupleWithHeart :: ETo el => ETo (EL.ECons PE.CoupleWithHeart el) where
  eto _ = helpE E.coupleWithHeart (EL.ELProxy :: EL.ELProxy el)

instance toEConsFamily :: ETo el => ETo (EL.ECons PE.Family el) where
  eto _ = helpE E.family (EL.ELProxy :: EL.ELProxy el)

instance toEConsSpeakingHead :: ETo el => ETo (EL.ECons PE.SpeakingHead el) where
  eto _ = helpE E.speakingHead (EL.ELProxy :: EL.ELProxy el)

instance toEConsBustInSilhouette :: ETo el => ETo (EL.ECons PE.BustInSilhouette el) where
  eto _ = helpE E.bustInSilhouette (EL.ELProxy :: EL.ELProxy el)

instance toEConsBustsInSilhouette :: ETo el => ETo (EL.ECons PE.BustsInSilhouette el) where
  eto _ = helpE E.bustsInSilhouette (EL.ELProxy :: EL.ELProxy el)

instance toEConsPeopleHugging :: ETo el => ETo (EL.ECons PE.PeopleHugging el) where
  eto _ = helpE E.peopleHugging (EL.ELProxy :: EL.ELProxy el)

instance toEConsFootprints :: ETo el => ETo (EL.ECons PE.Footprints el) where
  eto _ = helpE E.footprints (EL.ELProxy :: EL.ELProxy el)

instance toEConsLightSkinTone :: ETo el => ETo (EL.ECons PE.LightSkinTone el) where
  eto _ = helpE E.lightSkinTone (EL.ELProxy :: EL.ELProxy el)

instance toEConsMediumLightSkinTone :: ETo el => ETo (EL.ECons PE.MediumLightSkinTone el) where
  eto _ = helpE E.mediumLightSkinTone (EL.ELProxy :: EL.ELProxy el)

instance toEConsMediumSkinTone :: ETo el => ETo (EL.ECons PE.MediumSkinTone el) where
  eto _ = helpE E.mediumSkinTone (EL.ELProxy :: EL.ELProxy el)

instance toEConsMediumDarkSkinTone :: ETo el => ETo (EL.ECons PE.MediumDarkSkinTone el) where
  eto _ = helpE E.mediumDarkSkinTone (EL.ELProxy :: EL.ELProxy el)

instance toEConsDarkSkinTone :: ETo el => ETo (EL.ECons PE.DarkSkinTone el) where
  eto _ = helpE E.darkSkinTone (EL.ELProxy :: EL.ELProxy el)

instance toEConsRedHair :: ETo el => ETo (EL.ECons PE.RedHair el) where
  eto _ = helpE E.redHair (EL.ELProxy :: EL.ELProxy el)

instance toEConsCurlyHair :: ETo el => ETo (EL.ECons PE.CurlyHair el) where
  eto _ = helpE E.curlyHair (EL.ELProxy :: EL.ELProxy el)

instance toEConsWhiteHair :: ETo el => ETo (EL.ECons PE.WhiteHair el) where
  eto _ = helpE E.whiteHair (EL.ELProxy :: EL.ELProxy el)

instance toEConsBald :: ETo el => ETo (EL.ECons PE.Bald el) where
  eto _ = helpE E.bald (EL.ELProxy :: EL.ELProxy el)

instance toEConsMonkeyFace :: ETo el => ETo (EL.ECons PE.MonkeyFace el) where
  eto _ = helpE E.monkeyFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsMonkey :: ETo el => ETo (EL.ECons PE.Monkey el) where
  eto _ = helpE E.monkey (EL.ELProxy :: EL.ELProxy el)

instance toEConsGorilla :: ETo el => ETo (EL.ECons PE.Gorilla el) where
  eto _ = helpE E.gorilla (EL.ELProxy :: EL.ELProxy el)

instance toEConsOrangutan :: ETo el => ETo (EL.ECons PE.Orangutan el) where
  eto _ = helpE E.orangutan (EL.ELProxy :: EL.ELProxy el)

instance toEConsDogFace :: ETo el => ETo (EL.ECons PE.DogFace el) where
  eto _ = helpE E.dogFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsDog :: ETo el => ETo (EL.ECons PE.Dog el) where
  eto _ = helpE E.dog (EL.ELProxy :: EL.ELProxy el)

instance toEConsGuideDog :: ETo el => ETo (EL.ECons PE.GuideDog el) where
  eto _ = helpE E.guideDog (EL.ELProxy :: EL.ELProxy el)

instance toEConsPoodle :: ETo el => ETo (EL.ECons PE.Poodle el) where
  eto _ = helpE E.poodle (EL.ELProxy :: EL.ELProxy el)

instance toEConsWolf :: ETo el => ETo (EL.ECons PE.Wolf el) where
  eto _ = helpE E.wolf (EL.ELProxy :: EL.ELProxy el)

instance toEConsFox :: ETo el => ETo (EL.ECons PE.Fox el) where
  eto _ = helpE E.fox (EL.ELProxy :: EL.ELProxy el)

instance toEConsRaccoon :: ETo el => ETo (EL.ECons PE.Raccoon el) where
  eto _ = helpE E.raccoon (EL.ELProxy :: EL.ELProxy el)

instance toEConsCatFace :: ETo el => ETo (EL.ECons PE.CatFace el) where
  eto _ = helpE E.catFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsCat :: ETo el => ETo (EL.ECons PE.Cat el) where
  eto _ = helpE E.cat (EL.ELProxy :: EL.ELProxy el)

instance toEConsLion :: ETo el => ETo (EL.ECons PE.Lion el) where
  eto _ = helpE E.lion (EL.ELProxy :: EL.ELProxy el)

instance toEConsTigerFace :: ETo el => ETo (EL.ECons PE.TigerFace el) where
  eto _ = helpE E.tigerFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsTiger :: ETo el => ETo (EL.ECons PE.Tiger el) where
  eto _ = helpE E.tiger (EL.ELProxy :: EL.ELProxy el)

instance toEConsLeopard :: ETo el => ETo (EL.ECons PE.Leopard el) where
  eto _ = helpE E.leopard (EL.ELProxy :: EL.ELProxy el)

instance toEConsHorseFace :: ETo el => ETo (EL.ECons PE.HorseFace el) where
  eto _ = helpE E.horseFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsHorse :: ETo el => ETo (EL.ECons PE.Horse el) where
  eto _ = helpE E.horse (EL.ELProxy :: EL.ELProxy el)

instance toEConsUnicorn :: ETo el => ETo (EL.ECons PE.Unicorn el) where
  eto _ = helpE E.unicorn (EL.ELProxy :: EL.ELProxy el)

instance toEConsZebra :: ETo el => ETo (EL.ECons PE.Zebra el) where
  eto _ = helpE E.zebra (EL.ELProxy :: EL.ELProxy el)

instance toEConsDeer :: ETo el => ETo (EL.ECons PE.Deer el) where
  eto _ = helpE E.deer (EL.ELProxy :: EL.ELProxy el)

instance toEConsBison :: ETo el => ETo (EL.ECons PE.Bison el) where
  eto _ = helpE E.bison (EL.ELProxy :: EL.ELProxy el)

instance toEConsCowFace :: ETo el => ETo (EL.ECons PE.CowFace el) where
  eto _ = helpE E.cowFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsOx :: ETo el => ETo (EL.ECons PE.Ox el) where
  eto _ = helpE E.ox (EL.ELProxy :: EL.ELProxy el)

instance toEConsWaterBuffalo :: ETo el => ETo (EL.ECons PE.WaterBuffalo el) where
  eto _ = helpE E.waterBuffalo (EL.ELProxy :: EL.ELProxy el)

instance toEConsCow :: ETo el => ETo (EL.ECons PE.Cow el) where
  eto _ = helpE E.cow (EL.ELProxy :: EL.ELProxy el)

instance toEConsPigFace :: ETo el => ETo (EL.ECons PE.PigFace el) where
  eto _ = helpE E.pigFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsPig :: ETo el => ETo (EL.ECons PE.Pig el) where
  eto _ = helpE E.pig (EL.ELProxy :: EL.ELProxy el)

instance toEConsBoar :: ETo el => ETo (EL.ECons PE.Boar el) where
  eto _ = helpE E.boar (EL.ELProxy :: EL.ELProxy el)

instance toEConsPigNose :: ETo el => ETo (EL.ECons PE.PigNose el) where
  eto _ = helpE E.pigNose (EL.ELProxy :: EL.ELProxy el)

instance toEConsRam :: ETo el => ETo (EL.ECons PE.Ram el) where
  eto _ = helpE E.ram (EL.ELProxy :: EL.ELProxy el)

instance toEConsEwe :: ETo el => ETo (EL.ECons PE.Ewe el) where
  eto _ = helpE E.ewe (EL.ELProxy :: EL.ELProxy el)

instance toEConsGoat :: ETo el => ETo (EL.ECons PE.Goat el) where
  eto _ = helpE E.goat (EL.ELProxy :: EL.ELProxy el)

instance toEConsCamel :: ETo el => ETo (EL.ECons PE.Camel el) where
  eto _ = helpE E.camel (EL.ELProxy :: EL.ELProxy el)

instance toEConsTwoHumpCamel :: ETo el => ETo (EL.ECons PE.TwoHumpCamel el) where
  eto _ = helpE E.twoHumpCamel (EL.ELProxy :: EL.ELProxy el)

instance toEConsLlama :: ETo el => ETo (EL.ECons PE.Llama el) where
  eto _ = helpE E.llama (EL.ELProxy :: EL.ELProxy el)

instance toEConsGiraffe :: ETo el => ETo (EL.ECons PE.Giraffe el) where
  eto _ = helpE E.giraffe (EL.ELProxy :: EL.ELProxy el)

instance toEConsElephant :: ETo el => ETo (EL.ECons PE.Elephant el) where
  eto _ = helpE E.elephant (EL.ELProxy :: EL.ELProxy el)

instance toEConsMammoth :: ETo el => ETo (EL.ECons PE.Mammoth el) where
  eto _ = helpE E.mammoth (EL.ELProxy :: EL.ELProxy el)

instance toEConsRhinoceros :: ETo el => ETo (EL.ECons PE.Rhinoceros el) where
  eto _ = helpE E.rhinoceros (EL.ELProxy :: EL.ELProxy el)

instance toEConsHippopotamus :: ETo el => ETo (EL.ECons PE.Hippopotamus el) where
  eto _ = helpE E.hippopotamus (EL.ELProxy :: EL.ELProxy el)

instance toEConsMouseFace :: ETo el => ETo (EL.ECons PE.MouseFace el) where
  eto _ = helpE E.mouseFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsMouse :: ETo el => ETo (EL.ECons PE.Mouse el) where
  eto _ = helpE E.mouse (EL.ELProxy :: EL.ELProxy el)

instance toEConsRat :: ETo el => ETo (EL.ECons PE.Rat el) where
  eto _ = helpE E.rat (EL.ELProxy :: EL.ELProxy el)

instance toEConsHamster :: ETo el => ETo (EL.ECons PE.Hamster el) where
  eto _ = helpE E.hamster (EL.ELProxy :: EL.ELProxy el)

instance toEConsRabbitFace :: ETo el => ETo (EL.ECons PE.RabbitFace el) where
  eto _ = helpE E.rabbitFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsRabbit :: ETo el => ETo (EL.ECons PE.Rabbit el) where
  eto _ = helpE E.rabbit (EL.ELProxy :: EL.ELProxy el)

instance toEConsChipmunk :: ETo el => ETo (EL.ECons PE.Chipmunk el) where
  eto _ = helpE E.chipmunk (EL.ELProxy :: EL.ELProxy el)

instance toEConsBeaver :: ETo el => ETo (EL.ECons PE.Beaver el) where
  eto _ = helpE E.beaver (EL.ELProxy :: EL.ELProxy el)

instance toEConsHedgehog :: ETo el => ETo (EL.ECons PE.Hedgehog el) where
  eto _ = helpE E.hedgehog (EL.ELProxy :: EL.ELProxy el)

instance toEConsBat :: ETo el => ETo (EL.ECons PE.Bat el) where
  eto _ = helpE E.bat (EL.ELProxy :: EL.ELProxy el)

instance toEConsBear :: ETo el => ETo (EL.ECons PE.Bear el) where
  eto _ = helpE E.bear (EL.ELProxy :: EL.ELProxy el)

instance toEConsKoala :: ETo el => ETo (EL.ECons PE.Koala el) where
  eto _ = helpE E.koala (EL.ELProxy :: EL.ELProxy el)

instance toEConsPanda :: ETo el => ETo (EL.ECons PE.Panda el) where
  eto _ = helpE E.panda (EL.ELProxy :: EL.ELProxy el)

instance toEConsSloth :: ETo el => ETo (EL.ECons PE.Sloth el) where
  eto _ = helpE E.sloth (EL.ELProxy :: EL.ELProxy el)

instance toEConsOtter :: ETo el => ETo (EL.ECons PE.Otter el) where
  eto _ = helpE E.otter (EL.ELProxy :: EL.ELProxy el)

instance toEConsSkunk :: ETo el => ETo (EL.ECons PE.Skunk el) where
  eto _ = helpE E.skunk (EL.ELProxy :: EL.ELProxy el)

instance toEConsKangaroo :: ETo el => ETo (EL.ECons PE.Kangaroo el) where
  eto _ = helpE E.kangaroo (EL.ELProxy :: EL.ELProxy el)

instance toEConsBadger :: ETo el => ETo (EL.ECons PE.Badger el) where
  eto _ = helpE E.badger (EL.ELProxy :: EL.ELProxy el)

instance toEConsPawPrints :: ETo el => ETo (EL.ECons PE.PawPrints el) where
  eto _ = helpE E.pawPrints (EL.ELProxy :: EL.ELProxy el)

instance toEConsTurkey :: ETo el => ETo (EL.ECons PE.Turkey el) where
  eto _ = helpE E.turkey (EL.ELProxy :: EL.ELProxy el)

instance toEConsChicken :: ETo el => ETo (EL.ECons PE.Chicken el) where
  eto _ = helpE E.chicken (EL.ELProxy :: EL.ELProxy el)

instance toEConsRooster :: ETo el => ETo (EL.ECons PE.Rooster el) where
  eto _ = helpE E.rooster (EL.ELProxy :: EL.ELProxy el)

instance toEConsHatchingChick :: ETo el => ETo (EL.ECons PE.HatchingChick el) where
  eto _ = helpE E.hatchingChick (EL.ELProxy :: EL.ELProxy el)

instance toEConsBabyChick :: ETo el => ETo (EL.ECons PE.BabyChick el) where
  eto _ = helpE E.babyChick (EL.ELProxy :: EL.ELProxy el)

instance toEConsFrontFacingBabyChick :: ETo el => ETo (EL.ECons PE.FrontFacingBabyChick el) where
  eto _ = helpE E.frontFacingBabyChick (EL.ELProxy :: EL.ELProxy el)

instance toEConsBird :: ETo el => ETo (EL.ECons PE.Bird el) where
  eto _ = helpE E.bird (EL.ELProxy :: EL.ELProxy el)

instance toEConsPenguin :: ETo el => ETo (EL.ECons PE.Penguin el) where
  eto _ = helpE E.penguin (EL.ELProxy :: EL.ELProxy el)

instance toEConsDove :: ETo el => ETo (EL.ECons PE.Dove el) where
  eto _ = helpE E.dove (EL.ELProxy :: EL.ELProxy el)

instance toEConsEagle :: ETo el => ETo (EL.ECons PE.Eagle el) where
  eto _ = helpE E.eagle (EL.ELProxy :: EL.ELProxy el)

instance toEConsDuck :: ETo el => ETo (EL.ECons PE.Duck el) where
  eto _ = helpE E.duck (EL.ELProxy :: EL.ELProxy el)

instance toEConsSwan :: ETo el => ETo (EL.ECons PE.Swan el) where
  eto _ = helpE E.swan (EL.ELProxy :: EL.ELProxy el)

instance toEConsOwl :: ETo el => ETo (EL.ECons PE.Owl el) where
  eto _ = helpE E.owl (EL.ELProxy :: EL.ELProxy el)

instance toEConsDodo :: ETo el => ETo (EL.ECons PE.Dodo el) where
  eto _ = helpE E.dodo (EL.ELProxy :: EL.ELProxy el)

instance toEConsFeather :: ETo el => ETo (EL.ECons PE.Feather el) where
  eto _ = helpE E.feather (EL.ELProxy :: EL.ELProxy el)

instance toEConsFlamingo :: ETo el => ETo (EL.ECons PE.Flamingo el) where
  eto _ = helpE E.flamingo (EL.ELProxy :: EL.ELProxy el)

instance toEConsPeacock :: ETo el => ETo (EL.ECons PE.Peacock el) where
  eto _ = helpE E.peacock (EL.ELProxy :: EL.ELProxy el)

instance toEConsParrot :: ETo el => ETo (EL.ECons PE.Parrot el) where
  eto _ = helpE E.parrot (EL.ELProxy :: EL.ELProxy el)

instance toEConsFrog :: ETo el => ETo (EL.ECons PE.Frog el) where
  eto _ = helpE E.frog (EL.ELProxy :: EL.ELProxy el)

instance toEConsCrocodile :: ETo el => ETo (EL.ECons PE.Crocodile el) where
  eto _ = helpE E.crocodile (EL.ELProxy :: EL.ELProxy el)

instance toEConsTurtle :: ETo el => ETo (EL.ECons PE.Turtle el) where
  eto _ = helpE E.turtle (EL.ELProxy :: EL.ELProxy el)

instance toEConsLizard :: ETo el => ETo (EL.ECons PE.Lizard el) where
  eto _ = helpE E.lizard (EL.ELProxy :: EL.ELProxy el)

instance toEConsSnake :: ETo el => ETo (EL.ECons PE.Snake el) where
  eto _ = helpE E.snake (EL.ELProxy :: EL.ELProxy el)

instance toEConsDragonFace :: ETo el => ETo (EL.ECons PE.DragonFace el) where
  eto _ = helpE E.dragonFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsDragon :: ETo el => ETo (EL.ECons PE.Dragon el) where
  eto _ = helpE E.dragon (EL.ELProxy :: EL.ELProxy el)

instance toEConsSauropod :: ETo el => ETo (EL.ECons PE.Sauropod el) where
  eto _ = helpE E.sauropod (EL.ELProxy :: EL.ELProxy el)

instance toEConsTRex :: ETo el => ETo (EL.ECons PE.TRex el) where
  eto _ = helpE E.tRex (EL.ELProxy :: EL.ELProxy el)

instance toEConsSpoutingWhale :: ETo el => ETo (EL.ECons PE.SpoutingWhale el) where
  eto _ = helpE E.spoutingWhale (EL.ELProxy :: EL.ELProxy el)

instance toEConsWhale :: ETo el => ETo (EL.ECons PE.Whale el) where
  eto _ = helpE E.whale (EL.ELProxy :: EL.ELProxy el)

instance toEConsDolphin :: ETo el => ETo (EL.ECons PE.Dolphin el) where
  eto _ = helpE E.dolphin (EL.ELProxy :: EL.ELProxy el)

instance toEConsSeal :: ETo el => ETo (EL.ECons PE.Seal el) where
  eto _ = helpE E.seal (EL.ELProxy :: EL.ELProxy el)

instance toEConsFish :: ETo el => ETo (EL.ECons PE.Fish el) where
  eto _ = helpE E.fish (EL.ELProxy :: EL.ELProxy el)

instance toEConsTropicalFish :: ETo el => ETo (EL.ECons PE.TropicalFish el) where
  eto _ = helpE E.tropicalFish (EL.ELProxy :: EL.ELProxy el)

instance toEConsBlowfish :: ETo el => ETo (EL.ECons PE.Blowfish el) where
  eto _ = helpE E.blowfish (EL.ELProxy :: EL.ELProxy el)

instance toEConsShark :: ETo el => ETo (EL.ECons PE.Shark el) where
  eto _ = helpE E.shark (EL.ELProxy :: EL.ELProxy el)

instance toEConsOctopus :: ETo el => ETo (EL.ECons PE.Octopus el) where
  eto _ = helpE E.octopus (EL.ELProxy :: EL.ELProxy el)

instance toEConsSpiralShell :: ETo el => ETo (EL.ECons PE.SpiralShell el) where
  eto _ = helpE E.spiralShell (EL.ELProxy :: EL.ELProxy el)

instance toEConsSnail :: ETo el => ETo (EL.ECons PE.Snail el) where
  eto _ = helpE E.snail (EL.ELProxy :: EL.ELProxy el)

instance toEConsButterfly :: ETo el => ETo (EL.ECons PE.Butterfly el) where
  eto _ = helpE E.butterfly (EL.ELProxy :: EL.ELProxy el)

instance toEConsBug :: ETo el => ETo (EL.ECons PE.Bug el) where
  eto _ = helpE E.bug (EL.ELProxy :: EL.ELProxy el)

instance toEConsAnt :: ETo el => ETo (EL.ECons PE.Ant el) where
  eto _ = helpE E.ant (EL.ELProxy :: EL.ELProxy el)

instance toEConsHoneybee :: ETo el => ETo (EL.ECons PE.Honeybee el) where
  eto _ = helpE E.honeybee (EL.ELProxy :: EL.ELProxy el)

instance toEConsBeetle :: ETo el => ETo (EL.ECons PE.Beetle el) where
  eto _ = helpE E.beetle (EL.ELProxy :: EL.ELProxy el)

instance toEConsLadyBeetle :: ETo el => ETo (EL.ECons PE.LadyBeetle el) where
  eto _ = helpE E.ladyBeetle (EL.ELProxy :: EL.ELProxy el)

instance toEConsCricket :: ETo el => ETo (EL.ECons PE.Cricket el) where
  eto _ = helpE E.cricket (EL.ELProxy :: EL.ELProxy el)

instance toEConsCockroach :: ETo el => ETo (EL.ECons PE.Cockroach el) where
  eto _ = helpE E.cockroach (EL.ELProxy :: EL.ELProxy el)

instance toEConsSpider :: ETo el => ETo (EL.ECons PE.Spider el) where
  eto _ = helpE E.spider (EL.ELProxy :: EL.ELProxy el)

instance toEConsSpiderWeb :: ETo el => ETo (EL.ECons PE.SpiderWeb el) where
  eto _ = helpE E.spiderWeb (EL.ELProxy :: EL.ELProxy el)

instance toEConsScorpion :: ETo el => ETo (EL.ECons PE.Scorpion el) where
  eto _ = helpE E.scorpion (EL.ELProxy :: EL.ELProxy el)

instance toEConsMosquito :: ETo el => ETo (EL.ECons PE.Mosquito el) where
  eto _ = helpE E.mosquito (EL.ELProxy :: EL.ELProxy el)

instance toEConsFly :: ETo el => ETo (EL.ECons PE.Fly el) where
  eto _ = helpE E.fly (EL.ELProxy :: EL.ELProxy el)

instance toEConsWorm :: ETo el => ETo (EL.ECons PE.Worm el) where
  eto _ = helpE E.worm (EL.ELProxy :: EL.ELProxy el)

instance toEConsMicrobe :: ETo el => ETo (EL.ECons PE.Microbe el) where
  eto _ = helpE E.microbe (EL.ELProxy :: EL.ELProxy el)

instance toEConsBouquet :: ETo el => ETo (EL.ECons PE.Bouquet el) where
  eto _ = helpE E.bouquet (EL.ELProxy :: EL.ELProxy el)

instance toEConsCherryBlossom :: ETo el => ETo (EL.ECons PE.CherryBlossom el) where
  eto _ = helpE E.cherryBlossom (EL.ELProxy :: EL.ELProxy el)

instance toEConsWhiteFlower :: ETo el => ETo (EL.ECons PE.WhiteFlower el) where
  eto _ = helpE E.whiteFlower (EL.ELProxy :: EL.ELProxy el)

instance toEConsRosette :: ETo el => ETo (EL.ECons PE.Rosette el) where
  eto _ = helpE E.rosette (EL.ELProxy :: EL.ELProxy el)

instance toEConsRose :: ETo el => ETo (EL.ECons PE.Rose el) where
  eto _ = helpE E.rose (EL.ELProxy :: EL.ELProxy el)

instance toEConsWiltedFlower :: ETo el => ETo (EL.ECons PE.WiltedFlower el) where
  eto _ = helpE E.wiltedFlower (EL.ELProxy :: EL.ELProxy el)

instance toEConsHibiscus :: ETo el => ETo (EL.ECons PE.Hibiscus el) where
  eto _ = helpE E.hibiscus (EL.ELProxy :: EL.ELProxy el)

instance toEConsSunflower :: ETo el => ETo (EL.ECons PE.Sunflower el) where
  eto _ = helpE E.sunflower (EL.ELProxy :: EL.ELProxy el)

instance toEConsBlossom :: ETo el => ETo (EL.ECons PE.Blossom el) where
  eto _ = helpE E.blossom (EL.ELProxy :: EL.ELProxy el)

instance toEConsTulip :: ETo el => ETo (EL.ECons PE.Tulip el) where
  eto _ = helpE E.tulip (EL.ELProxy :: EL.ELProxy el)

instance toEConsSeedling :: ETo el => ETo (EL.ECons PE.Seedling el) where
  eto _ = helpE E.seedling (EL.ELProxy :: EL.ELProxy el)

instance toEConsPottedPlant :: ETo el => ETo (EL.ECons PE.PottedPlant el) where
  eto _ = helpE E.pottedPlant (EL.ELProxy :: EL.ELProxy el)

instance toEConsEvergreenTree :: ETo el => ETo (EL.ECons PE.EvergreenTree el) where
  eto _ = helpE E.evergreenTree (EL.ELProxy :: EL.ELProxy el)

instance toEConsDeciduousTree :: ETo el => ETo (EL.ECons PE.DeciduousTree el) where
  eto _ = helpE E.deciduousTree (EL.ELProxy :: EL.ELProxy el)

instance toEConsPalmTree :: ETo el => ETo (EL.ECons PE.PalmTree el) where
  eto _ = helpE E.palmTree (EL.ELProxy :: EL.ELProxy el)

instance toEConsCactus :: ETo el => ETo (EL.ECons PE.Cactus el) where
  eto _ = helpE E.cactus (EL.ELProxy :: EL.ELProxy el)

instance toEConsSheafOfRice :: ETo el => ETo (EL.ECons PE.SheafOfRice el) where
  eto _ = helpE E.sheafOfRice (EL.ELProxy :: EL.ELProxy el)

instance toEConsHerb :: ETo el => ETo (EL.ECons PE.Herb el) where
  eto _ = helpE E.herb (EL.ELProxy :: EL.ELProxy el)

instance toEConsShamrock :: ETo el => ETo (EL.ECons PE.Shamrock el) where
  eto _ = helpE E.shamrock (EL.ELProxy :: EL.ELProxy el)

instance toEConsFourLeafClover :: ETo el => ETo (EL.ECons PE.FourLeafClover el) where
  eto _ = helpE E.fourLeafClover (EL.ELProxy :: EL.ELProxy el)

instance toEConsMapleLeaf :: ETo el => ETo (EL.ECons PE.MapleLeaf el) where
  eto _ = helpE E.mapleLeaf (EL.ELProxy :: EL.ELProxy el)

instance toEConsFallenLeaf :: ETo el => ETo (EL.ECons PE.FallenLeaf el) where
  eto _ = helpE E.fallenLeaf (EL.ELProxy :: EL.ELProxy el)

instance toEConsLeafFlutteringInWind :: ETo el => ETo (EL.ECons PE.LeafFlutteringInWind el) where
  eto _ = helpE E.leafFlutteringInWind (EL.ELProxy :: EL.ELProxy el)

instance toEConsGrapes :: ETo el => ETo (EL.ECons PE.Grapes el) where
  eto _ = helpE E.grapes (EL.ELProxy :: EL.ELProxy el)

instance toEConsMelon :: ETo el => ETo (EL.ECons PE.Melon el) where
  eto _ = helpE E.melon (EL.ELProxy :: EL.ELProxy el)

instance toEConsWatermelon :: ETo el => ETo (EL.ECons PE.Watermelon el) where
  eto _ = helpE E.watermelon (EL.ELProxy :: EL.ELProxy el)

instance toEConsTangerine :: ETo el => ETo (EL.ECons PE.Tangerine el) where
  eto _ = helpE E.tangerine (EL.ELProxy :: EL.ELProxy el)

instance toEConsLemon :: ETo el => ETo (EL.ECons PE.Lemon el) where
  eto _ = helpE E.lemon (EL.ELProxy :: EL.ELProxy el)

instance toEConsBanana :: ETo el => ETo (EL.ECons PE.Banana el) where
  eto _ = helpE E.banana (EL.ELProxy :: EL.ELProxy el)

instance toEConsPineapple :: ETo el => ETo (EL.ECons PE.Pineapple el) where
  eto _ = helpE E.pineapple (EL.ELProxy :: EL.ELProxy el)

instance toEConsMango :: ETo el => ETo (EL.ECons PE.Mango el) where
  eto _ = helpE E.mango (EL.ELProxy :: EL.ELProxy el)

instance toEConsRedApple :: ETo el => ETo (EL.ECons PE.RedApple el) where
  eto _ = helpE E.redApple (EL.ELProxy :: EL.ELProxy el)

instance toEConsGreenApple :: ETo el => ETo (EL.ECons PE.GreenApple el) where
  eto _ = helpE E.greenApple (EL.ELProxy :: EL.ELProxy el)

instance toEConsPear :: ETo el => ETo (EL.ECons PE.Pear el) where
  eto _ = helpE E.pear (EL.ELProxy :: EL.ELProxy el)

instance toEConsPeach :: ETo el => ETo (EL.ECons PE.Peach el) where
  eto _ = helpE E.peach (EL.ELProxy :: EL.ELProxy el)

instance toEConsCherries :: ETo el => ETo (EL.ECons PE.Cherries el) where
  eto _ = helpE E.cherries (EL.ELProxy :: EL.ELProxy el)

instance toEConsStrawberry :: ETo el => ETo (EL.ECons PE.Strawberry el) where
  eto _ = helpE E.strawberry (EL.ELProxy :: EL.ELProxy el)

instance toEConsBlueberries :: ETo el => ETo (EL.ECons PE.Blueberries el) where
  eto _ = helpE E.blueberries (EL.ELProxy :: EL.ELProxy el)

instance toEConsKiwiFruit :: ETo el => ETo (EL.ECons PE.KiwiFruit el) where
  eto _ = helpE E.kiwiFruit (EL.ELProxy :: EL.ELProxy el)

instance toEConsTomato :: ETo el => ETo (EL.ECons PE.Tomato el) where
  eto _ = helpE E.tomato (EL.ELProxy :: EL.ELProxy el)

instance toEConsOlive :: ETo el => ETo (EL.ECons PE.Olive el) where
  eto _ = helpE E.olive (EL.ELProxy :: EL.ELProxy el)

instance toEConsCoconut :: ETo el => ETo (EL.ECons PE.Coconut el) where
  eto _ = helpE E.coconut (EL.ELProxy :: EL.ELProxy el)

instance toEConsAvocado :: ETo el => ETo (EL.ECons PE.Avocado el) where
  eto _ = helpE E.avocado (EL.ELProxy :: EL.ELProxy el)

instance toEConsEggplant :: ETo el => ETo (EL.ECons PE.Eggplant el) where
  eto _ = helpE E.eggplant (EL.ELProxy :: EL.ELProxy el)

instance toEConsPotato :: ETo el => ETo (EL.ECons PE.Potato el) where
  eto _ = helpE E.potato (EL.ELProxy :: EL.ELProxy el)

instance toEConsCarrot :: ETo el => ETo (EL.ECons PE.Carrot el) where
  eto _ = helpE E.carrot (EL.ELProxy :: EL.ELProxy el)

instance toEConsEarOfCorn :: ETo el => ETo (EL.ECons PE.EarOfCorn el) where
  eto _ = helpE E.earOfCorn (EL.ELProxy :: EL.ELProxy el)

instance toEConsHotPepper :: ETo el => ETo (EL.ECons PE.HotPepper el) where
  eto _ = helpE E.hotPepper (EL.ELProxy :: EL.ELProxy el)

instance toEConsBellPepper :: ETo el => ETo (EL.ECons PE.BellPepper el) where
  eto _ = helpE E.bellPepper (EL.ELProxy :: EL.ELProxy el)

instance toEConsCucumber :: ETo el => ETo (EL.ECons PE.Cucumber el) where
  eto _ = helpE E.cucumber (EL.ELProxy :: EL.ELProxy el)

instance toEConsLeafyGreen :: ETo el => ETo (EL.ECons PE.LeafyGreen el) where
  eto _ = helpE E.leafyGreen (EL.ELProxy :: EL.ELProxy el)

instance toEConsBroccoli :: ETo el => ETo (EL.ECons PE.Broccoli el) where
  eto _ = helpE E.broccoli (EL.ELProxy :: EL.ELProxy el)

instance toEConsGarlic :: ETo el => ETo (EL.ECons PE.Garlic el) where
  eto _ = helpE E.garlic (EL.ELProxy :: EL.ELProxy el)

instance toEConsOnion :: ETo el => ETo (EL.ECons PE.Onion el) where
  eto _ = helpE E.onion (EL.ELProxy :: EL.ELProxy el)

instance toEConsMushroom :: ETo el => ETo (EL.ECons PE.Mushroom el) where
  eto _ = helpE E.mushroom (EL.ELProxy :: EL.ELProxy el)

instance toEConsPeanuts :: ETo el => ETo (EL.ECons PE.Peanuts el) where
  eto _ = helpE E.peanuts (EL.ELProxy :: EL.ELProxy el)

instance toEConsChestnut :: ETo el => ETo (EL.ECons PE.Chestnut el) where
  eto _ = helpE E.chestnut (EL.ELProxy :: EL.ELProxy el)

instance toEConsBread :: ETo el => ETo (EL.ECons PE.Bread el) where
  eto _ = helpE E.bread (EL.ELProxy :: EL.ELProxy el)

instance toEConsCroissant :: ETo el => ETo (EL.ECons PE.Croissant el) where
  eto _ = helpE E.croissant (EL.ELProxy :: EL.ELProxy el)

instance toEConsBaguetteBread :: ETo el => ETo (EL.ECons PE.BaguetteBread el) where
  eto _ = helpE E.baguetteBread (EL.ELProxy :: EL.ELProxy el)

instance toEConsFlatbread :: ETo el => ETo (EL.ECons PE.Flatbread el) where
  eto _ = helpE E.flatbread (EL.ELProxy :: EL.ELProxy el)

instance toEConsPretzel :: ETo el => ETo (EL.ECons PE.Pretzel el) where
  eto _ = helpE E.pretzel (EL.ELProxy :: EL.ELProxy el)

instance toEConsBagel :: ETo el => ETo (EL.ECons PE.Bagel el) where
  eto _ = helpE E.bagel (EL.ELProxy :: EL.ELProxy el)

instance toEConsPancakes :: ETo el => ETo (EL.ECons PE.Pancakes el) where
  eto _ = helpE E.pancakes (EL.ELProxy :: EL.ELProxy el)

instance toEConsWaffle :: ETo el => ETo (EL.ECons PE.Waffle el) where
  eto _ = helpE E.waffle (EL.ELProxy :: EL.ELProxy el)

instance toEConsCheeseWedge :: ETo el => ETo (EL.ECons PE.CheeseWedge el) where
  eto _ = helpE E.cheeseWedge (EL.ELProxy :: EL.ELProxy el)

instance toEConsMeatOnBone :: ETo el => ETo (EL.ECons PE.MeatOnBone el) where
  eto _ = helpE E.meatOnBone (EL.ELProxy :: EL.ELProxy el)

instance toEConsPoultryLeg :: ETo el => ETo (EL.ECons PE.PoultryLeg el) where
  eto _ = helpE E.poultryLeg (EL.ELProxy :: EL.ELProxy el)

instance toEConsCutOfMeat :: ETo el => ETo (EL.ECons PE.CutOfMeat el) where
  eto _ = helpE E.cutOfMeat (EL.ELProxy :: EL.ELProxy el)

instance toEConsBacon :: ETo el => ETo (EL.ECons PE.Bacon el) where
  eto _ = helpE E.bacon (EL.ELProxy :: EL.ELProxy el)

instance toEConsHamburger :: ETo el => ETo (EL.ECons PE.Hamburger el) where
  eto _ = helpE E.hamburger (EL.ELProxy :: EL.ELProxy el)

instance toEConsFrenchFries :: ETo el => ETo (EL.ECons PE.FrenchFries el) where
  eto _ = helpE E.frenchFries (EL.ELProxy :: EL.ELProxy el)

instance toEConsPizza :: ETo el => ETo (EL.ECons PE.Pizza el) where
  eto _ = helpE E.pizza (EL.ELProxy :: EL.ELProxy el)

instance toEConsHotDog :: ETo el => ETo (EL.ECons PE.HotDog el) where
  eto _ = helpE E.hotDog (EL.ELProxy :: EL.ELProxy el)

instance toEConsSandwich :: ETo el => ETo (EL.ECons PE.Sandwich el) where
  eto _ = helpE E.sandwich (EL.ELProxy :: EL.ELProxy el)

instance toEConsTaco :: ETo el => ETo (EL.ECons PE.Taco el) where
  eto _ = helpE E.taco (EL.ELProxy :: EL.ELProxy el)

instance toEConsBurrito :: ETo el => ETo (EL.ECons PE.Burrito el) where
  eto _ = helpE E.burrito (EL.ELProxy :: EL.ELProxy el)

instance toEConsTamale :: ETo el => ETo (EL.ECons PE.Tamale el) where
  eto _ = helpE E.tamale (EL.ELProxy :: EL.ELProxy el)

instance toEConsStuffedFlatbread :: ETo el => ETo (EL.ECons PE.StuffedFlatbread el) where
  eto _ = helpE E.stuffedFlatbread (EL.ELProxy :: EL.ELProxy el)

instance toEConsFalafel :: ETo el => ETo (EL.ECons PE.Falafel el) where
  eto _ = helpE E.falafel (EL.ELProxy :: EL.ELProxy el)

instance toEConsEgg :: ETo el => ETo (EL.ECons PE.Egg el) where
  eto _ = helpE E.egg (EL.ELProxy :: EL.ELProxy el)

instance toEConsCooking :: ETo el => ETo (EL.ECons PE.Cooking el) where
  eto _ = helpE E.cooking (EL.ELProxy :: EL.ELProxy el)

instance toEConsShallowPanOfFood :: ETo el => ETo (EL.ECons PE.ShallowPanOfFood el) where
  eto _ = helpE E.shallowPanOfFood (EL.ELProxy :: EL.ELProxy el)

instance toEConsPotOfFood :: ETo el => ETo (EL.ECons PE.PotOfFood el) where
  eto _ = helpE E.potOfFood (EL.ELProxy :: EL.ELProxy el)

instance toEConsFondue :: ETo el => ETo (EL.ECons PE.Fondue el) where
  eto _ = helpE E.fondue (EL.ELProxy :: EL.ELProxy el)

instance toEConsBowlWithSpoon :: ETo el => ETo (EL.ECons PE.BowlWithSpoon el) where
  eto _ = helpE E.bowlWithSpoon (EL.ELProxy :: EL.ELProxy el)

instance toEConsGreenSalad :: ETo el => ETo (EL.ECons PE.GreenSalad el) where
  eto _ = helpE E.greenSalad (EL.ELProxy :: EL.ELProxy el)

instance toEConsPopcorn :: ETo el => ETo (EL.ECons PE.Popcorn el) where
  eto _ = helpE E.popcorn (EL.ELProxy :: EL.ELProxy el)

instance toEConsButter :: ETo el => ETo (EL.ECons PE.Butter el) where
  eto _ = helpE E.butter (EL.ELProxy :: EL.ELProxy el)

instance toEConsSalt :: ETo el => ETo (EL.ECons PE.Salt el) where
  eto _ = helpE E.salt (EL.ELProxy :: EL.ELProxy el)

instance toEConsCannedFood :: ETo el => ETo (EL.ECons PE.CannedFood el) where
  eto _ = helpE E.cannedFood (EL.ELProxy :: EL.ELProxy el)

instance toEConsBentoBox :: ETo el => ETo (EL.ECons PE.BentoBox el) where
  eto _ = helpE E.bentoBox (EL.ELProxy :: EL.ELProxy el)

instance toEConsRiceCracker :: ETo el => ETo (EL.ECons PE.RiceCracker el) where
  eto _ = helpE E.riceCracker (EL.ELProxy :: EL.ELProxy el)

instance toEConsRiceBall :: ETo el => ETo (EL.ECons PE.RiceBall el) where
  eto _ = helpE E.riceBall (EL.ELProxy :: EL.ELProxy el)

instance toEConsCookedRice :: ETo el => ETo (EL.ECons PE.CookedRice el) where
  eto _ = helpE E.cookedRice (EL.ELProxy :: EL.ELProxy el)

instance toEConsCurryRice :: ETo el => ETo (EL.ECons PE.CurryRice el) where
  eto _ = helpE E.curryRice (EL.ELProxy :: EL.ELProxy el)

instance toEConsSteamingBowl :: ETo el => ETo (EL.ECons PE.SteamingBowl el) where
  eto _ = helpE E.steamingBowl (EL.ELProxy :: EL.ELProxy el)

instance toEConsSpaghetti :: ETo el => ETo (EL.ECons PE.Spaghetti el) where
  eto _ = helpE E.spaghetti (EL.ELProxy :: EL.ELProxy el)

instance toEConsRoastedSweetPotato :: ETo el => ETo (EL.ECons PE.RoastedSweetPotato el) where
  eto _ = helpE E.roastedSweetPotato (EL.ELProxy :: EL.ELProxy el)

instance toEConsOden :: ETo el => ETo (EL.ECons PE.Oden el) where
  eto _ = helpE E.oden (EL.ELProxy :: EL.ELProxy el)

instance toEConsSushi :: ETo el => ETo (EL.ECons PE.Sushi el) where
  eto _ = helpE E.sushi (EL.ELProxy :: EL.ELProxy el)

instance toEConsFriedShrimp :: ETo el => ETo (EL.ECons PE.FriedShrimp el) where
  eto _ = helpE E.friedShrimp (EL.ELProxy :: EL.ELProxy el)

instance toEConsFishCakeWithSwirl :: ETo el => ETo (EL.ECons PE.FishCakeWithSwirl el) where
  eto _ = helpE E.fishCakeWithSwirl (EL.ELProxy :: EL.ELProxy el)

instance toEConsMoonCake :: ETo el => ETo (EL.ECons PE.MoonCake el) where
  eto _ = helpE E.moonCake (EL.ELProxy :: EL.ELProxy el)

instance toEConsDango :: ETo el => ETo (EL.ECons PE.Dango el) where
  eto _ = helpE E.dango (EL.ELProxy :: EL.ELProxy el)

instance toEConsDumpling :: ETo el => ETo (EL.ECons PE.Dumpling el) where
  eto _ = helpE E.dumpling (EL.ELProxy :: EL.ELProxy el)

instance toEConsFortuneCookie :: ETo el => ETo (EL.ECons PE.FortuneCookie el) where
  eto _ = helpE E.fortuneCookie (EL.ELProxy :: EL.ELProxy el)

instance toEConsTakeoutBox :: ETo el => ETo (EL.ECons PE.TakeoutBox el) where
  eto _ = helpE E.takeoutBox (EL.ELProxy :: EL.ELProxy el)

instance toEConsCrab :: ETo el => ETo (EL.ECons PE.Crab el) where
  eto _ = helpE E.crab (EL.ELProxy :: EL.ELProxy el)

instance toEConsLobster :: ETo el => ETo (EL.ECons PE.Lobster el) where
  eto _ = helpE E.lobster (EL.ELProxy :: EL.ELProxy el)

instance toEConsShrimp :: ETo el => ETo (EL.ECons PE.Shrimp el) where
  eto _ = helpE E.shrimp (EL.ELProxy :: EL.ELProxy el)

instance toEConsSquid :: ETo el => ETo (EL.ECons PE.Squid el) where
  eto _ = helpE E.squid (EL.ELProxy :: EL.ELProxy el)

instance toEConsOyster :: ETo el => ETo (EL.ECons PE.Oyster el) where
  eto _ = helpE E.oyster (EL.ELProxy :: EL.ELProxy el)

instance toEConsSoftIceCream :: ETo el => ETo (EL.ECons PE.SoftIceCream el) where
  eto _ = helpE E.softIceCream (EL.ELProxy :: EL.ELProxy el)

instance toEConsShavedIce :: ETo el => ETo (EL.ECons PE.ShavedIce el) where
  eto _ = helpE E.shavedIce (EL.ELProxy :: EL.ELProxy el)

instance toEConsIceCream :: ETo el => ETo (EL.ECons PE.IceCream el) where
  eto _ = helpE E.iceCream (EL.ELProxy :: EL.ELProxy el)

instance toEConsDoughnut :: ETo el => ETo (EL.ECons PE.Doughnut el) where
  eto _ = helpE E.doughnut (EL.ELProxy :: EL.ELProxy el)

instance toEConsCookie :: ETo el => ETo (EL.ECons PE.Cookie el) where
  eto _ = helpE E.cookie (EL.ELProxy :: EL.ELProxy el)

instance toEConsBirthdayCake :: ETo el => ETo (EL.ECons PE.BirthdayCake el) where
  eto _ = helpE E.birthdayCake (EL.ELProxy :: EL.ELProxy el)

instance toEConsShortcake :: ETo el => ETo (EL.ECons PE.Shortcake el) where
  eto _ = helpE E.shortcake (EL.ELProxy :: EL.ELProxy el)

instance toEConsCupcake :: ETo el => ETo (EL.ECons PE.Cupcake el) where
  eto _ = helpE E.cupcake (EL.ELProxy :: EL.ELProxy el)

instance toEConsPie :: ETo el => ETo (EL.ECons PE.Pie el) where
  eto _ = helpE E.pie (EL.ELProxy :: EL.ELProxy el)

instance toEConsChocolateBar :: ETo el => ETo (EL.ECons PE.ChocolateBar el) where
  eto _ = helpE E.chocolateBar (EL.ELProxy :: EL.ELProxy el)

instance toEConsCandy :: ETo el => ETo (EL.ECons PE.Candy el) where
  eto _ = helpE E.candy (EL.ELProxy :: EL.ELProxy el)

instance toEConsLollipop :: ETo el => ETo (EL.ECons PE.Lollipop el) where
  eto _ = helpE E.lollipop (EL.ELProxy :: EL.ELProxy el)

instance toEConsCustard :: ETo el => ETo (EL.ECons PE.Custard el) where
  eto _ = helpE E.custard (EL.ELProxy :: EL.ELProxy el)

instance toEConsHoneyPot :: ETo el => ETo (EL.ECons PE.HoneyPot el) where
  eto _ = helpE E.honeyPot (EL.ELProxy :: EL.ELProxy el)

instance toEConsBabyBottle :: ETo el => ETo (EL.ECons PE.BabyBottle el) where
  eto _ = helpE E.babyBottle (EL.ELProxy :: EL.ELProxy el)

instance toEConsGlassOfMilk :: ETo el => ETo (EL.ECons PE.GlassOfMilk el) where
  eto _ = helpE E.glassOfMilk (EL.ELProxy :: EL.ELProxy el)

instance toEConsHotBeverage :: ETo el => ETo (EL.ECons PE.HotBeverage el) where
  eto _ = helpE E.hotBeverage (EL.ELProxy :: EL.ELProxy el)

instance toEConsTeapot :: ETo el => ETo (EL.ECons PE.Teapot el) where
  eto _ = helpE E.teapot (EL.ELProxy :: EL.ELProxy el)

instance toEConsTeacupWithoutHandle :: ETo el => ETo (EL.ECons PE.TeacupWithoutHandle el) where
  eto _ = helpE E.teacupWithoutHandle (EL.ELProxy :: EL.ELProxy el)

instance toEConsSake :: ETo el => ETo (EL.ECons PE.Sake el) where
  eto _ = helpE E.sake (EL.ELProxy :: EL.ELProxy el)

instance toEConsBottleWithPoppingCork :: ETo el => ETo (EL.ECons PE.BottleWithPoppingCork el) where
  eto _ = helpE E.bottleWithPoppingCork (EL.ELProxy :: EL.ELProxy el)

instance toEConsWineGlass :: ETo el => ETo (EL.ECons PE.WineGlass el) where
  eto _ = helpE E.wineGlass (EL.ELProxy :: EL.ELProxy el)

instance toEConsCocktailGlass :: ETo el => ETo (EL.ECons PE.CocktailGlass el) where
  eto _ = helpE E.cocktailGlass (EL.ELProxy :: EL.ELProxy el)

instance toEConsTropicalDrink :: ETo el => ETo (EL.ECons PE.TropicalDrink el) where
  eto _ = helpE E.tropicalDrink (EL.ELProxy :: EL.ELProxy el)

instance toEConsBeerMug :: ETo el => ETo (EL.ECons PE.BeerMug el) where
  eto _ = helpE E.beerMug (EL.ELProxy :: EL.ELProxy el)

instance toEConsClinkingBeerMugs :: ETo el => ETo (EL.ECons PE.ClinkingBeerMugs el) where
  eto _ = helpE E.clinkingBeerMugs (EL.ELProxy :: EL.ELProxy el)

instance toEConsClinkingGlasses :: ETo el => ETo (EL.ECons PE.ClinkingGlasses el) where
  eto _ = helpE E.clinkingGlasses (EL.ELProxy :: EL.ELProxy el)

instance toEConsTumblerGlass :: ETo el => ETo (EL.ECons PE.TumblerGlass el) where
  eto _ = helpE E.tumblerGlass (EL.ELProxy :: EL.ELProxy el)

instance toEConsCupWithStraw :: ETo el => ETo (EL.ECons PE.CupWithStraw el) where
  eto _ = helpE E.cupWithStraw (EL.ELProxy :: EL.ELProxy el)

instance toEConsBubbleTea :: ETo el => ETo (EL.ECons PE.BubbleTea el) where
  eto _ = helpE E.bubbleTea (EL.ELProxy :: EL.ELProxy el)

instance toEConsBeverageBox :: ETo el => ETo (EL.ECons PE.BeverageBox el) where
  eto _ = helpE E.beverageBox (EL.ELProxy :: EL.ELProxy el)

instance toEConsMate :: ETo el => ETo (EL.ECons PE.Mate el) where
  eto _ = helpE E.mate (EL.ELProxy :: EL.ELProxy el)

instance toEConsIce :: ETo el => ETo (EL.ECons PE.Ice el) where
  eto _ = helpE E.ice (EL.ELProxy :: EL.ELProxy el)

instance toEConsChopsticks :: ETo el => ETo (EL.ECons PE.Chopsticks el) where
  eto _ = helpE E.chopsticks (EL.ELProxy :: EL.ELProxy el)

instance toEConsForkAndKnifeWithPlate :: ETo el => ETo (EL.ECons PE.ForkAndKnifeWithPlate el) where
  eto _ = helpE E.forkAndKnifeWithPlate (EL.ELProxy :: EL.ELProxy el)

instance toEConsForkAndKnife :: ETo el => ETo (EL.ECons PE.ForkAndKnife el) where
  eto _ = helpE E.forkAndKnife (EL.ELProxy :: EL.ELProxy el)

instance toEConsSpoon :: ETo el => ETo (EL.ECons PE.Spoon el) where
  eto _ = helpE E.spoon (EL.ELProxy :: EL.ELProxy el)

instance toEConsKitchenKnife :: ETo el => ETo (EL.ECons PE.KitchenKnife el) where
  eto _ = helpE E.kitchenKnife (EL.ELProxy :: EL.ELProxy el)

instance toEConsAmphora :: ETo el => ETo (EL.ECons PE.Amphora el) where
  eto _ = helpE E.amphora (EL.ELProxy :: EL.ELProxy el)

instance toEConsGlobeShowingEuropeAfrica :: ETo el => ETo (EL.ECons PE.GlobeShowingEuropeAfrica el) where
  eto _ = helpE E.globeShowingEuropeAfrica (EL.ELProxy :: EL.ELProxy el)

instance toEConsGlobeShowingAmericas :: ETo el => ETo (EL.ECons PE.GlobeShowingAmericas el) where
  eto _ = helpE E.globeShowingAmericas (EL.ELProxy :: EL.ELProxy el)

instance toEConsGlobeShowingAsiaAustralia :: ETo el => ETo (EL.ECons PE.GlobeShowingAsiaAustralia el) where
  eto _ = helpE E.globeShowingAsiaAustralia (EL.ELProxy :: EL.ELProxy el)

instance toEConsGlobeWithMeridians :: ETo el => ETo (EL.ECons PE.GlobeWithMeridians el) where
  eto _ = helpE E.globeWithMeridians (EL.ELProxy :: EL.ELProxy el)

instance toEConsWorldMap :: ETo el => ETo (EL.ECons PE.WorldMap el) where
  eto _ = helpE E.worldMap (EL.ELProxy :: EL.ELProxy el)

instance toEConsMapOfJapan :: ETo el => ETo (EL.ECons PE.MapOfJapan el) where
  eto _ = helpE E.mapOfJapan (EL.ELProxy :: EL.ELProxy el)

instance toEConsCompass :: ETo el => ETo (EL.ECons PE.Compass el) where
  eto _ = helpE E.compass (EL.ELProxy :: EL.ELProxy el)

instance toEConsSnowCappedMountain :: ETo el => ETo (EL.ECons PE.SnowCappedMountain el) where
  eto _ = helpE E.snowCappedMountain (EL.ELProxy :: EL.ELProxy el)

instance toEConsMountain :: ETo el => ETo (EL.ECons PE.Mountain el) where
  eto _ = helpE E.mountain (EL.ELProxy :: EL.ELProxy el)

instance toEConsVolcano :: ETo el => ETo (EL.ECons PE.Volcano el) where
  eto _ = helpE E.volcano (EL.ELProxy :: EL.ELProxy el)

instance toEConsMountFuji :: ETo el => ETo (EL.ECons PE.MountFuji el) where
  eto _ = helpE E.mountFuji (EL.ELProxy :: EL.ELProxy el)

instance toEConsCamping :: ETo el => ETo (EL.ECons PE.Camping el) where
  eto _ = helpE E.camping (EL.ELProxy :: EL.ELProxy el)

instance toEConsBeachWithUmbrella :: ETo el => ETo (EL.ECons PE.BeachWithUmbrella el) where
  eto _ = helpE E.beachWithUmbrella (EL.ELProxy :: EL.ELProxy el)

instance toEConsDesert :: ETo el => ETo (EL.ECons PE.Desert el) where
  eto _ = helpE E.desert (EL.ELProxy :: EL.ELProxy el)

instance toEConsDesertIsland :: ETo el => ETo (EL.ECons PE.DesertIsland el) where
  eto _ = helpE E.desertIsland (EL.ELProxy :: EL.ELProxy el)

instance toEConsNationalPark :: ETo el => ETo (EL.ECons PE.NationalPark el) where
  eto _ = helpE E.nationalPark (EL.ELProxy :: EL.ELProxy el)

instance toEConsStadium :: ETo el => ETo (EL.ECons PE.Stadium el) where
  eto _ = helpE E.stadium (EL.ELProxy :: EL.ELProxy el)

instance toEConsClassicalBuilding :: ETo el => ETo (EL.ECons PE.ClassicalBuilding el) where
  eto _ = helpE E.classicalBuilding (EL.ELProxy :: EL.ELProxy el)

instance toEConsBuildingConstruction :: ETo el => ETo (EL.ECons PE.BuildingConstruction el) where
  eto _ = helpE E.buildingConstruction (EL.ELProxy :: EL.ELProxy el)

instance toEConsBrick :: ETo el => ETo (EL.ECons PE.Brick el) where
  eto _ = helpE E.brick (EL.ELProxy :: EL.ELProxy el)

instance toEConsRock :: ETo el => ETo (EL.ECons PE.Rock el) where
  eto _ = helpE E.rock (EL.ELProxy :: EL.ELProxy el)

instance toEConsWood :: ETo el => ETo (EL.ECons PE.Wood el) where
  eto _ = helpE E.wood (EL.ELProxy :: EL.ELProxy el)

instance toEConsHut :: ETo el => ETo (EL.ECons PE.Hut el) where
  eto _ = helpE E.hut (EL.ELProxy :: EL.ELProxy el)

instance toEConsHouses :: ETo el => ETo (EL.ECons PE.Houses el) where
  eto _ = helpE E.houses (EL.ELProxy :: EL.ELProxy el)

instance toEConsDerelictHouse :: ETo el => ETo (EL.ECons PE.DerelictHouse el) where
  eto _ = helpE E.derelictHouse (EL.ELProxy :: EL.ELProxy el)

instance toEConsHouse :: ETo el => ETo (EL.ECons PE.House el) where
  eto _ = helpE E.house (EL.ELProxy :: EL.ELProxy el)

instance toEConsHouseWithGarden :: ETo el => ETo (EL.ECons PE.HouseWithGarden el) where
  eto _ = helpE E.houseWithGarden (EL.ELProxy :: EL.ELProxy el)

instance toEConsOfficeBuilding :: ETo el => ETo (EL.ECons PE.OfficeBuilding el) where
  eto _ = helpE E.officeBuilding (EL.ELProxy :: EL.ELProxy el)

instance toEConsJapanesePostOffice :: ETo el => ETo (EL.ECons PE.JapanesePostOffice el) where
  eto _ = helpE E.japanesePostOffice (EL.ELProxy :: EL.ELProxy el)

instance toEConsPostOffice :: ETo el => ETo (EL.ECons PE.PostOffice el) where
  eto _ = helpE E.postOffice (EL.ELProxy :: EL.ELProxy el)

instance toEConsHospital :: ETo el => ETo (EL.ECons PE.Hospital el) where
  eto _ = helpE E.hospital (EL.ELProxy :: EL.ELProxy el)

instance toEConsBank :: ETo el => ETo (EL.ECons PE.Bank el) where
  eto _ = helpE E.bank (EL.ELProxy :: EL.ELProxy el)

instance toEConsHotel :: ETo el => ETo (EL.ECons PE.Hotel el) where
  eto _ = helpE E.hotel (EL.ELProxy :: EL.ELProxy el)

instance toEConsLoveHotel :: ETo el => ETo (EL.ECons PE.LoveHotel el) where
  eto _ = helpE E.loveHotel (EL.ELProxy :: EL.ELProxy el)

instance toEConsConvenienceStore :: ETo el => ETo (EL.ECons PE.ConvenienceStore el) where
  eto _ = helpE E.convenienceStore (EL.ELProxy :: EL.ELProxy el)

instance toEConsSchool :: ETo el => ETo (EL.ECons PE.School el) where
  eto _ = helpE E.school (EL.ELProxy :: EL.ELProxy el)

instance toEConsDepartmentStore :: ETo el => ETo (EL.ECons PE.DepartmentStore el) where
  eto _ = helpE E.departmentStore (EL.ELProxy :: EL.ELProxy el)

instance toEConsFactory :: ETo el => ETo (EL.ECons PE.Factory el) where
  eto _ = helpE E.factory (EL.ELProxy :: EL.ELProxy el)

instance toEConsJapaneseCastle :: ETo el => ETo (EL.ECons PE.JapaneseCastle el) where
  eto _ = helpE E.japaneseCastle (EL.ELProxy :: EL.ELProxy el)

instance toEConsCastle :: ETo el => ETo (EL.ECons PE.Castle el) where
  eto _ = helpE E.castle (EL.ELProxy :: EL.ELProxy el)

instance toEConsWedding :: ETo el => ETo (EL.ECons PE.Wedding el) where
  eto _ = helpE E.wedding (EL.ELProxy :: EL.ELProxy el)

instance toEConsTokyoTower :: ETo el => ETo (EL.ECons PE.TokyoTower el) where
  eto _ = helpE E.tokyoTower (EL.ELProxy :: EL.ELProxy el)

instance toEConsStatueOfLiberty :: ETo el => ETo (EL.ECons PE.StatueOfLiberty el) where
  eto _ = helpE E.statueOfLiberty (EL.ELProxy :: EL.ELProxy el)

instance toEConsChurch :: ETo el => ETo (EL.ECons PE.Church el) where
  eto _ = helpE E.church (EL.ELProxy :: EL.ELProxy el)

instance toEConsMosque :: ETo el => ETo (EL.ECons PE.Mosque el) where
  eto _ = helpE E.mosque (EL.ELProxy :: EL.ELProxy el)

instance toEConsHinduTemple :: ETo el => ETo (EL.ECons PE.HinduTemple el) where
  eto _ = helpE E.hinduTemple (EL.ELProxy :: EL.ELProxy el)

instance toEConsSynagogue :: ETo el => ETo (EL.ECons PE.Synagogue el) where
  eto _ = helpE E.synagogue (EL.ELProxy :: EL.ELProxy el)

instance toEConsShintoShrine :: ETo el => ETo (EL.ECons PE.ShintoShrine el) where
  eto _ = helpE E.shintoShrine (EL.ELProxy :: EL.ELProxy el)

instance toEConsKaaba :: ETo el => ETo (EL.ECons PE.Kaaba el) where
  eto _ = helpE E.kaaba (EL.ELProxy :: EL.ELProxy el)

instance toEConsFountain :: ETo el => ETo (EL.ECons PE.Fountain el) where
  eto _ = helpE E.fountain (EL.ELProxy :: EL.ELProxy el)

instance toEConsTent :: ETo el => ETo (EL.ECons PE.Tent el) where
  eto _ = helpE E.tent (EL.ELProxy :: EL.ELProxy el)

instance toEConsFoggy :: ETo el => ETo (EL.ECons PE.Foggy el) where
  eto _ = helpE E.foggy (EL.ELProxy :: EL.ELProxy el)

instance toEConsNightWithStars :: ETo el => ETo (EL.ECons PE.NightWithStars el) where
  eto _ = helpE E.nightWithStars (EL.ELProxy :: EL.ELProxy el)

instance toEConsCityscape :: ETo el => ETo (EL.ECons PE.Cityscape el) where
  eto _ = helpE E.cityscape (EL.ELProxy :: EL.ELProxy el)

instance toEConsSunriseOverMountains :: ETo el => ETo (EL.ECons PE.SunriseOverMountains el) where
  eto _ = helpE E.sunriseOverMountains (EL.ELProxy :: EL.ELProxy el)

instance toEConsSunrise :: ETo el => ETo (EL.ECons PE.Sunrise el) where
  eto _ = helpE E.sunrise (EL.ELProxy :: EL.ELProxy el)

instance toEConsCityscapeAtDusk :: ETo el => ETo (EL.ECons PE.CityscapeAtDusk el) where
  eto _ = helpE E.cityscapeAtDusk (EL.ELProxy :: EL.ELProxy el)

instance toEConsSunset :: ETo el => ETo (EL.ECons PE.Sunset el) where
  eto _ = helpE E.sunset (EL.ELProxy :: EL.ELProxy el)

instance toEConsBridgeAtNight :: ETo el => ETo (EL.ECons PE.BridgeAtNight el) where
  eto _ = helpE E.bridgeAtNight (EL.ELProxy :: EL.ELProxy el)

instance toEConsHotSprings :: ETo el => ETo (EL.ECons PE.HotSprings el) where
  eto _ = helpE E.hotSprings (EL.ELProxy :: EL.ELProxy el)

instance toEConsCarouselHorse :: ETo el => ETo (EL.ECons PE.CarouselHorse el) where
  eto _ = helpE E.carouselHorse (EL.ELProxy :: EL.ELProxy el)

instance toEConsFerrisWheel :: ETo el => ETo (EL.ECons PE.FerrisWheel el) where
  eto _ = helpE E.ferrisWheel (EL.ELProxy :: EL.ELProxy el)

instance toEConsRollerCoaster :: ETo el => ETo (EL.ECons PE.RollerCoaster el) where
  eto _ = helpE E.rollerCoaster (EL.ELProxy :: EL.ELProxy el)

instance toEConsBarberPole :: ETo el => ETo (EL.ECons PE.BarberPole el) where
  eto _ = helpE E.barberPole (EL.ELProxy :: EL.ELProxy el)

instance toEConsCircusTent :: ETo el => ETo (EL.ECons PE.CircusTent el) where
  eto _ = helpE E.circusTent (EL.ELProxy :: EL.ELProxy el)

instance toEConsLocomotive :: ETo el => ETo (EL.ECons PE.Locomotive el) where
  eto _ = helpE E.locomotive (EL.ELProxy :: EL.ELProxy el)

instance toEConsRailwayCar :: ETo el => ETo (EL.ECons PE.RailwayCar el) where
  eto _ = helpE E.railwayCar (EL.ELProxy :: EL.ELProxy el)

instance toEConsHighSpeedTrain :: ETo el => ETo (EL.ECons PE.HighSpeedTrain el) where
  eto _ = helpE E.highSpeedTrain (EL.ELProxy :: EL.ELProxy el)

instance toEConsBulletTrain :: ETo el => ETo (EL.ECons PE.BulletTrain el) where
  eto _ = helpE E.bulletTrain (EL.ELProxy :: EL.ELProxy el)

instance toEConsTrain :: ETo el => ETo (EL.ECons PE.Train el) where
  eto _ = helpE E.train (EL.ELProxy :: EL.ELProxy el)

instance toEConsMetro :: ETo el => ETo (EL.ECons PE.Metro el) where
  eto _ = helpE E.metro (EL.ELProxy :: EL.ELProxy el)

instance toEConsLightRail :: ETo el => ETo (EL.ECons PE.LightRail el) where
  eto _ = helpE E.lightRail (EL.ELProxy :: EL.ELProxy el)

instance toEConsStation :: ETo el => ETo (EL.ECons PE.Station el) where
  eto _ = helpE E.station (EL.ELProxy :: EL.ELProxy el)

instance toEConsTram :: ETo el => ETo (EL.ECons PE.Tram el) where
  eto _ = helpE E.tram (EL.ELProxy :: EL.ELProxy el)

instance toEConsMonorail :: ETo el => ETo (EL.ECons PE.Monorail el) where
  eto _ = helpE E.monorail (EL.ELProxy :: EL.ELProxy el)

instance toEConsMountainRailway :: ETo el => ETo (EL.ECons PE.MountainRailway el) where
  eto _ = helpE E.mountainRailway (EL.ELProxy :: EL.ELProxy el)

instance toEConsTramCar :: ETo el => ETo (EL.ECons PE.TramCar el) where
  eto _ = helpE E.tramCar (EL.ELProxy :: EL.ELProxy el)

instance toEConsBus :: ETo el => ETo (EL.ECons PE.Bus el) where
  eto _ = helpE E.bus (EL.ELProxy :: EL.ELProxy el)

instance toEConsOncomingBus :: ETo el => ETo (EL.ECons PE.OncomingBus el) where
  eto _ = helpE E.oncomingBus (EL.ELProxy :: EL.ELProxy el)

instance toEConsTrolleybus :: ETo el => ETo (EL.ECons PE.Trolleybus el) where
  eto _ = helpE E.trolleybus (EL.ELProxy :: EL.ELProxy el)

instance toEConsMinibus :: ETo el => ETo (EL.ECons PE.Minibus el) where
  eto _ = helpE E.minibus (EL.ELProxy :: EL.ELProxy el)

instance toEConsAmbulance :: ETo el => ETo (EL.ECons PE.Ambulance el) where
  eto _ = helpE E.ambulance (EL.ELProxy :: EL.ELProxy el)

instance toEConsFireEngine :: ETo el => ETo (EL.ECons PE.FireEngine el) where
  eto _ = helpE E.fireEngine (EL.ELProxy :: EL.ELProxy el)

instance toEConsPoliceCar :: ETo el => ETo (EL.ECons PE.PoliceCar el) where
  eto _ = helpE E.policeCar (EL.ELProxy :: EL.ELProxy el)

instance toEConsOncomingPoliceCar :: ETo el => ETo (EL.ECons PE.OncomingPoliceCar el) where
  eto _ = helpE E.oncomingPoliceCar (EL.ELProxy :: EL.ELProxy el)

instance toEConsTaxi :: ETo el => ETo (EL.ECons PE.Taxi el) where
  eto _ = helpE E.taxi (EL.ELProxy :: EL.ELProxy el)

instance toEConsOncomingTaxi :: ETo el => ETo (EL.ECons PE.OncomingTaxi el) where
  eto _ = helpE E.oncomingTaxi (EL.ELProxy :: EL.ELProxy el)

instance toEConsAutomobile :: ETo el => ETo (EL.ECons PE.Automobile el) where
  eto _ = helpE E.automobile (EL.ELProxy :: EL.ELProxy el)

instance toEConsOncomingAutomobile :: ETo el => ETo (EL.ECons PE.OncomingAutomobile el) where
  eto _ = helpE E.oncomingAutomobile (EL.ELProxy :: EL.ELProxy el)

instance toEConsSportUtilityVehicle :: ETo el => ETo (EL.ECons PE.SportUtilityVehicle el) where
  eto _ = helpE E.sportUtilityVehicle (EL.ELProxy :: EL.ELProxy el)

instance toEConsPickupTruck :: ETo el => ETo (EL.ECons PE.PickupTruck el) where
  eto _ = helpE E.pickupTruck (EL.ELProxy :: EL.ELProxy el)

instance toEConsDeliveryTruck :: ETo el => ETo (EL.ECons PE.DeliveryTruck el) where
  eto _ = helpE E.deliveryTruck (EL.ELProxy :: EL.ELProxy el)

instance toEConsArticulatedLorry :: ETo el => ETo (EL.ECons PE.ArticulatedLorry el) where
  eto _ = helpE E.articulatedLorry (EL.ELProxy :: EL.ELProxy el)

instance toEConsTractor :: ETo el => ETo (EL.ECons PE.Tractor el) where
  eto _ = helpE E.tractor (EL.ELProxy :: EL.ELProxy el)

instance toEConsRacingCar :: ETo el => ETo (EL.ECons PE.RacingCar el) where
  eto _ = helpE E.racingCar (EL.ELProxy :: EL.ELProxy el)

instance toEConsMotorcycle :: ETo el => ETo (EL.ECons PE.Motorcycle el) where
  eto _ = helpE E.motorcycle (EL.ELProxy :: EL.ELProxy el)

instance toEConsMotorScooter :: ETo el => ETo (EL.ECons PE.MotorScooter el) where
  eto _ = helpE E.motorScooter (EL.ELProxy :: EL.ELProxy el)

instance toEConsManualWheelchair :: ETo el => ETo (EL.ECons PE.ManualWheelchair el) where
  eto _ = helpE E.manualWheelchair (EL.ELProxy :: EL.ELProxy el)

instance toEConsMotorizedWheelchair :: ETo el => ETo (EL.ECons PE.MotorizedWheelchair el) where
  eto _ = helpE E.motorizedWheelchair (EL.ELProxy :: EL.ELProxy el)

instance toEConsAutoRickshaw :: ETo el => ETo (EL.ECons PE.AutoRickshaw el) where
  eto _ = helpE E.autoRickshaw (EL.ELProxy :: EL.ELProxy el)

instance toEConsBicycle :: ETo el => ETo (EL.ECons PE.Bicycle el) where
  eto _ = helpE E.bicycle (EL.ELProxy :: EL.ELProxy el)

instance toEConsKickScooter :: ETo el => ETo (EL.ECons PE.KickScooter el) where
  eto _ = helpE E.kickScooter (EL.ELProxy :: EL.ELProxy el)

instance toEConsSkateboard :: ETo el => ETo (EL.ECons PE.Skateboard el) where
  eto _ = helpE E.skateboard (EL.ELProxy :: EL.ELProxy el)

instance toEConsRollerSkate :: ETo el => ETo (EL.ECons PE.RollerSkate el) where
  eto _ = helpE E.rollerSkate (EL.ELProxy :: EL.ELProxy el)

instance toEConsBusStop :: ETo el => ETo (EL.ECons PE.BusStop el) where
  eto _ = helpE E.busStop (EL.ELProxy :: EL.ELProxy el)

instance toEConsMotorway :: ETo el => ETo (EL.ECons PE.Motorway el) where
  eto _ = helpE E.motorway (EL.ELProxy :: EL.ELProxy el)

instance toEConsRailwayTrack :: ETo el => ETo (EL.ECons PE.RailwayTrack el) where
  eto _ = helpE E.railwayTrack (EL.ELProxy :: EL.ELProxy el)

instance toEConsOilDrum :: ETo el => ETo (EL.ECons PE.OilDrum el) where
  eto _ = helpE E.oilDrum (EL.ELProxy :: EL.ELProxy el)

instance toEConsFuelPump :: ETo el => ETo (EL.ECons PE.FuelPump el) where
  eto _ = helpE E.fuelPump (EL.ELProxy :: EL.ELProxy el)

instance toEConsPoliceCarLight :: ETo el => ETo (EL.ECons PE.PoliceCarLight el) where
  eto _ = helpE E.policeCarLight (EL.ELProxy :: EL.ELProxy el)

instance toEConsHorizontalTrafficLight :: ETo el => ETo (EL.ECons PE.HorizontalTrafficLight el) where
  eto _ = helpE E.horizontalTrafficLight (EL.ELProxy :: EL.ELProxy el)

instance toEConsVerticalTrafficLight :: ETo el => ETo (EL.ECons PE.VerticalTrafficLight el) where
  eto _ = helpE E.verticalTrafficLight (EL.ELProxy :: EL.ELProxy el)

instance toEConsStopSign :: ETo el => ETo (EL.ECons PE.StopSign el) where
  eto _ = helpE E.stopSign (EL.ELProxy :: EL.ELProxy el)

instance toEConsConstruction :: ETo el => ETo (EL.ECons PE.Construction el) where
  eto _ = helpE E.construction (EL.ELProxy :: EL.ELProxy el)

instance toEConsAnchor :: ETo el => ETo (EL.ECons PE.Anchor el) where
  eto _ = helpE E.anchor (EL.ELProxy :: EL.ELProxy el)

instance toEConsSailboat :: ETo el => ETo (EL.ECons PE.Sailboat el) where
  eto _ = helpE E.sailboat (EL.ELProxy :: EL.ELProxy el)

instance toEConsCanoe :: ETo el => ETo (EL.ECons PE.Canoe el) where
  eto _ = helpE E.canoe (EL.ELProxy :: EL.ELProxy el)

instance toEConsSpeedboat :: ETo el => ETo (EL.ECons PE.Speedboat el) where
  eto _ = helpE E.speedboat (EL.ELProxy :: EL.ELProxy el)

instance toEConsPassengerShip :: ETo el => ETo (EL.ECons PE.PassengerShip el) where
  eto _ = helpE E.passengerShip (EL.ELProxy :: EL.ELProxy el)

instance toEConsFerry :: ETo el => ETo (EL.ECons PE.Ferry el) where
  eto _ = helpE E.ferry (EL.ELProxy :: EL.ELProxy el)

instance toEConsMotorBoat :: ETo el => ETo (EL.ECons PE.MotorBoat el) where
  eto _ = helpE E.motorBoat (EL.ELProxy :: EL.ELProxy el)

instance toEConsShip :: ETo el => ETo (EL.ECons PE.Ship el) where
  eto _ = helpE E.ship (EL.ELProxy :: EL.ELProxy el)

instance toEConsAirplane :: ETo el => ETo (EL.ECons PE.Airplane el) where
  eto _ = helpE E.airplane (EL.ELProxy :: EL.ELProxy el)

instance toEConsSmallAirplane :: ETo el => ETo (EL.ECons PE.SmallAirplane el) where
  eto _ = helpE E.smallAirplane (EL.ELProxy :: EL.ELProxy el)

instance toEConsAirplaneDeparture :: ETo el => ETo (EL.ECons PE.AirplaneDeparture el) where
  eto _ = helpE E.airplaneDeparture (EL.ELProxy :: EL.ELProxy el)

instance toEConsAirplaneArrival :: ETo el => ETo (EL.ECons PE.AirplaneArrival el) where
  eto _ = helpE E.airplaneArrival (EL.ELProxy :: EL.ELProxy el)

instance toEConsParachute :: ETo el => ETo (EL.ECons PE.Parachute el) where
  eto _ = helpE E.parachute (EL.ELProxy :: EL.ELProxy el)

instance toEConsSeat :: ETo el => ETo (EL.ECons PE.Seat el) where
  eto _ = helpE E.seat (EL.ELProxy :: EL.ELProxy el)

instance toEConsHelicopter :: ETo el => ETo (EL.ECons PE.Helicopter el) where
  eto _ = helpE E.helicopter (EL.ELProxy :: EL.ELProxy el)

instance toEConsSuspensionRailway :: ETo el => ETo (EL.ECons PE.SuspensionRailway el) where
  eto _ = helpE E.suspensionRailway (EL.ELProxy :: EL.ELProxy el)

instance toEConsMountainCableway :: ETo el => ETo (EL.ECons PE.MountainCableway el) where
  eto _ = helpE E.mountainCableway (EL.ELProxy :: EL.ELProxy el)

instance toEConsAerialTramway :: ETo el => ETo (EL.ECons PE.AerialTramway el) where
  eto _ = helpE E.aerialTramway (EL.ELProxy :: EL.ELProxy el)

instance toEConsSatellite :: ETo el => ETo (EL.ECons PE.Satellite el) where
  eto _ = helpE E.satellite (EL.ELProxy :: EL.ELProxy el)

instance toEConsRocket :: ETo el => ETo (EL.ECons PE.Rocket el) where
  eto _ = helpE E.rocket (EL.ELProxy :: EL.ELProxy el)

instance toEConsFlyingSaucer :: ETo el => ETo (EL.ECons PE.FlyingSaucer el) where
  eto _ = helpE E.flyingSaucer (EL.ELProxy :: EL.ELProxy el)

instance toEConsBellhopBell :: ETo el => ETo (EL.ECons PE.BellhopBell el) where
  eto _ = helpE E.bellhopBell (EL.ELProxy :: EL.ELProxy el)

instance toEConsLuggage :: ETo el => ETo (EL.ECons PE.Luggage el) where
  eto _ = helpE E.luggage (EL.ELProxy :: EL.ELProxy el)

instance toEConsHourglassDone :: ETo el => ETo (EL.ECons PE.HourglassDone el) where
  eto _ = helpE E.hourglassDone (EL.ELProxy :: EL.ELProxy el)

instance toEConsHourglassNotDone :: ETo el => ETo (EL.ECons PE.HourglassNotDone el) where
  eto _ = helpE E.hourglassNotDone (EL.ELProxy :: EL.ELProxy el)

instance toEConsWatch :: ETo el => ETo (EL.ECons PE.Watch el) where
  eto _ = helpE E.watch (EL.ELProxy :: EL.ELProxy el)

instance toEConsAlarmClock :: ETo el => ETo (EL.ECons PE.AlarmClock el) where
  eto _ = helpE E.alarmClock (EL.ELProxy :: EL.ELProxy el)

instance toEConsStopwatch :: ETo el => ETo (EL.ECons PE.Stopwatch el) where
  eto _ = helpE E.stopwatch (EL.ELProxy :: EL.ELProxy el)

instance toEConsTimerClock :: ETo el => ETo (EL.ECons PE.TimerClock el) where
  eto _ = helpE E.timerClock (EL.ELProxy :: EL.ELProxy el)

instance toEConsMantelpieceClock :: ETo el => ETo (EL.ECons PE.MantelpieceClock el) where
  eto _ = helpE E.mantelpieceClock (EL.ELProxy :: EL.ELProxy el)

instance toEConsTwelveOClock :: ETo el => ETo (EL.ECons PE.TwelveOClock el) where
  eto _ = helpE E.twelveOClock (EL.ELProxy :: EL.ELProxy el)

instance toEConsTwelveThirty :: ETo el => ETo (EL.ECons PE.TwelveThirty el) where
  eto _ = helpE E.twelveThirty (EL.ELProxy :: EL.ELProxy el)

instance toEConsOneOClock :: ETo el => ETo (EL.ECons PE.OneOClock el) where
  eto _ = helpE E.oneOClock (EL.ELProxy :: EL.ELProxy el)

instance toEConsOneThirty :: ETo el => ETo (EL.ECons PE.OneThirty el) where
  eto _ = helpE E.oneThirty (EL.ELProxy :: EL.ELProxy el)

instance toEConsTwoOClock :: ETo el => ETo (EL.ECons PE.TwoOClock el) where
  eto _ = helpE E.twoOClock (EL.ELProxy :: EL.ELProxy el)

instance toEConsTwoThirty :: ETo el => ETo (EL.ECons PE.TwoThirty el) where
  eto _ = helpE E.twoThirty (EL.ELProxy :: EL.ELProxy el)

instance toEConsThreeOClock :: ETo el => ETo (EL.ECons PE.ThreeOClock el) where
  eto _ = helpE E.threeOClock (EL.ELProxy :: EL.ELProxy el)

instance toEConsThreeThirty :: ETo el => ETo (EL.ECons PE.ThreeThirty el) where
  eto _ = helpE E.threeThirty (EL.ELProxy :: EL.ELProxy el)

instance toEConsFourOClock :: ETo el => ETo (EL.ECons PE.FourOClock el) where
  eto _ = helpE E.fourOClock (EL.ELProxy :: EL.ELProxy el)

instance toEConsFourThirty :: ETo el => ETo (EL.ECons PE.FourThirty el) where
  eto _ = helpE E.fourThirty (EL.ELProxy :: EL.ELProxy el)

instance toEConsFiveOClock :: ETo el => ETo (EL.ECons PE.FiveOClock el) where
  eto _ = helpE E.fiveOClock (EL.ELProxy :: EL.ELProxy el)

instance toEConsFiveThirty :: ETo el => ETo (EL.ECons PE.FiveThirty el) where
  eto _ = helpE E.fiveThirty (EL.ELProxy :: EL.ELProxy el)

instance toEConsSixOClock :: ETo el => ETo (EL.ECons PE.SixOClock el) where
  eto _ = helpE E.sixOClock (EL.ELProxy :: EL.ELProxy el)

instance toEConsSixThirty :: ETo el => ETo (EL.ECons PE.SixThirty el) where
  eto _ = helpE E.sixThirty (EL.ELProxy :: EL.ELProxy el)

instance toEConsSevenOClock :: ETo el => ETo (EL.ECons PE.SevenOClock el) where
  eto _ = helpE E.sevenOClock (EL.ELProxy :: EL.ELProxy el)

instance toEConsSevenThirty :: ETo el => ETo (EL.ECons PE.SevenThirty el) where
  eto _ = helpE E.sevenThirty (EL.ELProxy :: EL.ELProxy el)

instance toEConsEightOClock :: ETo el => ETo (EL.ECons PE.EightOClock el) where
  eto _ = helpE E.eightOClock (EL.ELProxy :: EL.ELProxy el)

instance toEConsEightThirty :: ETo el => ETo (EL.ECons PE.EightThirty el) where
  eto _ = helpE E.eightThirty (EL.ELProxy :: EL.ELProxy el)

instance toEConsNineOClock :: ETo el => ETo (EL.ECons PE.NineOClock el) where
  eto _ = helpE E.nineOClock (EL.ELProxy :: EL.ELProxy el)

instance toEConsNineThirty :: ETo el => ETo (EL.ECons PE.NineThirty el) where
  eto _ = helpE E.nineThirty (EL.ELProxy :: EL.ELProxy el)

instance toEConsTenOClock :: ETo el => ETo (EL.ECons PE.TenOClock el) where
  eto _ = helpE E.tenOClock (EL.ELProxy :: EL.ELProxy el)

instance toEConsTenThirty :: ETo el => ETo (EL.ECons PE.TenThirty el) where
  eto _ = helpE E.tenThirty (EL.ELProxy :: EL.ELProxy el)

instance toEConsElevenOClock :: ETo el => ETo (EL.ECons PE.ElevenOClock el) where
  eto _ = helpE E.elevenOClock (EL.ELProxy :: EL.ELProxy el)

instance toEConsElevenThirty :: ETo el => ETo (EL.ECons PE.ElevenThirty el) where
  eto _ = helpE E.elevenThirty (EL.ELProxy :: EL.ELProxy el)

instance toEConsNewMoon :: ETo el => ETo (EL.ECons PE.NewMoon el) where
  eto _ = helpE E.newMoon (EL.ELProxy :: EL.ELProxy el)

instance toEConsWaxingCrescentMoon :: ETo el => ETo (EL.ECons PE.WaxingCrescentMoon el) where
  eto _ = helpE E.waxingCrescentMoon (EL.ELProxy :: EL.ELProxy el)

instance toEConsFirstQuarterMoon :: ETo el => ETo (EL.ECons PE.FirstQuarterMoon el) where
  eto _ = helpE E.firstQuarterMoon (EL.ELProxy :: EL.ELProxy el)

instance toEConsWaxingGibbousMoon :: ETo el => ETo (EL.ECons PE.WaxingGibbousMoon el) where
  eto _ = helpE E.waxingGibbousMoon (EL.ELProxy :: EL.ELProxy el)

instance toEConsFullMoon :: ETo el => ETo (EL.ECons PE.FullMoon el) where
  eto _ = helpE E.fullMoon (EL.ELProxy :: EL.ELProxy el)

instance toEConsWaningGibbousMoon :: ETo el => ETo (EL.ECons PE.WaningGibbousMoon el) where
  eto _ = helpE E.waningGibbousMoon (EL.ELProxy :: EL.ELProxy el)

instance toEConsLastQuarterMoon :: ETo el => ETo (EL.ECons PE.LastQuarterMoon el) where
  eto _ = helpE E.lastQuarterMoon (EL.ELProxy :: EL.ELProxy el)

instance toEConsWaningCrescentMoon :: ETo el => ETo (EL.ECons PE.WaningCrescentMoon el) where
  eto _ = helpE E.waningCrescentMoon (EL.ELProxy :: EL.ELProxy el)

instance toEConsCrescentMoon :: ETo el => ETo (EL.ECons PE.CrescentMoon el) where
  eto _ = helpE E.crescentMoon (EL.ELProxy :: EL.ELProxy el)

instance toEConsNewMoonFace :: ETo el => ETo (EL.ECons PE.NewMoonFace el) where
  eto _ = helpE E.newMoonFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsFirstQuarterMoonFace :: ETo el => ETo (EL.ECons PE.FirstQuarterMoonFace el) where
  eto _ = helpE E.firstQuarterMoonFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsLastQuarterMoonFace :: ETo el => ETo (EL.ECons PE.LastQuarterMoonFace el) where
  eto _ = helpE E.lastQuarterMoonFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsThermometer :: ETo el => ETo (EL.ECons PE.Thermometer el) where
  eto _ = helpE E.thermometer (EL.ELProxy :: EL.ELProxy el)

instance toEConsSun :: ETo el => ETo (EL.ECons PE.Sun el) where
  eto _ = helpE E.sun (EL.ELProxy :: EL.ELProxy el)

instance toEConsFullMoonFace :: ETo el => ETo (EL.ECons PE.FullMoonFace el) where
  eto _ = helpE E.fullMoonFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsSunWithFace :: ETo el => ETo (EL.ECons PE.SunWithFace el) where
  eto _ = helpE E.sunWithFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsRingedPlanet :: ETo el => ETo (EL.ECons PE.RingedPlanet el) where
  eto _ = helpE E.ringedPlanet (EL.ELProxy :: EL.ELProxy el)

instance toEConsStar :: ETo el => ETo (EL.ECons PE.Star el) where
  eto _ = helpE E.star (EL.ELProxy :: EL.ELProxy el)

instance toEConsGlowingStar :: ETo el => ETo (EL.ECons PE.GlowingStar el) where
  eto _ = helpE E.glowingStar (EL.ELProxy :: EL.ELProxy el)

instance toEConsShootingStar :: ETo el => ETo (EL.ECons PE.ShootingStar el) where
  eto _ = helpE E.shootingStar (EL.ELProxy :: EL.ELProxy el)

instance toEConsMilkyWay :: ETo el => ETo (EL.ECons PE.MilkyWay el) where
  eto _ = helpE E.milkyWay (EL.ELProxy :: EL.ELProxy el)

instance toEConsCloud :: ETo el => ETo (EL.ECons PE.Cloud el) where
  eto _ = helpE E.cloud (EL.ELProxy :: EL.ELProxy el)

instance toEConsSunBehindCloud :: ETo el => ETo (EL.ECons PE.SunBehindCloud el) where
  eto _ = helpE E.sunBehindCloud (EL.ELProxy :: EL.ELProxy el)

instance toEConsCloudWithLightningAndRain :: ETo el => ETo (EL.ECons PE.CloudWithLightningAndRain el) where
  eto _ = helpE E.cloudWithLightningAndRain (EL.ELProxy :: EL.ELProxy el)

instance toEConsSunBehindSmallCloud :: ETo el => ETo (EL.ECons PE.SunBehindSmallCloud el) where
  eto _ = helpE E.sunBehindSmallCloud (EL.ELProxy :: EL.ELProxy el)

instance toEConsSunBehindLargeCloud :: ETo el => ETo (EL.ECons PE.SunBehindLargeCloud el) where
  eto _ = helpE E.sunBehindLargeCloud (EL.ELProxy :: EL.ELProxy el)

instance toEConsSunBehindRainCloud :: ETo el => ETo (EL.ECons PE.SunBehindRainCloud el) where
  eto _ = helpE E.sunBehindRainCloud (EL.ELProxy :: EL.ELProxy el)

instance toEConsCloudWithRain :: ETo el => ETo (EL.ECons PE.CloudWithRain el) where
  eto _ = helpE E.cloudWithRain (EL.ELProxy :: EL.ELProxy el)

instance toEConsCloudWithSnow :: ETo el => ETo (EL.ECons PE.CloudWithSnow el) where
  eto _ = helpE E.cloudWithSnow (EL.ELProxy :: EL.ELProxy el)

instance toEConsCloudWithLightning :: ETo el => ETo (EL.ECons PE.CloudWithLightning el) where
  eto _ = helpE E.cloudWithLightning (EL.ELProxy :: EL.ELProxy el)

instance toEConsTornado :: ETo el => ETo (EL.ECons PE.Tornado el) where
  eto _ = helpE E.tornado (EL.ELProxy :: EL.ELProxy el)

instance toEConsFog :: ETo el => ETo (EL.ECons PE.Fog el) where
  eto _ = helpE E.fog (EL.ELProxy :: EL.ELProxy el)

instance toEConsWindFace :: ETo el => ETo (EL.ECons PE.WindFace el) where
  eto _ = helpE E.windFace (EL.ELProxy :: EL.ELProxy el)

instance toEConsCyclone :: ETo el => ETo (EL.ECons PE.Cyclone el) where
  eto _ = helpE E.cyclone (EL.ELProxy :: EL.ELProxy el)

instance toEConsRainbow :: ETo el => ETo (EL.ECons PE.Rainbow el) where
  eto _ = helpE E.rainbow (EL.ELProxy :: EL.ELProxy el)

instance toEConsClosedUmbrella :: ETo el => ETo (EL.ECons PE.ClosedUmbrella el) where
  eto _ = helpE E.closedUmbrella (EL.ELProxy :: EL.ELProxy el)

instance toEConsUmbrella :: ETo el => ETo (EL.ECons PE.Umbrella el) where
  eto _ = helpE E.umbrella (EL.ELProxy :: EL.ELProxy el)

instance toEConsUmbrellaWithRainDrops :: ETo el => ETo (EL.ECons PE.UmbrellaWithRainDrops el) where
  eto _ = helpE E.umbrellaWithRainDrops (EL.ELProxy :: EL.ELProxy el)

instance toEConsUmbrellaOnGround :: ETo el => ETo (EL.ECons PE.UmbrellaOnGround el) where
  eto _ = helpE E.umbrellaOnGround (EL.ELProxy :: EL.ELProxy el)

instance toEConsHighVoltage :: ETo el => ETo (EL.ECons PE.HighVoltage el) where
  eto _ = helpE E.highVoltage (EL.ELProxy :: EL.ELProxy el)

instance toEConsSnowflake :: ETo el => ETo (EL.ECons PE.Snowflake el) where
  eto _ = helpE E.snowflake (EL.ELProxy :: EL.ELProxy el)

instance toEConsSnowman :: ETo el => ETo (EL.ECons PE.Snowman el) where
  eto _ = helpE E.snowman (EL.ELProxy :: EL.ELProxy el)

instance toEConsSnowmanWithoutSnow :: ETo el => ETo (EL.ECons PE.SnowmanWithoutSnow el) where
  eto _ = helpE E.snowmanWithoutSnow (EL.ELProxy :: EL.ELProxy el)

instance toEConsComet :: ETo el => ETo (EL.ECons PE.Comet el) where
  eto _ = helpE E.comet (EL.ELProxy :: EL.ELProxy el)

instance toEConsFire :: ETo el => ETo (EL.ECons PE.Fire el) where
  eto _ = helpE E.fire (EL.ELProxy :: EL.ELProxy el)

instance toEConsDroplet :: ETo el => ETo (EL.ECons PE.Droplet el) where
  eto _ = helpE E.droplet (EL.ELProxy :: EL.ELProxy el)

instance toEConsWaterWave :: ETo el => ETo (EL.ECons PE.WaterWave el) where
  eto _ = helpE E.waterWave (EL.ELProxy :: EL.ELProxy el)

instance toEConsJackOLantern :: ETo el => ETo (EL.ECons PE.JackOLantern el) where
  eto _ = helpE E.jackOLantern (EL.ELProxy :: EL.ELProxy el)

instance toEConsChristmasTree :: ETo el => ETo (EL.ECons PE.ChristmasTree el) where
  eto _ = helpE E.christmasTree (EL.ELProxy :: EL.ELProxy el)

instance toEConsFireworks :: ETo el => ETo (EL.ECons PE.Fireworks el) where
  eto _ = helpE E.fireworks (EL.ELProxy :: EL.ELProxy el)

instance toEConsSparkler :: ETo el => ETo (EL.ECons PE.Sparkler el) where
  eto _ = helpE E.sparkler (EL.ELProxy :: EL.ELProxy el)

instance toEConsFirecracker :: ETo el => ETo (EL.ECons PE.Firecracker el) where
  eto _ = helpE E.firecracker (EL.ELProxy :: EL.ELProxy el)

instance toEConsSparkles :: ETo el => ETo (EL.ECons PE.Sparkles el) where
  eto _ = helpE E.sparkles (EL.ELProxy :: EL.ELProxy el)

instance toEConsBalloon :: ETo el => ETo (EL.ECons PE.Balloon el) where
  eto _ = helpE E.balloon (EL.ELProxy :: EL.ELProxy el)

instance toEConsPartyPopper :: ETo el => ETo (EL.ECons PE.PartyPopper el) where
  eto _ = helpE E.partyPopper (EL.ELProxy :: EL.ELProxy el)

instance toEConsConfettiBall :: ETo el => ETo (EL.ECons PE.ConfettiBall el) where
  eto _ = helpE E.confettiBall (EL.ELProxy :: EL.ELProxy el)

instance toEConsTanabataTree :: ETo el => ETo (EL.ECons PE.TanabataTree el) where
  eto _ = helpE E.tanabataTree (EL.ELProxy :: EL.ELProxy el)

instance toEConsPineDecoration :: ETo el => ETo (EL.ECons PE.PineDecoration el) where
  eto _ = helpE E.pineDecoration (EL.ELProxy :: EL.ELProxy el)

instance toEConsJapaneseDolls :: ETo el => ETo (EL.ECons PE.JapaneseDolls el) where
  eto _ = helpE E.japaneseDolls (EL.ELProxy :: EL.ELProxy el)

instance toEConsCarpStreamer :: ETo el => ETo (EL.ECons PE.CarpStreamer el) where
  eto _ = helpE E.carpStreamer (EL.ELProxy :: EL.ELProxy el)

instance toEConsWindChime :: ETo el => ETo (EL.ECons PE.WindChime el) where
  eto _ = helpE E.windChime (EL.ELProxy :: EL.ELProxy el)

instance toEConsMoonViewingCeremony :: ETo el => ETo (EL.ECons PE.MoonViewingCeremony el) where
  eto _ = helpE E.moonViewingCeremony (EL.ELProxy :: EL.ELProxy el)

instance toEConsRedEnvelope :: ETo el => ETo (EL.ECons PE.RedEnvelope el) where
  eto _ = helpE E.redEnvelope (EL.ELProxy :: EL.ELProxy el)

instance toEConsRibbon :: ETo el => ETo (EL.ECons PE.Ribbon el) where
  eto _ = helpE E.ribbon (EL.ELProxy :: EL.ELProxy el)

instance toEConsWrappedGift :: ETo el => ETo (EL.ECons PE.WrappedGift el) where
  eto _ = helpE E.wrappedGift (EL.ELProxy :: EL.ELProxy el)

instance toEConsReminderRibbon :: ETo el => ETo (EL.ECons PE.ReminderRibbon el) where
  eto _ = helpE E.reminderRibbon (EL.ELProxy :: EL.ELProxy el)

instance toEConsAdmissionTickets :: ETo el => ETo (EL.ECons PE.AdmissionTickets el) where
  eto _ = helpE E.admissionTickets (EL.ELProxy :: EL.ELProxy el)

instance toEConsTicket :: ETo el => ETo (EL.ECons PE.Ticket el) where
  eto _ = helpE E.ticket (EL.ELProxy :: EL.ELProxy el)

instance toEConsMilitaryMedal :: ETo el => ETo (EL.ECons PE.MilitaryMedal el) where
  eto _ = helpE E.militaryMedal (EL.ELProxy :: EL.ELProxy el)

instance toEConsTrophy :: ETo el => ETo (EL.ECons PE.Trophy el) where
  eto _ = helpE E.trophy (EL.ELProxy :: EL.ELProxy el)

instance toEConsSportsMedal :: ETo el => ETo (EL.ECons PE.SportsMedal el) where
  eto _ = helpE E.sportsMedal (EL.ELProxy :: EL.ELProxy el)

instance toEConsFirstPlaceMedal :: ETo el => ETo (EL.ECons PE.FirstPlaceMedal el) where
  eto _ = helpE E.firstPlaceMedal (EL.ELProxy :: EL.ELProxy el)

instance toEConsSecondPlaceMedal :: ETo el => ETo (EL.ECons PE.SecondPlaceMedal el) where
  eto _ = helpE E.secondPlaceMedal (EL.ELProxy :: EL.ELProxy el)

instance toEConsThirdPlaceMedal :: ETo el => ETo (EL.ECons PE.ThirdPlaceMedal el) where
  eto _ = helpE E.thirdPlaceMedal (EL.ELProxy :: EL.ELProxy el)

instance toEConsSoccerBall :: ETo el => ETo (EL.ECons PE.SoccerBall el) where
  eto _ = helpE E.soccerBall (EL.ELProxy :: EL.ELProxy el)

instance toEConsBaseball :: ETo el => ETo (EL.ECons PE.Baseball el) where
  eto _ = helpE E.baseball (EL.ELProxy :: EL.ELProxy el)

instance toEConsSoftball :: ETo el => ETo (EL.ECons PE.Softball el) where
  eto _ = helpE E.softball (EL.ELProxy :: EL.ELProxy el)

instance toEConsBasketball :: ETo el => ETo (EL.ECons PE.Basketball el) where
  eto _ = helpE E.basketball (EL.ELProxy :: EL.ELProxy el)

instance toEConsVolleyball :: ETo el => ETo (EL.ECons PE.Volleyball el) where
  eto _ = helpE E.volleyball (EL.ELProxy :: EL.ELProxy el)

instance toEConsAmericanFootball :: ETo el => ETo (EL.ECons PE.AmericanFootball el) where
  eto _ = helpE E.americanFootball (EL.ELProxy :: EL.ELProxy el)

instance toEConsRugbyFootball :: ETo el => ETo (EL.ECons PE.RugbyFootball el) where
  eto _ = helpE E.rugbyFootball (EL.ELProxy :: EL.ELProxy el)

instance toEConsTennis :: ETo el => ETo (EL.ECons PE.Tennis el) where
  eto _ = helpE E.tennis (EL.ELProxy :: EL.ELProxy el)

instance toEConsFlyingDisc :: ETo el => ETo (EL.ECons PE.FlyingDisc el) where
  eto _ = helpE E.flyingDisc (EL.ELProxy :: EL.ELProxy el)

instance toEConsBowling :: ETo el => ETo (EL.ECons PE.Bowling el) where
  eto _ = helpE E.bowling (EL.ELProxy :: EL.ELProxy el)

instance toEConsCricketGame :: ETo el => ETo (EL.ECons PE.CricketGame el) where
  eto _ = helpE E.cricketGame (EL.ELProxy :: EL.ELProxy el)

instance toEConsFieldHockey :: ETo el => ETo (EL.ECons PE.FieldHockey el) where
  eto _ = helpE E.fieldHockey (EL.ELProxy :: EL.ELProxy el)

instance toEConsIceHockey :: ETo el => ETo (EL.ECons PE.IceHockey el) where
  eto _ = helpE E.iceHockey (EL.ELProxy :: EL.ELProxy el)

instance toEConsLacrosse :: ETo el => ETo (EL.ECons PE.Lacrosse el) where
  eto _ = helpE E.lacrosse (EL.ELProxy :: EL.ELProxy el)

instance toEConsPingPong :: ETo el => ETo (EL.ECons PE.PingPong el) where
  eto _ = helpE E.pingPong (EL.ELProxy :: EL.ELProxy el)

instance toEConsBadminton :: ETo el => ETo (EL.ECons PE.Badminton el) where
  eto _ = helpE E.badminton (EL.ELProxy :: EL.ELProxy el)

instance toEConsBoxingGlove :: ETo el => ETo (EL.ECons PE.BoxingGlove el) where
  eto _ = helpE E.boxingGlove (EL.ELProxy :: EL.ELProxy el)

instance toEConsMartialArtsUniform :: ETo el => ETo (EL.ECons PE.MartialArtsUniform el) where
  eto _ = helpE E.martialArtsUniform (EL.ELProxy :: EL.ELProxy el)

instance toEConsGoalNet :: ETo el => ETo (EL.ECons PE.GoalNet el) where
  eto _ = helpE E.goalNet (EL.ELProxy :: EL.ELProxy el)

instance toEConsFlagInHole :: ETo el => ETo (EL.ECons PE.FlagInHole el) where
  eto _ = helpE E.flagInHole (EL.ELProxy :: EL.ELProxy el)

instance toEConsIceSkate :: ETo el => ETo (EL.ECons PE.IceSkate el) where
  eto _ = helpE E.iceSkate (EL.ELProxy :: EL.ELProxy el)

instance toEConsFishingPole :: ETo el => ETo (EL.ECons PE.FishingPole el) where
  eto _ = helpE E.fishingPole (EL.ELProxy :: EL.ELProxy el)

instance toEConsDivingMask :: ETo el => ETo (EL.ECons PE.DivingMask el) where
  eto _ = helpE E.divingMask (EL.ELProxy :: EL.ELProxy el)

instance toEConsRunningShirt :: ETo el => ETo (EL.ECons PE.RunningShirt el) where
  eto _ = helpE E.runningShirt (EL.ELProxy :: EL.ELProxy el)

instance toEConsSkis :: ETo el => ETo (EL.ECons PE.Skis el) where
  eto _ = helpE E.skis (EL.ELProxy :: EL.ELProxy el)

instance toEConsSled :: ETo el => ETo (EL.ECons PE.Sled el) where
  eto _ = helpE E.sled (EL.ELProxy :: EL.ELProxy el)

instance toEConsCurlingStone :: ETo el => ETo (EL.ECons PE.CurlingStone el) where
  eto _ = helpE E.curlingStone (EL.ELProxy :: EL.ELProxy el)

instance toEConsDirectHit :: ETo el => ETo (EL.ECons PE.DirectHit el) where
  eto _ = helpE E.directHit (EL.ELProxy :: EL.ELProxy el)

instance toEConsYoYo :: ETo el => ETo (EL.ECons PE.YoYo el) where
  eto _ = helpE E.yoYo (EL.ELProxy :: EL.ELProxy el)

instance toEConsKite :: ETo el => ETo (EL.ECons PE.Kite el) where
  eto _ = helpE E.kite (EL.ELProxy :: EL.ELProxy el)

instance toEConsPool8Ball :: ETo el => ETo (EL.ECons PE.Pool8Ball el) where
  eto _ = helpE E.pool8Ball (EL.ELProxy :: EL.ELProxy el)

instance toEConsCrystalBall :: ETo el => ETo (EL.ECons PE.CrystalBall el) where
  eto _ = helpE E.crystalBall (EL.ELProxy :: EL.ELProxy el)

instance toEConsMagicWand :: ETo el => ETo (EL.ECons PE.MagicWand el) where
  eto _ = helpE E.magicWand (EL.ELProxy :: EL.ELProxy el)

instance toEConsNazarAmulet :: ETo el => ETo (EL.ECons PE.NazarAmulet el) where
  eto _ = helpE E.nazarAmulet (EL.ELProxy :: EL.ELProxy el)

instance toEConsVideoGame :: ETo el => ETo (EL.ECons PE.VideoGame el) where
  eto _ = helpE E.videoGame (EL.ELProxy :: EL.ELProxy el)

instance toEConsJoystick :: ETo el => ETo (EL.ECons PE.Joystick el) where
  eto _ = helpE E.joystick (EL.ELProxy :: EL.ELProxy el)

instance toEConsSlotMachine :: ETo el => ETo (EL.ECons PE.SlotMachine el) where
  eto _ = helpE E.slotMachine (EL.ELProxy :: EL.ELProxy el)

instance toEConsGameDie :: ETo el => ETo (EL.ECons PE.GameDie el) where
  eto _ = helpE E.gameDie (EL.ELProxy :: EL.ELProxy el)

instance toEConsPuzzlePiece :: ETo el => ETo (EL.ECons PE.PuzzlePiece el) where
  eto _ = helpE E.puzzlePiece (EL.ELProxy :: EL.ELProxy el)

instance toEConsTeddyBear :: ETo el => ETo (EL.ECons PE.TeddyBear el) where
  eto _ = helpE E.teddyBear (EL.ELProxy :: EL.ELProxy el)

instance toEConsPiñata :: ETo el => ETo (EL.ECons PE.Piñata el) where
  eto _ = helpE E.piñata (EL.ELProxy :: EL.ELProxy el)

instance toEConsNestingDolls :: ETo el => ETo (EL.ECons PE.NestingDolls el) where
  eto _ = helpE E.nestingDolls (EL.ELProxy :: EL.ELProxy el)

instance toEConsSpadeSuit :: ETo el => ETo (EL.ECons PE.SpadeSuit el) where
  eto _ = helpE E.spadeSuit (EL.ELProxy :: EL.ELProxy el)

instance toEConsHeartSuit :: ETo el => ETo (EL.ECons PE.HeartSuit el) where
  eto _ = helpE E.heartSuit (EL.ELProxy :: EL.ELProxy el)

instance toEConsDiamondSuit :: ETo el => ETo (EL.ECons PE.DiamondSuit el) where
  eto _ = helpE E.diamondSuit (EL.ELProxy :: EL.ELProxy el)

instance toEConsClubSuit :: ETo el => ETo (EL.ECons PE.ClubSuit el) where
  eto _ = helpE E.clubSuit (EL.ELProxy :: EL.ELProxy el)

instance toEConsChessPawn :: ETo el => ETo (EL.ECons PE.ChessPawn el) where
  eto _ = helpE E.chessPawn (EL.ELProxy :: EL.ELProxy el)

instance toEConsJoker :: ETo el => ETo (EL.ECons PE.Joker el) where
  eto _ = helpE E.joker (EL.ELProxy :: EL.ELProxy el)

instance toEConsMahjongRedDragon :: ETo el => ETo (EL.ECons PE.MahjongRedDragon el) where
  eto _ = helpE E.mahjongRedDragon (EL.ELProxy :: EL.ELProxy el)

instance toEConsFlowerPlayingCards :: ETo el => ETo (EL.ECons PE.FlowerPlayingCards el) where
  eto _ = helpE E.flowerPlayingCards (EL.ELProxy :: EL.ELProxy el)

instance toEConsPerformingArts :: ETo el => ETo (EL.ECons PE.PerformingArts el) where
  eto _ = helpE E.performingArts (EL.ELProxy :: EL.ELProxy el)

instance toEConsFramedPicture :: ETo el => ETo (EL.ECons PE.FramedPicture el) where
  eto _ = helpE E.framedPicture (EL.ELProxy :: EL.ELProxy el)

instance toEConsArtistPalette :: ETo el => ETo (EL.ECons PE.ArtistPalette el) where
  eto _ = helpE E.artistPalette (EL.ELProxy :: EL.ELProxy el)

instance toEConsThread :: ETo el => ETo (EL.ECons PE.Thread el) where
  eto _ = helpE E.thread (EL.ELProxy :: EL.ELProxy el)

instance toEConsSewingNeedle :: ETo el => ETo (EL.ECons PE.SewingNeedle el) where
  eto _ = helpE E.sewingNeedle (EL.ELProxy :: EL.ELProxy el)

instance toEConsYarn :: ETo el => ETo (EL.ECons PE.Yarn el) where
  eto _ = helpE E.yarn (EL.ELProxy :: EL.ELProxy el)

instance toEConsKnot :: ETo el => ETo (EL.ECons PE.Knot el) where
  eto _ = helpE E.knot (EL.ELProxy :: EL.ELProxy el)

instance toEConsGlasses :: ETo el => ETo (EL.ECons PE.Glasses el) where
  eto _ = helpE E.glasses (EL.ELProxy :: EL.ELProxy el)

instance toEConsSunglasses :: ETo el => ETo (EL.ECons PE.Sunglasses el) where
  eto _ = helpE E.sunglasses (EL.ELProxy :: EL.ELProxy el)

instance toEConsGoggles :: ETo el => ETo (EL.ECons PE.Goggles el) where
  eto _ = helpE E.goggles (EL.ELProxy :: EL.ELProxy el)

instance toEConsLabCoat :: ETo el => ETo (EL.ECons PE.LabCoat el) where
  eto _ = helpE E.labCoat (EL.ELProxy :: EL.ELProxy el)

instance toEConsSafetyVest :: ETo el => ETo (EL.ECons PE.SafetyVest el) where
  eto _ = helpE E.safetyVest (EL.ELProxy :: EL.ELProxy el)

instance toEConsNecktie :: ETo el => ETo (EL.ECons PE.Necktie el) where
  eto _ = helpE E.necktie (EL.ELProxy :: EL.ELProxy el)

instance toEConsTShirt :: ETo el => ETo (EL.ECons PE.TShirt el) where
  eto _ = helpE E.tShirt (EL.ELProxy :: EL.ELProxy el)

instance toEConsJeans :: ETo el => ETo (EL.ECons PE.Jeans el) where
  eto _ = helpE E.jeans (EL.ELProxy :: EL.ELProxy el)

instance toEConsScarf :: ETo el => ETo (EL.ECons PE.Scarf el) where
  eto _ = helpE E.scarf (EL.ELProxy :: EL.ELProxy el)

instance toEConsGloves :: ETo el => ETo (EL.ECons PE.Gloves el) where
  eto _ = helpE E.gloves (EL.ELProxy :: EL.ELProxy el)

instance toEConsCoat :: ETo el => ETo (EL.ECons PE.Coat el) where
  eto _ = helpE E.coat (EL.ELProxy :: EL.ELProxy el)

instance toEConsSocks :: ETo el => ETo (EL.ECons PE.Socks el) where
  eto _ = helpE E.socks (EL.ELProxy :: EL.ELProxy el)

instance toEConsDress :: ETo el => ETo (EL.ECons PE.Dress el) where
  eto _ = helpE E.dress (EL.ELProxy :: EL.ELProxy el)

instance toEConsKimono :: ETo el => ETo (EL.ECons PE.Kimono el) where
  eto _ = helpE E.kimono (EL.ELProxy :: EL.ELProxy el)

instance toEConsSari :: ETo el => ETo (EL.ECons PE.Sari el) where
  eto _ = helpE E.sari (EL.ELProxy :: EL.ELProxy el)

instance toEConsOnePieceSwimsuit :: ETo el => ETo (EL.ECons PE.OnePieceSwimsuit el) where
  eto _ = helpE E.onePieceSwimsuit (EL.ELProxy :: EL.ELProxy el)

instance toEConsBriefs :: ETo el => ETo (EL.ECons PE.Briefs el) where
  eto _ = helpE E.briefs (EL.ELProxy :: EL.ELProxy el)

instance toEConsShorts :: ETo el => ETo (EL.ECons PE.Shorts el) where
  eto _ = helpE E.shorts (EL.ELProxy :: EL.ELProxy el)

instance toEConsBikini :: ETo el => ETo (EL.ECons PE.Bikini el) where
  eto _ = helpE E.bikini (EL.ELProxy :: EL.ELProxy el)

instance toEConsWomanSClothes :: ETo el => ETo (EL.ECons PE.WomanSClothes el) where
  eto _ = helpE E.womanSClothes (EL.ELProxy :: EL.ELProxy el)

instance toEConsPurse :: ETo el => ETo (EL.ECons PE.Purse el) where
  eto _ = helpE E.purse (EL.ELProxy :: EL.ELProxy el)

instance toEConsHandbag :: ETo el => ETo (EL.ECons PE.Handbag el) where
  eto _ = helpE E.handbag (EL.ELProxy :: EL.ELProxy el)

instance toEConsClutchBag :: ETo el => ETo (EL.ECons PE.ClutchBag el) where
  eto _ = helpE E.clutchBag (EL.ELProxy :: EL.ELProxy el)

instance toEConsShoppingBags :: ETo el => ETo (EL.ECons PE.ShoppingBags el) where
  eto _ = helpE E.shoppingBags (EL.ELProxy :: EL.ELProxy el)

instance toEConsBackpack :: ETo el => ETo (EL.ECons PE.Backpack el) where
  eto _ = helpE E.backpack (EL.ELProxy :: EL.ELProxy el)

instance toEConsThongSandal :: ETo el => ETo (EL.ECons PE.ThongSandal el) where
  eto _ = helpE E.thongSandal (EL.ELProxy :: EL.ELProxy el)

instance toEConsManSShoe :: ETo el => ETo (EL.ECons PE.ManSShoe el) where
  eto _ = helpE E.manSShoe (EL.ELProxy :: EL.ELProxy el)

instance toEConsRunningShoe :: ETo el => ETo (EL.ECons PE.RunningShoe el) where
  eto _ = helpE E.runningShoe (EL.ELProxy :: EL.ELProxy el)

instance toEConsHikingBoot :: ETo el => ETo (EL.ECons PE.HikingBoot el) where
  eto _ = helpE E.hikingBoot (EL.ELProxy :: EL.ELProxy el)

instance toEConsFlatShoe :: ETo el => ETo (EL.ECons PE.FlatShoe el) where
  eto _ = helpE E.flatShoe (EL.ELProxy :: EL.ELProxy el)

instance toEConsHighHeeledShoe :: ETo el => ETo (EL.ECons PE.HighHeeledShoe el) where
  eto _ = helpE E.highHeeledShoe (EL.ELProxy :: EL.ELProxy el)

instance toEConsWomanSSandal :: ETo el => ETo (EL.ECons PE.WomanSSandal el) where
  eto _ = helpE E.womanSSandal (EL.ELProxy :: EL.ELProxy el)

instance toEConsBalletShoes :: ETo el => ETo (EL.ECons PE.BalletShoes el) where
  eto _ = helpE E.balletShoes (EL.ELProxy :: EL.ELProxy el)

instance toEConsWomanSBoot :: ETo el => ETo (EL.ECons PE.WomanSBoot el) where
  eto _ = helpE E.womanSBoot (EL.ELProxy :: EL.ELProxy el)

instance toEConsCrown :: ETo el => ETo (EL.ECons PE.Crown el) where
  eto _ = helpE E.crown (EL.ELProxy :: EL.ELProxy el)

instance toEConsWomanSHat :: ETo el => ETo (EL.ECons PE.WomanSHat el) where
  eto _ = helpE E.womanSHat (EL.ELProxy :: EL.ELProxy el)

instance toEConsTopHat :: ETo el => ETo (EL.ECons PE.TopHat el) where
  eto _ = helpE E.topHat (EL.ELProxy :: EL.ELProxy el)

instance toEConsGraduationCap :: ETo el => ETo (EL.ECons PE.GraduationCap el) where
  eto _ = helpE E.graduationCap (EL.ELProxy :: EL.ELProxy el)

instance toEConsBilledCap :: ETo el => ETo (EL.ECons PE.BilledCap el) where
  eto _ = helpE E.billedCap (EL.ELProxy :: EL.ELProxy el)

instance toEConsMilitaryHelmet :: ETo el => ETo (EL.ECons PE.MilitaryHelmet el) where
  eto _ = helpE E.militaryHelmet (EL.ELProxy :: EL.ELProxy el)

instance toEConsRescueWorkerSHelmet :: ETo el => ETo (EL.ECons PE.RescueWorkerSHelmet el) where
  eto _ = helpE E.rescueWorkerSHelmet (EL.ELProxy :: EL.ELProxy el)

instance toEConsPrayerBeads :: ETo el => ETo (EL.ECons PE.PrayerBeads el) where
  eto _ = helpE E.prayerBeads (EL.ELProxy :: EL.ELProxy el)

instance toEConsLipstick :: ETo el => ETo (EL.ECons PE.Lipstick el) where
  eto _ = helpE E.lipstick (EL.ELProxy :: EL.ELProxy el)

instance toEConsRing :: ETo el => ETo (EL.ECons PE.Ring el) where
  eto _ = helpE E.ring (EL.ELProxy :: EL.ELProxy el)

instance toEConsGemStone :: ETo el => ETo (EL.ECons PE.GemStone el) where
  eto _ = helpE E.gemStone (EL.ELProxy :: EL.ELProxy el)

instance toEConsMutedSpeaker :: ETo el => ETo (EL.ECons PE.MutedSpeaker el) where
  eto _ = helpE E.mutedSpeaker (EL.ELProxy :: EL.ELProxy el)

instance toEConsSpeakerLowVolume :: ETo el => ETo (EL.ECons PE.SpeakerLowVolume el) where
  eto _ = helpE E.speakerLowVolume (EL.ELProxy :: EL.ELProxy el)

instance toEConsSpeakerMediumVolume :: ETo el => ETo (EL.ECons PE.SpeakerMediumVolume el) where
  eto _ = helpE E.speakerMediumVolume (EL.ELProxy :: EL.ELProxy el)

instance toEConsSpeakerHighVolume :: ETo el => ETo (EL.ECons PE.SpeakerHighVolume el) where
  eto _ = helpE E.speakerHighVolume (EL.ELProxy :: EL.ELProxy el)

instance toEConsLoudspeaker :: ETo el => ETo (EL.ECons PE.Loudspeaker el) where
  eto _ = helpE E.loudspeaker (EL.ELProxy :: EL.ELProxy el)

instance toEConsMegaphone :: ETo el => ETo (EL.ECons PE.Megaphone el) where
  eto _ = helpE E.megaphone (EL.ELProxy :: EL.ELProxy el)

instance toEConsPostalHorn :: ETo el => ETo (EL.ECons PE.PostalHorn el) where
  eto _ = helpE E.postalHorn (EL.ELProxy :: EL.ELProxy el)

instance toEConsBell :: ETo el => ETo (EL.ECons PE.Bell el) where
  eto _ = helpE E.bell (EL.ELProxy :: EL.ELProxy el)

instance toEConsBellWithSlash :: ETo el => ETo (EL.ECons PE.BellWithSlash el) where
  eto _ = helpE E.bellWithSlash (EL.ELProxy :: EL.ELProxy el)

instance toEConsMusicalScore :: ETo el => ETo (EL.ECons PE.MusicalScore el) where
  eto _ = helpE E.musicalScore (EL.ELProxy :: EL.ELProxy el)

instance toEConsMusicalNote :: ETo el => ETo (EL.ECons PE.MusicalNote el) where
  eto _ = helpE E.musicalNote (EL.ELProxy :: EL.ELProxy el)

instance toEConsMusicalNotes :: ETo el => ETo (EL.ECons PE.MusicalNotes el) where
  eto _ = helpE E.musicalNotes (EL.ELProxy :: EL.ELProxy el)

instance toEConsStudioMicrophone :: ETo el => ETo (EL.ECons PE.StudioMicrophone el) where
  eto _ = helpE E.studioMicrophone (EL.ELProxy :: EL.ELProxy el)

instance toEConsLevelSlider :: ETo el => ETo (EL.ECons PE.LevelSlider el) where
  eto _ = helpE E.levelSlider (EL.ELProxy :: EL.ELProxy el)

instance toEConsControlKnobs :: ETo el => ETo (EL.ECons PE.ControlKnobs el) where
  eto _ = helpE E.controlKnobs (EL.ELProxy :: EL.ELProxy el)

instance toEConsMicrophone :: ETo el => ETo (EL.ECons PE.Microphone el) where
  eto _ = helpE E.microphone (EL.ELProxy :: EL.ELProxy el)

instance toEConsHeadphone :: ETo el => ETo (EL.ECons PE.Headphone el) where
  eto _ = helpE E.headphone (EL.ELProxy :: EL.ELProxy el)

instance toEConsRadio :: ETo el => ETo (EL.ECons PE.Radio el) where
  eto _ = helpE E.radio (EL.ELProxy :: EL.ELProxy el)

instance toEConsSaxophone :: ETo el => ETo (EL.ECons PE.Saxophone el) where
  eto _ = helpE E.saxophone (EL.ELProxy :: EL.ELProxy el)

instance toEConsAccordion :: ETo el => ETo (EL.ECons PE.Accordion el) where
  eto _ = helpE E.accordion (EL.ELProxy :: EL.ELProxy el)

instance toEConsGuitar :: ETo el => ETo (EL.ECons PE.Guitar el) where
  eto _ = helpE E.guitar (EL.ELProxy :: EL.ELProxy el)

instance toEConsMusicalKeyboard :: ETo el => ETo (EL.ECons PE.MusicalKeyboard el) where
  eto _ = helpE E.musicalKeyboard (EL.ELProxy :: EL.ELProxy el)

instance toEConsTrumpet :: ETo el => ETo (EL.ECons PE.Trumpet el) where
  eto _ = helpE E.trumpet (EL.ELProxy :: EL.ELProxy el)

instance toEConsViolin :: ETo el => ETo (EL.ECons PE.Violin el) where
  eto _ = helpE E.violin (EL.ELProxy :: EL.ELProxy el)

instance toEConsBanjo :: ETo el => ETo (EL.ECons PE.Banjo el) where
  eto _ = helpE E.banjo (EL.ELProxy :: EL.ELProxy el)

instance toEConsDrum :: ETo el => ETo (EL.ECons PE.Drum el) where
  eto _ = helpE E.drum (EL.ELProxy :: EL.ELProxy el)

instance toEConsLongDrum :: ETo el => ETo (EL.ECons PE.LongDrum el) where
  eto _ = helpE E.longDrum (EL.ELProxy :: EL.ELProxy el)

instance toEConsMobilePhone :: ETo el => ETo (EL.ECons PE.MobilePhone el) where
  eto _ = helpE E.mobilePhone (EL.ELProxy :: EL.ELProxy el)

instance toEConsMobilePhoneWithArrow :: ETo el => ETo (EL.ECons PE.MobilePhoneWithArrow el) where
  eto _ = helpE E.mobilePhoneWithArrow (EL.ELProxy :: EL.ELProxy el)

instance toEConsTelephone :: ETo el => ETo (EL.ECons PE.Telephone el) where
  eto _ = helpE E.telephone (EL.ELProxy :: EL.ELProxy el)

instance toEConsTelephoneReceiver :: ETo el => ETo (EL.ECons PE.TelephoneReceiver el) where
  eto _ = helpE E.telephoneReceiver (EL.ELProxy :: EL.ELProxy el)

instance toEConsPager :: ETo el => ETo (EL.ECons PE.Pager el) where
  eto _ = helpE E.pager (EL.ELProxy :: EL.ELProxy el)

instance toEConsFaxMachine :: ETo el => ETo (EL.ECons PE.FaxMachine el) where
  eto _ = helpE E.faxMachine (EL.ELProxy :: EL.ELProxy el)

instance toEConsBattery :: ETo el => ETo (EL.ECons PE.Battery el) where
  eto _ = helpE E.battery (EL.ELProxy :: EL.ELProxy el)

instance toEConsElectricPlug :: ETo el => ETo (EL.ECons PE.ElectricPlug el) where
  eto _ = helpE E.electricPlug (EL.ELProxy :: EL.ELProxy el)

instance toEConsLaptop :: ETo el => ETo (EL.ECons PE.Laptop el) where
  eto _ = helpE E.laptop (EL.ELProxy :: EL.ELProxy el)

instance toEConsDesktopComputer :: ETo el => ETo (EL.ECons PE.DesktopComputer el) where
  eto _ = helpE E.desktopComputer (EL.ELProxy :: EL.ELProxy el)

instance toEConsPrinter :: ETo el => ETo (EL.ECons PE.Printer el) where
  eto _ = helpE E.printer (EL.ELProxy :: EL.ELProxy el)

instance toEConsKeyboard :: ETo el => ETo (EL.ECons PE.Keyboard el) where
  eto _ = helpE E.keyboard (EL.ELProxy :: EL.ELProxy el)

instance toEConsComputerMouse :: ETo el => ETo (EL.ECons PE.ComputerMouse el) where
  eto _ = helpE E.computerMouse (EL.ELProxy :: EL.ELProxy el)

instance toEConsTrackball :: ETo el => ETo (EL.ECons PE.Trackball el) where
  eto _ = helpE E.trackball (EL.ELProxy :: EL.ELProxy el)

instance toEConsComputerDisk :: ETo el => ETo (EL.ECons PE.ComputerDisk el) where
  eto _ = helpE E.computerDisk (EL.ELProxy :: EL.ELProxy el)

instance toEConsFloppyDisk :: ETo el => ETo (EL.ECons PE.FloppyDisk el) where
  eto _ = helpE E.floppyDisk (EL.ELProxy :: EL.ELProxy el)

instance toEConsOpticalDisk :: ETo el => ETo (EL.ECons PE.OpticalDisk el) where
  eto _ = helpE E.opticalDisk (EL.ELProxy :: EL.ELProxy el)

instance toEConsDvd :: ETo el => ETo (EL.ECons PE.Dvd el) where
  eto _ = helpE E.dvd (EL.ELProxy :: EL.ELProxy el)

instance toEConsAbacus :: ETo el => ETo (EL.ECons PE.Abacus el) where
  eto _ = helpE E.abacus (EL.ELProxy :: EL.ELProxy el)

instance toEConsMovieCamera :: ETo el => ETo (EL.ECons PE.MovieCamera el) where
  eto _ = helpE E.movieCamera (EL.ELProxy :: EL.ELProxy el)

instance toEConsFilmFrames :: ETo el => ETo (EL.ECons PE.FilmFrames el) where
  eto _ = helpE E.filmFrames (EL.ELProxy :: EL.ELProxy el)

instance toEConsFilmProjector :: ETo el => ETo (EL.ECons PE.FilmProjector el) where
  eto _ = helpE E.filmProjector (EL.ELProxy :: EL.ELProxy el)

instance toEConsClapperBoard :: ETo el => ETo (EL.ECons PE.ClapperBoard el) where
  eto _ = helpE E.clapperBoard (EL.ELProxy :: EL.ELProxy el)

instance toEConsTelevision :: ETo el => ETo (EL.ECons PE.Television el) where
  eto _ = helpE E.television (EL.ELProxy :: EL.ELProxy el)

instance toEConsCamera :: ETo el => ETo (EL.ECons PE.Camera el) where
  eto _ = helpE E.camera (EL.ELProxy :: EL.ELProxy el)

instance toEConsCameraWithFlash :: ETo el => ETo (EL.ECons PE.CameraWithFlash el) where
  eto _ = helpE E.cameraWithFlash (EL.ELProxy :: EL.ELProxy el)

instance toEConsVideoCamera :: ETo el => ETo (EL.ECons PE.VideoCamera el) where
  eto _ = helpE E.videoCamera (EL.ELProxy :: EL.ELProxy el)

instance toEConsVideocassette :: ETo el => ETo (EL.ECons PE.Videocassette el) where
  eto _ = helpE E.videocassette (EL.ELProxy :: EL.ELProxy el)

instance toEConsMagnifyingGlassTiltedLeft :: ETo el => ETo (EL.ECons PE.MagnifyingGlassTiltedLeft el) where
  eto _ = helpE E.magnifyingGlassTiltedLeft (EL.ELProxy :: EL.ELProxy el)

instance toEConsMagnifyingGlassTiltedRight :: ETo el => ETo (EL.ECons PE.MagnifyingGlassTiltedRight el) where
  eto _ = helpE E.magnifyingGlassTiltedRight (EL.ELProxy :: EL.ELProxy el)

instance toEConsCandle :: ETo el => ETo (EL.ECons PE.Candle el) where
  eto _ = helpE E.candle (EL.ELProxy :: EL.ELProxy el)

instance toEConsLightBulb :: ETo el => ETo (EL.ECons PE.LightBulb el) where
  eto _ = helpE E.lightBulb (EL.ELProxy :: EL.ELProxy el)

instance toEConsFlashlight :: ETo el => ETo (EL.ECons PE.Flashlight el) where
  eto _ = helpE E.flashlight (EL.ELProxy :: EL.ELProxy el)

instance toEConsRedPaperLantern :: ETo el => ETo (EL.ECons PE.RedPaperLantern el) where
  eto _ = helpE E.redPaperLantern (EL.ELProxy :: EL.ELProxy el)

instance toEConsDiyaLamp :: ETo el => ETo (EL.ECons PE.DiyaLamp el) where
  eto _ = helpE E.diyaLamp (EL.ELProxy :: EL.ELProxy el)

instance toEConsNotebookWithDecorativeCover :: ETo el => ETo (EL.ECons PE.NotebookWithDecorativeCover el) where
  eto _ = helpE E.notebookWithDecorativeCover (EL.ELProxy :: EL.ELProxy el)

instance toEConsClosedBook :: ETo el => ETo (EL.ECons PE.ClosedBook el) where
  eto _ = helpE E.closedBook (EL.ELProxy :: EL.ELProxy el)

instance toEConsOpenBook :: ETo el => ETo (EL.ECons PE.OpenBook el) where
  eto _ = helpE E.openBook (EL.ELProxy :: EL.ELProxy el)

instance toEConsGreenBook :: ETo el => ETo (EL.ECons PE.GreenBook el) where
  eto _ = helpE E.greenBook (EL.ELProxy :: EL.ELProxy el)

instance toEConsBlueBook :: ETo el => ETo (EL.ECons PE.BlueBook el) where
  eto _ = helpE E.blueBook (EL.ELProxy :: EL.ELProxy el)

instance toEConsOrangeBook :: ETo el => ETo (EL.ECons PE.OrangeBook el) where
  eto _ = helpE E.orangeBook (EL.ELProxy :: EL.ELProxy el)

instance toEConsBooks :: ETo el => ETo (EL.ECons PE.Books el) where
  eto _ = helpE E.books (EL.ELProxy :: EL.ELProxy el)

instance toEConsNotebook :: ETo el => ETo (EL.ECons PE.Notebook el) where
  eto _ = helpE E.notebook (EL.ELProxy :: EL.ELProxy el)

instance toEConsLedger :: ETo el => ETo (EL.ECons PE.Ledger el) where
  eto _ = helpE E.ledger (EL.ELProxy :: EL.ELProxy el)

instance toEConsPageWithCurl :: ETo el => ETo (EL.ECons PE.PageWithCurl el) where
  eto _ = helpE E.pageWithCurl (EL.ELProxy :: EL.ELProxy el)

instance toEConsScroll :: ETo el => ETo (EL.ECons PE.Scroll el) where
  eto _ = helpE E.scroll (EL.ELProxy :: EL.ELProxy el)

instance toEConsPageFacingUp :: ETo el => ETo (EL.ECons PE.PageFacingUp el) where
  eto _ = helpE E.pageFacingUp (EL.ELProxy :: EL.ELProxy el)

instance toEConsNewspaper :: ETo el => ETo (EL.ECons PE.Newspaper el) where
  eto _ = helpE E.newspaper (EL.ELProxy :: EL.ELProxy el)

instance toEConsRolledUpNewspaper :: ETo el => ETo (EL.ECons PE.RolledUpNewspaper el) where
  eto _ = helpE E.rolledUpNewspaper (EL.ELProxy :: EL.ELProxy el)

instance toEConsBookmarkTabs :: ETo el => ETo (EL.ECons PE.BookmarkTabs el) where
  eto _ = helpE E.bookmarkTabs (EL.ELProxy :: EL.ELProxy el)

instance toEConsBookmark :: ETo el => ETo (EL.ECons PE.Bookmark el) where
  eto _ = helpE E.bookmark (EL.ELProxy :: EL.ELProxy el)

instance toEConsLabel :: ETo el => ETo (EL.ECons PE.Label el) where
  eto _ = helpE E.label (EL.ELProxy :: EL.ELProxy el)

instance toEConsMoneyBag :: ETo el => ETo (EL.ECons PE.MoneyBag el) where
  eto _ = helpE E.moneyBag (EL.ELProxy :: EL.ELProxy el)

instance toEConsCoin :: ETo el => ETo (EL.ECons PE.Coin el) where
  eto _ = helpE E.coin (EL.ELProxy :: EL.ELProxy el)

instance toEConsYenBanknote :: ETo el => ETo (EL.ECons PE.YenBanknote el) where
  eto _ = helpE E.yenBanknote (EL.ELProxy :: EL.ELProxy el)

instance toEConsDollarBanknote :: ETo el => ETo (EL.ECons PE.DollarBanknote el) where
  eto _ = helpE E.dollarBanknote (EL.ELProxy :: EL.ELProxy el)

instance toEConsEuroBanknote :: ETo el => ETo (EL.ECons PE.EuroBanknote el) where
  eto _ = helpE E.euroBanknote (EL.ELProxy :: EL.ELProxy el)

instance toEConsPoundBanknote :: ETo el => ETo (EL.ECons PE.PoundBanknote el) where
  eto _ = helpE E.poundBanknote (EL.ELProxy :: EL.ELProxy el)

instance toEConsMoneyWithWings :: ETo el => ETo (EL.ECons PE.MoneyWithWings el) where
  eto _ = helpE E.moneyWithWings (EL.ELProxy :: EL.ELProxy el)

instance toEConsCreditCard :: ETo el => ETo (EL.ECons PE.CreditCard el) where
  eto _ = helpE E.creditCard (EL.ELProxy :: EL.ELProxy el)

instance toEConsReceipt :: ETo el => ETo (EL.ECons PE.Receipt el) where
  eto _ = helpE E.receipt (EL.ELProxy :: EL.ELProxy el)

instance toEConsChartIncreasingWithYen :: ETo el => ETo (EL.ECons PE.ChartIncreasingWithYen el) where
  eto _ = helpE E.chartIncreasingWithYen (EL.ELProxy :: EL.ELProxy el)

instance toEConsEnvelope :: ETo el => ETo (EL.ECons PE.Envelope el) where
  eto _ = helpE E.envelope (EL.ELProxy :: EL.ELProxy el)

instance toEConsEMail :: ETo el => ETo (EL.ECons PE.EMail el) where
  eto _ = helpE E.eMail (EL.ELProxy :: EL.ELProxy el)

instance toEConsIncomingEnvelope :: ETo el => ETo (EL.ECons PE.IncomingEnvelope el) where
  eto _ = helpE E.incomingEnvelope (EL.ELProxy :: EL.ELProxy el)

instance toEConsEnvelopeWithArrow :: ETo el => ETo (EL.ECons PE.EnvelopeWithArrow el) where
  eto _ = helpE E.envelopeWithArrow (EL.ELProxy :: EL.ELProxy el)

instance toEConsOutboxTray :: ETo el => ETo (EL.ECons PE.OutboxTray el) where
  eto _ = helpE E.outboxTray (EL.ELProxy :: EL.ELProxy el)

instance toEConsInboxTray :: ETo el => ETo (EL.ECons PE.InboxTray el) where
  eto _ = helpE E.inboxTray (EL.ELProxy :: EL.ELProxy el)

instance toEConsPackage :: ETo el => ETo (EL.ECons PE.Package el) where
  eto _ = helpE E.package (EL.ELProxy :: EL.ELProxy el)

instance toEConsClosedMailboxWithRaisedFlag :: ETo el => ETo (EL.ECons PE.ClosedMailboxWithRaisedFlag el) where
  eto _ = helpE E.closedMailboxWithRaisedFlag (EL.ELProxy :: EL.ELProxy el)

instance toEConsClosedMailboxWithLoweredFlag :: ETo el => ETo (EL.ECons PE.ClosedMailboxWithLoweredFlag el) where
  eto _ = helpE E.closedMailboxWithLoweredFlag (EL.ELProxy :: EL.ELProxy el)

instance toEConsOpenMailboxWithRaisedFlag :: ETo el => ETo (EL.ECons PE.OpenMailboxWithRaisedFlag el) where
  eto _ = helpE E.openMailboxWithRaisedFlag (EL.ELProxy :: EL.ELProxy el)

instance toEConsOpenMailboxWithLoweredFlag :: ETo el => ETo (EL.ECons PE.OpenMailboxWithLoweredFlag el) where
  eto _ = helpE E.openMailboxWithLoweredFlag (EL.ELProxy :: EL.ELProxy el)

instance toEConsPostbox :: ETo el => ETo (EL.ECons PE.Postbox el) where
  eto _ = helpE E.postbox (EL.ELProxy :: EL.ELProxy el)

instance toEConsBallotBoxWithBallot :: ETo el => ETo (EL.ECons PE.BallotBoxWithBallot el) where
  eto _ = helpE E.ballotBoxWithBallot (EL.ELProxy :: EL.ELProxy el)

instance toEConsPencil :: ETo el => ETo (EL.ECons PE.Pencil el) where
  eto _ = helpE E.pencil (EL.ELProxy :: EL.ELProxy el)

instance toEConsBlackNib :: ETo el => ETo (EL.ECons PE.BlackNib el) where
  eto _ = helpE E.blackNib (EL.ELProxy :: EL.ELProxy el)

instance toEConsFountainPen :: ETo el => ETo (EL.ECons PE.FountainPen el) where
  eto _ = helpE E.fountainPen (EL.ELProxy :: EL.ELProxy el)

instance toEConsPen :: ETo el => ETo (EL.ECons PE.Pen el) where
  eto _ = helpE E.pen (EL.ELProxy :: EL.ELProxy el)

instance toEConsPaintbrush :: ETo el => ETo (EL.ECons PE.Paintbrush el) where
  eto _ = helpE E.paintbrush (EL.ELProxy :: EL.ELProxy el)

instance toEConsCrayon :: ETo el => ETo (EL.ECons PE.Crayon el) where
  eto _ = helpE E.crayon (EL.ELProxy :: EL.ELProxy el)

instance toEConsMemo :: ETo el => ETo (EL.ECons PE.Memo el) where
  eto _ = helpE E.memo (EL.ELProxy :: EL.ELProxy el)

instance toEConsBriefcase :: ETo el => ETo (EL.ECons PE.Briefcase el) where
  eto _ = helpE E.briefcase (EL.ELProxy :: EL.ELProxy el)

instance toEConsFileFolder :: ETo el => ETo (EL.ECons PE.FileFolder el) where
  eto _ = helpE E.fileFolder (EL.ELProxy :: EL.ELProxy el)

instance toEConsOpenFileFolder :: ETo el => ETo (EL.ECons PE.OpenFileFolder el) where
  eto _ = helpE E.openFileFolder (EL.ELProxy :: EL.ELProxy el)

instance toEConsCardIndexDividers :: ETo el => ETo (EL.ECons PE.CardIndexDividers el) where
  eto _ = helpE E.cardIndexDividers (EL.ELProxy :: EL.ELProxy el)

instance toEConsCalendar :: ETo el => ETo (EL.ECons PE.Calendar el) where
  eto _ = helpE E.calendar (EL.ELProxy :: EL.ELProxy el)

instance toEConsTearOffCalendar :: ETo el => ETo (EL.ECons PE.TearOffCalendar el) where
  eto _ = helpE E.tearOffCalendar (EL.ELProxy :: EL.ELProxy el)

instance toEConsSpiralNotepad :: ETo el => ETo (EL.ECons PE.SpiralNotepad el) where
  eto _ = helpE E.spiralNotepad (EL.ELProxy :: EL.ELProxy el)

instance toEConsSpiralCalendar :: ETo el => ETo (EL.ECons PE.SpiralCalendar el) where
  eto _ = helpE E.spiralCalendar (EL.ELProxy :: EL.ELProxy el)

instance toEConsCardIndex :: ETo el => ETo (EL.ECons PE.CardIndex el) where
  eto _ = helpE E.cardIndex (EL.ELProxy :: EL.ELProxy el)

instance toEConsChartIncreasing :: ETo el => ETo (EL.ECons PE.ChartIncreasing el) where
  eto _ = helpE E.chartIncreasing (EL.ELProxy :: EL.ELProxy el)

instance toEConsChartDecreasing :: ETo el => ETo (EL.ECons PE.ChartDecreasing el) where
  eto _ = helpE E.chartDecreasing (EL.ELProxy :: EL.ELProxy el)

instance toEConsBarChart :: ETo el => ETo (EL.ECons PE.BarChart el) where
  eto _ = helpE E.barChart (EL.ELProxy :: EL.ELProxy el)

instance toEConsClipboard :: ETo el => ETo (EL.ECons PE.Clipboard el) where
  eto _ = helpE E.clipboard (EL.ELProxy :: EL.ELProxy el)

instance toEConsPushpin :: ETo el => ETo (EL.ECons PE.Pushpin el) where
  eto _ = helpE E.pushpin (EL.ELProxy :: EL.ELProxy el)

instance toEConsRoundPushpin :: ETo el => ETo (EL.ECons PE.RoundPushpin el) where
  eto _ = helpE E.roundPushpin (EL.ELProxy :: EL.ELProxy el)

instance toEConsPaperclip :: ETo el => ETo (EL.ECons PE.Paperclip el) where
  eto _ = helpE E.paperclip (EL.ELProxy :: EL.ELProxy el)

instance toEConsLinkedPaperclips :: ETo el => ETo (EL.ECons PE.LinkedPaperclips el) where
  eto _ = helpE E.linkedPaperclips (EL.ELProxy :: EL.ELProxy el)

instance toEConsStraightRuler :: ETo el => ETo (EL.ECons PE.StraightRuler el) where
  eto _ = helpE E.straightRuler (EL.ELProxy :: EL.ELProxy el)

instance toEConsTriangularRuler :: ETo el => ETo (EL.ECons PE.TriangularRuler el) where
  eto _ = helpE E.triangularRuler (EL.ELProxy :: EL.ELProxy el)

instance toEConsScissors :: ETo el => ETo (EL.ECons PE.Scissors el) where
  eto _ = helpE E.scissors (EL.ELProxy :: EL.ELProxy el)

instance toEConsCardFileBox :: ETo el => ETo (EL.ECons PE.CardFileBox el) where
  eto _ = helpE E.cardFileBox (EL.ELProxy :: EL.ELProxy el)

instance toEConsFileCabinet :: ETo el => ETo (EL.ECons PE.FileCabinet el) where
  eto _ = helpE E.fileCabinet (EL.ELProxy :: EL.ELProxy el)

instance toEConsWastebasket :: ETo el => ETo (EL.ECons PE.Wastebasket el) where
  eto _ = helpE E.wastebasket (EL.ELProxy :: EL.ELProxy el)

instance toEConsLocked :: ETo el => ETo (EL.ECons PE.Locked el) where
  eto _ = helpE E.locked (EL.ELProxy :: EL.ELProxy el)

instance toEConsUnlocked :: ETo el => ETo (EL.ECons PE.Unlocked el) where
  eto _ = helpE E.unlocked (EL.ELProxy :: EL.ELProxy el)

instance toEConsLockedWithPen :: ETo el => ETo (EL.ECons PE.LockedWithPen el) where
  eto _ = helpE E.lockedWithPen (EL.ELProxy :: EL.ELProxy el)

instance toEConsLockedWithKey :: ETo el => ETo (EL.ECons PE.LockedWithKey el) where
  eto _ = helpE E.lockedWithKey (EL.ELProxy :: EL.ELProxy el)

instance toEConsKey :: ETo el => ETo (EL.ECons PE.Key el) where
  eto _ = helpE E.key (EL.ELProxy :: EL.ELProxy el)

instance toEConsOldKey :: ETo el => ETo (EL.ECons PE.OldKey el) where
  eto _ = helpE E.oldKey (EL.ELProxy :: EL.ELProxy el)

instance toEConsHammer :: ETo el => ETo (EL.ECons PE.Hammer el) where
  eto _ = helpE E.hammer (EL.ELProxy :: EL.ELProxy el)

instance toEConsAxe :: ETo el => ETo (EL.ECons PE.Axe el) where
  eto _ = helpE E.axe (EL.ELProxy :: EL.ELProxy el)

instance toEConsPick :: ETo el => ETo (EL.ECons PE.Pick el) where
  eto _ = helpE E.pick (EL.ELProxy :: EL.ELProxy el)

instance toEConsHammerAndPick :: ETo el => ETo (EL.ECons PE.HammerAndPick el) where
  eto _ = helpE E.hammerAndPick (EL.ELProxy :: EL.ELProxy el)

instance toEConsHammerAndWrench :: ETo el => ETo (EL.ECons PE.HammerAndWrench el) where
  eto _ = helpE E.hammerAndWrench (EL.ELProxy :: EL.ELProxy el)

instance toEConsDagger :: ETo el => ETo (EL.ECons PE.Dagger el) where
  eto _ = helpE E.dagger (EL.ELProxy :: EL.ELProxy el)

instance toEConsCrossedSwords :: ETo el => ETo (EL.ECons PE.CrossedSwords el) where
  eto _ = helpE E.crossedSwords (EL.ELProxy :: EL.ELProxy el)

instance toEConsPistol :: ETo el => ETo (EL.ECons PE.Pistol el) where
  eto _ = helpE E.pistol (EL.ELProxy :: EL.ELProxy el)

instance toEConsBoomerang :: ETo el => ETo (EL.ECons PE.Boomerang el) where
  eto _ = helpE E.boomerang (EL.ELProxy :: EL.ELProxy el)

instance toEConsBowAndArrow :: ETo el => ETo (EL.ECons PE.BowAndArrow el) where
  eto _ = helpE E.bowAndArrow (EL.ELProxy :: EL.ELProxy el)

instance toEConsShield :: ETo el => ETo (EL.ECons PE.Shield el) where
  eto _ = helpE E.shield (EL.ELProxy :: EL.ELProxy el)

instance toEConsCarpentrySaw :: ETo el => ETo (EL.ECons PE.CarpentrySaw el) where
  eto _ = helpE E.carpentrySaw (EL.ELProxy :: EL.ELProxy el)

instance toEConsWrench :: ETo el => ETo (EL.ECons PE.Wrench el) where
  eto _ = helpE E.wrench (EL.ELProxy :: EL.ELProxy el)

instance toEConsScrewdriver :: ETo el => ETo (EL.ECons PE.Screwdriver el) where
  eto _ = helpE E.screwdriver (EL.ELProxy :: EL.ELProxy el)

instance toEConsNutAndBolt :: ETo el => ETo (EL.ECons PE.NutAndBolt el) where
  eto _ = helpE E.nutAndBolt (EL.ELProxy :: EL.ELProxy el)

instance toEConsGear :: ETo el => ETo (EL.ECons PE.Gear el) where
  eto _ = helpE E.gear (EL.ELProxy :: EL.ELProxy el)

instance toEConsClamp :: ETo el => ETo (EL.ECons PE.Clamp el) where
  eto _ = helpE E.clamp (EL.ELProxy :: EL.ELProxy el)

instance toEConsBalanceScale :: ETo el => ETo (EL.ECons PE.BalanceScale el) where
  eto _ = helpE E.balanceScale (EL.ELProxy :: EL.ELProxy el)

instance toEConsWhiteCane :: ETo el => ETo (EL.ECons PE.WhiteCane el) where
  eto _ = helpE E.whiteCane (EL.ELProxy :: EL.ELProxy el)

instance toEConsLink :: ETo el => ETo (EL.ECons PE.Link el) where
  eto _ = helpE E.link (EL.ELProxy :: EL.ELProxy el)

instance toEConsChains :: ETo el => ETo (EL.ECons PE.Chains el) where
  eto _ = helpE E.chains (EL.ELProxy :: EL.ELProxy el)

instance toEConsHook :: ETo el => ETo (EL.ECons PE.Hook el) where
  eto _ = helpE E.hook (EL.ELProxy :: EL.ELProxy el)

instance toEConsToolbox :: ETo el => ETo (EL.ECons PE.Toolbox el) where
  eto _ = helpE E.toolbox (EL.ELProxy :: EL.ELProxy el)

instance toEConsMagnet :: ETo el => ETo (EL.ECons PE.Magnet el) where
  eto _ = helpE E.magnet (EL.ELProxy :: EL.ELProxy el)

instance toEConsLadder :: ETo el => ETo (EL.ECons PE.Ladder el) where
  eto _ = helpE E.ladder (EL.ELProxy :: EL.ELProxy el)

instance toEConsAlembic :: ETo el => ETo (EL.ECons PE.Alembic el) where
  eto _ = helpE E.alembic (EL.ELProxy :: EL.ELProxy el)

instance toEConsTestTube :: ETo el => ETo (EL.ECons PE.TestTube el) where
  eto _ = helpE E.testTube (EL.ELProxy :: EL.ELProxy el)

instance toEConsPetriDish :: ETo el => ETo (EL.ECons PE.PetriDish el) where
  eto _ = helpE E.petriDish (EL.ELProxy :: EL.ELProxy el)

instance toEConsDna :: ETo el => ETo (EL.ECons PE.Dna el) where
  eto _ = helpE E.dna (EL.ELProxy :: EL.ELProxy el)

instance toEConsMicroscope :: ETo el => ETo (EL.ECons PE.Microscope el) where
  eto _ = helpE E.microscope (EL.ELProxy :: EL.ELProxy el)

instance toEConsTelescope :: ETo el => ETo (EL.ECons PE.Telescope el) where
  eto _ = helpE E.telescope (EL.ELProxy :: EL.ELProxy el)

instance toEConsSatelliteAntenna :: ETo el => ETo (EL.ECons PE.SatelliteAntenna el) where
  eto _ = helpE E.satelliteAntenna (EL.ELProxy :: EL.ELProxy el)

instance toEConsSyringe :: ETo el => ETo (EL.ECons PE.Syringe el) where
  eto _ = helpE E.syringe (EL.ELProxy :: EL.ELProxy el)

instance toEConsDropOfBlood :: ETo el => ETo (EL.ECons PE.DropOfBlood el) where
  eto _ = helpE E.dropOfBlood (EL.ELProxy :: EL.ELProxy el)

instance toEConsPill :: ETo el => ETo (EL.ECons PE.Pill el) where
  eto _ = helpE E.pill (EL.ELProxy :: EL.ELProxy el)

instance toEConsAdhesiveBandage :: ETo el => ETo (EL.ECons PE.AdhesiveBandage el) where
  eto _ = helpE E.adhesiveBandage (EL.ELProxy :: EL.ELProxy el)

instance toEConsStethoscope :: ETo el => ETo (EL.ECons PE.Stethoscope el) where
  eto _ = helpE E.stethoscope (EL.ELProxy :: EL.ELProxy el)

instance toEConsDoor :: ETo el => ETo (EL.ECons PE.Door el) where
  eto _ = helpE E.door (EL.ELProxy :: EL.ELProxy el)

instance toEConsElevator :: ETo el => ETo (EL.ECons PE.Elevator el) where
  eto _ = helpE E.elevator (EL.ELProxy :: EL.ELProxy el)

instance toEConsMirror :: ETo el => ETo (EL.ECons PE.Mirror el) where
  eto _ = helpE E.mirror (EL.ELProxy :: EL.ELProxy el)

instance toEConsWindow :: ETo el => ETo (EL.ECons PE.Window el) where
  eto _ = helpE E.window (EL.ELProxy :: EL.ELProxy el)

instance toEConsBed :: ETo el => ETo (EL.ECons PE.Bed el) where
  eto _ = helpE E.bed (EL.ELProxy :: EL.ELProxy el)

instance toEConsCouchAndLamp :: ETo el => ETo (EL.ECons PE.CouchAndLamp el) where
  eto _ = helpE E.couchAndLamp (EL.ELProxy :: EL.ELProxy el)

instance toEConsChair :: ETo el => ETo (EL.ECons PE.Chair el) where
  eto _ = helpE E.chair (EL.ELProxy :: EL.ELProxy el)

instance toEConsToilet :: ETo el => ETo (EL.ECons PE.Toilet el) where
  eto _ = helpE E.toilet (EL.ELProxy :: EL.ELProxy el)

instance toEConsPlunger :: ETo el => ETo (EL.ECons PE.Plunger el) where
  eto _ = helpE E.plunger (EL.ELProxy :: EL.ELProxy el)

instance toEConsShower :: ETo el => ETo (EL.ECons PE.Shower el) where
  eto _ = helpE E.shower (EL.ELProxy :: EL.ELProxy el)

instance toEConsBathtub :: ETo el => ETo (EL.ECons PE.Bathtub el) where
  eto _ = helpE E.bathtub (EL.ELProxy :: EL.ELProxy el)

instance toEConsMouseTrap :: ETo el => ETo (EL.ECons PE.MouseTrap el) where
  eto _ = helpE E.mouseTrap (EL.ELProxy :: EL.ELProxy el)

instance toEConsRazor :: ETo el => ETo (EL.ECons PE.Razor el) where
  eto _ = helpE E.razor (EL.ELProxy :: EL.ELProxy el)

instance toEConsLotionBottle :: ETo el => ETo (EL.ECons PE.LotionBottle el) where
  eto _ = helpE E.lotionBottle (EL.ELProxy :: EL.ELProxy el)

instance toEConsSafetyPin :: ETo el => ETo (EL.ECons PE.SafetyPin el) where
  eto _ = helpE E.safetyPin (EL.ELProxy :: EL.ELProxy el)

instance toEConsBroom :: ETo el => ETo (EL.ECons PE.Broom el) where
  eto _ = helpE E.broom (EL.ELProxy :: EL.ELProxy el)

instance toEConsBasket :: ETo el => ETo (EL.ECons PE.Basket el) where
  eto _ = helpE E.basket (EL.ELProxy :: EL.ELProxy el)

instance toEConsRollOfPaper :: ETo el => ETo (EL.ECons PE.RollOfPaper el) where
  eto _ = helpE E.rollOfPaper (EL.ELProxy :: EL.ELProxy el)

instance toEConsBucket :: ETo el => ETo (EL.ECons PE.Bucket el) where
  eto _ = helpE E.bucket (EL.ELProxy :: EL.ELProxy el)

instance toEConsSoap :: ETo el => ETo (EL.ECons PE.Soap el) where
  eto _ = helpE E.soap (EL.ELProxy :: EL.ELProxy el)

instance toEConsToothbrush :: ETo el => ETo (EL.ECons PE.Toothbrush el) where
  eto _ = helpE E.toothbrush (EL.ELProxy :: EL.ELProxy el)

instance toEConsSponge :: ETo el => ETo (EL.ECons PE.Sponge el) where
  eto _ = helpE E.sponge (EL.ELProxy :: EL.ELProxy el)

instance toEConsFireExtinguisher :: ETo el => ETo (EL.ECons PE.FireExtinguisher el) where
  eto _ = helpE E.fireExtinguisher (EL.ELProxy :: EL.ELProxy el)

instance toEConsShoppingCart :: ETo el => ETo (EL.ECons PE.ShoppingCart el) where
  eto _ = helpE E.shoppingCart (EL.ELProxy :: EL.ELProxy el)

instance toEConsCigarette :: ETo el => ETo (EL.ECons PE.Cigarette el) where
  eto _ = helpE E.cigarette (EL.ELProxy :: EL.ELProxy el)

instance toEConsCoffin :: ETo el => ETo (EL.ECons PE.Coffin el) where
  eto _ = helpE E.coffin (EL.ELProxy :: EL.ELProxy el)

instance toEConsHeadstone :: ETo el => ETo (EL.ECons PE.Headstone el) where
  eto _ = helpE E.headstone (EL.ELProxy :: EL.ELProxy el)

instance toEConsFuneralUrn :: ETo el => ETo (EL.ECons PE.FuneralUrn el) where
  eto _ = helpE E.funeralUrn (EL.ELProxy :: EL.ELProxy el)

instance toEConsMoai :: ETo el => ETo (EL.ECons PE.Moai el) where
  eto _ = helpE E.moai (EL.ELProxy :: EL.ELProxy el)

instance toEConsPlacard :: ETo el => ETo (EL.ECons PE.Placard el) where
  eto _ = helpE E.placard (EL.ELProxy :: EL.ELProxy el)

instance toEConsAtmSign :: ETo el => ETo (EL.ECons PE.AtmSign el) where
  eto _ = helpE E.atmSign (EL.ELProxy :: EL.ELProxy el)

instance toEConsLitterInBinSign :: ETo el => ETo (EL.ECons PE.LitterInBinSign el) where
  eto _ = helpE E.litterInBinSign (EL.ELProxy :: EL.ELProxy el)

instance toEConsPotableWater :: ETo el => ETo (EL.ECons PE.PotableWater el) where
  eto _ = helpE E.potableWater (EL.ELProxy :: EL.ELProxy el)

instance toEConsWheelchairSymbol :: ETo el => ETo (EL.ECons PE.WheelchairSymbol el) where
  eto _ = helpE E.wheelchairSymbol (EL.ELProxy :: EL.ELProxy el)

instance toEConsMenSRoom :: ETo el => ETo (EL.ECons PE.MenSRoom el) where
  eto _ = helpE E.menSRoom (EL.ELProxy :: EL.ELProxy el)

instance toEConsWomenSRoom :: ETo el => ETo (EL.ECons PE.WomenSRoom el) where
  eto _ = helpE E.womenSRoom (EL.ELProxy :: EL.ELProxy el)

instance toEConsRestroom :: ETo el => ETo (EL.ECons PE.Restroom el) where
  eto _ = helpE E.restroom (EL.ELProxy :: EL.ELProxy el)

instance toEConsBabySymbol :: ETo el => ETo (EL.ECons PE.BabySymbol el) where
  eto _ = helpE E.babySymbol (EL.ELProxy :: EL.ELProxy el)

instance toEConsWaterCloset :: ETo el => ETo (EL.ECons PE.WaterCloset el) where
  eto _ = helpE E.waterCloset (EL.ELProxy :: EL.ELProxy el)

instance toEConsPassportControl :: ETo el => ETo (EL.ECons PE.PassportControl el) where
  eto _ = helpE E.passportControl (EL.ELProxy :: EL.ELProxy el)

instance toEConsCustoms :: ETo el => ETo (EL.ECons PE.Customs el) where
  eto _ = helpE E.customs (EL.ELProxy :: EL.ELProxy el)

instance toEConsBaggageClaim :: ETo el => ETo (EL.ECons PE.BaggageClaim el) where
  eto _ = helpE E.baggageClaim (EL.ELProxy :: EL.ELProxy el)

instance toEConsLeftLuggage :: ETo el => ETo (EL.ECons PE.LeftLuggage el) where
  eto _ = helpE E.leftLuggage (EL.ELProxy :: EL.ELProxy el)

instance toEConsWarning :: ETo el => ETo (EL.ECons PE.Warning el) where
  eto _ = helpE E.warning (EL.ELProxy :: EL.ELProxy el)

instance toEConsChildrenCrossing :: ETo el => ETo (EL.ECons PE.ChildrenCrossing el) where
  eto _ = helpE E.childrenCrossing (EL.ELProxy :: EL.ELProxy el)

instance toEConsNoEntry :: ETo el => ETo (EL.ECons PE.NoEntry el) where
  eto _ = helpE E.noEntry (EL.ELProxy :: EL.ELProxy el)

instance toEConsProhibited :: ETo el => ETo (EL.ECons PE.Prohibited el) where
  eto _ = helpE E.prohibited (EL.ELProxy :: EL.ELProxy el)

instance toEConsNoBicycles :: ETo el => ETo (EL.ECons PE.NoBicycles el) where
  eto _ = helpE E.noBicycles (EL.ELProxy :: EL.ELProxy el)

instance toEConsNoSmoking :: ETo el => ETo (EL.ECons PE.NoSmoking el) where
  eto _ = helpE E.noSmoking (EL.ELProxy :: EL.ELProxy el)

instance toEConsNoLittering :: ETo el => ETo (EL.ECons PE.NoLittering el) where
  eto _ = helpE E.noLittering (EL.ELProxy :: EL.ELProxy el)

instance toEConsNonPotableWater :: ETo el => ETo (EL.ECons PE.NonPotableWater el) where
  eto _ = helpE E.nonPotableWater (EL.ELProxy :: EL.ELProxy el)

instance toEConsNoPedestrians :: ETo el => ETo (EL.ECons PE.NoPedestrians el) where
  eto _ = helpE E.noPedestrians (EL.ELProxy :: EL.ELProxy el)

instance toEConsNoMobilePhones :: ETo el => ETo (EL.ECons PE.NoMobilePhones el) where
  eto _ = helpE E.noMobilePhones (EL.ELProxy :: EL.ELProxy el)

instance toEConsNoOneUnderEighteen :: ETo el => ETo (EL.ECons PE.NoOneUnderEighteen el) where
  eto _ = helpE E.noOneUnderEighteen (EL.ELProxy :: EL.ELProxy el)

instance toEConsRadioactive :: ETo el => ETo (EL.ECons PE.Radioactive el) where
  eto _ = helpE E.radioactive (EL.ELProxy :: EL.ELProxy el)

instance toEConsBiohazard :: ETo el => ETo (EL.ECons PE.Biohazard el) where
  eto _ = helpE E.biohazard (EL.ELProxy :: EL.ELProxy el)

instance toEConsUpArrow :: ETo el => ETo (EL.ECons PE.UpArrow el) where
  eto _ = helpE E.upArrow (EL.ELProxy :: EL.ELProxy el)

instance toEConsUpRightArrow :: ETo el => ETo (EL.ECons PE.UpRightArrow el) where
  eto _ = helpE E.upRightArrow (EL.ELProxy :: EL.ELProxy el)

instance toEConsRightArrow :: ETo el => ETo (EL.ECons PE.RightArrow el) where
  eto _ = helpE E.rightArrow (EL.ELProxy :: EL.ELProxy el)

instance toEConsDownRightArrow :: ETo el => ETo (EL.ECons PE.DownRightArrow el) where
  eto _ = helpE E.downRightArrow (EL.ELProxy :: EL.ELProxy el)

instance toEConsDownArrow :: ETo el => ETo (EL.ECons PE.DownArrow el) where
  eto _ = helpE E.downArrow (EL.ELProxy :: EL.ELProxy el)

instance toEConsDownLeftArrow :: ETo el => ETo (EL.ECons PE.DownLeftArrow el) where
  eto _ = helpE E.downLeftArrow (EL.ELProxy :: EL.ELProxy el)

instance toEConsLeftArrow :: ETo el => ETo (EL.ECons PE.LeftArrow el) where
  eto _ = helpE E.leftArrow (EL.ELProxy :: EL.ELProxy el)

instance toEConsUpLeftArrow :: ETo el => ETo (EL.ECons PE.UpLeftArrow el) where
  eto _ = helpE E.upLeftArrow (EL.ELProxy :: EL.ELProxy el)

instance toEConsUpDownArrow :: ETo el => ETo (EL.ECons PE.UpDownArrow el) where
  eto _ = helpE E.upDownArrow (EL.ELProxy :: EL.ELProxy el)

instance toEConsLeftRightArrow :: ETo el => ETo (EL.ECons PE.LeftRightArrow el) where
  eto _ = helpE E.leftRightArrow (EL.ELProxy :: EL.ELProxy el)

instance toEConsRightArrowCurvingLeft :: ETo el => ETo (EL.ECons PE.RightArrowCurvingLeft el) where
  eto _ = helpE E.rightArrowCurvingLeft (EL.ELProxy :: EL.ELProxy el)

instance toEConsLeftArrowCurvingRight :: ETo el => ETo (EL.ECons PE.LeftArrowCurvingRight el) where
  eto _ = helpE E.leftArrowCurvingRight (EL.ELProxy :: EL.ELProxy el)

instance toEConsRightArrowCurvingUp :: ETo el => ETo (EL.ECons PE.RightArrowCurvingUp el) where
  eto _ = helpE E.rightArrowCurvingUp (EL.ELProxy :: EL.ELProxy el)

instance toEConsRightArrowCurvingDown :: ETo el => ETo (EL.ECons PE.RightArrowCurvingDown el) where
  eto _ = helpE E.rightArrowCurvingDown (EL.ELProxy :: EL.ELProxy el)

instance toEConsClockwiseVerticalArrows :: ETo el => ETo (EL.ECons PE.ClockwiseVerticalArrows el) where
  eto _ = helpE E.clockwiseVerticalArrows (EL.ELProxy :: EL.ELProxy el)

instance toEConsCounterclockwiseArrowsButton :: ETo el => ETo (EL.ECons PE.CounterclockwiseArrowsButton el) where
  eto _ = helpE E.counterclockwiseArrowsButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsBackArrow :: ETo el => ETo (EL.ECons PE.BackArrow el) where
  eto _ = helpE E.backArrow (EL.ELProxy :: EL.ELProxy el)

instance toEConsEndArrow :: ETo el => ETo (EL.ECons PE.EndArrow el) where
  eto _ = helpE E.endArrow (EL.ELProxy :: EL.ELProxy el)

instance toEConsOnArrow :: ETo el => ETo (EL.ECons PE.OnArrow el) where
  eto _ = helpE E.onArrow (EL.ELProxy :: EL.ELProxy el)

instance toEConsSoonArrow :: ETo el => ETo (EL.ECons PE.SoonArrow el) where
  eto _ = helpE E.soonArrow (EL.ELProxy :: EL.ELProxy el)

instance toEConsTopArrow :: ETo el => ETo (EL.ECons PE.TopArrow el) where
  eto _ = helpE E.topArrow (EL.ELProxy :: EL.ELProxy el)

instance toEConsPlaceOfWorship :: ETo el => ETo (EL.ECons PE.PlaceOfWorship el) where
  eto _ = helpE E.placeOfWorship (EL.ELProxy :: EL.ELProxy el)

instance toEConsAtomSymbol :: ETo el => ETo (EL.ECons PE.AtomSymbol el) where
  eto _ = helpE E.atomSymbol (EL.ELProxy :: EL.ELProxy el)

instance toEConsOm :: ETo el => ETo (EL.ECons PE.Om el) where
  eto _ = helpE E.om (EL.ELProxy :: EL.ELProxy el)

instance toEConsStarOfDavid :: ETo el => ETo (EL.ECons PE.StarOfDavid el) where
  eto _ = helpE E.starOfDavid (EL.ELProxy :: EL.ELProxy el)

instance toEConsWheelOfDharma :: ETo el => ETo (EL.ECons PE.WheelOfDharma el) where
  eto _ = helpE E.wheelOfDharma (EL.ELProxy :: EL.ELProxy el)

instance toEConsYinYang :: ETo el => ETo (EL.ECons PE.YinYang el) where
  eto _ = helpE E.yinYang (EL.ELProxy :: EL.ELProxy el)

instance toEConsLatinCross :: ETo el => ETo (EL.ECons PE.LatinCross el) where
  eto _ = helpE E.latinCross (EL.ELProxy :: EL.ELProxy el)

instance toEConsOrthodoxCross :: ETo el => ETo (EL.ECons PE.OrthodoxCross el) where
  eto _ = helpE E.orthodoxCross (EL.ELProxy :: EL.ELProxy el)

instance toEConsStarAndCrescent :: ETo el => ETo (EL.ECons PE.StarAndCrescent el) where
  eto _ = helpE E.starAndCrescent (EL.ELProxy :: EL.ELProxy el)

instance toEConsPeaceSymbol :: ETo el => ETo (EL.ECons PE.PeaceSymbol el) where
  eto _ = helpE E.peaceSymbol (EL.ELProxy :: EL.ELProxy el)

instance toEConsMenorah :: ETo el => ETo (EL.ECons PE.Menorah el) where
  eto _ = helpE E.menorah (EL.ELProxy :: EL.ELProxy el)

instance toEConsDottedSixPointedStar :: ETo el => ETo (EL.ECons PE.DottedSixPointedStar el) where
  eto _ = helpE E.dottedSixPointedStar (EL.ELProxy :: EL.ELProxy el)

instance toEConsAries :: ETo el => ETo (EL.ECons PE.Aries el) where
  eto _ = helpE E.aries (EL.ELProxy :: EL.ELProxy el)

instance toEConsTaurus :: ETo el => ETo (EL.ECons PE.Taurus el) where
  eto _ = helpE E.taurus (EL.ELProxy :: EL.ELProxy el)

instance toEConsGemini :: ETo el => ETo (EL.ECons PE.Gemini el) where
  eto _ = helpE E.gemini (EL.ELProxy :: EL.ELProxy el)

instance toEConsCancer :: ETo el => ETo (EL.ECons PE.Cancer el) where
  eto _ = helpE E.cancer (EL.ELProxy :: EL.ELProxy el)

instance toEConsLeo :: ETo el => ETo (EL.ECons PE.Leo el) where
  eto _ = helpE E.leo (EL.ELProxy :: EL.ELProxy el)

instance toEConsVirgo :: ETo el => ETo (EL.ECons PE.Virgo el) where
  eto _ = helpE E.virgo (EL.ELProxy :: EL.ELProxy el)

instance toEConsLibra :: ETo el => ETo (EL.ECons PE.Libra el) where
  eto _ = helpE E.libra (EL.ELProxy :: EL.ELProxy el)

instance toEConsScorpio :: ETo el => ETo (EL.ECons PE.Scorpio el) where
  eto _ = helpE E.scorpio (EL.ELProxy :: EL.ELProxy el)

instance toEConsSagittarius :: ETo el => ETo (EL.ECons PE.Sagittarius el) where
  eto _ = helpE E.sagittarius (EL.ELProxy :: EL.ELProxy el)

instance toEConsCapricorn :: ETo el => ETo (EL.ECons PE.Capricorn el) where
  eto _ = helpE E.capricorn (EL.ELProxy :: EL.ELProxy el)

instance toEConsAquarius :: ETo el => ETo (EL.ECons PE.Aquarius el) where
  eto _ = helpE E.aquarius (EL.ELProxy :: EL.ELProxy el)

instance toEConsPisces :: ETo el => ETo (EL.ECons PE.Pisces el) where
  eto _ = helpE E.pisces (EL.ELProxy :: EL.ELProxy el)

instance toEConsOphiuchus :: ETo el => ETo (EL.ECons PE.Ophiuchus el) where
  eto _ = helpE E.ophiuchus (EL.ELProxy :: EL.ELProxy el)

instance toEConsShuffleTracksButton :: ETo el => ETo (EL.ECons PE.ShuffleTracksButton el) where
  eto _ = helpE E.shuffleTracksButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsRepeatButton :: ETo el => ETo (EL.ECons PE.RepeatButton el) where
  eto _ = helpE E.repeatButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsRepeatSingleButton :: ETo el => ETo (EL.ECons PE.RepeatSingleButton el) where
  eto _ = helpE E.repeatSingleButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsPlayButton :: ETo el => ETo (EL.ECons PE.PlayButton el) where
  eto _ = helpE E.playButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsFastForwardButton :: ETo el => ETo (EL.ECons PE.FastForwardButton el) where
  eto _ = helpE E.fastForwardButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsNextTrackButton :: ETo el => ETo (EL.ECons PE.NextTrackButton el) where
  eto _ = helpE E.nextTrackButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsPlayOrPauseButton :: ETo el => ETo (EL.ECons PE.PlayOrPauseButton el) where
  eto _ = helpE E.playOrPauseButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsReverseButton :: ETo el => ETo (EL.ECons PE.ReverseButton el) where
  eto _ = helpE E.reverseButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsFastReverseButton :: ETo el => ETo (EL.ECons PE.FastReverseButton el) where
  eto _ = helpE E.fastReverseButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsLastTrackButton :: ETo el => ETo (EL.ECons PE.LastTrackButton el) where
  eto _ = helpE E.lastTrackButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsUpwardsButton :: ETo el => ETo (EL.ECons PE.UpwardsButton el) where
  eto _ = helpE E.upwardsButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsFastUpButton :: ETo el => ETo (EL.ECons PE.FastUpButton el) where
  eto _ = helpE E.fastUpButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsDownwardsButton :: ETo el => ETo (EL.ECons PE.DownwardsButton el) where
  eto _ = helpE E.downwardsButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsFastDownButton :: ETo el => ETo (EL.ECons PE.FastDownButton el) where
  eto _ = helpE E.fastDownButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsPauseButton :: ETo el => ETo (EL.ECons PE.PauseButton el) where
  eto _ = helpE E.pauseButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsStopButton :: ETo el => ETo (EL.ECons PE.StopButton el) where
  eto _ = helpE E.stopButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsRecordButton :: ETo el => ETo (EL.ECons PE.RecordButton el) where
  eto _ = helpE E.recordButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsEjectButton :: ETo el => ETo (EL.ECons PE.EjectButton el) where
  eto _ = helpE E.ejectButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsCinema :: ETo el => ETo (EL.ECons PE.Cinema el) where
  eto _ = helpE E.cinema (EL.ELProxy :: EL.ELProxy el)

instance toEConsDimButton :: ETo el => ETo (EL.ECons PE.DimButton el) where
  eto _ = helpE E.dimButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsBrightButton :: ETo el => ETo (EL.ECons PE.BrightButton el) where
  eto _ = helpE E.brightButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsAntennaBars :: ETo el => ETo (EL.ECons PE.AntennaBars el) where
  eto _ = helpE E.antennaBars (EL.ELProxy :: EL.ELProxy el)

instance toEConsVibrationMode :: ETo el => ETo (EL.ECons PE.VibrationMode el) where
  eto _ = helpE E.vibrationMode (EL.ELProxy :: EL.ELProxy el)

instance toEConsMobilePhoneOff :: ETo el => ETo (EL.ECons PE.MobilePhoneOff el) where
  eto _ = helpE E.mobilePhoneOff (EL.ELProxy :: EL.ELProxy el)

instance toEConsFemaleSign :: ETo el => ETo (EL.ECons PE.FemaleSign el) where
  eto _ = helpE E.femaleSign (EL.ELProxy :: EL.ELProxy el)

instance toEConsMaleSign :: ETo el => ETo (EL.ECons PE.MaleSign el) where
  eto _ = helpE E.maleSign (EL.ELProxy :: EL.ELProxy el)

instance toEConsTransgenderSymbol :: ETo el => ETo (EL.ECons PE.TransgenderSymbol el) where
  eto _ = helpE E.transgenderSymbol (EL.ELProxy :: EL.ELProxy el)

instance toEConsMultiply :: ETo el => ETo (EL.ECons PE.Multiply el) where
  eto _ = helpE E.multiply (EL.ELProxy :: EL.ELProxy el)

instance toEConsPlus :: ETo el => ETo (EL.ECons PE.Plus el) where
  eto _ = helpE E.plus (EL.ELProxy :: EL.ELProxy el)

instance toEConsMinus :: ETo el => ETo (EL.ECons PE.Minus el) where
  eto _ = helpE E.minus (EL.ELProxy :: EL.ELProxy el)

instance toEConsDivide :: ETo el => ETo (EL.ECons PE.Divide el) where
  eto _ = helpE E.divide (EL.ELProxy :: EL.ELProxy el)

instance toEConsInfinity :: ETo el => ETo (EL.ECons PE.Infinity el) where
  eto _ = helpE E.infinity (EL.ELProxy :: EL.ELProxy el)

instance toEConsDoubleExclamationMark :: ETo el => ETo (EL.ECons PE.DoubleExclamationMark el) where
  eto _ = helpE E.doubleExclamationMark (EL.ELProxy :: EL.ELProxy el)

instance toEConsExclamationQuestionMark :: ETo el => ETo (EL.ECons PE.ExclamationQuestionMark el) where
  eto _ = helpE E.exclamationQuestionMark (EL.ELProxy :: EL.ELProxy el)

instance toEConsQuestionMark :: ETo el => ETo (EL.ECons PE.QuestionMark el) where
  eto _ = helpE E.questionMark (EL.ELProxy :: EL.ELProxy el)

instance toEConsWhiteQuestionMark :: ETo el => ETo (EL.ECons PE.WhiteQuestionMark el) where
  eto _ = helpE E.whiteQuestionMark (EL.ELProxy :: EL.ELProxy el)

instance toEConsWhiteExclamationMark :: ETo el => ETo (EL.ECons PE.WhiteExclamationMark el) where
  eto _ = helpE E.whiteExclamationMark (EL.ELProxy :: EL.ELProxy el)

instance toEConsExclamationMark :: ETo el => ETo (EL.ECons PE.ExclamationMark el) where
  eto _ = helpE E.exclamationMark (EL.ELProxy :: EL.ELProxy el)

instance toEConsWavyDash :: ETo el => ETo (EL.ECons PE.WavyDash el) where
  eto _ = helpE E.wavyDash (EL.ELProxy :: EL.ELProxy el)

instance toEConsCurrencyExchange :: ETo el => ETo (EL.ECons PE.CurrencyExchange el) where
  eto _ = helpE E.currencyExchange (EL.ELProxy :: EL.ELProxy el)

instance toEConsHeavyDollarSign :: ETo el => ETo (EL.ECons PE.HeavyDollarSign el) where
  eto _ = helpE E.heavyDollarSign (EL.ELProxy :: EL.ELProxy el)

instance toEConsMedicalSymbol :: ETo el => ETo (EL.ECons PE.MedicalSymbol el) where
  eto _ = helpE E.medicalSymbol (EL.ELProxy :: EL.ELProxy el)

instance toEConsRecyclingSymbol :: ETo el => ETo (EL.ECons PE.RecyclingSymbol el) where
  eto _ = helpE E.recyclingSymbol (EL.ELProxy :: EL.ELProxy el)

instance toEConsFleurDeLis :: ETo el => ETo (EL.ECons PE.FleurDeLis el) where
  eto _ = helpE E.fleurDeLis (EL.ELProxy :: EL.ELProxy el)

instance toEConsTridentEmblem :: ETo el => ETo (EL.ECons PE.TridentEmblem el) where
  eto _ = helpE E.tridentEmblem (EL.ELProxy :: EL.ELProxy el)

instance toEConsNameBadge :: ETo el => ETo (EL.ECons PE.NameBadge el) where
  eto _ = helpE E.nameBadge (EL.ELProxy :: EL.ELProxy el)

instance toEConsJapaneseSymbolForBeginner :: ETo el => ETo (EL.ECons PE.JapaneseSymbolForBeginner el) where
  eto _ = helpE E.japaneseSymbolForBeginner (EL.ELProxy :: EL.ELProxy el)

instance toEConsHollowRedCircle :: ETo el => ETo (EL.ECons PE.HollowRedCircle el) where
  eto _ = helpE E.hollowRedCircle (EL.ELProxy :: EL.ELProxy el)

instance toEConsCheckMarkButton :: ETo el => ETo (EL.ECons PE.CheckMarkButton el) where
  eto _ = helpE E.checkMarkButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsCheckBoxWithCheck :: ETo el => ETo (EL.ECons PE.CheckBoxWithCheck el) where
  eto _ = helpE E.checkBoxWithCheck (EL.ELProxy :: EL.ELProxy el)

instance toEConsCheckMark :: ETo el => ETo (EL.ECons PE.CheckMark el) where
  eto _ = helpE E.checkMark (EL.ELProxy :: EL.ELProxy el)

instance toEConsCrossMark :: ETo el => ETo (EL.ECons PE.CrossMark el) where
  eto _ = helpE E.crossMark (EL.ELProxy :: EL.ELProxy el)

instance toEConsCrossMarkButton :: ETo el => ETo (EL.ECons PE.CrossMarkButton el) where
  eto _ = helpE E.crossMarkButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsCurlyLoop :: ETo el => ETo (EL.ECons PE.CurlyLoop el) where
  eto _ = helpE E.curlyLoop (EL.ELProxy :: EL.ELProxy el)

instance toEConsDoubleCurlyLoop :: ETo el => ETo (EL.ECons PE.DoubleCurlyLoop el) where
  eto _ = helpE E.doubleCurlyLoop (EL.ELProxy :: EL.ELProxy el)

instance toEConsPartAlternationMark :: ETo el => ETo (EL.ECons PE.PartAlternationMark el) where
  eto _ = helpE E.partAlternationMark (EL.ELProxy :: EL.ELProxy el)

instance toEConsEightSpokedAsterisk :: ETo el => ETo (EL.ECons PE.EightSpokedAsterisk el) where
  eto _ = helpE E.eightSpokedAsterisk (EL.ELProxy :: EL.ELProxy el)

instance toEConsEightPointedStar :: ETo el => ETo (EL.ECons PE.EightPointedStar el) where
  eto _ = helpE E.eightPointedStar (EL.ELProxy :: EL.ELProxy el)

instance toEConsSparkle :: ETo el => ETo (EL.ECons PE.Sparkle el) where
  eto _ = helpE E.sparkle (EL.ELProxy :: EL.ELProxy el)

instance toEConsCopyright :: ETo el => ETo (EL.ECons PE.Copyright el) where
  eto _ = helpE E.copyright (EL.ELProxy :: EL.ELProxy el)

instance toEConsRegistered :: ETo el => ETo (EL.ECons PE.Registered el) where
  eto _ = helpE E.registered (EL.ELProxy :: EL.ELProxy el)

instance toEConsTradeMark :: ETo el => ETo (EL.ECons PE.TradeMark el) where
  eto _ = helpE E.tradeMark (EL.ELProxy :: EL.ELProxy el)

instance toEConsKeycap10 :: ETo el => ETo (EL.ECons PE.Keycap10 el) where
  eto _ = helpE E.keycap10 (EL.ELProxy :: EL.ELProxy el)

instance toEConsInputLatinUppercase :: ETo el => ETo (EL.ECons PE.InputLatinUppercase el) where
  eto _ = helpE E.inputLatinUppercase (EL.ELProxy :: EL.ELProxy el)

instance toEConsInputLatinLowercase :: ETo el => ETo (EL.ECons PE.InputLatinLowercase el) where
  eto _ = helpE E.inputLatinLowercase (EL.ELProxy :: EL.ELProxy el)

instance toEConsInputNumbers :: ETo el => ETo (EL.ECons PE.InputNumbers el) where
  eto _ = helpE E.inputNumbers (EL.ELProxy :: EL.ELProxy el)

instance toEConsInputSymbols :: ETo el => ETo (EL.ECons PE.InputSymbols el) where
  eto _ = helpE E.inputSymbols (EL.ELProxy :: EL.ELProxy el)

instance toEConsInputLatinLetters :: ETo el => ETo (EL.ECons PE.InputLatinLetters el) where
  eto _ = helpE E.inputLatinLetters (EL.ELProxy :: EL.ELProxy el)

instance toEConsAButtonBloodType :: ETo el => ETo (EL.ECons PE.AButtonBloodType el) where
  eto _ = helpE E.aButtonBloodType (EL.ELProxy :: EL.ELProxy el)

instance toEConsAbButtonBloodType :: ETo el => ETo (EL.ECons PE.AbButtonBloodType el) where
  eto _ = helpE E.abButtonBloodType (EL.ELProxy :: EL.ELProxy el)

instance toEConsBButtonBloodType :: ETo el => ETo (EL.ECons PE.BButtonBloodType el) where
  eto _ = helpE E.bButtonBloodType (EL.ELProxy :: EL.ELProxy el)

instance toEConsClButton :: ETo el => ETo (EL.ECons PE.ClButton el) where
  eto _ = helpE E.clButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsCoolButton :: ETo el => ETo (EL.ECons PE.CoolButton el) where
  eto _ = helpE E.coolButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsFreeButton :: ETo el => ETo (EL.ECons PE.FreeButton el) where
  eto _ = helpE E.freeButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsInformation :: ETo el => ETo (EL.ECons PE.Information el) where
  eto _ = helpE E.information (EL.ELProxy :: EL.ELProxy el)

instance toEConsIdButton :: ETo el => ETo (EL.ECons PE.IdButton el) where
  eto _ = helpE E.idButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsCircledM :: ETo el => ETo (EL.ECons PE.CircledM el) where
  eto _ = helpE E.circledM (EL.ELProxy :: EL.ELProxy el)

instance toEConsNewButton :: ETo el => ETo (EL.ECons PE.NewButton el) where
  eto _ = helpE E.newButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsNgButton :: ETo el => ETo (EL.ECons PE.NgButton el) where
  eto _ = helpE E.ngButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsOButtonBloodType :: ETo el => ETo (EL.ECons PE.OButtonBloodType el) where
  eto _ = helpE E.oButtonBloodType (EL.ELProxy :: EL.ELProxy el)

instance toEConsOkButton :: ETo el => ETo (EL.ECons PE.OkButton el) where
  eto _ = helpE E.okButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsPButton :: ETo el => ETo (EL.ECons PE.PButton el) where
  eto _ = helpE E.pButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsSosButton :: ETo el => ETo (EL.ECons PE.SosButton el) where
  eto _ = helpE E.sosButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsUpButton :: ETo el => ETo (EL.ECons PE.UpButton el) where
  eto _ = helpE E.upButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsVsButton :: ETo el => ETo (EL.ECons PE.VsButton el) where
  eto _ = helpE E.vsButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsJapaneseHereButton :: ETo el => ETo (EL.ECons PE.JapaneseHereButton el) where
  eto _ = helpE E.japaneseHereButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsJapaneseServiceChargeButton :: ETo el => ETo (EL.ECons PE.JapaneseServiceChargeButton el) where
  eto _ = helpE E.japaneseServiceChargeButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsJapaneseMonthlyAmountButton :: ETo el => ETo (EL.ECons PE.JapaneseMonthlyAmountButton el) where
  eto _ = helpE E.japaneseMonthlyAmountButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsJapaneseNotFreeOfChargeButton :: ETo el => ETo (EL.ECons PE.JapaneseNotFreeOfChargeButton el) where
  eto _ = helpE E.japaneseNotFreeOfChargeButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsJapaneseReservedButton :: ETo el => ETo (EL.ECons PE.JapaneseReservedButton el) where
  eto _ = helpE E.japaneseReservedButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsJapaneseBargainButton :: ETo el => ETo (EL.ECons PE.JapaneseBargainButton el) where
  eto _ = helpE E.japaneseBargainButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsJapaneseDiscountButton :: ETo el => ETo (EL.ECons PE.JapaneseDiscountButton el) where
  eto _ = helpE E.japaneseDiscountButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsJapaneseFreeOfChargeButton :: ETo el => ETo (EL.ECons PE.JapaneseFreeOfChargeButton el) where
  eto _ = helpE E.japaneseFreeOfChargeButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsJapaneseProhibitedButton :: ETo el => ETo (EL.ECons PE.JapaneseProhibitedButton el) where
  eto _ = helpE E.japaneseProhibitedButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsJapaneseAcceptableButton :: ETo el => ETo (EL.ECons PE.JapaneseAcceptableButton el) where
  eto _ = helpE E.japaneseAcceptableButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsJapaneseApplicationButton :: ETo el => ETo (EL.ECons PE.JapaneseApplicationButton el) where
  eto _ = helpE E.japaneseApplicationButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsJapanesePassingGradeButton :: ETo el => ETo (EL.ECons PE.JapanesePassingGradeButton el) where
  eto _ = helpE E.japanesePassingGradeButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsJapaneseVacancyButton :: ETo el => ETo (EL.ECons PE.JapaneseVacancyButton el) where
  eto _ = helpE E.japaneseVacancyButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsJapaneseCongratulationsButton :: ETo el => ETo (EL.ECons PE.JapaneseCongratulationsButton el) where
  eto _ = helpE E.japaneseCongratulationsButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsJapaneseSecretButton :: ETo el => ETo (EL.ECons PE.JapaneseSecretButton el) where
  eto _ = helpE E.japaneseSecretButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsJapaneseOpenForBusinessButton :: ETo el => ETo (EL.ECons PE.JapaneseOpenForBusinessButton el) where
  eto _ = helpE E.japaneseOpenForBusinessButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsJapaneseNoVacancyButton :: ETo el => ETo (EL.ECons PE.JapaneseNoVacancyButton el) where
  eto _ = helpE E.japaneseNoVacancyButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsRedCircle :: ETo el => ETo (EL.ECons PE.RedCircle el) where
  eto _ = helpE E.redCircle (EL.ELProxy :: EL.ELProxy el)

instance toEConsOrangeCircle :: ETo el => ETo (EL.ECons PE.OrangeCircle el) where
  eto _ = helpE E.orangeCircle (EL.ELProxy :: EL.ELProxy el)

instance toEConsYellowCircle :: ETo el => ETo (EL.ECons PE.YellowCircle el) where
  eto _ = helpE E.yellowCircle (EL.ELProxy :: EL.ELProxy el)

instance toEConsGreenCircle :: ETo el => ETo (EL.ECons PE.GreenCircle el) where
  eto _ = helpE E.greenCircle (EL.ELProxy :: EL.ELProxy el)

instance toEConsBlueCircle :: ETo el => ETo (EL.ECons PE.BlueCircle el) where
  eto _ = helpE E.blueCircle (EL.ELProxy :: EL.ELProxy el)

instance toEConsPurpleCircle :: ETo el => ETo (EL.ECons PE.PurpleCircle el) where
  eto _ = helpE E.purpleCircle (EL.ELProxy :: EL.ELProxy el)

instance toEConsBrownCircle :: ETo el => ETo (EL.ECons PE.BrownCircle el) where
  eto _ = helpE E.brownCircle (EL.ELProxy :: EL.ELProxy el)

instance toEConsBlackCircle :: ETo el => ETo (EL.ECons PE.BlackCircle el) where
  eto _ = helpE E.blackCircle (EL.ELProxy :: EL.ELProxy el)

instance toEConsWhiteCircle :: ETo el => ETo (EL.ECons PE.WhiteCircle el) where
  eto _ = helpE E.whiteCircle (EL.ELProxy :: EL.ELProxy el)

instance toEConsRedSquare :: ETo el => ETo (EL.ECons PE.RedSquare el) where
  eto _ = helpE E.redSquare (EL.ELProxy :: EL.ELProxy el)

instance toEConsOrangeSquare :: ETo el => ETo (EL.ECons PE.OrangeSquare el) where
  eto _ = helpE E.orangeSquare (EL.ELProxy :: EL.ELProxy el)

instance toEConsYellowSquare :: ETo el => ETo (EL.ECons PE.YellowSquare el) where
  eto _ = helpE E.yellowSquare (EL.ELProxy :: EL.ELProxy el)

instance toEConsGreenSquare :: ETo el => ETo (EL.ECons PE.GreenSquare el) where
  eto _ = helpE E.greenSquare (EL.ELProxy :: EL.ELProxy el)

instance toEConsBlueSquare :: ETo el => ETo (EL.ECons PE.BlueSquare el) where
  eto _ = helpE E.blueSquare (EL.ELProxy :: EL.ELProxy el)

instance toEConsPurpleSquare :: ETo el => ETo (EL.ECons PE.PurpleSquare el) where
  eto _ = helpE E.purpleSquare (EL.ELProxy :: EL.ELProxy el)

instance toEConsBrownSquare :: ETo el => ETo (EL.ECons PE.BrownSquare el) where
  eto _ = helpE E.brownSquare (EL.ELProxy :: EL.ELProxy el)

instance toEConsBlackLargeSquare :: ETo el => ETo (EL.ECons PE.BlackLargeSquare el) where
  eto _ = helpE E.blackLargeSquare (EL.ELProxy :: EL.ELProxy el)

instance toEConsWhiteLargeSquare :: ETo el => ETo (EL.ECons PE.WhiteLargeSquare el) where
  eto _ = helpE E.whiteLargeSquare (EL.ELProxy :: EL.ELProxy el)

instance toEConsBlackMediumSquare :: ETo el => ETo (EL.ECons PE.BlackMediumSquare el) where
  eto _ = helpE E.blackMediumSquare (EL.ELProxy :: EL.ELProxy el)

instance toEConsWhiteMediumSquare :: ETo el => ETo (EL.ECons PE.WhiteMediumSquare el) where
  eto _ = helpE E.whiteMediumSquare (EL.ELProxy :: EL.ELProxy el)

instance toEConsBlackMediumSmallSquare :: ETo el => ETo (EL.ECons PE.BlackMediumSmallSquare el) where
  eto _ = helpE E.blackMediumSmallSquare (EL.ELProxy :: EL.ELProxy el)

instance toEConsWhiteMediumSmallSquare :: ETo el => ETo (EL.ECons PE.WhiteMediumSmallSquare el) where
  eto _ = helpE E.whiteMediumSmallSquare (EL.ELProxy :: EL.ELProxy el)

instance toEConsBlackSmallSquare :: ETo el => ETo (EL.ECons PE.BlackSmallSquare el) where
  eto _ = helpE E.blackSmallSquare (EL.ELProxy :: EL.ELProxy el)

instance toEConsWhiteSmallSquare :: ETo el => ETo (EL.ECons PE.WhiteSmallSquare el) where
  eto _ = helpE E.whiteSmallSquare (EL.ELProxy :: EL.ELProxy el)

instance toEConsLargeOrangeDiamond :: ETo el => ETo (EL.ECons PE.LargeOrangeDiamond el) where
  eto _ = helpE E.largeOrangeDiamond (EL.ELProxy :: EL.ELProxy el)

instance toEConsLargeBlueDiamond :: ETo el => ETo (EL.ECons PE.LargeBlueDiamond el) where
  eto _ = helpE E.largeBlueDiamond (EL.ELProxy :: EL.ELProxy el)

instance toEConsSmallOrangeDiamond :: ETo el => ETo (EL.ECons PE.SmallOrangeDiamond el) where
  eto _ = helpE E.smallOrangeDiamond (EL.ELProxy :: EL.ELProxy el)

instance toEConsSmallBlueDiamond :: ETo el => ETo (EL.ECons PE.SmallBlueDiamond el) where
  eto _ = helpE E.smallBlueDiamond (EL.ELProxy :: EL.ELProxy el)

instance toEConsRedTrianglePointedUp :: ETo el => ETo (EL.ECons PE.RedTrianglePointedUp el) where
  eto _ = helpE E.redTrianglePointedUp (EL.ELProxy :: EL.ELProxy el)

instance toEConsRedTrianglePointedDown :: ETo el => ETo (EL.ECons PE.RedTrianglePointedDown el) where
  eto _ = helpE E.redTrianglePointedDown (EL.ELProxy :: EL.ELProxy el)

instance toEConsDiamondWithADot :: ETo el => ETo (EL.ECons PE.DiamondWithADot el) where
  eto _ = helpE E.diamondWithADot (EL.ELProxy :: EL.ELProxy el)

instance toEConsRadioButton :: ETo el => ETo (EL.ECons PE.RadioButton el) where
  eto _ = helpE E.radioButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsWhiteSquareButton :: ETo el => ETo (EL.ECons PE.WhiteSquareButton el) where
  eto _ = helpE E.whiteSquareButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsBlackSquareButton :: ETo el => ETo (EL.ECons PE.BlackSquareButton el) where
  eto _ = helpE E.blackSquareButton (EL.ELProxy :: EL.ELProxy el)

instance toEConsChequeredFlag :: ETo el => ETo (EL.ECons PE.ChequeredFlag el) where
  eto _ = helpE E.chequeredFlag (EL.ELProxy :: EL.ELProxy el)

instance toEConsTriangularFlag :: ETo el => ETo (EL.ECons PE.TriangularFlag el) where
  eto _ = helpE E.triangularFlag (EL.ELProxy :: EL.ELProxy el)

instance toEConsCrossedFlags :: ETo el => ETo (EL.ECons PE.CrossedFlags el) where
  eto _ = helpE E.crossedFlags (EL.ELProxy :: EL.ELProxy el)

instance toEConsBlackFlag :: ETo el => ETo (EL.ECons PE.BlackFlag el) where
  eto _ = helpE E.blackFlag (EL.ELProxy :: EL.ELProxy el)

instance toEConsWhiteFlag :: ETo el => ETo (EL.ECons PE.WhiteFlag el) where
  eto _ = helpE E.whiteFlag (EL.ELProxy :: EL.ELProxy el)

helpS :: forall el. ETo el => NoEmoji -> EL.ELProxy el -> L.List (Result E.Emoji)
helpS s = L.Cons (Left s) <<< eto

helpE :: forall el. ETo el => E.Emoji -> EL.ELProxy el -> L.List (Result E.Emoji)
helpE e = L.Cons (Right e) <<< eto
