module Emo8.Parser.EConvert
  ( class EConvert
  , econvert
  , class EMatch
  , ematch
  ) where

import Prelude
import Data.Either (Either(..))
import Data.List as L
import Data.Symbol (SProxy(..))
import Emo8.Data.Emoji as E
import Emo8.Parser.Type (NoEmoji(..), Result)
import Prim.Symbol as S

class EConvert (s :: Symbol) where
  econvert :: SProxy s -> L.List (Result E.Emoji)

instance eConvertNil :: EConvert "" where
  econvert _ = L.Nil
else instance eConvertCons ::
  ( S.Cons head tail union
  , EConvert tail
  , EMatch head
  ) =>
  EConvert union where
  econvert _ = L.Cons (ematch headP) $ econvert tailP
    where
    headP = SProxy :: SProxy head

    tailP = SProxy :: SProxy tail

class EMatch (s :: Symbol) where
  ematch :: SProxy s -> Result E.Emoji

instance ematchSpace :: EMatch " " where
  ematch _ = Left Space

instance ematchReturn :: EMatch "\n" where
  ematch _ = Left Return

instance ematchGrinningFace :: EMatch "😀" where
  ematch _ = Right E.grinningFace

instance ematchGrinningFaceWithBigEyes :: EMatch "😃" where
  ematch _ = Right E.grinningFaceWithBigEyes

instance ematchGrinningFaceWithSmilingEyes :: EMatch "😄" where
  ematch _ = Right E.grinningFaceWithSmilingEyes

instance ematchBeamingFaceWithSmilingEyes :: EMatch "😁" where
  ematch _ = Right E.beamingFaceWithSmilingEyes

instance ematchGrinningSquintingFace :: EMatch "😆" where
  ematch _ = Right E.grinningSquintingFace

instance ematchGrinningFaceWithSweat :: EMatch "😅" where
  ematch _ = Right E.grinningFaceWithSweat

instance ematchRollingOnTheFloorLaughing :: EMatch "🤣" where
  ematch _ = Right E.rollingOnTheFloorLaughing

instance ematchFaceWithTearsOfJoy :: EMatch "😂" where
  ematch _ = Right E.faceWithTearsOfJoy

instance ematchSlightlySmilingFace :: EMatch "🙂" where
  ematch _ = Right E.slightlySmilingFace

instance ematchUpsideDownFace :: EMatch "🙃" where
  ematch _ = Right E.upsideDownFace

instance ematchWinkingFace :: EMatch "😉" where
  ematch _ = Right E.winkingFace

instance ematchSmilingFaceWithSmilingEyes :: EMatch "😊" where
  ematch _ = Right E.smilingFaceWithSmilingEyes

instance ematchSmilingFaceWithHalo :: EMatch "😇" where
  ematch _ = Right E.smilingFaceWithHalo

instance ematchSmilingFaceWithHearts :: EMatch "🥰" where
  ematch _ = Right E.smilingFaceWithHearts

instance ematchSmilingFaceWithHeartEyes :: EMatch "😍" where
  ematch _ = Right E.smilingFaceWithHeartEyes

instance ematchStarStruck :: EMatch "🤩" where
  ematch _ = Right E.starStruck

instance ematchFaceBlowingAKiss :: EMatch "😘" where
  ematch _ = Right E.faceBlowingAKiss

instance ematchKissingFace :: EMatch "😗" where
  ematch _ = Right E.kissingFace

instance ematchSmilingFace :: EMatch "☺" where
  ematch _ = Right E.smilingFace

instance ematchKissingFaceWithClosedEyes :: EMatch "😚" where
  ematch _ = Right E.kissingFaceWithClosedEyes

instance ematchKissingFaceWithSmilingEyes :: EMatch "😙" where
  ematch _ = Right E.kissingFaceWithSmilingEyes

instance ematchSmilingFaceWithTear :: EMatch "🥲" where
  ematch _ = Right E.smilingFaceWithTear

instance ematchFaceSavoringFood :: EMatch "😋" where
  ematch _ = Right E.faceSavoringFood

instance ematchFaceWithTongue :: EMatch "😛" where
  ematch _ = Right E.faceWithTongue

instance ematchWinkingFaceWithTongue :: EMatch "😜" where
  ematch _ = Right E.winkingFaceWithTongue

instance ematchZanyFace :: EMatch "🤪" where
  ematch _ = Right E.zanyFace

instance ematchSquintingFaceWithTongue :: EMatch "😝" where
  ematch _ = Right E.squintingFaceWithTongue

instance ematchMoneyMouthFace :: EMatch "🤑" where
  ematch _ = Right E.moneyMouthFace

instance ematchHuggingFace :: EMatch "🤗" where
  ematch _ = Right E.huggingFace

instance ematchFaceWithHandOverMouth :: EMatch "🤭" where
  ematch _ = Right E.faceWithHandOverMouth

instance ematchShushingFace :: EMatch "🤫" where
  ematch _ = Right E.shushingFace

instance ematchThinkingFace :: EMatch "🤔" where
  ematch _ = Right E.thinkingFace

instance ematchZipperMouthFace :: EMatch "🤐" where
  ematch _ = Right E.zipperMouthFace

instance ematchFaceWithRaisedEyebrow :: EMatch "🤨" where
  ematch _ = Right E.faceWithRaisedEyebrow

instance ematchNeutralFace :: EMatch "😐" where
  ematch _ = Right E.neutralFace

instance ematchExpressionlessFace :: EMatch "😑" where
  ematch _ = Right E.expressionlessFace

instance ematchFaceWithoutMouth :: EMatch "😶" where
  ematch _ = Right E.faceWithoutMouth

instance ematchSmirkingFace :: EMatch "😏" where
  ematch _ = Right E.smirkingFace

instance ematchUnamusedFace :: EMatch "😒" where
  ematch _ = Right E.unamusedFace

instance ematchFaceWithRollingEyes :: EMatch "🙄" where
  ematch _ = Right E.faceWithRollingEyes

instance ematchGrimacingFace :: EMatch "😬" where
  ematch _ = Right E.grimacingFace

instance ematchLyingFace :: EMatch "🤥" where
  ematch _ = Right E.lyingFace

instance ematchRelievedFace :: EMatch "😌" where
  ematch _ = Right E.relievedFace

instance ematchPensiveFace :: EMatch "😔" where
  ematch _ = Right E.pensiveFace

instance ematchSleepyFace :: EMatch "😪" where
  ematch _ = Right E.sleepyFace

instance ematchDroolingFace :: EMatch "🤤" where
  ematch _ = Right E.droolingFace

instance ematchSleepingFace :: EMatch "😴" where
  ematch _ = Right E.sleepingFace

instance ematchFaceWithMedicalMask :: EMatch "😷" where
  ematch _ = Right E.faceWithMedicalMask

instance ematchFaceWithThermometer :: EMatch "🤒" where
  ematch _ = Right E.faceWithThermometer

instance ematchFaceWithHeadBandage :: EMatch "🤕" where
  ematch _ = Right E.faceWithHeadBandage

instance ematchNauseatedFace :: EMatch "🤢" where
  ematch _ = Right E.nauseatedFace

instance ematchFaceVomiting :: EMatch "🤮" where
  ematch _ = Right E.faceVomiting

instance ematchSneezingFace :: EMatch "🤧" where
  ematch _ = Right E.sneezingFace

instance ematchHotFace :: EMatch "🥵" where
  ematch _ = Right E.hotFace

instance ematchColdFace :: EMatch "🥶" where
  ematch _ = Right E.coldFace

instance ematchWoozyFace :: EMatch "🥴" where
  ematch _ = Right E.woozyFace

instance ematchDizzyFace :: EMatch "😵" where
  ematch _ = Right E.dizzyFace

instance ematchExplodingHead :: EMatch "🤯" where
  ematch _ = Right E.explodingHead

instance ematchCowboyHatFace :: EMatch "🤠" where
  ematch _ = Right E.cowboyHatFace

instance ematchPartyingFace :: EMatch "🥳" where
  ematch _ = Right E.partyingFace

instance ematchDisguisedFace :: EMatch "🥸" where
  ematch _ = Right E.disguisedFace

instance ematchSmilingFaceWithSunglasses :: EMatch "😎" where
  ematch _ = Right E.smilingFaceWithSunglasses

instance ematchNerdFace :: EMatch "🤓" where
  ematch _ = Right E.nerdFace

instance ematchFaceWithMonocle :: EMatch "🧐" where
  ematch _ = Right E.faceWithMonocle

instance ematchConfusedFace :: EMatch "😕" where
  ematch _ = Right E.confusedFace

instance ematchWorriedFace :: EMatch "😟" where
  ematch _ = Right E.worriedFace

instance ematchSlightlyFrowningFace :: EMatch "🙁" where
  ematch _ = Right E.slightlyFrowningFace

instance ematchFrowningFace :: EMatch "☹" where
  ematch _ = Right E.frowningFace

instance ematchFaceWithOpenMouth :: EMatch "😮" where
  ematch _ = Right E.faceWithOpenMouth

instance ematchHushedFace :: EMatch "😯" where
  ematch _ = Right E.hushedFace

instance ematchAstonishedFace :: EMatch "😲" where
  ematch _ = Right E.astonishedFace

instance ematchFlushedFace :: EMatch "😳" where
  ematch _ = Right E.flushedFace

instance ematchPleadingFace :: EMatch "🥺" where
  ematch _ = Right E.pleadingFace

instance ematchFrowningFaceWithOpenMouth :: EMatch "😦" where
  ematch _ = Right E.frowningFaceWithOpenMouth

instance ematchAnguishedFace :: EMatch "😧" where
  ematch _ = Right E.anguishedFace

instance ematchFearfulFace :: EMatch "😨" where
  ematch _ = Right E.fearfulFace

instance ematchAnxiousFaceWithSweat :: EMatch "😰" where
  ematch _ = Right E.anxiousFaceWithSweat

instance ematchSadButRelievedFace :: EMatch "😥" where
  ematch _ = Right E.sadButRelievedFace

instance ematchCryingFace :: EMatch "😢" where
  ematch _ = Right E.cryingFace

instance ematchLoudlyCryingFace :: EMatch "😭" where
  ematch _ = Right E.loudlyCryingFace

instance ematchFaceScreamingInFear :: EMatch "😱" where
  ematch _ = Right E.faceScreamingInFear

instance ematchConfoundedFace :: EMatch "😖" where
  ematch _ = Right E.confoundedFace

instance ematchPerseveringFace :: EMatch "😣" where
  ematch _ = Right E.perseveringFace

instance ematchDisappointedFace :: EMatch "😞" where
  ematch _ = Right E.disappointedFace

instance ematchDowncastFaceWithSweat :: EMatch "😓" where
  ematch _ = Right E.downcastFaceWithSweat

instance ematchWearyFace :: EMatch "😩" where
  ematch _ = Right E.wearyFace

instance ematchTiredFace :: EMatch "😫" where
  ematch _ = Right E.tiredFace

instance ematchYawningFace :: EMatch "🥱" where
  ematch _ = Right E.yawningFace

instance ematchFaceWithSteamFromNose :: EMatch "😤" where
  ematch _ = Right E.faceWithSteamFromNose

instance ematchPoutingFace :: EMatch "😡" where
  ematch _ = Right E.poutingFace

instance ematchAngryFace :: EMatch "😠" where
  ematch _ = Right E.angryFace

instance ematchFaceWithSymbolsOnMouth :: EMatch "🤬" where
  ematch _ = Right E.faceWithSymbolsOnMouth

instance ematchSmilingFaceWithHorns :: EMatch "😈" where
  ematch _ = Right E.smilingFaceWithHorns

instance ematchAngryFaceWithHorns :: EMatch "👿" where
  ematch _ = Right E.angryFaceWithHorns

instance ematchSkull :: EMatch "💀" where
  ematch _ = Right E.skull

instance ematchSkullAndCrossbones :: EMatch "☠" where
  ematch _ = Right E.skullAndCrossbones

instance ematchPileOfPoo :: EMatch "💩" where
  ematch _ = Right E.pileOfPoo

instance ematchClownFace :: EMatch "🤡" where
  ematch _ = Right E.clownFace

instance ematchOgre :: EMatch "👹" where
  ematch _ = Right E.ogre

instance ematchGoblin :: EMatch "👺" where
  ematch _ = Right E.goblin

instance ematchGhost :: EMatch "👻" where
  ematch _ = Right E.ghost

instance ematchAlien :: EMatch "👽" where
  ematch _ = Right E.alien

instance ematchAlienMonster :: EMatch "👾" where
  ematch _ = Right E.alienMonster

instance ematchRobot :: EMatch "🤖" where
  ematch _ = Right E.robot

instance ematchGrinningCat :: EMatch "😺" where
  ematch _ = Right E.grinningCat

instance ematchGrinningCatWithSmilingEyes :: EMatch "😸" where
  ematch _ = Right E.grinningCatWithSmilingEyes

instance ematchCatWithTearsOfJoy :: EMatch "😹" where
  ematch _ = Right E.catWithTearsOfJoy

instance ematchSmilingCatWithHeartEyes :: EMatch "😻" where
  ematch _ = Right E.smilingCatWithHeartEyes

instance ematchCatWithWrySmile :: EMatch "😼" where
  ematch _ = Right E.catWithWrySmile

instance ematchKissingCat :: EMatch "😽" where
  ematch _ = Right E.kissingCat

instance ematchWearyCat :: EMatch "🙀" where
  ematch _ = Right E.wearyCat

instance ematchCryingCat :: EMatch "😿" where
  ematch _ = Right E.cryingCat

instance ematchPoutingCat :: EMatch "😾" where
  ematch _ = Right E.poutingCat

instance ematchSeeNoEvilMonkey :: EMatch "🙈" where
  ematch _ = Right E.seeNoEvilMonkey

instance ematchHearNoEvilMonkey :: EMatch "🙉" where
  ematch _ = Right E.hearNoEvilMonkey

instance ematchSpeakNoEvilMonkey :: EMatch "🙊" where
  ematch _ = Right E.speakNoEvilMonkey

instance ematchKissMark :: EMatch "💋" where
  ematch _ = Right E.kissMark

instance ematchLoveLetter :: EMatch "💌" where
  ematch _ = Right E.loveLetter

instance ematchHeartWithArrow :: EMatch "💘" where
  ematch _ = Right E.heartWithArrow

instance ematchHeartWithRibbon :: EMatch "💝" where
  ematch _ = Right E.heartWithRibbon

instance ematchSparklingHeart :: EMatch "💖" where
  ematch _ = Right E.sparklingHeart

instance ematchGrowingHeart :: EMatch "💗" where
  ematch _ = Right E.growingHeart

instance ematchBeatingHeart :: EMatch "💓" where
  ematch _ = Right E.beatingHeart

instance ematchRevolvingHearts :: EMatch "💞" where
  ematch _ = Right E.revolvingHearts

instance ematchTwoHearts :: EMatch "💕" where
  ematch _ = Right E.twoHearts

instance ematchHeartDecoration :: EMatch "💟" where
  ematch _ = Right E.heartDecoration

instance ematchHeartExclamation :: EMatch "❣" where
  ematch _ = Right E.heartExclamation

instance ematchBrokenHeart :: EMatch "💔" where
  ematch _ = Right E.brokenHeart

instance ematchRedHeart :: EMatch "❤" where
  ematch _ = Right E.redHeart

instance ematchOrangeHeart :: EMatch "🧡" where
  ematch _ = Right E.orangeHeart

instance ematchYellowHeart :: EMatch "💛" where
  ematch _ = Right E.yellowHeart

instance ematchGreenHeart :: EMatch "💚" where
  ematch _ = Right E.greenHeart

instance ematchBlueHeart :: EMatch "💙" where
  ematch _ = Right E.blueHeart

instance ematchPurpleHeart :: EMatch "💜" where
  ematch _ = Right E.purpleHeart

instance ematchBrownHeart :: EMatch "🤎" where
  ematch _ = Right E.brownHeart

instance ematchBlackHeart :: EMatch "🖤" where
  ematch _ = Right E.blackHeart

instance ematchWhiteHeart :: EMatch "🤍" where
  ematch _ = Right E.whiteHeart

instance ematchHundredPoints :: EMatch "💯" where
  ematch _ = Right E.hundredPoints

instance ematchAngerSymbol :: EMatch "💢" where
  ematch _ = Right E.angerSymbol

instance ematchCollision :: EMatch "💥" where
  ematch _ = Right E.collision

instance ematchDizzy :: EMatch "💫" where
  ematch _ = Right E.dizzy

instance ematchSweatDroplets :: EMatch "💦" where
  ematch _ = Right E.sweatDroplets

instance ematchDashingAway :: EMatch "💨" where
  ematch _ = Right E.dashingAway

instance ematchHole :: EMatch "🕳" where
  ematch _ = Right E.hole

instance ematchBomb :: EMatch "💣" where
  ematch _ = Right E.bomb

instance ematchSpeechBalloon :: EMatch "💬" where
  ematch _ = Right E.speechBalloon

instance ematchLeftSpeechBubble :: EMatch "🗨" where
  ematch _ = Right E.leftSpeechBubble

instance ematchRightAngerBubble :: EMatch "🗯" where
  ematch _ = Right E.rightAngerBubble

instance ematchThoughtBalloon :: EMatch "💭" where
  ematch _ = Right E.thoughtBalloon

instance ematchZzz :: EMatch "💤" where
  ematch _ = Right E.zzz

instance ematchWavingHand :: EMatch "👋" where
  ematch _ = Right E.wavingHand

instance ematchRaisedBackOfHand :: EMatch "🤚" where
  ematch _ = Right E.raisedBackOfHand

instance ematchHandWithFingersSplayed :: EMatch "🖐" where
  ematch _ = Right E.handWithFingersSplayed

instance ematchRaisedHand :: EMatch "✋" where
  ematch _ = Right E.raisedHand

instance ematchVulcanSalute :: EMatch "🖖" where
  ematch _ = Right E.vulcanSalute

instance ematchOkHand :: EMatch "👌" where
  ematch _ = Right E.okHand

instance ematchPinchedFingers :: EMatch "🤌" where
  ematch _ = Right E.pinchedFingers

instance ematchPinchingHand :: EMatch "🤏" where
  ematch _ = Right E.pinchingHand

instance ematchVictoryHand :: EMatch "✌" where
  ematch _ = Right E.victoryHand

instance ematchCrossedFingers :: EMatch "🤞" where
  ematch _ = Right E.crossedFingers

instance ematchLoveYouGesture :: EMatch "🤟" where
  ematch _ = Right E.loveYouGesture

instance ematchSignOfTheHorns :: EMatch "🤘" where
  ematch _ = Right E.signOfTheHorns

instance ematchCallMeHand :: EMatch "🤙" where
  ematch _ = Right E.callMeHand

instance ematchBackhandIndexPointingLeft :: EMatch "👈" where
  ematch _ = Right E.backhandIndexPointingLeft

instance ematchBackhandIndexPointingRight :: EMatch "👉" where
  ematch _ = Right E.backhandIndexPointingRight

instance ematchBackhandIndexPointingUp :: EMatch "👆" where
  ematch _ = Right E.backhandIndexPointingUp

instance ematchMiddleFinger :: EMatch "🖕" where
  ematch _ = Right E.middleFinger

instance ematchBackhandIndexPointingDown :: EMatch "👇" where
  ematch _ = Right E.backhandIndexPointingDown

instance ematchIndexPointingUp :: EMatch "☝" where
  ematch _ = Right E.indexPointingUp

instance ematchThumbsUp :: EMatch "👍" where
  ematch _ = Right E.thumbsUp

instance ematchThumbsDown :: EMatch "👎" where
  ematch _ = Right E.thumbsDown

instance ematchRaisedFist :: EMatch "✊" where
  ematch _ = Right E.raisedFist

instance ematchOncomingFist :: EMatch "👊" where
  ematch _ = Right E.oncomingFist

instance ematchLeftFacingFist :: EMatch "🤛" where
  ematch _ = Right E.leftFacingFist

instance ematchRightFacingFist :: EMatch "🤜" where
  ematch _ = Right E.rightFacingFist

instance ematchClappingHands :: EMatch "👏" where
  ematch _ = Right E.clappingHands

instance ematchRaisingHands :: EMatch "🙌" where
  ematch _ = Right E.raisingHands

instance ematchOpenHands :: EMatch "👐" where
  ematch _ = Right E.openHands

instance ematchPalmsUpTogether :: EMatch "🤲" where
  ematch _ = Right E.palmsUpTogether

instance ematchHandshake :: EMatch "🤝" where
  ematch _ = Right E.handshake

instance ematchFoldedHands :: EMatch "🙏" where
  ematch _ = Right E.foldedHands

instance ematchWritingHand :: EMatch "✍" where
  ematch _ = Right E.writingHand

instance ematchNailPolish :: EMatch "💅" where
  ematch _ = Right E.nailPolish

instance ematchSelfie :: EMatch "🤳" where
  ematch _ = Right E.selfie

instance ematchFlexedBiceps :: EMatch "💪" where
  ematch _ = Right E.flexedBiceps

instance ematchMechanicalArm :: EMatch "🦾" where
  ematch _ = Right E.mechanicalArm

instance ematchMechanicalLeg :: EMatch "🦿" where
  ematch _ = Right E.mechanicalLeg

instance ematchLeg :: EMatch "🦵" where
  ematch _ = Right E.leg

instance ematchFoot :: EMatch "🦶" where
  ematch _ = Right E.foot

instance ematchEar :: EMatch "👂" where
  ematch _ = Right E.ear

instance ematchEarWithHearingAid :: EMatch "🦻" where
  ematch _ = Right E.earWithHearingAid

instance ematchNose :: EMatch "👃" where
  ematch _ = Right E.nose

instance ematchBrain :: EMatch "🧠" where
  ematch _ = Right E.brain

instance ematchAnatomicalHeart :: EMatch "🫀" where
  ematch _ = Right E.anatomicalHeart

instance ematchLungs :: EMatch "🫁" where
  ematch _ = Right E.lungs

instance ematchTooth :: EMatch "🦷" where
  ematch _ = Right E.tooth

instance ematchBone :: EMatch "🦴" where
  ematch _ = Right E.bone

instance ematchEyes :: EMatch "👀" where
  ematch _ = Right E.eyes

instance ematchEye :: EMatch "👁" where
  ematch _ = Right E.eye

instance ematchTongue :: EMatch "👅" where
  ematch _ = Right E.tongue

instance ematchMouth :: EMatch "👄" where
  ematch _ = Right E.mouth

instance ematchBaby :: EMatch "👶" where
  ematch _ = Right E.baby

instance ematchChild :: EMatch "🧒" where
  ematch _ = Right E.child

instance ematchBoy :: EMatch "👦" where
  ematch _ = Right E.boy

instance ematchGirl :: EMatch "👧" where
  ematch _ = Right E.girl

instance ematchPerson :: EMatch "🧑" where
  ematch _ = Right E.person

instance ematchPersonBlondHair :: EMatch "👱" where
  ematch _ = Right E.personBlondHair

instance ematchMan :: EMatch "👨" where
  ematch _ = Right E.man

instance ematchManBeard :: EMatch "🧔" where
  ematch _ = Right E.manBeard

instance ematchWoman :: EMatch "👩" where
  ematch _ = Right E.woman

instance ematchOlderPerson :: EMatch "🧓" where
  ematch _ = Right E.olderPerson

instance ematchOldMan :: EMatch "👴" where
  ematch _ = Right E.oldMan

instance ematchOldWoman :: EMatch "👵" where
  ematch _ = Right E.oldWoman

instance ematchPersonFrowning :: EMatch "🙍" where
  ematch _ = Right E.personFrowning

instance ematchPersonPouting :: EMatch "🙎" where
  ematch _ = Right E.personPouting

instance ematchPersonGesturingNo :: EMatch "🙅" where
  ematch _ = Right E.personGesturingNo

instance ematchPersonGesturingOk :: EMatch "🙆" where
  ematch _ = Right E.personGesturingOk

instance ematchPersonTippingHand :: EMatch "💁" where
  ematch _ = Right E.personTippingHand

instance ematchPersonRaisingHand :: EMatch "🙋" where
  ematch _ = Right E.personRaisingHand

instance ematchDeafPerson :: EMatch "🧏" where
  ematch _ = Right E.deafPerson

instance ematchPersonBowing :: EMatch "🙇" where
  ematch _ = Right E.personBowing

instance ematchPersonFacepalming :: EMatch "🤦" where
  ematch _ = Right E.personFacepalming

instance ematchPersonShrugging :: EMatch "🤷" where
  ematch _ = Right E.personShrugging

instance ematchPoliceOfficer :: EMatch "👮" where
  ematch _ = Right E.policeOfficer

instance ematchDetective :: EMatch "🕵" where
  ematch _ = Right E.detective

instance ematchGuard :: EMatch "💂" where
  ematch _ = Right E.guard

instance ematchNinja :: EMatch "🥷" where
  ematch _ = Right E.ninja

instance ematchConstructionWorker :: EMatch "👷" where
  ematch _ = Right E.constructionWorker

instance ematchPrince :: EMatch "🤴" where
  ematch _ = Right E.prince

instance ematchPrincess :: EMatch "👸" where
  ematch _ = Right E.princess

instance ematchPersonWearingTurban :: EMatch "👳" where
  ematch _ = Right E.personWearingTurban

instance ematchPersonWithSkullcap :: EMatch "👲" where
  ematch _ = Right E.personWithSkullcap

instance ematchWomanWithHeadscarf :: EMatch "🧕" where
  ematch _ = Right E.womanWithHeadscarf

instance ematchPersonInTuxedo :: EMatch "🤵" where
  ematch _ = Right E.personInTuxedo

instance ematchPersonWithVeil :: EMatch "👰" where
  ematch _ = Right E.personWithVeil

instance ematchPregnantWoman :: EMatch "🤰" where
  ematch _ = Right E.pregnantWoman

instance ematchBreastFeeding :: EMatch "🤱" where
  ematch _ = Right E.breastFeeding

instance ematchBabyAngel :: EMatch "👼" where
  ematch _ = Right E.babyAngel

instance ematchSantaClaus :: EMatch "🎅" where
  ematch _ = Right E.santaClaus

instance ematchMrsClaus :: EMatch "🤶" where
  ematch _ = Right E.mrsClaus

instance ematchSuperhero :: EMatch "🦸" where
  ematch _ = Right E.superhero

instance ematchSupervillain :: EMatch "🦹" where
  ematch _ = Right E.supervillain

instance ematchMage :: EMatch "🧙" where
  ematch _ = Right E.mage

instance ematchFairy :: EMatch "🧚" where
  ematch _ = Right E.fairy

instance ematchVampire :: EMatch "🧛" where
  ematch _ = Right E.vampire

instance ematchMerperson :: EMatch "🧜" where
  ematch _ = Right E.merperson

instance ematchElf :: EMatch "🧝" where
  ematch _ = Right E.elf

instance ematchGenie :: EMatch "🧞" where
  ematch _ = Right E.genie

instance ematchZombie :: EMatch "🧟" where
  ematch _ = Right E.zombie

instance ematchPersonGettingMassage :: EMatch "💆" where
  ematch _ = Right E.personGettingMassage

instance ematchPersonGettingHaircut :: EMatch "💇" where
  ematch _ = Right E.personGettingHaircut

instance ematchPersonWalking :: EMatch "🚶" where
  ematch _ = Right E.personWalking

instance ematchPersonStanding :: EMatch "🧍" where
  ematch _ = Right E.personStanding

instance ematchPersonKneeling :: EMatch "🧎" where
  ematch _ = Right E.personKneeling

instance ematchPersonRunning :: EMatch "🏃" where
  ematch _ = Right E.personRunning

instance ematchWomanDancing :: EMatch "💃" where
  ematch _ = Right E.womanDancing

instance ematchManDancing :: EMatch "🕺" where
  ematch _ = Right E.manDancing

instance ematchPersonInSuitLevitating :: EMatch "🕴" where
  ematch _ = Right E.personInSuitLevitating

instance ematchPeopleWithBunnyEars :: EMatch "👯" where
  ematch _ = Right E.peopleWithBunnyEars

instance ematchPersonInSteamyRoom :: EMatch "🧖" where
  ematch _ = Right E.personInSteamyRoom

instance ematchPersonClimbing :: EMatch "🧗" where
  ematch _ = Right E.personClimbing

instance ematchPersonFencing :: EMatch "🤺" where
  ematch _ = Right E.personFencing

instance ematchHorseRacing :: EMatch "🏇" where
  ematch _ = Right E.horseRacing

instance ematchSkier :: EMatch "⛷" where
  ematch _ = Right E.skier

instance ematchSnowboarder :: EMatch "🏂" where
  ematch _ = Right E.snowboarder

instance ematchPersonGolfing :: EMatch "🏌" where
  ematch _ = Right E.personGolfing

instance ematchPersonSurfing :: EMatch "🏄" where
  ematch _ = Right E.personSurfing

instance ematchPersonRowingBoat :: EMatch "🚣" where
  ematch _ = Right E.personRowingBoat

instance ematchPersonSwimming :: EMatch "🏊" where
  ematch _ = Right E.personSwimming

instance ematchPersonBouncingBall :: EMatch "⛹" where
  ematch _ = Right E.personBouncingBall

instance ematchPersonLiftingWeights :: EMatch "🏋" where
  ematch _ = Right E.personLiftingWeights

instance ematchPersonBiking :: EMatch "🚴" where
  ematch _ = Right E.personBiking

instance ematchPersonMountainBiking :: EMatch "🚵" where
  ematch _ = Right E.personMountainBiking

instance ematchPersonCartwheeling :: EMatch "🤸" where
  ematch _ = Right E.personCartwheeling

instance ematchPeopleWrestling :: EMatch "🤼" where
  ematch _ = Right E.peopleWrestling

instance ematchPersonPlayingWaterPolo :: EMatch "🤽" where
  ematch _ = Right E.personPlayingWaterPolo

instance ematchPersonPlayingHandball :: EMatch "🤾" where
  ematch _ = Right E.personPlayingHandball

instance ematchPersonJuggling :: EMatch "🤹" where
  ematch _ = Right E.personJuggling

instance ematchPersonInLotusPosition :: EMatch "🧘" where
  ematch _ = Right E.personInLotusPosition

instance ematchPersonTakingBath :: EMatch "🛀" where
  ematch _ = Right E.personTakingBath

instance ematchPersonInBed :: EMatch "🛌" where
  ematch _ = Right E.personInBed

instance ematchWomenHoldingHands :: EMatch "👭" where
  ematch _ = Right E.womenHoldingHands

instance ematchWomanAndManHoldingHands :: EMatch "👫" where
  ematch _ = Right E.womanAndManHoldingHands

instance ematchMenHoldingHands :: EMatch "👬" where
  ematch _ = Right E.menHoldingHands

instance ematchKiss :: EMatch "💏" where
  ematch _ = Right E.kiss

instance ematchCoupleWithHeart :: EMatch "💑" where
  ematch _ = Right E.coupleWithHeart

instance ematchFamily :: EMatch "👪" where
  ematch _ = Right E.family

instance ematchSpeakingHead :: EMatch "🗣" where
  ematch _ = Right E.speakingHead

instance ematchBustInSilhouette :: EMatch "👤" where
  ematch _ = Right E.bustInSilhouette

instance ematchBustsInSilhouette :: EMatch "👥" where
  ematch _ = Right E.bustsInSilhouette

instance ematchPeopleHugging :: EMatch "🫂" where
  ematch _ = Right E.peopleHugging

instance ematchFootprints :: EMatch "👣" where
  ematch _ = Right E.footprints

instance ematchLightSkinTone :: EMatch "🏻" where
  ematch _ = Right E.lightSkinTone

instance ematchMediumLightSkinTone :: EMatch "🏼" where
  ematch _ = Right E.mediumLightSkinTone

instance ematchMediumSkinTone :: EMatch "🏽" where
  ematch _ = Right E.mediumSkinTone

instance ematchMediumDarkSkinTone :: EMatch "🏾" where
  ematch _ = Right E.mediumDarkSkinTone

instance ematchDarkSkinTone :: EMatch "🏿" where
  ematch _ = Right E.darkSkinTone

instance ematchRedHair :: EMatch "🦰" where
  ematch _ = Right E.redHair

instance ematchCurlyHair :: EMatch "🦱" where
  ematch _ = Right E.curlyHair

instance ematchWhiteHair :: EMatch "🦳" where
  ematch _ = Right E.whiteHair

instance ematchBald :: EMatch "🦲" where
  ematch _ = Right E.bald

instance ematchMonkeyFace :: EMatch "🐵" where
  ematch _ = Right E.monkeyFace

instance ematchMonkey :: EMatch "🐒" where
  ematch _ = Right E.monkey

instance ematchGorilla :: EMatch "🦍" where
  ematch _ = Right E.gorilla

instance ematchOrangutan :: EMatch "🦧" where
  ematch _ = Right E.orangutan

instance ematchDogFace :: EMatch "🐶" where
  ematch _ = Right E.dogFace

instance ematchDog :: EMatch "🐕" where
  ematch _ = Right E.dog

instance ematchGuideDog :: EMatch "🦮" where
  ematch _ = Right E.guideDog

instance ematchPoodle :: EMatch "🐩" where
  ematch _ = Right E.poodle

instance ematchWolf :: EMatch "🐺" where
  ematch _ = Right E.wolf

instance ematchFox :: EMatch "🦊" where
  ematch _ = Right E.fox

instance ematchRaccoon :: EMatch "🦝" where
  ematch _ = Right E.raccoon

instance ematchCatFace :: EMatch "🐱" where
  ematch _ = Right E.catFace

instance ematchCat :: EMatch "🐈" where
  ematch _ = Right E.cat

instance ematchLion :: EMatch "🦁" where
  ematch _ = Right E.lion

instance ematchTigerFace :: EMatch "🐯" where
  ematch _ = Right E.tigerFace

instance ematchTiger :: EMatch "🐅" where
  ematch _ = Right E.tiger

instance ematchLeopard :: EMatch "🐆" where
  ematch _ = Right E.leopard

instance ematchHorseFace :: EMatch "🐴" where
  ematch _ = Right E.horseFace

instance ematchHorse :: EMatch "🐎" where
  ematch _ = Right E.horse

instance ematchUnicorn :: EMatch "🦄" where
  ematch _ = Right E.unicorn

instance ematchZebra :: EMatch "🦓" where
  ematch _ = Right E.zebra

instance ematchDeer :: EMatch "🦌" where
  ematch _ = Right E.deer

instance ematchBison :: EMatch "🦬" where
  ematch _ = Right E.bison

instance ematchCowFace :: EMatch "🐮" where
  ematch _ = Right E.cowFace

instance ematchOx :: EMatch "🐂" where
  ematch _ = Right E.ox

instance ematchWaterBuffalo :: EMatch "🐃" where
  ematch _ = Right E.waterBuffalo

instance ematchCow :: EMatch "🐄" where
  ematch _ = Right E.cow

instance ematchPigFace :: EMatch "🐷" where
  ematch _ = Right E.pigFace

instance ematchPig :: EMatch "🐖" where
  ematch _ = Right E.pig

instance ematchBoar :: EMatch "🐗" where
  ematch _ = Right E.boar

instance ematchPigNose :: EMatch "🐽" where
  ematch _ = Right E.pigNose

instance ematchRam :: EMatch "🐏" where
  ematch _ = Right E.ram

instance ematchEwe :: EMatch "🐑" where
  ematch _ = Right E.ewe

instance ematchGoat :: EMatch "🐐" where
  ematch _ = Right E.goat

instance ematchCamel :: EMatch "🐪" where
  ematch _ = Right E.camel

instance ematchTwoHumpCamel :: EMatch "🐫" where
  ematch _ = Right E.twoHumpCamel

instance ematchLlama :: EMatch "🦙" where
  ematch _ = Right E.llama

instance ematchGiraffe :: EMatch "🦒" where
  ematch _ = Right E.giraffe

instance ematchElephant :: EMatch "🐘" where
  ematch _ = Right E.elephant

instance ematchMammoth :: EMatch "🦣" where
  ematch _ = Right E.mammoth

instance ematchRhinoceros :: EMatch "🦏" where
  ematch _ = Right E.rhinoceros

instance ematchHippopotamus :: EMatch "🦛" where
  ematch _ = Right E.hippopotamus

instance ematchMouseFace :: EMatch "🐭" where
  ematch _ = Right E.mouseFace

instance ematchMouse :: EMatch "🐁" where
  ematch _ = Right E.mouse

instance ematchRat :: EMatch "🐀" where
  ematch _ = Right E.rat

instance ematchHamster :: EMatch "🐹" where
  ematch _ = Right E.hamster

instance ematchRabbitFace :: EMatch "🐰" where
  ematch _ = Right E.rabbitFace

instance ematchRabbit :: EMatch "🐇" where
  ematch _ = Right E.rabbit

instance ematchChipmunk :: EMatch "🐿" where
  ematch _ = Right E.chipmunk

instance ematchBeaver :: EMatch "🦫" where
  ematch _ = Right E.beaver

instance ematchHedgehog :: EMatch "🦔" where
  ematch _ = Right E.hedgehog

instance ematchBat :: EMatch "🦇" where
  ematch _ = Right E.bat

instance ematchBear :: EMatch "🐻" where
  ematch _ = Right E.bear

instance ematchKoala :: EMatch "🐨" where
  ematch _ = Right E.koala

instance ematchPanda :: EMatch "🐼" where
  ematch _ = Right E.panda

instance ematchSloth :: EMatch "🦥" where
  ematch _ = Right E.sloth

instance ematchOtter :: EMatch "🦦" where
  ematch _ = Right E.otter

instance ematchSkunk :: EMatch "🦨" where
  ematch _ = Right E.skunk

instance ematchKangaroo :: EMatch "🦘" where
  ematch _ = Right E.kangaroo

instance ematchBadger :: EMatch "🦡" where
  ematch _ = Right E.badger

instance ematchPawPrints :: EMatch "🐾" where
  ematch _ = Right E.pawPrints

instance ematchTurkey :: EMatch "🦃" where
  ematch _ = Right E.turkey

instance ematchChicken :: EMatch "🐔" where
  ematch _ = Right E.chicken

instance ematchRooster :: EMatch "🐓" where
  ematch _ = Right E.rooster

instance ematchHatchingChick :: EMatch "🐣" where
  ematch _ = Right E.hatchingChick

instance ematchBabyChick :: EMatch "🐤" where
  ematch _ = Right E.babyChick

instance ematchFrontFacingBabyChick :: EMatch "🐥" where
  ematch _ = Right E.frontFacingBabyChick

instance ematchBird :: EMatch "🐦" where
  ematch _ = Right E.bird

instance ematchPenguin :: EMatch "🐧" where
  ematch _ = Right E.penguin

instance ematchDove :: EMatch "🕊" where
  ematch _ = Right E.dove

instance ematchEagle :: EMatch "🦅" where
  ematch _ = Right E.eagle

instance ematchDuck :: EMatch "🦆" where
  ematch _ = Right E.duck

instance ematchSwan :: EMatch "🦢" where
  ematch _ = Right E.swan

instance ematchOwl :: EMatch "🦉" where
  ematch _ = Right E.owl

instance ematchDodo :: EMatch "🦤" where
  ematch _ = Right E.dodo

instance ematchFeather :: EMatch "🪶" where
  ematch _ = Right E.feather

instance ematchFlamingo :: EMatch "🦩" where
  ematch _ = Right E.flamingo

instance ematchPeacock :: EMatch "🦚" where
  ematch _ = Right E.peacock

instance ematchParrot :: EMatch "🦜" where
  ematch _ = Right E.parrot

instance ematchFrog :: EMatch "🐸" where
  ematch _ = Right E.frog

instance ematchCrocodile :: EMatch "🐊" where
  ematch _ = Right E.crocodile

instance ematchTurtle :: EMatch "🐢" where
  ematch _ = Right E.turtle

instance ematchLizard :: EMatch "🦎" where
  ematch _ = Right E.lizard

instance ematchSnake :: EMatch "🐍" where
  ematch _ = Right E.snake

instance ematchDragonFace :: EMatch "🐲" where
  ematch _ = Right E.dragonFace

instance ematchDragon :: EMatch "🐉" where
  ematch _ = Right E.dragon

instance ematchSauropod :: EMatch "🦕" where
  ematch _ = Right E.sauropod

instance ematchTRex :: EMatch "🦖" where
  ematch _ = Right E.tRex

instance ematchSpoutingWhale :: EMatch "🐳" where
  ematch _ = Right E.spoutingWhale

instance ematchWhale :: EMatch "🐋" where
  ematch _ = Right E.whale

instance ematchDolphin :: EMatch "🐬" where
  ematch _ = Right E.dolphin

instance ematchSeal :: EMatch "🦭" where
  ematch _ = Right E.seal

instance ematchFish :: EMatch "🐟" where
  ematch _ = Right E.fish

instance ematchTropicalFish :: EMatch "🐠" where
  ematch _ = Right E.tropicalFish

instance ematchBlowfish :: EMatch "🐡" where
  ematch _ = Right E.blowfish

instance ematchShark :: EMatch "🦈" where
  ematch _ = Right E.shark

instance ematchOctopus :: EMatch "🐙" where
  ematch _ = Right E.octopus

instance ematchSpiralShell :: EMatch "🐚" where
  ematch _ = Right E.spiralShell

instance ematchSnail :: EMatch "🐌" where
  ematch _ = Right E.snail

instance ematchButterfly :: EMatch "🦋" where
  ematch _ = Right E.butterfly

instance ematchBug :: EMatch "🐛" where
  ematch _ = Right E.bug

instance ematchAnt :: EMatch "🐜" where
  ematch _ = Right E.ant

instance ematchHoneybee :: EMatch "🐝" where
  ematch _ = Right E.honeybee

instance ematchBeetle :: EMatch "🪲" where
  ematch _ = Right E.beetle

instance ematchLadyBeetle :: EMatch "🐞" where
  ematch _ = Right E.ladyBeetle

instance ematchCricket :: EMatch "🦗" where
  ematch _ = Right E.cricket

instance ematchCockroach :: EMatch "🪳" where
  ematch _ = Right E.cockroach

instance ematchSpider :: EMatch "🕷" where
  ematch _ = Right E.spider

instance ematchSpiderWeb :: EMatch "🕸" where
  ematch _ = Right E.spiderWeb

instance ematchScorpion :: EMatch "🦂" where
  ematch _ = Right E.scorpion

instance ematchMosquito :: EMatch "🦟" where
  ematch _ = Right E.mosquito

instance ematchFly :: EMatch "🪰" where
  ematch _ = Right E.fly

instance ematchWorm :: EMatch "🪱" where
  ematch _ = Right E.worm

instance ematchMicrobe :: EMatch "🦠" where
  ematch _ = Right E.microbe

instance ematchBouquet :: EMatch "💐" where
  ematch _ = Right E.bouquet

instance ematchCherryBlossom :: EMatch "🌸" where
  ematch _ = Right E.cherryBlossom

instance ematchWhiteFlower :: EMatch "💮" where
  ematch _ = Right E.whiteFlower

instance ematchRosette :: EMatch "🏵" where
  ematch _ = Right E.rosette

instance ematchRose :: EMatch "🌹" where
  ematch _ = Right E.rose

instance ematchWiltedFlower :: EMatch "🥀" where
  ematch _ = Right E.wiltedFlower

instance ematchHibiscus :: EMatch "🌺" where
  ematch _ = Right E.hibiscus

instance ematchSunflower :: EMatch "🌻" where
  ematch _ = Right E.sunflower

instance ematchBlossom :: EMatch "🌼" where
  ematch _ = Right E.blossom

instance ematchTulip :: EMatch "🌷" where
  ematch _ = Right E.tulip

instance ematchSeedling :: EMatch "🌱" where
  ematch _ = Right E.seedling

instance ematchPottedPlant :: EMatch "🪴" where
  ematch _ = Right E.pottedPlant

instance ematchEvergreenTree :: EMatch "🌲" where
  ematch _ = Right E.evergreenTree

instance ematchDeciduousTree :: EMatch "🌳" where
  ematch _ = Right E.deciduousTree

instance ematchPalmTree :: EMatch "🌴" where
  ematch _ = Right E.palmTree

instance ematchCactus :: EMatch "🌵" where
  ematch _ = Right E.cactus

instance ematchSheafOfRice :: EMatch "🌾" where
  ematch _ = Right E.sheafOfRice

instance ematchHerb :: EMatch "🌿" where
  ematch _ = Right E.herb

instance ematchShamrock :: EMatch "☘" where
  ematch _ = Right E.shamrock

instance ematchFourLeafClover :: EMatch "🍀" where
  ematch _ = Right E.fourLeafClover

instance ematchMapleLeaf :: EMatch "🍁" where
  ematch _ = Right E.mapleLeaf

instance ematchFallenLeaf :: EMatch "🍂" where
  ematch _ = Right E.fallenLeaf

instance ematchLeafFlutteringInWind :: EMatch "🍃" where
  ematch _ = Right E.leafFlutteringInWind

instance ematchGrapes :: EMatch "🍇" where
  ematch _ = Right E.grapes

instance ematchMelon :: EMatch "🍈" where
  ematch _ = Right E.melon

instance ematchWatermelon :: EMatch "🍉" where
  ematch _ = Right E.watermelon

instance ematchTangerine :: EMatch "🍊" where
  ematch _ = Right E.tangerine

instance ematchLemon :: EMatch "🍋" where
  ematch _ = Right E.lemon

instance ematchBanana :: EMatch "🍌" where
  ematch _ = Right E.banana

instance ematchPineapple :: EMatch "🍍" where
  ematch _ = Right E.pineapple

instance ematchMango :: EMatch "🥭" where
  ematch _ = Right E.mango

instance ematchRedApple :: EMatch "🍎" where
  ematch _ = Right E.redApple

instance ematchGreenApple :: EMatch "🍏" where
  ematch _ = Right E.greenApple

instance ematchPear :: EMatch "🍐" where
  ematch _ = Right E.pear

instance ematchPeach :: EMatch "🍑" where
  ematch _ = Right E.peach

instance ematchCherries :: EMatch "🍒" where
  ematch _ = Right E.cherries

instance ematchStrawberry :: EMatch "🍓" where
  ematch _ = Right E.strawberry

instance ematchBlueberries :: EMatch "🫐" where
  ematch _ = Right E.blueberries

instance ematchKiwiFruit :: EMatch "🥝" where
  ematch _ = Right E.kiwiFruit

instance ematchTomato :: EMatch "🍅" where
  ematch _ = Right E.tomato

instance ematchOlive :: EMatch "🫒" where
  ematch _ = Right E.olive

instance ematchCoconut :: EMatch "🥥" where
  ematch _ = Right E.coconut

instance ematchAvocado :: EMatch "🥑" where
  ematch _ = Right E.avocado

instance ematchEggplant :: EMatch "🍆" where
  ematch _ = Right E.eggplant

instance ematchPotato :: EMatch "🥔" where
  ematch _ = Right E.potato

instance ematchCarrot :: EMatch "🥕" where
  ematch _ = Right E.carrot

instance ematchEarOfCorn :: EMatch "🌽" where
  ematch _ = Right E.earOfCorn

instance ematchHotPepper :: EMatch "🌶" where
  ematch _ = Right E.hotPepper

instance ematchBellPepper :: EMatch "🫑" where
  ematch _ = Right E.bellPepper

instance ematchCucumber :: EMatch "🥒" where
  ematch _ = Right E.cucumber

instance ematchLeafyGreen :: EMatch "🥬" where
  ematch _ = Right E.leafyGreen

instance ematchBroccoli :: EMatch "🥦" where
  ematch _ = Right E.broccoli

instance ematchGarlic :: EMatch "🧄" where
  ematch _ = Right E.garlic

instance ematchOnion :: EMatch "🧅" where
  ematch _ = Right E.onion

instance ematchMushroom :: EMatch "🍄" where
  ematch _ = Right E.mushroom

instance ematchPeanuts :: EMatch "🥜" where
  ematch _ = Right E.peanuts

instance ematchChestnut :: EMatch "🌰" where
  ematch _ = Right E.chestnut

instance ematchBread :: EMatch "🍞" where
  ematch _ = Right E.bread

instance ematchCroissant :: EMatch "🥐" where
  ematch _ = Right E.croissant

instance ematchBaguetteBread :: EMatch "🥖" where
  ematch _ = Right E.baguetteBread

instance ematchFlatbread :: EMatch "🫓" where
  ematch _ = Right E.flatbread

instance ematchPretzel :: EMatch "🥨" where
  ematch _ = Right E.pretzel

instance ematchBagel :: EMatch "🥯" where
  ematch _ = Right E.bagel

instance ematchPancakes :: EMatch "🥞" where
  ematch _ = Right E.pancakes

instance ematchWaffle :: EMatch "🧇" where
  ematch _ = Right E.waffle

instance ematchCheeseWedge :: EMatch "🧀" where
  ematch _ = Right E.cheeseWedge

instance ematchMeatOnBone :: EMatch "🍖" where
  ematch _ = Right E.meatOnBone

instance ematchPoultryLeg :: EMatch "🍗" where
  ematch _ = Right E.poultryLeg

instance ematchCutOfMeat :: EMatch "🥩" where
  ematch _ = Right E.cutOfMeat

instance ematchBacon :: EMatch "🥓" where
  ematch _ = Right E.bacon

instance ematchHamburger :: EMatch "🍔" where
  ematch _ = Right E.hamburger

instance ematchFrenchFries :: EMatch "🍟" where
  ematch _ = Right E.frenchFries

instance ematchPizza :: EMatch "🍕" where
  ematch _ = Right E.pizza

instance ematchHotDog :: EMatch "🌭" where
  ematch _ = Right E.hotDog

instance ematchSandwich :: EMatch "🥪" where
  ematch _ = Right E.sandwich

instance ematchTaco :: EMatch "🌮" where
  ematch _ = Right E.taco

instance ematchBurrito :: EMatch "🌯" where
  ematch _ = Right E.burrito

instance ematchTamale :: EMatch "🫔" where
  ematch _ = Right E.tamale

instance ematchStuffedFlatbread :: EMatch "🥙" where
  ematch _ = Right E.stuffedFlatbread

instance ematchFalafel :: EMatch "🧆" where
  ematch _ = Right E.falafel

instance ematchEgg :: EMatch "🥚" where
  ematch _ = Right E.egg

instance ematchCooking :: EMatch "🍳" where
  ematch _ = Right E.cooking

instance ematchShallowPanOfFood :: EMatch "🥘" where
  ematch _ = Right E.shallowPanOfFood

instance ematchPotOfFood :: EMatch "🍲" where
  ematch _ = Right E.potOfFood

instance ematchFondue :: EMatch "🫕" where
  ematch _ = Right E.fondue

instance ematchBowlWithSpoon :: EMatch "🥣" where
  ematch _ = Right E.bowlWithSpoon

instance ematchGreenSalad :: EMatch "🥗" where
  ematch _ = Right E.greenSalad

instance ematchPopcorn :: EMatch "🍿" where
  ematch _ = Right E.popcorn

instance ematchButter :: EMatch "🧈" where
  ematch _ = Right E.butter

instance ematchSalt :: EMatch "🧂" where
  ematch _ = Right E.salt

instance ematchCannedFood :: EMatch "🥫" where
  ematch _ = Right E.cannedFood

instance ematchBentoBox :: EMatch "🍱" where
  ematch _ = Right E.bentoBox

instance ematchRiceCracker :: EMatch "🍘" where
  ematch _ = Right E.riceCracker

instance ematchRiceBall :: EMatch "🍙" where
  ematch _ = Right E.riceBall

instance ematchCookedRice :: EMatch "🍚" where
  ematch _ = Right E.cookedRice

instance ematchCurryRice :: EMatch "🍛" where
  ematch _ = Right E.curryRice

instance ematchSteamingBowl :: EMatch "🍜" where
  ematch _ = Right E.steamingBowl

instance ematchSpaghetti :: EMatch "🍝" where
  ematch _ = Right E.spaghetti

instance ematchRoastedSweetPotato :: EMatch "🍠" where
  ematch _ = Right E.roastedSweetPotato

instance ematchOden :: EMatch "🍢" where
  ematch _ = Right E.oden

instance ematchSushi :: EMatch "🍣" where
  ematch _ = Right E.sushi

instance ematchFriedShrimp :: EMatch "🍤" where
  ematch _ = Right E.friedShrimp

instance ematchFishCakeWithSwirl :: EMatch "🍥" where
  ematch _ = Right E.fishCakeWithSwirl

instance ematchMoonCake :: EMatch "🥮" where
  ematch _ = Right E.moonCake

instance ematchDango :: EMatch "🍡" where
  ematch _ = Right E.dango

instance ematchDumpling :: EMatch "🥟" where
  ematch _ = Right E.dumpling

instance ematchFortuneCookie :: EMatch "🥠" where
  ematch _ = Right E.fortuneCookie

instance ematchTakeoutBox :: EMatch "🥡" where
  ematch _ = Right E.takeoutBox

instance ematchCrab :: EMatch "🦀" where
  ematch _ = Right E.crab

instance ematchLobster :: EMatch "🦞" where
  ematch _ = Right E.lobster

instance ematchShrimp :: EMatch "🦐" where
  ematch _ = Right E.shrimp

instance ematchSquid :: EMatch "🦑" where
  ematch _ = Right E.squid

instance ematchOyster :: EMatch "🦪" where
  ematch _ = Right E.oyster

instance ematchSoftIceCream :: EMatch "🍦" where
  ematch _ = Right E.softIceCream

instance ematchShavedIce :: EMatch "🍧" where
  ematch _ = Right E.shavedIce

instance ematchIceCream :: EMatch "🍨" where
  ematch _ = Right E.iceCream

instance ematchDoughnut :: EMatch "🍩" where
  ematch _ = Right E.doughnut

instance ematchCookie :: EMatch "🍪" where
  ematch _ = Right E.cookie

instance ematchBirthdayCake :: EMatch "🎂" where
  ematch _ = Right E.birthdayCake

instance ematchShortcake :: EMatch "🍰" where
  ematch _ = Right E.shortcake

instance ematchCupcake :: EMatch "🧁" where
  ematch _ = Right E.cupcake

instance ematchPie :: EMatch "🥧" where
  ematch _ = Right E.pie

instance ematchChocolateBar :: EMatch "🍫" where
  ematch _ = Right E.chocolateBar

instance ematchCandy :: EMatch "🍬" where
  ematch _ = Right E.candy

instance ematchLollipop :: EMatch "🍭" where
  ematch _ = Right E.lollipop

instance ematchCustard :: EMatch "🍮" where
  ematch _ = Right E.custard

instance ematchHoneyPot :: EMatch "🍯" where
  ematch _ = Right E.honeyPot

instance ematchBabyBottle :: EMatch "🍼" where
  ematch _ = Right E.babyBottle

instance ematchGlassOfMilk :: EMatch "🥛" where
  ematch _ = Right E.glassOfMilk

instance ematchHotBeverage :: EMatch "☕" where
  ematch _ = Right E.hotBeverage

instance ematchTeapot :: EMatch "🫖" where
  ematch _ = Right E.teapot

instance ematchTeacupWithoutHandle :: EMatch "🍵" where
  ematch _ = Right E.teacupWithoutHandle

instance ematchSake :: EMatch "🍶" where
  ematch _ = Right E.sake

instance ematchBottleWithPoppingCork :: EMatch "🍾" where
  ematch _ = Right E.bottleWithPoppingCork

instance ematchWineGlass :: EMatch "🍷" where
  ematch _ = Right E.wineGlass

instance ematchCocktailGlass :: EMatch "🍸" where
  ematch _ = Right E.cocktailGlass

instance ematchTropicalDrink :: EMatch "🍹" where
  ematch _ = Right E.tropicalDrink

instance ematchBeerMug :: EMatch "🍺" where
  ematch _ = Right E.beerMug

instance ematchClinkingBeerMugs :: EMatch "🍻" where
  ematch _ = Right E.clinkingBeerMugs

instance ematchClinkingGlasses :: EMatch "🥂" where
  ematch _ = Right E.clinkingGlasses

instance ematchTumblerGlass :: EMatch "🥃" where
  ematch _ = Right E.tumblerGlass

instance ematchCupWithStraw :: EMatch "🥤" where
  ematch _ = Right E.cupWithStraw

instance ematchBubbleTea :: EMatch "🧋" where
  ematch _ = Right E.bubbleTea

instance ematchBeverageBox :: EMatch "🧃" where
  ematch _ = Right E.beverageBox

instance ematchMate :: EMatch "🧉" where
  ematch _ = Right E.mate

instance ematchIce :: EMatch "🧊" where
  ematch _ = Right E.ice

instance ematchChopsticks :: EMatch "🥢" where
  ematch _ = Right E.chopsticks

instance ematchForkAndKnifeWithPlate :: EMatch "🍽" where
  ematch _ = Right E.forkAndKnifeWithPlate

instance ematchForkAndKnife :: EMatch "🍴" where
  ematch _ = Right E.forkAndKnife

instance ematchSpoon :: EMatch "🥄" where
  ematch _ = Right E.spoon

instance ematchKitchenKnife :: EMatch "🔪" where
  ematch _ = Right E.kitchenKnife

instance ematchAmphora :: EMatch "🏺" where
  ematch _ = Right E.amphora

instance ematchGlobeShowingEuropeAfrica :: EMatch "🌍" where
  ematch _ = Right E.globeShowingEuropeAfrica

instance ematchGlobeShowingAmericas :: EMatch "🌎" where
  ematch _ = Right E.globeShowingAmericas

instance ematchGlobeShowingAsiaAustralia :: EMatch "🌏" where
  ematch _ = Right E.globeShowingAsiaAustralia

instance ematchGlobeWithMeridians :: EMatch "🌐" where
  ematch _ = Right E.globeWithMeridians

instance ematchWorldMap :: EMatch "🗺" where
  ematch _ = Right E.worldMap

instance ematchMapOfJapan :: EMatch "🗾" where
  ematch _ = Right E.mapOfJapan

instance ematchCompass :: EMatch "🧭" where
  ematch _ = Right E.compass

instance ematchSnowCappedMountain :: EMatch "🏔" where
  ematch _ = Right E.snowCappedMountain

instance ematchMountain :: EMatch "⛰" where
  ematch _ = Right E.mountain

instance ematchVolcano :: EMatch "🌋" where
  ematch _ = Right E.volcano

instance ematchMountFuji :: EMatch "🗻" where
  ematch _ = Right E.mountFuji

instance ematchCamping :: EMatch "🏕" where
  ematch _ = Right E.camping

instance ematchBeachWithUmbrella :: EMatch "🏖" where
  ematch _ = Right E.beachWithUmbrella

instance ematchDesert :: EMatch "🏜" where
  ematch _ = Right E.desert

instance ematchDesertIsland :: EMatch "🏝" where
  ematch _ = Right E.desertIsland

instance ematchNationalPark :: EMatch "🏞" where
  ematch _ = Right E.nationalPark

instance ematchStadium :: EMatch "🏟" where
  ematch _ = Right E.stadium

instance ematchClassicalBuilding :: EMatch "🏛" where
  ematch _ = Right E.classicalBuilding

instance ematchBuildingConstruction :: EMatch "🏗" where
  ematch _ = Right E.buildingConstruction

instance ematchBrick :: EMatch "🧱" where
  ematch _ = Right E.brick

instance ematchRock :: EMatch "🪨" where
  ematch _ = Right E.rock

instance ematchWood :: EMatch "🪵" where
  ematch _ = Right E.wood

instance ematchHut :: EMatch "🛖" where
  ematch _ = Right E.hut

instance ematchHouses :: EMatch "🏘" where
  ematch _ = Right E.houses

instance ematchDerelictHouse :: EMatch "🏚" where
  ematch _ = Right E.derelictHouse

instance ematchHouse :: EMatch "🏠" where
  ematch _ = Right E.house

instance ematchHouseWithGarden :: EMatch "🏡" where
  ematch _ = Right E.houseWithGarden

instance ematchOfficeBuilding :: EMatch "🏢" where
  ematch _ = Right E.officeBuilding

instance ematchJapanesePostOffice :: EMatch "🏣" where
  ematch _ = Right E.japanesePostOffice

instance ematchPostOffice :: EMatch "🏤" where
  ematch _ = Right E.postOffice

instance ematchHospital :: EMatch "🏥" where
  ematch _ = Right E.hospital

instance ematchBank :: EMatch "🏦" where
  ematch _ = Right E.bank

instance ematchHotel :: EMatch "🏨" where
  ematch _ = Right E.hotel

instance ematchLoveHotel :: EMatch "🏩" where
  ematch _ = Right E.loveHotel

instance ematchConvenienceStore :: EMatch "🏪" where
  ematch _ = Right E.convenienceStore

instance ematchSchool :: EMatch "🏫" where
  ematch _ = Right E.school

instance ematchDepartmentStore :: EMatch "🏬" where
  ematch _ = Right E.departmentStore

instance ematchFactory :: EMatch "🏭" where
  ematch _ = Right E.factory

instance ematchJapaneseCastle :: EMatch "🏯" where
  ematch _ = Right E.japaneseCastle

instance ematchCastle :: EMatch "🏰" where
  ematch _ = Right E.castle

instance ematchWedding :: EMatch "💒" where
  ematch _ = Right E.wedding

instance ematchTokyoTower :: EMatch "🗼" where
  ematch _ = Right E.tokyoTower

instance ematchStatueOfLiberty :: EMatch "🗽" where
  ematch _ = Right E.statueOfLiberty

instance ematchChurch :: EMatch "⛪" where
  ematch _ = Right E.church

instance ematchMosque :: EMatch "🕌" where
  ematch _ = Right E.mosque

instance ematchHinduTemple :: EMatch "🛕" where
  ematch _ = Right E.hinduTemple

instance ematchSynagogue :: EMatch "🕍" where
  ematch _ = Right E.synagogue

instance ematchShintoShrine :: EMatch "⛩" where
  ematch _ = Right E.shintoShrine

instance ematchKaaba :: EMatch "🕋" where
  ematch _ = Right E.kaaba

instance ematchFountain :: EMatch "⛲" where
  ematch _ = Right E.fountain

instance ematchTent :: EMatch "⛺" where
  ematch _ = Right E.tent

instance ematchFoggy :: EMatch "🌁" where
  ematch _ = Right E.foggy

instance ematchNightWithStars :: EMatch "🌃" where
  ematch _ = Right E.nightWithStars

instance ematchCityscape :: EMatch "🏙" where
  ematch _ = Right E.cityscape

instance ematchSunriseOverMountains :: EMatch "🌄" where
  ematch _ = Right E.sunriseOverMountains

instance ematchSunrise :: EMatch "🌅" where
  ematch _ = Right E.sunrise

instance ematchCityscapeAtDusk :: EMatch "🌆" where
  ematch _ = Right E.cityscapeAtDusk

instance ematchSunset :: EMatch "🌇" where
  ematch _ = Right E.sunset

instance ematchBridgeAtNight :: EMatch "🌉" where
  ematch _ = Right E.bridgeAtNight

instance ematchHotSprings :: EMatch "♨" where
  ematch _ = Right E.hotSprings

instance ematchCarouselHorse :: EMatch "🎠" where
  ematch _ = Right E.carouselHorse

instance ematchFerrisWheel :: EMatch "🎡" where
  ematch _ = Right E.ferrisWheel

instance ematchRollerCoaster :: EMatch "🎢" where
  ematch _ = Right E.rollerCoaster

instance ematchBarberPole :: EMatch "💈" where
  ematch _ = Right E.barberPole

instance ematchCircusTent :: EMatch "🎪" where
  ematch _ = Right E.circusTent

instance ematchLocomotive :: EMatch "🚂" where
  ematch _ = Right E.locomotive

instance ematchRailwayCar :: EMatch "🚃" where
  ematch _ = Right E.railwayCar

instance ematchHighSpeedTrain :: EMatch "🚄" where
  ematch _ = Right E.highSpeedTrain

instance ematchBulletTrain :: EMatch "🚅" where
  ematch _ = Right E.bulletTrain

instance ematchTrain :: EMatch "🚆" where
  ematch _ = Right E.train

instance ematchMetro :: EMatch "🚇" where
  ematch _ = Right E.metro

instance ematchLightRail :: EMatch "🚈" where
  ematch _ = Right E.lightRail

instance ematchStation :: EMatch "🚉" where
  ematch _ = Right E.station

instance ematchTram :: EMatch "🚊" where
  ematch _ = Right E.tram

instance ematchMonorail :: EMatch "🚝" where
  ematch _ = Right E.monorail

instance ematchMountainRailway :: EMatch "🚞" where
  ematch _ = Right E.mountainRailway

instance ematchTramCar :: EMatch "🚋" where
  ematch _ = Right E.tramCar

instance ematchBus :: EMatch "🚌" where
  ematch _ = Right E.bus

instance ematchOncomingBus :: EMatch "🚍" where
  ematch _ = Right E.oncomingBus

instance ematchTrolleybus :: EMatch "🚎" where
  ematch _ = Right E.trolleybus

instance ematchMinibus :: EMatch "🚐" where
  ematch _ = Right E.minibus

instance ematchAmbulance :: EMatch "🚑" where
  ematch _ = Right E.ambulance

instance ematchFireEngine :: EMatch "🚒" where
  ematch _ = Right E.fireEngine

instance ematchPoliceCar :: EMatch "🚓" where
  ematch _ = Right E.policeCar

instance ematchOncomingPoliceCar :: EMatch "🚔" where
  ematch _ = Right E.oncomingPoliceCar

instance ematchTaxi :: EMatch "🚕" where
  ematch _ = Right E.taxi

instance ematchOncomingTaxi :: EMatch "🚖" where
  ematch _ = Right E.oncomingTaxi

instance ematchAutomobile :: EMatch "🚗" where
  ematch _ = Right E.automobile

instance ematchOncomingAutomobile :: EMatch "🚘" where
  ematch _ = Right E.oncomingAutomobile

instance ematchSportUtilityVehicle :: EMatch "🚙" where
  ematch _ = Right E.sportUtilityVehicle

instance ematchPickupTruck :: EMatch "🛻" where
  ematch _ = Right E.pickupTruck

instance ematchDeliveryTruck :: EMatch "🚚" where
  ematch _ = Right E.deliveryTruck

instance ematchArticulatedLorry :: EMatch "🚛" where
  ematch _ = Right E.articulatedLorry

instance ematchTractor :: EMatch "🚜" where
  ematch _ = Right E.tractor

instance ematchRacingCar :: EMatch "🏎" where
  ematch _ = Right E.racingCar

instance ematchMotorcycle :: EMatch "🏍" where
  ematch _ = Right E.motorcycle

instance ematchMotorScooter :: EMatch "🛵" where
  ematch _ = Right E.motorScooter

instance ematchManualWheelchair :: EMatch "🦽" where
  ematch _ = Right E.manualWheelchair

instance ematchMotorizedWheelchair :: EMatch "🦼" where
  ematch _ = Right E.motorizedWheelchair

instance ematchAutoRickshaw :: EMatch "🛺" where
  ematch _ = Right E.autoRickshaw

instance ematchBicycle :: EMatch "🚲" where
  ematch _ = Right E.bicycle

instance ematchKickScooter :: EMatch "🛴" where
  ematch _ = Right E.kickScooter

instance ematchSkateboard :: EMatch "🛹" where
  ematch _ = Right E.skateboard

instance ematchRollerSkate :: EMatch "🛼" where
  ematch _ = Right E.rollerSkate

instance ematchBusStop :: EMatch "🚏" where
  ematch _ = Right E.busStop

instance ematchMotorway :: EMatch "🛣" where
  ematch _ = Right E.motorway

instance ematchRailwayTrack :: EMatch "🛤" where
  ematch _ = Right E.railwayTrack

instance ematchOilDrum :: EMatch "🛢" where
  ematch _ = Right E.oilDrum

instance ematchFuelPump :: EMatch "⛽" where
  ematch _ = Right E.fuelPump

instance ematchPoliceCarLight :: EMatch "🚨" where
  ematch _ = Right E.policeCarLight

instance ematchHorizontalTrafficLight :: EMatch "🚥" where
  ematch _ = Right E.horizontalTrafficLight

instance ematchVerticalTrafficLight :: EMatch "🚦" where
  ematch _ = Right E.verticalTrafficLight

instance ematchStopSign :: EMatch "🛑" where
  ematch _ = Right E.stopSign

instance ematchConstruction :: EMatch "🚧" where
  ematch _ = Right E.construction

instance ematchAnchor :: EMatch "⚓" where
  ematch _ = Right E.anchor

instance ematchSailboat :: EMatch "⛵" where
  ematch _ = Right E.sailboat

instance ematchCanoe :: EMatch "🛶" where
  ematch _ = Right E.canoe

instance ematchSpeedboat :: EMatch "🚤" where
  ematch _ = Right E.speedboat

instance ematchPassengerShip :: EMatch "🛳" where
  ematch _ = Right E.passengerShip

instance ematchFerry :: EMatch "⛴" where
  ematch _ = Right E.ferry

instance ematchMotorBoat :: EMatch "🛥" where
  ematch _ = Right E.motorBoat

instance ematchShip :: EMatch "🚢" where
  ematch _ = Right E.ship

instance ematchAirplane :: EMatch "✈" where
  ematch _ = Right E.airplane

instance ematchSmallAirplane :: EMatch "🛩" where
  ematch _ = Right E.smallAirplane

instance ematchAirplaneDeparture :: EMatch "🛫" where
  ematch _ = Right E.airplaneDeparture

instance ematchAirplaneArrival :: EMatch "🛬" where
  ematch _ = Right E.airplaneArrival

instance ematchParachute :: EMatch "🪂" where
  ematch _ = Right E.parachute

instance ematchSeat :: EMatch "💺" where
  ematch _ = Right E.seat

instance ematchHelicopter :: EMatch "🚁" where
  ematch _ = Right E.helicopter

instance ematchSuspensionRailway :: EMatch "🚟" where
  ematch _ = Right E.suspensionRailway

instance ematchMountainCableway :: EMatch "🚠" where
  ematch _ = Right E.mountainCableway

instance ematchAerialTramway :: EMatch "🚡" where
  ematch _ = Right E.aerialTramway

instance ematchSatellite :: EMatch "🛰" where
  ematch _ = Right E.satellite

instance ematchRocket :: EMatch "🚀" where
  ematch _ = Right E.rocket

instance ematchFlyingSaucer :: EMatch "🛸" where
  ematch _ = Right E.flyingSaucer

instance ematchBellhopBell :: EMatch "🛎" where
  ematch _ = Right E.bellhopBell

instance ematchLuggage :: EMatch "🧳" where
  ematch _ = Right E.luggage

instance ematchHourglassDone :: EMatch "⌛" where
  ematch _ = Right E.hourglassDone

instance ematchHourglassNotDone :: EMatch "⏳" where
  ematch _ = Right E.hourglassNotDone

instance ematchWatch :: EMatch "⌚" where
  ematch _ = Right E.watch

instance ematchAlarmClock :: EMatch "⏰" where
  ematch _ = Right E.alarmClock

instance ematchStopwatch :: EMatch "⏱" where
  ematch _ = Right E.stopwatch

instance ematchTimerClock :: EMatch "⏲" where
  ematch _ = Right E.timerClock

instance ematchMantelpieceClock :: EMatch "🕰" where
  ematch _ = Right E.mantelpieceClock

instance ematchTwelveOClock :: EMatch "🕛" where
  ematch _ = Right E.twelveOClock

instance ematchTwelveThirty :: EMatch "🕧" where
  ematch _ = Right E.twelveThirty

instance ematchOneOClock :: EMatch "🕐" where
  ematch _ = Right E.oneOClock

instance ematchOneThirty :: EMatch "🕜" where
  ematch _ = Right E.oneThirty

instance ematchTwoOClock :: EMatch "🕑" where
  ematch _ = Right E.twoOClock

instance ematchTwoThirty :: EMatch "🕝" where
  ematch _ = Right E.twoThirty

instance ematchThreeOClock :: EMatch "🕒" where
  ematch _ = Right E.threeOClock

instance ematchThreeThirty :: EMatch "🕞" where
  ematch _ = Right E.threeThirty

instance ematchFourOClock :: EMatch "🕓" where
  ematch _ = Right E.fourOClock

instance ematchFourThirty :: EMatch "🕟" where
  ematch _ = Right E.fourThirty

instance ematchFiveOClock :: EMatch "🕔" where
  ematch _ = Right E.fiveOClock

instance ematchFiveThirty :: EMatch "🕠" where
  ematch _ = Right E.fiveThirty

instance ematchSixOClock :: EMatch "🕕" where
  ematch _ = Right E.sixOClock

instance ematchSixThirty :: EMatch "🕡" where
  ematch _ = Right E.sixThirty

instance ematchSevenOClock :: EMatch "🕖" where
  ematch _ = Right E.sevenOClock

instance ematchSevenThirty :: EMatch "🕢" where
  ematch _ = Right E.sevenThirty

instance ematchEightOClock :: EMatch "🕗" where
  ematch _ = Right E.eightOClock

instance ematchEightThirty :: EMatch "🕣" where
  ematch _ = Right E.eightThirty

instance ematchNineOClock :: EMatch "🕘" where
  ematch _ = Right E.nineOClock

instance ematchNineThirty :: EMatch "🕤" where
  ematch _ = Right E.nineThirty

instance ematchTenOClock :: EMatch "🕙" where
  ematch _ = Right E.tenOClock

instance ematchTenThirty :: EMatch "🕥" where
  ematch _ = Right E.tenThirty

instance ematchElevenOClock :: EMatch "🕚" where
  ematch _ = Right E.elevenOClock

instance ematchElevenThirty :: EMatch "🕦" where
  ematch _ = Right E.elevenThirty

instance ematchNewMoon :: EMatch "🌑" where
  ematch _ = Right E.newMoon

instance ematchWaxingCrescentMoon :: EMatch "🌒" where
  ematch _ = Right E.waxingCrescentMoon

instance ematchFirstQuarterMoon :: EMatch "🌓" where
  ematch _ = Right E.firstQuarterMoon

instance ematchWaxingGibbousMoon :: EMatch "🌔" where
  ematch _ = Right E.waxingGibbousMoon

instance ematchFullMoon :: EMatch "🌕" where
  ematch _ = Right E.fullMoon

instance ematchWaningGibbousMoon :: EMatch "🌖" where
  ematch _ = Right E.waningGibbousMoon

instance ematchLastQuarterMoon :: EMatch "🌗" where
  ematch _ = Right E.lastQuarterMoon

instance ematchWaningCrescentMoon :: EMatch "🌘" where
  ematch _ = Right E.waningCrescentMoon

instance ematchCrescentMoon :: EMatch "🌙" where
  ematch _ = Right E.crescentMoon

instance ematchNewMoonFace :: EMatch "🌚" where
  ematch _ = Right E.newMoonFace

instance ematchFirstQuarterMoonFace :: EMatch "🌛" where
  ematch _ = Right E.firstQuarterMoonFace

instance ematchLastQuarterMoonFace :: EMatch "🌜" where
  ematch _ = Right E.lastQuarterMoonFace

instance ematchThermometer :: EMatch "🌡" where
  ematch _ = Right E.thermometer

instance ematchSun :: EMatch "☀" where
  ematch _ = Right E.sun

instance ematchFullMoonFace :: EMatch "🌝" where
  ematch _ = Right E.fullMoonFace

instance ematchSunWithFace :: EMatch "🌞" where
  ematch _ = Right E.sunWithFace

instance ematchRingedPlanet :: EMatch "🪐" where
  ematch _ = Right E.ringedPlanet

instance ematchStar :: EMatch "⭐" where
  ematch _ = Right E.star

instance ematchGlowingStar :: EMatch "🌟" where
  ematch _ = Right E.glowingStar

instance ematchShootingStar :: EMatch "🌠" where
  ematch _ = Right E.shootingStar

instance ematchMilkyWay :: EMatch "🌌" where
  ematch _ = Right E.milkyWay

instance ematchCloud :: EMatch "☁" where
  ematch _ = Right E.cloud

instance ematchSunBehindCloud :: EMatch "⛅" where
  ematch _ = Right E.sunBehindCloud

instance ematchCloudWithLightningAndRain :: EMatch "⛈" where
  ematch _ = Right E.cloudWithLightningAndRain

instance ematchSunBehindSmallCloud :: EMatch "🌤" where
  ematch _ = Right E.sunBehindSmallCloud

instance ematchSunBehindLargeCloud :: EMatch "🌥" where
  ematch _ = Right E.sunBehindLargeCloud

instance ematchSunBehindRainCloud :: EMatch "🌦" where
  ematch _ = Right E.sunBehindRainCloud

instance ematchCloudWithRain :: EMatch "🌧" where
  ematch _ = Right E.cloudWithRain

instance ematchCloudWithSnow :: EMatch "🌨" where
  ematch _ = Right E.cloudWithSnow

instance ematchCloudWithLightning :: EMatch "🌩" where
  ematch _ = Right E.cloudWithLightning

instance ematchTornado :: EMatch "🌪" where
  ematch _ = Right E.tornado

instance ematchFog :: EMatch "🌫" where
  ematch _ = Right E.fog

instance ematchWindFace :: EMatch "🌬" where
  ematch _ = Right E.windFace

instance ematchCyclone :: EMatch "🌀" where
  ematch _ = Right E.cyclone

instance ematchRainbow :: EMatch "🌈" where
  ematch _ = Right E.rainbow

instance ematchClosedUmbrella :: EMatch "🌂" where
  ematch _ = Right E.closedUmbrella

instance ematchUmbrella :: EMatch "☂" where
  ematch _ = Right E.umbrella

instance ematchUmbrellaWithRainDrops :: EMatch "☔" where
  ematch _ = Right E.umbrellaWithRainDrops

instance ematchUmbrellaOnGround :: EMatch "⛱" where
  ematch _ = Right E.umbrellaOnGround

instance ematchHighVoltage :: EMatch "⚡" where
  ematch _ = Right E.highVoltage

instance ematchSnowflake :: EMatch "❄" where
  ematch _ = Right E.snowflake

instance ematchSnowman :: EMatch "☃" where
  ematch _ = Right E.snowman

instance ematchSnowmanWithoutSnow :: EMatch "⛄" where
  ematch _ = Right E.snowmanWithoutSnow

instance ematchComet :: EMatch "☄" where
  ematch _ = Right E.comet

instance ematchFire :: EMatch "🔥" where
  ematch _ = Right E.fire

instance ematchDroplet :: EMatch "💧" where
  ematch _ = Right E.droplet

instance ematchWaterWave :: EMatch "🌊" where
  ematch _ = Right E.waterWave

instance ematchJackOLantern :: EMatch "🎃" where
  ematch _ = Right E.jackOLantern

instance ematchChristmasTree :: EMatch "🎄" where
  ematch _ = Right E.christmasTree

instance ematchFireworks :: EMatch "🎆" where
  ematch _ = Right E.fireworks

instance ematchSparkler :: EMatch "🎇" where
  ematch _ = Right E.sparkler

instance ematchFirecracker :: EMatch "🧨" where
  ematch _ = Right E.firecracker

instance ematchSparkles :: EMatch "✨" where
  ematch _ = Right E.sparkles

instance ematchBalloon :: EMatch "🎈" where
  ematch _ = Right E.balloon

instance ematchPartyPopper :: EMatch "🎉" where
  ematch _ = Right E.partyPopper

instance ematchConfettiBall :: EMatch "🎊" where
  ematch _ = Right E.confettiBall

instance ematchTanabataTree :: EMatch "🎋" where
  ematch _ = Right E.tanabataTree

instance ematchPineDecoration :: EMatch "🎍" where
  ematch _ = Right E.pineDecoration

instance ematchJapaneseDolls :: EMatch "🎎" where
  ematch _ = Right E.japaneseDolls

instance ematchCarpStreamer :: EMatch "🎏" where
  ematch _ = Right E.carpStreamer

instance ematchWindChime :: EMatch "🎐" where
  ematch _ = Right E.windChime

instance ematchMoonViewingCeremony :: EMatch "🎑" where
  ematch _ = Right E.moonViewingCeremony

instance ematchRedEnvelope :: EMatch "🧧" where
  ematch _ = Right E.redEnvelope

instance ematchRibbon :: EMatch "🎀" where
  ematch _ = Right E.ribbon

instance ematchWrappedGift :: EMatch "🎁" where
  ematch _ = Right E.wrappedGift

instance ematchReminderRibbon :: EMatch "🎗" where
  ematch _ = Right E.reminderRibbon

instance ematchAdmissionTickets :: EMatch "🎟" where
  ematch _ = Right E.admissionTickets

instance ematchTicket :: EMatch "🎫" where
  ematch _ = Right E.ticket

instance ematchMilitaryMedal :: EMatch "🎖" where
  ematch _ = Right E.militaryMedal

instance ematchTrophy :: EMatch "🏆" where
  ematch _ = Right E.trophy

instance ematchSportsMedal :: EMatch "🏅" where
  ematch _ = Right E.sportsMedal

instance ematchFirstPlaceMedal :: EMatch "🥇" where
  ematch _ = Right E.firstPlaceMedal

instance ematchSecondPlaceMedal :: EMatch "🥈" where
  ematch _ = Right E.secondPlaceMedal

instance ematchThirdPlaceMedal :: EMatch "🥉" where
  ematch _ = Right E.thirdPlaceMedal

instance ematchSoccerBall :: EMatch "⚽" where
  ematch _ = Right E.soccerBall

instance ematchBaseball :: EMatch "⚾" where
  ematch _ = Right E.baseball

instance ematchSoftball :: EMatch "🥎" where
  ematch _ = Right E.softball

instance ematchBasketball :: EMatch "🏀" where
  ematch _ = Right E.basketball

instance ematchVolleyball :: EMatch "🏐" where
  ematch _ = Right E.volleyball

instance ematchAmericanFootball :: EMatch "🏈" where
  ematch _ = Right E.americanFootball

instance ematchRugbyFootball :: EMatch "🏉" where
  ematch _ = Right E.rugbyFootball

instance ematchTennis :: EMatch "🎾" where
  ematch _ = Right E.tennis

instance ematchFlyingDisc :: EMatch "🥏" where
  ematch _ = Right E.flyingDisc

instance ematchBowling :: EMatch "🎳" where
  ematch _ = Right E.bowling

instance ematchCricketGame :: EMatch "🏏" where
  ematch _ = Right E.cricketGame

instance ematchFieldHockey :: EMatch "🏑" where
  ematch _ = Right E.fieldHockey

instance ematchIceHockey :: EMatch "🏒" where
  ematch _ = Right E.iceHockey

instance ematchLacrosse :: EMatch "🥍" where
  ematch _ = Right E.lacrosse

instance ematchPingPong :: EMatch "🏓" where
  ematch _ = Right E.pingPong

instance ematchBadminton :: EMatch "🏸" where
  ematch _ = Right E.badminton

instance ematchBoxingGlove :: EMatch "🥊" where
  ematch _ = Right E.boxingGlove

instance ematchMartialArtsUniform :: EMatch "🥋" where
  ematch _ = Right E.martialArtsUniform

instance ematchGoalNet :: EMatch "🥅" where
  ematch _ = Right E.goalNet

instance ematchFlagInHole :: EMatch "⛳" where
  ematch _ = Right E.flagInHole

instance ematchIceSkate :: EMatch "⛸" where
  ematch _ = Right E.iceSkate

instance ematchFishingPole :: EMatch "🎣" where
  ematch _ = Right E.fishingPole

instance ematchDivingMask :: EMatch "🤿" where
  ematch _ = Right E.divingMask

instance ematchRunningShirt :: EMatch "🎽" where
  ematch _ = Right E.runningShirt

instance ematchSkis :: EMatch "🎿" where
  ematch _ = Right E.skis

instance ematchSled :: EMatch "🛷" where
  ematch _ = Right E.sled

instance ematchCurlingStone :: EMatch "🥌" where
  ematch _ = Right E.curlingStone

instance ematchDirectHit :: EMatch "🎯" where
  ematch _ = Right E.directHit

instance ematchYoYo :: EMatch "🪀" where
  ematch _ = Right E.yoYo

instance ematchKite :: EMatch "🪁" where
  ematch _ = Right E.kite

instance ematchPool8Ball :: EMatch "🎱" where
  ematch _ = Right E.pool8Ball

instance ematchCrystalBall :: EMatch "🔮" where
  ematch _ = Right E.crystalBall

instance ematchMagicWand :: EMatch "🪄" where
  ematch _ = Right E.magicWand

instance ematchNazarAmulet :: EMatch "🧿" where
  ematch _ = Right E.nazarAmulet

instance ematchVideoGame :: EMatch "🎮" where
  ematch _ = Right E.videoGame

instance ematchJoystick :: EMatch "🕹" where
  ematch _ = Right E.joystick

instance ematchSlotMachine :: EMatch "🎰" where
  ematch _ = Right E.slotMachine

instance ematchGameDie :: EMatch "🎲" where
  ematch _ = Right E.gameDie

instance ematchPuzzlePiece :: EMatch "🧩" where
  ematch _ = Right E.puzzlePiece

instance ematchTeddyBear :: EMatch "🧸" where
  ematch _ = Right E.teddyBear

instance ematchPiñata :: EMatch "🪅" where
  ematch _ = Right E.piñata

instance ematchNestingDolls :: EMatch "🪆" where
  ematch _ = Right E.nestingDolls

instance ematchSpadeSuit :: EMatch "♠" where
  ematch _ = Right E.spadeSuit

instance ematchHeartSuit :: EMatch "♥" where
  ematch _ = Right E.heartSuit

instance ematchDiamondSuit :: EMatch "♦" where
  ematch _ = Right E.diamondSuit

instance ematchClubSuit :: EMatch "♣" where
  ematch _ = Right E.clubSuit

instance ematchChessPawn :: EMatch "♟" where
  ematch _ = Right E.chessPawn

instance ematchJoker :: EMatch "🃏" where
  ematch _ = Right E.joker

instance ematchMahjongRedDragon :: EMatch "🀄" where
  ematch _ = Right E.mahjongRedDragon

instance ematchFlowerPlayingCards :: EMatch "🎴" where
  ematch _ = Right E.flowerPlayingCards

instance ematchPerformingArts :: EMatch "🎭" where
  ematch _ = Right E.performingArts

instance ematchFramedPicture :: EMatch "🖼" where
  ematch _ = Right E.framedPicture

instance ematchArtistPalette :: EMatch "🎨" where
  ematch _ = Right E.artistPalette

instance ematchThread :: EMatch "🧵" where
  ematch _ = Right E.thread

instance ematchSewingNeedle :: EMatch "🪡" where
  ematch _ = Right E.sewingNeedle

instance ematchYarn :: EMatch "🧶" where
  ematch _ = Right E.yarn

instance ematchKnot :: EMatch "🪢" where
  ematch _ = Right E.knot

instance ematchGlasses :: EMatch "👓" where
  ematch _ = Right E.glasses

instance ematchSunglasses :: EMatch "🕶" where
  ematch _ = Right E.sunglasses

instance ematchGoggles :: EMatch "🥽" where
  ematch _ = Right E.goggles

instance ematchLabCoat :: EMatch "🥼" where
  ematch _ = Right E.labCoat

instance ematchSafetyVest :: EMatch "🦺" where
  ematch _ = Right E.safetyVest

instance ematchNecktie :: EMatch "👔" where
  ematch _ = Right E.necktie

instance ematchTShirt :: EMatch "👕" where
  ematch _ = Right E.tShirt

instance ematchJeans :: EMatch "👖" where
  ematch _ = Right E.jeans

instance ematchScarf :: EMatch "🧣" where
  ematch _ = Right E.scarf

instance ematchGloves :: EMatch "🧤" where
  ematch _ = Right E.gloves

instance ematchCoat :: EMatch "🧥" where
  ematch _ = Right E.coat

instance ematchSocks :: EMatch "🧦" where
  ematch _ = Right E.socks

instance ematchDress :: EMatch "👗" where
  ematch _ = Right E.dress

instance ematchKimono :: EMatch "👘" where
  ematch _ = Right E.kimono

instance ematchSari :: EMatch "🥻" where
  ematch _ = Right E.sari

instance ematchOnePieceSwimsuit :: EMatch "🩱" where
  ematch _ = Right E.onePieceSwimsuit

instance ematchBriefs :: EMatch "🩲" where
  ematch _ = Right E.briefs

instance ematchShorts :: EMatch "🩳" where
  ematch _ = Right E.shorts

instance ematchBikini :: EMatch "👙" where
  ematch _ = Right E.bikini

instance ematchWomanSClothes :: EMatch "👚" where
  ematch _ = Right E.womanSClothes

instance ematchPurse :: EMatch "👛" where
  ematch _ = Right E.purse

instance ematchHandbag :: EMatch "👜" where
  ematch _ = Right E.handbag

instance ematchClutchBag :: EMatch "👝" where
  ematch _ = Right E.clutchBag

instance ematchShoppingBags :: EMatch "🛍" where
  ematch _ = Right E.shoppingBags

instance ematchBackpack :: EMatch "🎒" where
  ematch _ = Right E.backpack

instance ematchThongSandal :: EMatch "🩴" where
  ematch _ = Right E.thongSandal

instance ematchManSShoe :: EMatch "👞" where
  ematch _ = Right E.manSShoe

instance ematchRunningShoe :: EMatch "👟" where
  ematch _ = Right E.runningShoe

instance ematchHikingBoot :: EMatch "🥾" where
  ematch _ = Right E.hikingBoot

instance ematchFlatShoe :: EMatch "🥿" where
  ematch _ = Right E.flatShoe

instance ematchHighHeeledShoe :: EMatch "👠" where
  ematch _ = Right E.highHeeledShoe

instance ematchWomanSSandal :: EMatch "👡" where
  ematch _ = Right E.womanSSandal

instance ematchBalletShoes :: EMatch "🩰" where
  ematch _ = Right E.balletShoes

instance ematchWomanSBoot :: EMatch "👢" where
  ematch _ = Right E.womanSBoot

instance ematchCrown :: EMatch "👑" where
  ematch _ = Right E.crown

instance ematchWomanSHat :: EMatch "👒" where
  ematch _ = Right E.womanSHat

instance ematchTopHat :: EMatch "🎩" where
  ematch _ = Right E.topHat

instance ematchGraduationCap :: EMatch "🎓" where
  ematch _ = Right E.graduationCap

instance ematchBilledCap :: EMatch "🧢" where
  ematch _ = Right E.billedCap

instance ematchMilitaryHelmet :: EMatch "🪖" where
  ematch _ = Right E.militaryHelmet

instance ematchRescueWorkerSHelmet :: EMatch "⛑" where
  ematch _ = Right E.rescueWorkerSHelmet

instance ematchPrayerBeads :: EMatch "📿" where
  ematch _ = Right E.prayerBeads

instance ematchLipstick :: EMatch "💄" where
  ematch _ = Right E.lipstick

instance ematchRing :: EMatch "💍" where
  ematch _ = Right E.ring

instance ematchGemStone :: EMatch "💎" where
  ematch _ = Right E.gemStone

instance ematchMutedSpeaker :: EMatch "🔇" where
  ematch _ = Right E.mutedSpeaker

instance ematchSpeakerLowVolume :: EMatch "🔈" where
  ematch _ = Right E.speakerLowVolume

instance ematchSpeakerMediumVolume :: EMatch "🔉" where
  ematch _ = Right E.speakerMediumVolume

instance ematchSpeakerHighVolume :: EMatch "🔊" where
  ematch _ = Right E.speakerHighVolume

instance ematchLoudspeaker :: EMatch "📢" where
  ematch _ = Right E.loudspeaker

instance ematchMegaphone :: EMatch "📣" where
  ematch _ = Right E.megaphone

instance ematchPostalHorn :: EMatch "📯" where
  ematch _ = Right E.postalHorn

instance ematchBell :: EMatch "🔔" where
  ematch _ = Right E.bell

instance ematchBellWithSlash :: EMatch "🔕" where
  ematch _ = Right E.bellWithSlash

instance ematchMusicalScore :: EMatch "🎼" where
  ematch _ = Right E.musicalScore

instance ematchMusicalNote :: EMatch "🎵" where
  ematch _ = Right E.musicalNote

instance ematchMusicalNotes :: EMatch "🎶" where
  ematch _ = Right E.musicalNotes

instance ematchStudioMicrophone :: EMatch "🎙" where
  ematch _ = Right E.studioMicrophone

instance ematchLevelSlider :: EMatch "🎚" where
  ematch _ = Right E.levelSlider

instance ematchControlKnobs :: EMatch "🎛" where
  ematch _ = Right E.controlKnobs

instance ematchMicrophone :: EMatch "🎤" where
  ematch _ = Right E.microphone

instance ematchHeadphone :: EMatch "🎧" where
  ematch _ = Right E.headphone

instance ematchRadio :: EMatch "📻" where
  ematch _ = Right E.radio

instance ematchSaxophone :: EMatch "🎷" where
  ematch _ = Right E.saxophone

instance ematchAccordion :: EMatch "🪗" where
  ematch _ = Right E.accordion

instance ematchGuitar :: EMatch "🎸" where
  ematch _ = Right E.guitar

instance ematchMusicalKeyboard :: EMatch "🎹" where
  ematch _ = Right E.musicalKeyboard

instance ematchTrumpet :: EMatch "🎺" where
  ematch _ = Right E.trumpet

instance ematchViolin :: EMatch "🎻" where
  ematch _ = Right E.violin

instance ematchBanjo :: EMatch "🪕" where
  ematch _ = Right E.banjo

instance ematchDrum :: EMatch "🥁" where
  ematch _ = Right E.drum

instance ematchLongDrum :: EMatch "🪘" where
  ematch _ = Right E.longDrum

instance ematchMobilePhone :: EMatch "📱" where
  ematch _ = Right E.mobilePhone

instance ematchMobilePhoneWithArrow :: EMatch "📲" where
  ematch _ = Right E.mobilePhoneWithArrow

instance ematchTelephone :: EMatch "☎" where
  ematch _ = Right E.telephone

instance ematchTelephoneReceiver :: EMatch "📞" where
  ematch _ = Right E.telephoneReceiver

instance ematchPager :: EMatch "📟" where
  ematch _ = Right E.pager

instance ematchFaxMachine :: EMatch "📠" where
  ematch _ = Right E.faxMachine

instance ematchBattery :: EMatch "🔋" where
  ematch _ = Right E.battery

instance ematchElectricPlug :: EMatch "🔌" where
  ematch _ = Right E.electricPlug

instance ematchLaptop :: EMatch "💻" where
  ematch _ = Right E.laptop

instance ematchDesktopComputer :: EMatch "🖥" where
  ematch _ = Right E.desktopComputer

instance ematchPrinter :: EMatch "🖨" where
  ematch _ = Right E.printer

instance ematchKeyboard :: EMatch "⌨" where
  ematch _ = Right E.keyboard

instance ematchComputerMouse :: EMatch "🖱" where
  ematch _ = Right E.computerMouse

instance ematchTrackball :: EMatch "🖲" where
  ematch _ = Right E.trackball

instance ematchComputerDisk :: EMatch "💽" where
  ematch _ = Right E.computerDisk

instance ematchFloppyDisk :: EMatch "💾" where
  ematch _ = Right E.floppyDisk

instance ematchOpticalDisk :: EMatch "💿" where
  ematch _ = Right E.opticalDisk

instance ematchDvd :: EMatch "📀" where
  ematch _ = Right E.dvd

instance ematchAbacus :: EMatch "🧮" where
  ematch _ = Right E.abacus

instance ematchMovieCamera :: EMatch "🎥" where
  ematch _ = Right E.movieCamera

instance ematchFilmFrames :: EMatch "🎞" where
  ematch _ = Right E.filmFrames

instance ematchFilmProjector :: EMatch "📽" where
  ematch _ = Right E.filmProjector

instance ematchClapperBoard :: EMatch "🎬" where
  ematch _ = Right E.clapperBoard

instance ematchTelevision :: EMatch "📺" where
  ematch _ = Right E.television

instance ematchCamera :: EMatch "📷" where
  ematch _ = Right E.camera

instance ematchCameraWithFlash :: EMatch "📸" where
  ematch _ = Right E.cameraWithFlash

instance ematchVideoCamera :: EMatch "📹" where
  ematch _ = Right E.videoCamera

instance ematchVideocassette :: EMatch "📼" where
  ematch _ = Right E.videocassette

instance ematchMagnifyingGlassTiltedLeft :: EMatch "🔍" where
  ematch _ = Right E.magnifyingGlassTiltedLeft

instance ematchMagnifyingGlassTiltedRight :: EMatch "🔎" where
  ematch _ = Right E.magnifyingGlassTiltedRight

instance ematchCandle :: EMatch "🕯" where
  ematch _ = Right E.candle

instance ematchLightBulb :: EMatch "💡" where
  ematch _ = Right E.lightBulb

instance ematchFlashlight :: EMatch "🔦" where
  ematch _ = Right E.flashlight

instance ematchRedPaperLantern :: EMatch "🏮" where
  ematch _ = Right E.redPaperLantern

instance ematchDiyaLamp :: EMatch "🪔" where
  ematch _ = Right E.diyaLamp

instance ematchNotebookWithDecorativeCover :: EMatch "📔" where
  ematch _ = Right E.notebookWithDecorativeCover

instance ematchClosedBook :: EMatch "📕" where
  ematch _ = Right E.closedBook

instance ematchOpenBook :: EMatch "📖" where
  ematch _ = Right E.openBook

instance ematchGreenBook :: EMatch "📗" where
  ematch _ = Right E.greenBook

instance ematchBlueBook :: EMatch "📘" where
  ematch _ = Right E.blueBook

instance ematchOrangeBook :: EMatch "📙" where
  ematch _ = Right E.orangeBook

instance ematchBooks :: EMatch "📚" where
  ematch _ = Right E.books

instance ematchNotebook :: EMatch "📓" where
  ematch _ = Right E.notebook

instance ematchLedger :: EMatch "📒" where
  ematch _ = Right E.ledger

instance ematchPageWithCurl :: EMatch "📃" where
  ematch _ = Right E.pageWithCurl

instance ematchScroll :: EMatch "📜" where
  ematch _ = Right E.scroll

instance ematchPageFacingUp :: EMatch "📄" where
  ematch _ = Right E.pageFacingUp

instance ematchNewspaper :: EMatch "📰" where
  ematch _ = Right E.newspaper

instance ematchRolledUpNewspaper :: EMatch "🗞" where
  ematch _ = Right E.rolledUpNewspaper

instance ematchBookmarkTabs :: EMatch "📑" where
  ematch _ = Right E.bookmarkTabs

instance ematchBookmark :: EMatch "🔖" where
  ematch _ = Right E.bookmark

instance ematchLabel :: EMatch "🏷" where
  ematch _ = Right E.label

instance ematchMoneyBag :: EMatch "💰" where
  ematch _ = Right E.moneyBag

instance ematchCoin :: EMatch "🪙" where
  ematch _ = Right E.coin

instance ematchYenBanknote :: EMatch "💴" where
  ematch _ = Right E.yenBanknote

instance ematchDollarBanknote :: EMatch "💵" where
  ematch _ = Right E.dollarBanknote

instance ematchEuroBanknote :: EMatch "💶" where
  ematch _ = Right E.euroBanknote

instance ematchPoundBanknote :: EMatch "💷" where
  ematch _ = Right E.poundBanknote

instance ematchMoneyWithWings :: EMatch "💸" where
  ematch _ = Right E.moneyWithWings

instance ematchCreditCard :: EMatch "💳" where
  ematch _ = Right E.creditCard

instance ematchReceipt :: EMatch "🧾" where
  ematch _ = Right E.receipt

instance ematchChartIncreasingWithYen :: EMatch "💹" where
  ematch _ = Right E.chartIncreasingWithYen

instance ematchEnvelope :: EMatch "✉" where
  ematch _ = Right E.envelope

instance ematchEMail :: EMatch "📧" where
  ematch _ = Right E.eMail

instance ematchIncomingEnvelope :: EMatch "📨" where
  ematch _ = Right E.incomingEnvelope

instance ematchEnvelopeWithArrow :: EMatch "📩" where
  ematch _ = Right E.envelopeWithArrow

instance ematchOutboxTray :: EMatch "📤" where
  ematch _ = Right E.outboxTray

instance ematchInboxTray :: EMatch "📥" where
  ematch _ = Right E.inboxTray

instance ematchPackage :: EMatch "📦" where
  ematch _ = Right E.package

instance ematchClosedMailboxWithRaisedFlag :: EMatch "📫" where
  ematch _ = Right E.closedMailboxWithRaisedFlag

instance ematchClosedMailboxWithLoweredFlag :: EMatch "📪" where
  ematch _ = Right E.closedMailboxWithLoweredFlag

instance ematchOpenMailboxWithRaisedFlag :: EMatch "📬" where
  ematch _ = Right E.openMailboxWithRaisedFlag

instance ematchOpenMailboxWithLoweredFlag :: EMatch "📭" where
  ematch _ = Right E.openMailboxWithLoweredFlag

instance ematchPostbox :: EMatch "📮" where
  ematch _ = Right E.postbox

instance ematchBallotBoxWithBallot :: EMatch "🗳" where
  ematch _ = Right E.ballotBoxWithBallot

instance ematchPencil :: EMatch "✏" where
  ematch _ = Right E.pencil

instance ematchBlackNib :: EMatch "✒" where
  ematch _ = Right E.blackNib

instance ematchFountainPen :: EMatch "🖋" where
  ematch _ = Right E.fountainPen

instance ematchPen :: EMatch "🖊" where
  ematch _ = Right E.pen

instance ematchPaintbrush :: EMatch "🖌" where
  ematch _ = Right E.paintbrush

instance ematchCrayon :: EMatch "🖍" where
  ematch _ = Right E.crayon

instance ematchMemo :: EMatch "📝" where
  ematch _ = Right E.memo

instance ematchBriefcase :: EMatch "💼" where
  ematch _ = Right E.briefcase

instance ematchFileFolder :: EMatch "📁" where
  ematch _ = Right E.fileFolder

instance ematchOpenFileFolder :: EMatch "📂" where
  ematch _ = Right E.openFileFolder

instance ematchCardIndexDividers :: EMatch "🗂" where
  ematch _ = Right E.cardIndexDividers

instance ematchCalendar :: EMatch "📅" where
  ematch _ = Right E.calendar

instance ematchTearOffCalendar :: EMatch "📆" where
  ematch _ = Right E.tearOffCalendar

instance ematchSpiralNotepad :: EMatch "🗒" where
  ematch _ = Right E.spiralNotepad

instance ematchSpiralCalendar :: EMatch "🗓" where
  ematch _ = Right E.spiralCalendar

instance ematchCardIndex :: EMatch "📇" where
  ematch _ = Right E.cardIndex

instance ematchChartIncreasing :: EMatch "📈" where
  ematch _ = Right E.chartIncreasing

instance ematchChartDecreasing :: EMatch "📉" where
  ematch _ = Right E.chartDecreasing

instance ematchBarChart :: EMatch "📊" where
  ematch _ = Right E.barChart

instance ematchClipboard :: EMatch "📋" where
  ematch _ = Right E.clipboard

instance ematchPushpin :: EMatch "📌" where
  ematch _ = Right E.pushpin

instance ematchRoundPushpin :: EMatch "📍" where
  ematch _ = Right E.roundPushpin

instance ematchPaperclip :: EMatch "📎" where
  ematch _ = Right E.paperclip

instance ematchLinkedPaperclips :: EMatch "🖇" where
  ematch _ = Right E.linkedPaperclips

instance ematchStraightRuler :: EMatch "📏" where
  ematch _ = Right E.straightRuler

instance ematchTriangularRuler :: EMatch "📐" where
  ematch _ = Right E.triangularRuler

instance ematchScissors :: EMatch "✂" where
  ematch _ = Right E.scissors

instance ematchCardFileBox :: EMatch "🗃" where
  ematch _ = Right E.cardFileBox

instance ematchFileCabinet :: EMatch "🗄" where
  ematch _ = Right E.fileCabinet

instance ematchWastebasket :: EMatch "🗑" where
  ematch _ = Right E.wastebasket

instance ematchLocked :: EMatch "🔒" where
  ematch _ = Right E.locked

instance ematchUnlocked :: EMatch "🔓" where
  ematch _ = Right E.unlocked

instance ematchLockedWithPen :: EMatch "🔏" where
  ematch _ = Right E.lockedWithPen

instance ematchLockedWithKey :: EMatch "🔐" where
  ematch _ = Right E.lockedWithKey

instance ematchKey :: EMatch "🔑" where
  ematch _ = Right E.key

instance ematchOldKey :: EMatch "🗝" where
  ematch _ = Right E.oldKey

instance ematchHammer :: EMatch "🔨" where
  ematch _ = Right E.hammer

instance ematchAxe :: EMatch "🪓" where
  ematch _ = Right E.axe

instance ematchPick :: EMatch "⛏" where
  ematch _ = Right E.pick

instance ematchHammerAndPick :: EMatch "⚒" where
  ematch _ = Right E.hammerAndPick

instance ematchHammerAndWrench :: EMatch "🛠" where
  ematch _ = Right E.hammerAndWrench

instance ematchDagger :: EMatch "🗡" where
  ematch _ = Right E.dagger

instance ematchCrossedSwords :: EMatch "⚔" where
  ematch _ = Right E.crossedSwords

instance ematchPistol :: EMatch "🔫" where
  ematch _ = Right E.pistol

instance ematchBoomerang :: EMatch "🪃" where
  ematch _ = Right E.boomerang

instance ematchBowAndArrow :: EMatch "🏹" where
  ematch _ = Right E.bowAndArrow

instance ematchShield :: EMatch "🛡" where
  ematch _ = Right E.shield

instance ematchCarpentrySaw :: EMatch "🪚" where
  ematch _ = Right E.carpentrySaw

instance ematchWrench :: EMatch "🔧" where
  ematch _ = Right E.wrench

instance ematchScrewdriver :: EMatch "🪛" where
  ematch _ = Right E.screwdriver

instance ematchNutAndBolt :: EMatch "🔩" where
  ematch _ = Right E.nutAndBolt

instance ematchGear :: EMatch "⚙" where
  ematch _ = Right E.gear

instance ematchClamp :: EMatch "🗜" where
  ematch _ = Right E.clamp

instance ematchBalanceScale :: EMatch "⚖" where
  ematch _ = Right E.balanceScale

instance ematchWhiteCane :: EMatch "🦯" where
  ematch _ = Right E.whiteCane

instance ematchLink :: EMatch "🔗" where
  ematch _ = Right E.link

instance ematchChains :: EMatch "⛓" where
  ematch _ = Right E.chains

instance ematchHook :: EMatch "🪝" where
  ematch _ = Right E.hook

instance ematchToolbox :: EMatch "🧰" where
  ematch _ = Right E.toolbox

instance ematchMagnet :: EMatch "🧲" where
  ematch _ = Right E.magnet

instance ematchLadder :: EMatch "🪜" where
  ematch _ = Right E.ladder

instance ematchAlembic :: EMatch "⚗" where
  ematch _ = Right E.alembic

instance ematchTestTube :: EMatch "🧪" where
  ematch _ = Right E.testTube

instance ematchPetriDish :: EMatch "🧫" where
  ematch _ = Right E.petriDish

instance ematchDna :: EMatch "🧬" where
  ematch _ = Right E.dna

instance ematchMicroscope :: EMatch "🔬" where
  ematch _ = Right E.microscope

instance ematchTelescope :: EMatch "🔭" where
  ematch _ = Right E.telescope

instance ematchSatelliteAntenna :: EMatch "📡" where
  ematch _ = Right E.satelliteAntenna

instance ematchSyringe :: EMatch "💉" where
  ematch _ = Right E.syringe

instance ematchDropOfBlood :: EMatch "🩸" where
  ematch _ = Right E.dropOfBlood

instance ematchPill :: EMatch "💊" where
  ematch _ = Right E.pill

instance ematchAdhesiveBandage :: EMatch "🩹" where
  ematch _ = Right E.adhesiveBandage

instance ematchStethoscope :: EMatch "🩺" where
  ematch _ = Right E.stethoscope

instance ematchDoor :: EMatch "🚪" where
  ematch _ = Right E.door

instance ematchElevator :: EMatch "🛗" where
  ematch _ = Right E.elevator

instance ematchMirror :: EMatch "🪞" where
  ematch _ = Right E.mirror

instance ematchWindow :: EMatch "🪟" where
  ematch _ = Right E.window

instance ematchBed :: EMatch "🛏" where
  ematch _ = Right E.bed

instance ematchCouchAndLamp :: EMatch "🛋" where
  ematch _ = Right E.couchAndLamp

instance ematchChair :: EMatch "🪑" where
  ematch _ = Right E.chair

instance ematchToilet :: EMatch "🚽" where
  ematch _ = Right E.toilet

instance ematchPlunger :: EMatch "🪠" where
  ematch _ = Right E.plunger

instance ematchShower :: EMatch "🚿" where
  ematch _ = Right E.shower

instance ematchBathtub :: EMatch "🛁" where
  ematch _ = Right E.bathtub

instance ematchMouseTrap :: EMatch "🪤" where
  ematch _ = Right E.mouseTrap

instance ematchRazor :: EMatch "🪒" where
  ematch _ = Right E.razor

instance ematchLotionBottle :: EMatch "🧴" where
  ematch _ = Right E.lotionBottle

instance ematchSafetyPin :: EMatch "🧷" where
  ematch _ = Right E.safetyPin

instance ematchBroom :: EMatch "🧹" where
  ematch _ = Right E.broom

instance ematchBasket :: EMatch "🧺" where
  ematch _ = Right E.basket

instance ematchRollOfPaper :: EMatch "🧻" where
  ematch _ = Right E.rollOfPaper

instance ematchBucket :: EMatch "🪣" where
  ematch _ = Right E.bucket

instance ematchSoap :: EMatch "🧼" where
  ematch _ = Right E.soap

instance ematchToothbrush :: EMatch "🪥" where
  ematch _ = Right E.toothbrush

instance ematchSponge :: EMatch "🧽" where
  ematch _ = Right E.sponge

instance ematchFireExtinguisher :: EMatch "🧯" where
  ematch _ = Right E.fireExtinguisher

instance ematchShoppingCart :: EMatch "🛒" where
  ematch _ = Right E.shoppingCart

instance ematchCigarette :: EMatch "🚬" where
  ematch _ = Right E.cigarette

instance ematchCoffin :: EMatch "⚰" where
  ematch _ = Right E.coffin

instance ematchHeadstone :: EMatch "🪦" where
  ematch _ = Right E.headstone

instance ematchFuneralUrn :: EMatch "⚱" where
  ematch _ = Right E.funeralUrn

instance ematchMoai :: EMatch "🗿" where
  ematch _ = Right E.moai

instance ematchPlacard :: EMatch "🪧" where
  ematch _ = Right E.placard

instance ematchAtmSign :: EMatch "🏧" where
  ematch _ = Right E.atmSign

instance ematchLitterInBinSign :: EMatch "🚮" where
  ematch _ = Right E.litterInBinSign

instance ematchPotableWater :: EMatch "🚰" where
  ematch _ = Right E.potableWater

instance ematchWheelchairSymbol :: EMatch "♿" where
  ematch _ = Right E.wheelchairSymbol

instance ematchMenSRoom :: EMatch "🚹" where
  ematch _ = Right E.menSRoom

instance ematchWomenSRoom :: EMatch "🚺" where
  ematch _ = Right E.womenSRoom

instance ematchRestroom :: EMatch "🚻" where
  ematch _ = Right E.restroom

instance ematchBabySymbol :: EMatch "🚼" where
  ematch _ = Right E.babySymbol

instance ematchWaterCloset :: EMatch "🚾" where
  ematch _ = Right E.waterCloset

instance ematchPassportControl :: EMatch "🛂" where
  ematch _ = Right E.passportControl

instance ematchCustoms :: EMatch "🛃" where
  ematch _ = Right E.customs

instance ematchBaggageClaim :: EMatch "🛄" where
  ematch _ = Right E.baggageClaim

instance ematchLeftLuggage :: EMatch "🛅" where
  ematch _ = Right E.leftLuggage

instance ematchWarning :: EMatch "⚠" where
  ematch _ = Right E.warning

instance ematchChildrenCrossing :: EMatch "🚸" where
  ematch _ = Right E.childrenCrossing

instance ematchNoEntry :: EMatch "⛔" where
  ematch _ = Right E.noEntry

instance ematchProhibited :: EMatch "🚫" where
  ematch _ = Right E.prohibited

instance ematchNoBicycles :: EMatch "🚳" where
  ematch _ = Right E.noBicycles

instance ematchNoSmoking :: EMatch "🚭" where
  ematch _ = Right E.noSmoking

instance ematchNoLittering :: EMatch "🚯" where
  ematch _ = Right E.noLittering

instance ematchNonPotableWater :: EMatch "🚱" where
  ematch _ = Right E.nonPotableWater

instance ematchNoPedestrians :: EMatch "🚷" where
  ematch _ = Right E.noPedestrians

instance ematchNoMobilePhones :: EMatch "📵" where
  ematch _ = Right E.noMobilePhones

instance ematchNoOneUnderEighteen :: EMatch "🔞" where
  ematch _ = Right E.noOneUnderEighteen

instance ematchRadioactive :: EMatch "☢" where
  ematch _ = Right E.radioactive

instance ematchBiohazard :: EMatch "☣" where
  ematch _ = Right E.biohazard

instance ematchUpArrow :: EMatch "⬆" where
  ematch _ = Right E.upArrow

instance ematchUpRightArrow :: EMatch "↗" where
  ematch _ = Right E.upRightArrow

instance ematchRightArrow :: EMatch "➡" where
  ematch _ = Right E.rightArrow

instance ematchDownRightArrow :: EMatch "↘" where
  ematch _ = Right E.downRightArrow

instance ematchDownArrow :: EMatch "⬇" where
  ematch _ = Right E.downArrow

instance ematchDownLeftArrow :: EMatch "↙" where
  ematch _ = Right E.downLeftArrow

instance ematchLeftArrow :: EMatch "⬅" where
  ematch _ = Right E.leftArrow

instance ematchUpLeftArrow :: EMatch "↖" where
  ematch _ = Right E.upLeftArrow

instance ematchUpDownArrow :: EMatch "↕" where
  ematch _ = Right E.upDownArrow

instance ematchLeftRightArrow :: EMatch "↔" where
  ematch _ = Right E.leftRightArrow

instance ematchRightArrowCurvingLeft :: EMatch "↩" where
  ematch _ = Right E.rightArrowCurvingLeft

instance ematchLeftArrowCurvingRight :: EMatch "↪" where
  ematch _ = Right E.leftArrowCurvingRight

instance ematchRightArrowCurvingUp :: EMatch "⤴" where
  ematch _ = Right E.rightArrowCurvingUp

instance ematchRightArrowCurvingDown :: EMatch "⤵" where
  ematch _ = Right E.rightArrowCurvingDown

instance ematchClockwiseVerticalArrows :: EMatch "🔃" where
  ematch _ = Right E.clockwiseVerticalArrows

instance ematchCounterclockwiseArrowsButton :: EMatch "🔄" where
  ematch _ = Right E.counterclockwiseArrowsButton

instance ematchBackArrow :: EMatch "🔙" where
  ematch _ = Right E.backArrow

instance ematchEndArrow :: EMatch "🔚" where
  ematch _ = Right E.endArrow

instance ematchOnArrow :: EMatch "🔛" where
  ematch _ = Right E.onArrow

instance ematchSoonArrow :: EMatch "🔜" where
  ematch _ = Right E.soonArrow

instance ematchTopArrow :: EMatch "🔝" where
  ematch _ = Right E.topArrow

instance ematchPlaceOfWorship :: EMatch "🛐" where
  ematch _ = Right E.placeOfWorship

instance ematchAtomSymbol :: EMatch "⚛" where
  ematch _ = Right E.atomSymbol

instance ematchOm :: EMatch "🕉" where
  ematch _ = Right E.om

instance ematchStarOfDavid :: EMatch "✡" where
  ematch _ = Right E.starOfDavid

instance ematchWheelOfDharma :: EMatch "☸" where
  ematch _ = Right E.wheelOfDharma

instance ematchYinYang :: EMatch "☯" where
  ematch _ = Right E.yinYang

instance ematchLatinCross :: EMatch "✝" where
  ematch _ = Right E.latinCross

instance ematchOrthodoxCross :: EMatch "☦" where
  ematch _ = Right E.orthodoxCross

instance ematchStarAndCrescent :: EMatch "☪" where
  ematch _ = Right E.starAndCrescent

instance ematchPeaceSymbol :: EMatch "☮" where
  ematch _ = Right E.peaceSymbol

instance ematchMenorah :: EMatch "🕎" where
  ematch _ = Right E.menorah

instance ematchDottedSixPointedStar :: EMatch "🔯" where
  ematch _ = Right E.dottedSixPointedStar

instance ematchAries :: EMatch "♈" where
  ematch _ = Right E.aries

instance ematchTaurus :: EMatch "♉" where
  ematch _ = Right E.taurus

instance ematchGemini :: EMatch "♊" where
  ematch _ = Right E.gemini

instance ematchCancer :: EMatch "♋" where
  ematch _ = Right E.cancer

instance ematchLeo :: EMatch "♌" where
  ematch _ = Right E.leo

instance ematchVirgo :: EMatch "♍" where
  ematch _ = Right E.virgo

instance ematchLibra :: EMatch "♎" where
  ematch _ = Right E.libra

instance ematchScorpio :: EMatch "♏" where
  ematch _ = Right E.scorpio

instance ematchSagittarius :: EMatch "♐" where
  ematch _ = Right E.sagittarius

instance ematchCapricorn :: EMatch "♑" where
  ematch _ = Right E.capricorn

instance ematchAquarius :: EMatch "♒" where
  ematch _ = Right E.aquarius

instance ematchPisces :: EMatch "♓" where
  ematch _ = Right E.pisces

instance ematchOphiuchus :: EMatch "⛎" where
  ematch _ = Right E.ophiuchus

instance ematchShuffleTracksButton :: EMatch "🔀" where
  ematch _ = Right E.shuffleTracksButton

instance ematchRepeatButton :: EMatch "🔁" where
  ematch _ = Right E.repeatButton

instance ematchRepeatSingleButton :: EMatch "🔂" where
  ematch _ = Right E.repeatSingleButton

instance ematchPlayButton :: EMatch "▶" where
  ematch _ = Right E.playButton

instance ematchFastForwardButton :: EMatch "⏩" where
  ematch _ = Right E.fastForwardButton

instance ematchNextTrackButton :: EMatch "⏭" where
  ematch _ = Right E.nextTrackButton

instance ematchPlayOrPauseButton :: EMatch "⏯" where
  ematch _ = Right E.playOrPauseButton

instance ematchReverseButton :: EMatch "◀" where
  ematch _ = Right E.reverseButton

instance ematchFastReverseButton :: EMatch "⏪" where
  ematch _ = Right E.fastReverseButton

instance ematchLastTrackButton :: EMatch "⏮" where
  ematch _ = Right E.lastTrackButton

instance ematchUpwardsButton :: EMatch "🔼" where
  ematch _ = Right E.upwardsButton

instance ematchFastUpButton :: EMatch "⏫" where
  ematch _ = Right E.fastUpButton

instance ematchDownwardsButton :: EMatch "🔽" where
  ematch _ = Right E.downwardsButton

instance ematchFastDownButton :: EMatch "⏬" where
  ematch _ = Right E.fastDownButton

instance ematchPauseButton :: EMatch "⏸" where
  ematch _ = Right E.pauseButton

instance ematchStopButton :: EMatch "⏹" where
  ematch _ = Right E.stopButton

instance ematchRecordButton :: EMatch "⏺" where
  ematch _ = Right E.recordButton

instance ematchEjectButton :: EMatch "⏏" where
  ematch _ = Right E.ejectButton

instance ematchCinema :: EMatch "🎦" where
  ematch _ = Right E.cinema

instance ematchDimButton :: EMatch "🔅" where
  ematch _ = Right E.dimButton

instance ematchBrightButton :: EMatch "🔆" where
  ematch _ = Right E.brightButton

instance ematchAntennaBars :: EMatch "📶" where
  ematch _ = Right E.antennaBars

instance ematchVibrationMode :: EMatch "📳" where
  ematch _ = Right E.vibrationMode

instance ematchMobilePhoneOff :: EMatch "📴" where
  ematch _ = Right E.mobilePhoneOff

instance ematchFemaleSign :: EMatch "♀" where
  ematch _ = Right E.femaleSign

instance ematchMaleSign :: EMatch "♂" where
  ematch _ = Right E.maleSign

instance ematchTransgenderSymbol :: EMatch "⚧" where
  ematch _ = Right E.transgenderSymbol

instance ematchMultiply :: EMatch "✖" where
  ematch _ = Right E.multiply

instance ematchPlus :: EMatch "➕" where
  ematch _ = Right E.plus

instance ematchMinus :: EMatch "➖" where
  ematch _ = Right E.minus

instance ematchDivide :: EMatch "➗" where
  ematch _ = Right E.divide

instance ematchInfinity :: EMatch "♾" where
  ematch _ = Right E.infinity

instance ematchDoubleExclamationMark :: EMatch "‼" where
  ematch _ = Right E.doubleExclamationMark

instance ematchExclamationQuestionMark :: EMatch "⁉" where
  ematch _ = Right E.exclamationQuestionMark

instance ematchQuestionMark :: EMatch "❓" where
  ematch _ = Right E.questionMark

instance ematchWhiteQuestionMark :: EMatch "❔" where
  ematch _ = Right E.whiteQuestionMark

instance ematchWhiteExclamationMark :: EMatch "❕" where
  ematch _ = Right E.whiteExclamationMark

instance ematchExclamationMark :: EMatch "❗" where
  ematch _ = Right E.exclamationMark

instance ematchWavyDash :: EMatch "〰" where
  ematch _ = Right E.wavyDash

instance ematchCurrencyExchange :: EMatch "💱" where
  ematch _ = Right E.currencyExchange

instance ematchHeavyDollarSign :: EMatch "💲" where
  ematch _ = Right E.heavyDollarSign

instance ematchMedicalSymbol :: EMatch "⚕" where
  ematch _ = Right E.medicalSymbol

instance ematchRecyclingSymbol :: EMatch "♻" where
  ematch _ = Right E.recyclingSymbol

instance ematchFleurDeLis :: EMatch "⚜" where
  ematch _ = Right E.fleurDeLis

instance ematchTridentEmblem :: EMatch "🔱" where
  ematch _ = Right E.tridentEmblem

instance ematchNameBadge :: EMatch "📛" where
  ematch _ = Right E.nameBadge

instance ematchJapaneseSymbolForBeginner :: EMatch "🔰" where
  ematch _ = Right E.japaneseSymbolForBeginner

instance ematchHollowRedCircle :: EMatch "⭕" where
  ematch _ = Right E.hollowRedCircle

instance ematchCheckMarkButton :: EMatch "✅" where
  ematch _ = Right E.checkMarkButton

instance ematchCheckBoxWithCheck :: EMatch "☑" where
  ematch _ = Right E.checkBoxWithCheck

instance ematchCheckMark :: EMatch "✔" where
  ematch _ = Right E.checkMark

instance ematchCrossMark :: EMatch "❌" where
  ematch _ = Right E.crossMark

instance ematchCrossMarkButton :: EMatch "❎" where
  ematch _ = Right E.crossMarkButton

instance ematchCurlyLoop :: EMatch "➰" where
  ematch _ = Right E.curlyLoop

instance ematchDoubleCurlyLoop :: EMatch "➿" where
  ematch _ = Right E.doubleCurlyLoop

instance ematchPartAlternationMark :: EMatch "〽" where
  ematch _ = Right E.partAlternationMark

instance ematchEightSpokedAsterisk :: EMatch "✳" where
  ematch _ = Right E.eightSpokedAsterisk

instance ematchEightPointedStar :: EMatch "✴" where
  ematch _ = Right E.eightPointedStar

instance ematchSparkle :: EMatch "❇" where
  ematch _ = Right E.sparkle

instance ematchCopyright :: EMatch "©" where
  ematch _ = Right E.copyright

instance ematchRegistered :: EMatch "®" where
  ematch _ = Right E.registered

instance ematchTradeMark :: EMatch "™" where
  ematch _ = Right E.tradeMark

instance ematchKeycap10 :: EMatch "🔟" where
  ematch _ = Right E.keycap10

instance ematchInputLatinUppercase :: EMatch "🔠" where
  ematch _ = Right E.inputLatinUppercase

instance ematchInputLatinLowercase :: EMatch "🔡" where
  ematch _ = Right E.inputLatinLowercase

instance ematchInputNumbers :: EMatch "🔢" where
  ematch _ = Right E.inputNumbers

instance ematchInputSymbols :: EMatch "🔣" where
  ematch _ = Right E.inputSymbols

instance ematchInputLatinLetters :: EMatch "🔤" where
  ematch _ = Right E.inputLatinLetters

instance ematchAButtonBloodType :: EMatch "🅰" where
  ematch _ = Right E.aButtonBloodType

instance ematchAbButtonBloodType :: EMatch "🆎" where
  ematch _ = Right E.abButtonBloodType

instance ematchBButtonBloodType :: EMatch "🅱" where
  ematch _ = Right E.bButtonBloodType

instance ematchClButton :: EMatch "🆑" where
  ematch _ = Right E.clButton

instance ematchCoolButton :: EMatch "🆒" where
  ematch _ = Right E.coolButton

instance ematchFreeButton :: EMatch "🆓" where
  ematch _ = Right E.freeButton

instance ematchInformation :: EMatch "ℹ" where
  ematch _ = Right E.information

instance ematchIdButton :: EMatch "🆔" where
  ematch _ = Right E.idButton

instance ematchCircledM :: EMatch "Ⓜ" where
  ematch _ = Right E.circledM

instance ematchNewButton :: EMatch "🆕" where
  ematch _ = Right E.newButton

instance ematchNgButton :: EMatch "🆖" where
  ematch _ = Right E.ngButton

instance ematchOButtonBloodType :: EMatch "🅾" where
  ematch _ = Right E.oButtonBloodType

instance ematchOkButton :: EMatch "🆗" where
  ematch _ = Right E.okButton

instance ematchPButton :: EMatch "🅿" where
  ematch _ = Right E.pButton

instance ematchSosButton :: EMatch "🆘" where
  ematch _ = Right E.sosButton

instance ematchUpButton :: EMatch "🆙" where
  ematch _ = Right E.upButton

instance ematchVsButton :: EMatch "🆚" where
  ematch _ = Right E.vsButton

instance ematchJapaneseHereButton :: EMatch "🈁" where
  ematch _ = Right E.japaneseHereButton

instance ematchJapaneseServiceChargeButton :: EMatch "🈂" where
  ematch _ = Right E.japaneseServiceChargeButton

instance ematchJapaneseMonthlyAmountButton :: EMatch "🈷" where
  ematch _ = Right E.japaneseMonthlyAmountButton

instance ematchJapaneseNotFreeOfChargeButton :: EMatch "🈶" where
  ematch _ = Right E.japaneseNotFreeOfChargeButton

instance ematchJapaneseReservedButton :: EMatch "🈯" where
  ematch _ = Right E.japaneseReservedButton

instance ematchJapaneseBargainButton :: EMatch "🉐" where
  ematch _ = Right E.japaneseBargainButton

instance ematchJapaneseDiscountButton :: EMatch "🈹" where
  ematch _ = Right E.japaneseDiscountButton

instance ematchJapaneseFreeOfChargeButton :: EMatch "🈚" where
  ematch _ = Right E.japaneseFreeOfChargeButton

instance ematchJapaneseProhibitedButton :: EMatch "🈲" where
  ematch _ = Right E.japaneseProhibitedButton

instance ematchJapaneseAcceptableButton :: EMatch "🉑" where
  ematch _ = Right E.japaneseAcceptableButton

instance ematchJapaneseApplicationButton :: EMatch "🈸" where
  ematch _ = Right E.japaneseApplicationButton

instance ematchJapanesePassingGradeButton :: EMatch "🈴" where
  ematch _ = Right E.japanesePassingGradeButton

instance ematchJapaneseVacancyButton :: EMatch "🈳" where
  ematch _ = Right E.japaneseVacancyButton

instance ematchJapaneseCongratulationsButton :: EMatch "㊗" where
  ematch _ = Right E.japaneseCongratulationsButton

instance ematchJapaneseSecretButton :: EMatch "㊙" where
  ematch _ = Right E.japaneseSecretButton

instance ematchJapaneseOpenForBusinessButton :: EMatch "🈺" where
  ematch _ = Right E.japaneseOpenForBusinessButton

instance ematchJapaneseNoVacancyButton :: EMatch "🈵" where
  ematch _ = Right E.japaneseNoVacancyButton

instance ematchRedCircle :: EMatch "🔴" where
  ematch _ = Right E.redCircle

instance ematchOrangeCircle :: EMatch "🟠" where
  ematch _ = Right E.orangeCircle

instance ematchYellowCircle :: EMatch "🟡" where
  ematch _ = Right E.yellowCircle

instance ematchGreenCircle :: EMatch "🟢" where
  ematch _ = Right E.greenCircle

instance ematchBlueCircle :: EMatch "🔵" where
  ematch _ = Right E.blueCircle

instance ematchPurpleCircle :: EMatch "🟣" where
  ematch _ = Right E.purpleCircle

instance ematchBrownCircle :: EMatch "🟤" where
  ematch _ = Right E.brownCircle

instance ematchBlackCircle :: EMatch "⚫" where
  ematch _ = Right E.blackCircle

instance ematchWhiteCircle :: EMatch "⚪" where
  ematch _ = Right E.whiteCircle

instance ematchRedSquare :: EMatch "🟥" where
  ematch _ = Right E.redSquare

instance ematchOrangeSquare :: EMatch "🟧" where
  ematch _ = Right E.orangeSquare

instance ematchYellowSquare :: EMatch "🟨" where
  ematch _ = Right E.yellowSquare

instance ematchGreenSquare :: EMatch "🟩" where
  ematch _ = Right E.greenSquare

instance ematchBlueSquare :: EMatch "🟦" where
  ematch _ = Right E.blueSquare

instance ematchPurpleSquare :: EMatch "🟪" where
  ematch _ = Right E.purpleSquare

instance ematchBrownSquare :: EMatch "🟫" where
  ematch _ = Right E.brownSquare

instance ematchBlackLargeSquare :: EMatch "⬛" where
  ematch _ = Right E.blackLargeSquare

instance ematchWhiteLargeSquare :: EMatch "⬜" where
  ematch _ = Right E.whiteLargeSquare

instance ematchBlackMediumSquare :: EMatch "◼" where
  ematch _ = Right E.blackMediumSquare

instance ematchWhiteMediumSquare :: EMatch "◻" where
  ematch _ = Right E.whiteMediumSquare

instance ematchBlackMediumSmallSquare :: EMatch "◾" where
  ematch _ = Right E.blackMediumSmallSquare

instance ematchWhiteMediumSmallSquare :: EMatch "◽" where
  ematch _ = Right E.whiteMediumSmallSquare

instance ematchBlackSmallSquare :: EMatch "▪" where
  ematch _ = Right E.blackSmallSquare

instance ematchWhiteSmallSquare :: EMatch "▫" where
  ematch _ = Right E.whiteSmallSquare

instance ematchLargeOrangeDiamond :: EMatch "🔶" where
  ematch _ = Right E.largeOrangeDiamond

instance ematchLargeBlueDiamond :: EMatch "🔷" where
  ematch _ = Right E.largeBlueDiamond

instance ematchSmallOrangeDiamond :: EMatch "🔸" where
  ematch _ = Right E.smallOrangeDiamond

instance ematchSmallBlueDiamond :: EMatch "🔹" where
  ematch _ = Right E.smallBlueDiamond

instance ematchRedTrianglePointedUp :: EMatch "🔺" where
  ematch _ = Right E.redTrianglePointedUp

instance ematchRedTrianglePointedDown :: EMatch "🔻" where
  ematch _ = Right E.redTrianglePointedDown

instance ematchDiamondWithADot :: EMatch "💠" where
  ematch _ = Right E.diamondWithADot

instance ematchRadioButton :: EMatch "🔘" where
  ematch _ = Right E.radioButton

instance ematchWhiteSquareButton :: EMatch "🔳" where
  ematch _ = Right E.whiteSquareButton

instance ematchBlackSquareButton :: EMatch "🔲" where
  ematch _ = Right E.blackSquareButton

instance ematchChequeredFlag :: EMatch "🏁" where
  ematch _ = Right E.chequeredFlag

instance ematchTriangularFlag :: EMatch "🚩" where
  ematch _ = Right E.triangularFlag

instance ematchCrossedFlags :: EMatch "🎌" where
  ematch _ = Right E.crossedFlags

instance ematchBlackFlag :: EMatch "🏴" where
  ematch _ = Right E.blackFlag

instance ematchWhiteFlag :: EMatch "🏳" where
  ematch _ = Right E.whiteFlag
