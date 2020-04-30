module Emo8.Parser.EConvert
  ( class EConvert
  , class Match
  ) where

import Emo8.Parser.SpecChar
import Emo8.Parser.EList as EL
import Emo8.Parser.Emoji as E
import Prim.Symbol as S

class EConvert (s :: Symbol) (el :: EL.EList) | s -> el

instance eConvertNil :: EConvert "" EL.ENil
else instance eConvertCons ::
  ( S.Cons head tail union
  , EConvert tail el
  , Match head out
  ) =>
  EConvert union (EL.ECons out el)

class Match (i :: Symbol) (o :: E.Emoji) | i -> o

instance matchSpace :: Match " " (E.Rest Space)

instance matchReturn :: Match "\n" (E.Rest Return)

instance matchGrinningFace :: Match "😀" E.GrinningFace

instance matchGrinningFaceWithBigEyes :: Match "😃" E.GrinningFaceWithBigEyes

instance matchGrinningFaceWithSmilingEyes :: Match "😄" E.GrinningFaceWithSmilingEyes

instance matchBeamingFaceWithSmilingEyes :: Match "😁" E.BeamingFaceWithSmilingEyes

instance matchGrinningSquintingFace :: Match "😆" E.GrinningSquintingFace

instance matchGrinningFaceWithSweat :: Match "😅" E.GrinningFaceWithSweat

instance matchRollingOnTheFloorLaughing :: Match "🤣" E.RollingOnTheFloorLaughing

instance matchFaceWithTearsOfJoy :: Match "😂" E.FaceWithTearsOfJoy

instance matchSlightlySmilingFace :: Match "🙂" E.SlightlySmilingFace

instance matchUpsideDownFace :: Match "🙃" E.UpsideDownFace

instance matchWinkingFace :: Match "😉" E.WinkingFace

instance matchSmilingFaceWithSmilingEyes :: Match "😊" E.SmilingFaceWithSmilingEyes

instance matchSmilingFaceWithHalo :: Match "😇" E.SmilingFaceWithHalo

instance matchSmilingFaceWithHearts :: Match "🥰" E.SmilingFaceWithHearts

instance matchSmilingFaceWithHeartEyes :: Match "😍" E.SmilingFaceWithHeartEyes

instance matchStarStruck :: Match "🤩" E.StarStruck

instance matchFaceBlowingAKiss :: Match "😘" E.FaceBlowingAKiss

instance matchKissingFace :: Match "😗" E.KissingFace

instance matchSmilingFace :: Match "☺" E.SmilingFace

instance matchKissingFaceWithClosedEyes :: Match "😚" E.KissingFaceWithClosedEyes

instance matchKissingFaceWithSmilingEyes :: Match "😙" E.KissingFaceWithSmilingEyes

instance matchSmilingFaceWithTear :: Match "🥲" E.SmilingFaceWithTear

instance matchFaceSavoringFood :: Match "😋" E.FaceSavoringFood

instance matchFaceWithTongue :: Match "😛" E.FaceWithTongue

instance matchWinkingFaceWithTongue :: Match "😜" E.WinkingFaceWithTongue

instance matchZanyFace :: Match "🤪" E.ZanyFace

instance matchSquintingFaceWithTongue :: Match "😝" E.SquintingFaceWithTongue

instance matchMoneyMouthFace :: Match "🤑" E.MoneyMouthFace

instance matchHuggingFace :: Match "🤗" E.HuggingFace

instance matchFaceWithHandOverMouth :: Match "🤭" E.FaceWithHandOverMouth

instance matchShushingFace :: Match "🤫" E.ShushingFace

instance matchThinkingFace :: Match "🤔" E.ThinkingFace

instance matchZipperMouthFace :: Match "🤐" E.ZipperMouthFace

instance matchFaceWithRaisedEyebrow :: Match "🤨" E.FaceWithRaisedEyebrow

instance matchNeutralFace :: Match "😐" E.NeutralFace

instance matchExpressionlessFace :: Match "😑" E.ExpressionlessFace

instance matchFaceWithoutMouth :: Match "😶" E.FaceWithoutMouth

instance matchSmirkingFace :: Match "😏" E.SmirkingFace

instance matchUnamusedFace :: Match "😒" E.UnamusedFace

instance matchFaceWithRollingEyes :: Match "🙄" E.FaceWithRollingEyes

instance matchGrimacingFace :: Match "😬" E.GrimacingFace

instance matchLyingFace :: Match "🤥" E.LyingFace

instance matchRelievedFace :: Match "😌" E.RelievedFace

instance matchPensiveFace :: Match "😔" E.PensiveFace

instance matchSleepyFace :: Match "😪" E.SleepyFace

instance matchDroolingFace :: Match "🤤" E.DroolingFace

instance matchSleepingFace :: Match "😴" E.SleepingFace

instance matchFaceWithMedicalMask :: Match "😷" E.FaceWithMedicalMask

instance matchFaceWithThermometer :: Match "🤒" E.FaceWithThermometer

instance matchFaceWithHeadBandage :: Match "🤕" E.FaceWithHeadBandage

instance matchNauseatedFace :: Match "🤢" E.NauseatedFace

instance matchFaceVomiting :: Match "🤮" E.FaceVomiting

instance matchSneezingFace :: Match "🤧" E.SneezingFace

instance matchHotFace :: Match "🥵" E.HotFace

instance matchColdFace :: Match "🥶" E.ColdFace

instance matchWoozyFace :: Match "🥴" E.WoozyFace

instance matchDizzyFace :: Match "😵" E.DizzyFace

instance matchExplodingHead :: Match "🤯" E.ExplodingHead

instance matchCowboyHatFace :: Match "🤠" E.CowboyHatFace

instance matchPartyingFace :: Match "🥳" E.PartyingFace

instance matchDisguisedFace :: Match "🥸" E.DisguisedFace

instance matchSmilingFaceWithSunglasses :: Match "😎" E.SmilingFaceWithSunglasses

instance matchNerdFace :: Match "🤓" E.NerdFace

instance matchFaceWithMonocle :: Match "🧐" E.FaceWithMonocle

instance matchConfusedFace :: Match "😕" E.ConfusedFace

instance matchWorriedFace :: Match "😟" E.WorriedFace

instance matchSlightlyFrowningFace :: Match "🙁" E.SlightlyFrowningFace

instance matchFrowningFace :: Match "☹" E.FrowningFace

instance matchFaceWithOpenMouth :: Match "😮" E.FaceWithOpenMouth

instance matchHushedFace :: Match "😯" E.HushedFace

instance matchAstonishedFace :: Match "😲" E.AstonishedFace

instance matchFlushedFace :: Match "😳" E.FlushedFace

instance matchPleadingFace :: Match "🥺" E.PleadingFace

instance matchFrowningFaceWithOpenMouth :: Match "😦" E.FrowningFaceWithOpenMouth

instance matchAnguishedFace :: Match "😧" E.AnguishedFace

instance matchFearfulFace :: Match "😨" E.FearfulFace

instance matchAnxiousFaceWithSweat :: Match "😰" E.AnxiousFaceWithSweat

instance matchSadButRelievedFace :: Match "😥" E.SadButRelievedFace

instance matchCryingFace :: Match "😢" E.CryingFace

instance matchLoudlyCryingFace :: Match "😭" E.LoudlyCryingFace

instance matchFaceScreamingInFear :: Match "😱" E.FaceScreamingInFear

instance matchConfoundedFace :: Match "😖" E.ConfoundedFace

instance matchPerseveringFace :: Match "😣" E.PerseveringFace

instance matchDisappointedFace :: Match "😞" E.DisappointedFace

instance matchDowncastFaceWithSweat :: Match "😓" E.DowncastFaceWithSweat

instance matchWearyFace :: Match "😩" E.WearyFace

instance matchTiredFace :: Match "😫" E.TiredFace

instance matchYawningFace :: Match "🥱" E.YawningFace

instance matchFaceWithSteamFromNose :: Match "😤" E.FaceWithSteamFromNose

instance matchPoutingFace :: Match "😡" E.PoutingFace

instance matchAngryFace :: Match "😠" E.AngryFace

instance matchFaceWithSymbolsOnMouth :: Match "🤬" E.FaceWithSymbolsOnMouth

instance matchSmilingFaceWithHorns :: Match "😈" E.SmilingFaceWithHorns

instance matchAngryFaceWithHorns :: Match "👿" E.AngryFaceWithHorns

instance matchSkull :: Match "💀" E.Skull

instance matchSkullAndCrossbones :: Match "☠" E.SkullAndCrossbones

instance matchPileOfPoo :: Match "💩" E.PileOfPoo

instance matchClownFace :: Match "🤡" E.ClownFace

instance matchOgre :: Match "👹" E.Ogre

instance matchGoblin :: Match "👺" E.Goblin

instance matchGhost :: Match "👻" E.Ghost

instance matchAlien :: Match "👽" E.Alien

instance matchAlienMonster :: Match "👾" E.AlienMonster

instance matchRobot :: Match "🤖" E.Robot

instance matchGrinningCat :: Match "😺" E.GrinningCat

instance matchGrinningCatWithSmilingEyes :: Match "😸" E.GrinningCatWithSmilingEyes

instance matchCatWithTearsOfJoy :: Match "😹" E.CatWithTearsOfJoy

instance matchSmilingCatWithHeartEyes :: Match "😻" E.SmilingCatWithHeartEyes

instance matchCatWithWrySmile :: Match "😼" E.CatWithWrySmile

instance matchKissingCat :: Match "😽" E.KissingCat

instance matchWearyCat :: Match "🙀" E.WearyCat

instance matchCryingCat :: Match "😿" E.CryingCat

instance matchPoutingCat :: Match "😾" E.PoutingCat

instance matchSeeNoEvilMonkey :: Match "🙈" E.SeeNoEvilMonkey

instance matchHearNoEvilMonkey :: Match "🙉" E.HearNoEvilMonkey

instance matchSpeakNoEvilMonkey :: Match "🙊" E.SpeakNoEvilMonkey

instance matchKissMark :: Match "💋" E.KissMark

instance matchLoveLetter :: Match "💌" E.LoveLetter

instance matchHeartWithArrow :: Match "💘" E.HeartWithArrow

instance matchHeartWithRibbon :: Match "💝" E.HeartWithRibbon

instance matchSparklingHeart :: Match "💖" E.SparklingHeart

instance matchGrowingHeart :: Match "💗" E.GrowingHeart

instance matchBeatingHeart :: Match "💓" E.BeatingHeart

instance matchRevolvingHearts :: Match "💞" E.RevolvingHearts

instance matchTwoHearts :: Match "💕" E.TwoHearts

instance matchHeartDecoration :: Match "💟" E.HeartDecoration

instance matchHeartExclamation :: Match "❣" E.HeartExclamation

instance matchBrokenHeart :: Match "💔" E.BrokenHeart

instance matchRedHeart :: Match "❤" E.RedHeart

instance matchOrangeHeart :: Match "🧡" E.OrangeHeart

instance matchYellowHeart :: Match "💛" E.YellowHeart

instance matchGreenHeart :: Match "💚" E.GreenHeart

instance matchBlueHeart :: Match "💙" E.BlueHeart

instance matchPurpleHeart :: Match "💜" E.PurpleHeart

instance matchBrownHeart :: Match "🤎" E.BrownHeart

instance matchBlackHeart :: Match "🖤" E.BlackHeart

instance matchWhiteHeart :: Match "🤍" E.WhiteHeart

instance matchHundredPoints :: Match "💯" E.HundredPoints

instance matchAngerSymbol :: Match "💢" E.AngerSymbol

instance matchCollision :: Match "💥" E.Collision

instance matchDizzy :: Match "💫" E.Dizzy

instance matchSweatDroplets :: Match "💦" E.SweatDroplets

instance matchDashingAway :: Match "💨" E.DashingAway

instance matchHole :: Match "🕳" E.Hole

instance matchBomb :: Match "💣" E.Bomb

instance matchSpeechBalloon :: Match "💬" E.SpeechBalloon

instance matchLeftSpeechBubble :: Match "🗨" E.LeftSpeechBubble

instance matchRightAngerBubble :: Match "🗯" E.RightAngerBubble

instance matchThoughtBalloon :: Match "💭" E.ThoughtBalloon

instance matchZzz :: Match "💤" E.Zzz

instance matchWavingHand :: Match "👋" E.WavingHand

instance matchRaisedBackOfHand :: Match "🤚" E.RaisedBackOfHand

instance matchHandWithFingersSplayed :: Match "🖐" E.HandWithFingersSplayed

instance matchRaisedHand :: Match "✋" E.RaisedHand

instance matchVulcanSalute :: Match "🖖" E.VulcanSalute

instance matchOkHand :: Match "👌" E.OkHand

instance matchPinchedFingers :: Match "🤌" E.PinchedFingers

instance matchPinchingHand :: Match "🤏" E.PinchingHand

instance matchVictoryHand :: Match "✌" E.VictoryHand

instance matchCrossedFingers :: Match "🤞" E.CrossedFingers

instance matchLoveYouGesture :: Match "🤟" E.LoveYouGesture

instance matchSignOfTheHorns :: Match "🤘" E.SignOfTheHorns

instance matchCallMeHand :: Match "🤙" E.CallMeHand

instance matchBackhandIndexPointingLeft :: Match "👈" E.BackhandIndexPointingLeft

instance matchBackhandIndexPointingRight :: Match "👉" E.BackhandIndexPointingRight

instance matchBackhandIndexPointingUp :: Match "👆" E.BackhandIndexPointingUp

instance matchMiddleFinger :: Match "🖕" E.MiddleFinger

instance matchBackhandIndexPointingDown :: Match "👇" E.BackhandIndexPointingDown

instance matchIndexPointingUp :: Match "☝" E.IndexPointingUp

instance matchThumbsUp :: Match "👍" E.ThumbsUp

instance matchThumbsDown :: Match "👎" E.ThumbsDown

instance matchRaisedFist :: Match "✊" E.RaisedFist

instance matchOncomingFist :: Match "👊" E.OncomingFist

instance matchLeftFacingFist :: Match "🤛" E.LeftFacingFist

instance matchRightFacingFist :: Match "🤜" E.RightFacingFist

instance matchClappingHands :: Match "👏" E.ClappingHands

instance matchRaisingHands :: Match "🙌" E.RaisingHands

instance matchOpenHands :: Match "👐" E.OpenHands

instance matchPalmsUpTogether :: Match "🤲" E.PalmsUpTogether

instance matchHandshake :: Match "🤝" E.Handshake

instance matchFoldedHands :: Match "🙏" E.FoldedHands

instance matchWritingHand :: Match "✍" E.WritingHand

instance matchNailPolish :: Match "💅" E.NailPolish

instance matchSelfie :: Match "🤳" E.Selfie

instance matchFlexedBiceps :: Match "💪" E.FlexedBiceps

instance matchMechanicalArm :: Match "🦾" E.MechanicalArm

instance matchMechanicalLeg :: Match "🦿" E.MechanicalLeg

instance matchLeg :: Match "🦵" E.Leg

instance matchFoot :: Match "🦶" E.Foot

instance matchEar :: Match "👂" E.Ear

instance matchEarWithHearingAid :: Match "🦻" E.EarWithHearingAid

instance matchNose :: Match "👃" E.Nose

instance matchBrain :: Match "🧠" E.Brain

instance matchAnatomicalHeart :: Match "🫀" E.AnatomicalHeart

instance matchLungs :: Match "🫁" E.Lungs

instance matchTooth :: Match "🦷" E.Tooth

instance matchBone :: Match "🦴" E.Bone

instance matchEyes :: Match "👀" E.Eyes

instance matchEye :: Match "👁" E.Eye

instance matchTongue :: Match "👅" E.Tongue

instance matchMouth :: Match "👄" E.Mouth

instance matchBaby :: Match "👶" E.Baby

instance matchChild :: Match "🧒" E.Child

instance matchBoy :: Match "👦" E.Boy

instance matchGirl :: Match "👧" E.Girl

instance matchPerson :: Match "🧑" E.Person

instance matchPersonBlondHair :: Match "👱" E.PersonBlondHair

instance matchMan :: Match "👨" E.Man

instance matchManBeard :: Match "🧔" E.ManBeard

instance matchWoman :: Match "👩" E.Woman

instance matchOlderPerson :: Match "🧓" E.OlderPerson

instance matchOldMan :: Match "👴" E.OldMan

instance matchOldWoman :: Match "👵" E.OldWoman

instance matchPersonFrowning :: Match "🙍" E.PersonFrowning

instance matchPersonPouting :: Match "🙎" E.PersonPouting

instance matchPersonGesturingNo :: Match "🙅" E.PersonGesturingNo

instance matchPersonGesturingOk :: Match "🙆" E.PersonGesturingOk

instance matchPersonTippingHand :: Match "💁" E.PersonTippingHand

instance matchPersonRaisingHand :: Match "🙋" E.PersonRaisingHand

instance matchDeafPerson :: Match "🧏" E.DeafPerson

instance matchPersonBowing :: Match "🙇" E.PersonBowing

instance matchPersonFacepalming :: Match "🤦" E.PersonFacepalming

instance matchPersonShrugging :: Match "🤷" E.PersonShrugging

instance matchPoliceOfficer :: Match "👮" E.PoliceOfficer

instance matchDetective :: Match "🕵" E.Detective

instance matchGuard :: Match "💂" E.Guard

instance matchNinja :: Match "🥷" E.Ninja

instance matchConstructionWorker :: Match "👷" E.ConstructionWorker

instance matchPrince :: Match "🤴" E.Prince

instance matchPrincess :: Match "👸" E.Princess

instance matchPersonWearingTurban :: Match "👳" E.PersonWearingTurban

instance matchPersonWithSkullcap :: Match "👲" E.PersonWithSkullcap

instance matchWomanWithHeadscarf :: Match "🧕" E.WomanWithHeadscarf

instance matchPersonInTuxedo :: Match "🤵" E.PersonInTuxedo

instance matchPersonWithVeil :: Match "👰" E.PersonWithVeil

instance matchPregnantWoman :: Match "🤰" E.PregnantWoman

instance matchBreastFeeding :: Match "🤱" E.BreastFeeding

instance matchBabyAngel :: Match "👼" E.BabyAngel

instance matchSantaClaus :: Match "🎅" E.SantaClaus

instance matchMrsClaus :: Match "🤶" E.MrsClaus

instance matchSuperhero :: Match "🦸" E.Superhero

instance matchSupervillain :: Match "🦹" E.Supervillain

instance matchMage :: Match "🧙" E.Mage

instance matchFairy :: Match "🧚" E.Fairy

instance matchVampire :: Match "🧛" E.Vampire

instance matchMerperson :: Match "🧜" E.Merperson

instance matchElf :: Match "🧝" E.Elf

instance matchGenie :: Match "🧞" E.Genie

instance matchZombie :: Match "🧟" E.Zombie

instance matchPersonGettingMassage :: Match "💆" E.PersonGettingMassage

instance matchPersonGettingHaircut :: Match "💇" E.PersonGettingHaircut

instance matchPersonWalking :: Match "🚶" E.PersonWalking

instance matchPersonStanding :: Match "🧍" E.PersonStanding

instance matchPersonKneeling :: Match "🧎" E.PersonKneeling

instance matchPersonRunning :: Match "🏃" E.PersonRunning

instance matchWomanDancing :: Match "💃" E.WomanDancing

instance matchManDancing :: Match "🕺" E.ManDancing

instance matchPersonInSuitLevitating :: Match "🕴" E.PersonInSuitLevitating

instance matchPeopleWithBunnyEars :: Match "👯" E.PeopleWithBunnyEars

instance matchPersonInSteamyRoom :: Match "🧖" E.PersonInSteamyRoom

instance matchPersonClimbing :: Match "🧗" E.PersonClimbing

instance matchPersonFencing :: Match "🤺" E.PersonFencing

instance matchHorseRacing :: Match "🏇" E.HorseRacing

instance matchSkier :: Match "⛷" E.Skier

instance matchSnowboarder :: Match "🏂" E.Snowboarder

instance matchPersonGolfing :: Match "🏌" E.PersonGolfing

instance matchPersonSurfing :: Match "🏄" E.PersonSurfing

instance matchPersonRowingBoat :: Match "🚣" E.PersonRowingBoat

instance matchPersonSwimming :: Match "🏊" E.PersonSwimming

instance matchPersonBouncingBall :: Match "⛹" E.PersonBouncingBall

instance matchPersonLiftingWeights :: Match "🏋" E.PersonLiftingWeights

instance matchPersonBiking :: Match "🚴" E.PersonBiking

instance matchPersonMountainBiking :: Match "🚵" E.PersonMountainBiking

instance matchPersonCartwheeling :: Match "🤸" E.PersonCartwheeling

instance matchPeopleWrestling :: Match "🤼" E.PeopleWrestling

instance matchPersonPlayingWaterPolo :: Match "🤽" E.PersonPlayingWaterPolo

instance matchPersonPlayingHandball :: Match "🤾" E.PersonPlayingHandball

instance matchPersonJuggling :: Match "🤹" E.PersonJuggling

instance matchPersonInLotusPosition :: Match "🧘" E.PersonInLotusPosition

instance matchPersonTakingBath :: Match "🛀" E.PersonTakingBath

instance matchPersonInBed :: Match "🛌" E.PersonInBed

instance matchWomenHoldingHands :: Match "👭" E.WomenHoldingHands

instance matchWomanAndManHoldingHands :: Match "👫" E.WomanAndManHoldingHands

instance matchMenHoldingHands :: Match "👬" E.MenHoldingHands

instance matchKiss :: Match "💏" E.Kiss

instance matchCoupleWithHeart :: Match "💑" E.CoupleWithHeart

instance matchFamily :: Match "👪" E.Family

instance matchSpeakingHead :: Match "🗣" E.SpeakingHead

instance matchBustInSilhouette :: Match "👤" E.BustInSilhouette

instance matchBustsInSilhouette :: Match "👥" E.BustsInSilhouette

instance matchPeopleHugging :: Match "🫂" E.PeopleHugging

instance matchFootprints :: Match "👣" E.Footprints

instance matchLightSkinTone :: Match "🏻" E.LightSkinTone

instance matchMediumLightSkinTone :: Match "🏼" E.MediumLightSkinTone

instance matchMediumSkinTone :: Match "🏽" E.MediumSkinTone

instance matchMediumDarkSkinTone :: Match "🏾" E.MediumDarkSkinTone

instance matchDarkSkinTone :: Match "🏿" E.DarkSkinTone

instance matchRedHair :: Match "🦰" E.RedHair

instance matchCurlyHair :: Match "🦱" E.CurlyHair

instance matchWhiteHair :: Match "🦳" E.WhiteHair

instance matchBald :: Match "🦲" E.Bald

instance matchMonkeyFace :: Match "🐵" E.MonkeyFace

instance matchMonkey :: Match "🐒" E.Monkey

instance matchGorilla :: Match "🦍" E.Gorilla

instance matchOrangutan :: Match "🦧" E.Orangutan

instance matchDogFace :: Match "🐶" E.DogFace

instance matchDog :: Match "🐕" E.Dog

instance matchGuideDog :: Match "🦮" E.GuideDog

instance matchPoodle :: Match "🐩" E.Poodle

instance matchWolf :: Match "🐺" E.Wolf

instance matchFox :: Match "🦊" E.Fox

instance matchRaccoon :: Match "🦝" E.Raccoon

instance matchCatFace :: Match "🐱" E.CatFace

instance matchCat :: Match "🐈" E.Cat

instance matchLion :: Match "🦁" E.Lion

instance matchTigerFace :: Match "🐯" E.TigerFace

instance matchTiger :: Match "🐅" E.Tiger

instance matchLeopard :: Match "🐆" E.Leopard

instance matchHorseFace :: Match "🐴" E.HorseFace

instance matchHorse :: Match "🐎" E.Horse

instance matchUnicorn :: Match "🦄" E.Unicorn

instance matchZebra :: Match "🦓" E.Zebra

instance matchDeer :: Match "🦌" E.Deer

instance matchBison :: Match "🦬" E.Bison

instance matchCowFace :: Match "🐮" E.CowFace

instance matchOx :: Match "🐂" E.Ox

instance matchWaterBuffalo :: Match "🐃" E.WaterBuffalo

instance matchCow :: Match "🐄" E.Cow

instance matchPigFace :: Match "🐷" E.PigFace

instance matchPig :: Match "🐖" E.Pig

instance matchBoar :: Match "🐗" E.Boar

instance matchPigNose :: Match "🐽" E.PigNose

instance matchRam :: Match "🐏" E.Ram

instance matchEwe :: Match "🐑" E.Ewe

instance matchGoat :: Match "🐐" E.Goat

instance matchCamel :: Match "🐪" E.Camel

instance matchTwoHumpCamel :: Match "🐫" E.TwoHumpCamel

instance matchLlama :: Match "🦙" E.Llama

instance matchGiraffe :: Match "🦒" E.Giraffe

instance matchElephant :: Match "🐘" E.Elephant

instance matchMammoth :: Match "🦣" E.Mammoth

instance matchRhinoceros :: Match "🦏" E.Rhinoceros

instance matchHippopotamus :: Match "🦛" E.Hippopotamus

instance matchMouseFace :: Match "🐭" E.MouseFace

instance matchMouse :: Match "🐁" E.Mouse

instance matchRat :: Match "🐀" E.Rat

instance matchHamster :: Match "🐹" E.Hamster

instance matchRabbitFace :: Match "🐰" E.RabbitFace

instance matchRabbit :: Match "🐇" E.Rabbit

instance matchChipmunk :: Match "🐿" E.Chipmunk

instance matchBeaver :: Match "🦫" E.Beaver

instance matchHedgehog :: Match "🦔" E.Hedgehog

instance matchBat :: Match "🦇" E.Bat

instance matchBear :: Match "🐻" E.Bear

instance matchKoala :: Match "🐨" E.Koala

instance matchPanda :: Match "🐼" E.Panda

instance matchSloth :: Match "🦥" E.Sloth

instance matchOtter :: Match "🦦" E.Otter

instance matchSkunk :: Match "🦨" E.Skunk

instance matchKangaroo :: Match "🦘" E.Kangaroo

instance matchBadger :: Match "🦡" E.Badger

instance matchPawPrints :: Match "🐾" E.PawPrints

instance matchTurkey :: Match "🦃" E.Turkey

instance matchChicken :: Match "🐔" E.Chicken

instance matchRooster :: Match "🐓" E.Rooster

instance matchHatchingChick :: Match "🐣" E.HatchingChick

instance matchBabyChick :: Match "🐤" E.BabyChick

instance matchFrontFacingBabyChick :: Match "🐥" E.FrontFacingBabyChick

instance matchBird :: Match "🐦" E.Bird

instance matchPenguin :: Match "🐧" E.Penguin

instance matchDove :: Match "🕊" E.Dove

instance matchEagle :: Match "🦅" E.Eagle

instance matchDuck :: Match "🦆" E.Duck

instance matchSwan :: Match "🦢" E.Swan

instance matchOwl :: Match "🦉" E.Owl

instance matchDodo :: Match "🦤" E.Dodo

instance matchFeather :: Match "🪶" E.Feather

instance matchFlamingo :: Match "🦩" E.Flamingo

instance matchPeacock :: Match "🦚" E.Peacock

instance matchParrot :: Match "🦜" E.Parrot

instance matchFrog :: Match "🐸" E.Frog

instance matchCrocodile :: Match "🐊" E.Crocodile

instance matchTurtle :: Match "🐢" E.Turtle

instance matchLizard :: Match "🦎" E.Lizard

instance matchSnake :: Match "🐍" E.Snake

instance matchDragonFace :: Match "🐲" E.DragonFace

instance matchDragon :: Match "🐉" E.Dragon

instance matchSauropod :: Match "🦕" E.Sauropod

instance matchTRex :: Match "🦖" E.TRex

instance matchSpoutingWhale :: Match "🐳" E.SpoutingWhale

instance matchWhale :: Match "🐋" E.Whale

instance matchDolphin :: Match "🐬" E.Dolphin

instance matchSeal :: Match "🦭" E.Seal

instance matchFish :: Match "🐟" E.Fish

instance matchTropicalFish :: Match "🐠" E.TropicalFish

instance matchBlowfish :: Match "🐡" E.Blowfish

instance matchShark :: Match "🦈" E.Shark

instance matchOctopus :: Match "🐙" E.Octopus

instance matchSpiralShell :: Match "🐚" E.SpiralShell

instance matchSnail :: Match "🐌" E.Snail

instance matchButterfly :: Match "🦋" E.Butterfly

instance matchBug :: Match "🐛" E.Bug

instance matchAnt :: Match "🐜" E.Ant

instance matchHoneybee :: Match "🐝" E.Honeybee

instance matchBeetle :: Match "🪲" E.Beetle

instance matchLadyBeetle :: Match "🐞" E.LadyBeetle

instance matchCricket :: Match "🦗" E.Cricket

instance matchCockroach :: Match "🪳" E.Cockroach

instance matchSpider :: Match "🕷" E.Spider

instance matchSpiderWeb :: Match "🕸" E.SpiderWeb

instance matchScorpion :: Match "🦂" E.Scorpion

instance matchMosquito :: Match "🦟" E.Mosquito

instance matchFly :: Match "🪰" E.Fly

instance matchWorm :: Match "🪱" E.Worm

instance matchMicrobe :: Match "🦠" E.Microbe

instance matchBouquet :: Match "💐" E.Bouquet

instance matchCherryBlossom :: Match "🌸" E.CherryBlossom

instance matchWhiteFlower :: Match "💮" E.WhiteFlower

instance matchRosette :: Match "🏵" E.Rosette

instance matchRose :: Match "🌹" E.Rose

instance matchWiltedFlower :: Match "🥀" E.WiltedFlower

instance matchHibiscus :: Match "🌺" E.Hibiscus

instance matchSunflower :: Match "🌻" E.Sunflower

instance matchBlossom :: Match "🌼" E.Blossom

instance matchTulip :: Match "🌷" E.Tulip

instance matchSeedling :: Match "🌱" E.Seedling

instance matchPottedPlant :: Match "🪴" E.PottedPlant

instance matchEvergreenTree :: Match "🌲" E.EvergreenTree

instance matchDeciduousTree :: Match "🌳" E.DeciduousTree

instance matchPalmTree :: Match "🌴" E.PalmTree

instance matchCactus :: Match "🌵" E.Cactus

instance matchSheafOfRice :: Match "🌾" E.SheafOfRice

instance matchHerb :: Match "🌿" E.Herb

instance matchShamrock :: Match "☘" E.Shamrock

instance matchFourLeafClover :: Match "🍀" E.FourLeafClover

instance matchMapleLeaf :: Match "🍁" E.MapleLeaf

instance matchFallenLeaf :: Match "🍂" E.FallenLeaf

instance matchLeafFlutteringInWind :: Match "🍃" E.LeafFlutteringInWind

instance matchGrapes :: Match "🍇" E.Grapes

instance matchMelon :: Match "🍈" E.Melon

instance matchWatermelon :: Match "🍉" E.Watermelon

instance matchTangerine :: Match "🍊" E.Tangerine

instance matchLemon :: Match "🍋" E.Lemon

instance matchBanana :: Match "🍌" E.Banana

instance matchPineapple :: Match "🍍" E.Pineapple

instance matchMango :: Match "🥭" E.Mango

instance matchRedApple :: Match "🍎" E.RedApple

instance matchGreenApple :: Match "🍏" E.GreenApple

instance matchPear :: Match "🍐" E.Pear

instance matchPeach :: Match "🍑" E.Peach

instance matchCherries :: Match "🍒" E.Cherries

instance matchStrawberry :: Match "🍓" E.Strawberry

instance matchBlueberries :: Match "🫐" E.Blueberries

instance matchKiwiFruit :: Match "🥝" E.KiwiFruit

instance matchTomato :: Match "🍅" E.Tomato

instance matchOlive :: Match "🫒" E.Olive

instance matchCoconut :: Match "🥥" E.Coconut

instance matchAvocado :: Match "🥑" E.Avocado

instance matchEggplant :: Match "🍆" E.Eggplant

instance matchPotato :: Match "🥔" E.Potato

instance matchCarrot :: Match "🥕" E.Carrot

instance matchEarOfCorn :: Match "🌽" E.EarOfCorn

instance matchHotPepper :: Match "🌶" E.HotPepper

instance matchBellPepper :: Match "🫑" E.BellPepper

instance matchCucumber :: Match "🥒" E.Cucumber

instance matchLeafyGreen :: Match "🥬" E.LeafyGreen

instance matchBroccoli :: Match "🥦" E.Broccoli

instance matchGarlic :: Match "🧄" E.Garlic

instance matchOnion :: Match "🧅" E.Onion

instance matchMushroom :: Match "🍄" E.Mushroom

instance matchPeanuts :: Match "🥜" E.Peanuts

instance matchChestnut :: Match "🌰" E.Chestnut

instance matchBread :: Match "🍞" E.Bread

instance matchCroissant :: Match "🥐" E.Croissant

instance matchBaguetteBread :: Match "🥖" E.BaguetteBread

instance matchFlatbread :: Match "🫓" E.Flatbread

instance matchPretzel :: Match "🥨" E.Pretzel

instance matchBagel :: Match "🥯" E.Bagel

instance matchPancakes :: Match "🥞" E.Pancakes

instance matchWaffle :: Match "🧇" E.Waffle

instance matchCheeseWedge :: Match "🧀" E.CheeseWedge

instance matchMeatOnBone :: Match "🍖" E.MeatOnBone

instance matchPoultryLeg :: Match "🍗" E.PoultryLeg

instance matchCutOfMeat :: Match "🥩" E.CutOfMeat

instance matchBacon :: Match "🥓" E.Bacon

instance matchHamburger :: Match "🍔" E.Hamburger

instance matchFrenchFries :: Match "🍟" E.FrenchFries

instance matchPizza :: Match "🍕" E.Pizza

instance matchHotDog :: Match "🌭" E.HotDog

instance matchSandwich :: Match "🥪" E.Sandwich

instance matchTaco :: Match "🌮" E.Taco

instance matchBurrito :: Match "🌯" E.Burrito

instance matchTamale :: Match "🫔" E.Tamale

instance matchStuffedFlatbread :: Match "🥙" E.StuffedFlatbread

instance matchFalafel :: Match "🧆" E.Falafel

instance matchEgg :: Match "🥚" E.Egg

instance matchCooking :: Match "🍳" E.Cooking

instance matchShallowPanOfFood :: Match "🥘" E.ShallowPanOfFood

instance matchPotOfFood :: Match "🍲" E.PotOfFood

instance matchFondue :: Match "🫕" E.Fondue

instance matchBowlWithSpoon :: Match "🥣" E.BowlWithSpoon

instance matchGreenSalad :: Match "🥗" E.GreenSalad

instance matchPopcorn :: Match "🍿" E.Popcorn

instance matchButter :: Match "🧈" E.Butter

instance matchSalt :: Match "🧂" E.Salt

instance matchCannedFood :: Match "🥫" E.CannedFood

instance matchBentoBox :: Match "🍱" E.BentoBox

instance matchRiceCracker :: Match "🍘" E.RiceCracker

instance matchRiceBall :: Match "🍙" E.RiceBall

instance matchCookedRice :: Match "🍚" E.CookedRice

instance matchCurryRice :: Match "🍛" E.CurryRice

instance matchSteamingBowl :: Match "🍜" E.SteamingBowl

instance matchSpaghetti :: Match "🍝" E.Spaghetti

instance matchRoastedSweetPotato :: Match "🍠" E.RoastedSweetPotato

instance matchOden :: Match "🍢" E.Oden

instance matchSushi :: Match "🍣" E.Sushi

instance matchFriedShrimp :: Match "🍤" E.FriedShrimp

instance matchFishCakeWithSwirl :: Match "🍥" E.FishCakeWithSwirl

instance matchMoonCake :: Match "🥮" E.MoonCake

instance matchDango :: Match "🍡" E.Dango

instance matchDumpling :: Match "🥟" E.Dumpling

instance matchFortuneCookie :: Match "🥠" E.FortuneCookie

instance matchTakeoutBox :: Match "🥡" E.TakeoutBox

instance matchCrab :: Match "🦀" E.Crab

instance matchLobster :: Match "🦞" E.Lobster

instance matchShrimp :: Match "🦐" E.Shrimp

instance matchSquid :: Match "🦑" E.Squid

instance matchOyster :: Match "🦪" E.Oyster

instance matchSoftIceCream :: Match "🍦" E.SoftIceCream

instance matchShavedIce :: Match "🍧" E.ShavedIce

instance matchIceCream :: Match "🍨" E.IceCream

instance matchDoughnut :: Match "🍩" E.Doughnut

instance matchCookie :: Match "🍪" E.Cookie

instance matchBirthdayCake :: Match "🎂" E.BirthdayCake

instance matchShortcake :: Match "🍰" E.Shortcake

instance matchCupcake :: Match "🧁" E.Cupcake

instance matchPie :: Match "🥧" E.Pie

instance matchChocolateBar :: Match "🍫" E.ChocolateBar

instance matchCandy :: Match "🍬" E.Candy

instance matchLollipop :: Match "🍭" E.Lollipop

instance matchCustard :: Match "🍮" E.Custard

instance matchHoneyPot :: Match "🍯" E.HoneyPot

instance matchBabyBottle :: Match "🍼" E.BabyBottle

instance matchGlassOfMilk :: Match "🥛" E.GlassOfMilk

instance matchHotBeverage :: Match "☕" E.HotBeverage

instance matchTeapot :: Match "🫖" E.Teapot

instance matchTeacupWithoutHandle :: Match "🍵" E.TeacupWithoutHandle

instance matchSake :: Match "🍶" E.Sake

instance matchBottleWithPoppingCork :: Match "🍾" E.BottleWithPoppingCork

instance matchWineGlass :: Match "🍷" E.WineGlass

instance matchCocktailGlass :: Match "🍸" E.CocktailGlass

instance matchTropicalDrink :: Match "🍹" E.TropicalDrink

instance matchBeerMug :: Match "🍺" E.BeerMug

instance matchClinkingBeerMugs :: Match "🍻" E.ClinkingBeerMugs

instance matchClinkingGlasses :: Match "🥂" E.ClinkingGlasses

instance matchTumblerGlass :: Match "🥃" E.TumblerGlass

instance matchCupWithStraw :: Match "🥤" E.CupWithStraw

instance matchBubbleTea :: Match "🧋" E.BubbleTea

instance matchBeverageBox :: Match "🧃" E.BeverageBox

instance matchMate :: Match "🧉" E.Mate

instance matchIce :: Match "🧊" E.Ice

instance matchChopsticks :: Match "🥢" E.Chopsticks

instance matchForkAndKnifeWithPlate :: Match "🍽" E.ForkAndKnifeWithPlate

instance matchForkAndKnife :: Match "🍴" E.ForkAndKnife

instance matchSpoon :: Match "🥄" E.Spoon

instance matchKitchenKnife :: Match "🔪" E.KitchenKnife

instance matchAmphora :: Match "🏺" E.Amphora

instance matchGlobeShowingEuropeAfrica :: Match "🌍" E.GlobeShowingEuropeAfrica

instance matchGlobeShowingAmericas :: Match "🌎" E.GlobeShowingAmericas

instance matchGlobeShowingAsiaAustralia :: Match "🌏" E.GlobeShowingAsiaAustralia

instance matchGlobeWithMeridians :: Match "🌐" E.GlobeWithMeridians

instance matchWorldMap :: Match "🗺" E.WorldMap

instance matchMapOfJapan :: Match "🗾" E.MapOfJapan

instance matchCompass :: Match "🧭" E.Compass

instance matchSnowCappedMountain :: Match "🏔" E.SnowCappedMountain

instance matchMountain :: Match "⛰" E.Mountain

instance matchVolcano :: Match "🌋" E.Volcano

instance matchMountFuji :: Match "🗻" E.MountFuji

instance matchCamping :: Match "🏕" E.Camping

instance matchBeachWithUmbrella :: Match "🏖" E.BeachWithUmbrella

instance matchDesert :: Match "🏜" E.Desert

instance matchDesertIsland :: Match "🏝" E.DesertIsland

instance matchNationalPark :: Match "🏞" E.NationalPark

instance matchStadium :: Match "🏟" E.Stadium

instance matchClassicalBuilding :: Match "🏛" E.ClassicalBuilding

instance matchBuildingConstruction :: Match "🏗" E.BuildingConstruction

instance matchBrick :: Match "🧱" E.Brick

instance matchRock :: Match "🪨" E.Rock

instance matchWood :: Match "🪵" E.Wood

instance matchHut :: Match "🛖" E.Hut

instance matchHouses :: Match "🏘" E.Houses

instance matchDerelictHouse :: Match "🏚" E.DerelictHouse

instance matchHouse :: Match "🏠" E.House

instance matchHouseWithGarden :: Match "🏡" E.HouseWithGarden

instance matchOfficeBuilding :: Match "🏢" E.OfficeBuilding

instance matchJapanesePostOffice :: Match "🏣" E.JapanesePostOffice

instance matchPostOffice :: Match "🏤" E.PostOffice

instance matchHospital :: Match "🏥" E.Hospital

instance matchBank :: Match "🏦" E.Bank

instance matchHotel :: Match "🏨" E.Hotel

instance matchLoveHotel :: Match "🏩" E.LoveHotel

instance matchConvenienceStore :: Match "🏪" E.ConvenienceStore

instance matchSchool :: Match "🏫" E.School

instance matchDepartmentStore :: Match "🏬" E.DepartmentStore

instance matchFactory :: Match "🏭" E.Factory

instance matchJapaneseCastle :: Match "🏯" E.JapaneseCastle

instance matchCastle :: Match "🏰" E.Castle

instance matchWedding :: Match "💒" E.Wedding

instance matchTokyoTower :: Match "🗼" E.TokyoTower

instance matchStatueOfLiberty :: Match "🗽" E.StatueOfLiberty

instance matchChurch :: Match "⛪" E.Church

instance matchMosque :: Match "🕌" E.Mosque

instance matchHinduTemple :: Match "🛕" E.HinduTemple

instance matchSynagogue :: Match "🕍" E.Synagogue

instance matchShintoShrine :: Match "⛩" E.ShintoShrine

instance matchKaaba :: Match "🕋" E.Kaaba

instance matchFountain :: Match "⛲" E.Fountain

instance matchTent :: Match "⛺" E.Tent

instance matchFoggy :: Match "🌁" E.Foggy

instance matchNightWithStars :: Match "🌃" E.NightWithStars

instance matchCityscape :: Match "🏙" E.Cityscape

instance matchSunriseOverMountains :: Match "🌄" E.SunriseOverMountains

instance matchSunrise :: Match "🌅" E.Sunrise

instance matchCityscapeAtDusk :: Match "🌆" E.CityscapeAtDusk

instance matchSunset :: Match "🌇" E.Sunset

instance matchBridgeAtNight :: Match "🌉" E.BridgeAtNight

instance matchHotSprings :: Match "♨" E.HotSprings

instance matchCarouselHorse :: Match "🎠" E.CarouselHorse

instance matchFerrisWheel :: Match "🎡" E.FerrisWheel

instance matchRollerCoaster :: Match "🎢" E.RollerCoaster

instance matchBarberPole :: Match "💈" E.BarberPole

instance matchCircusTent :: Match "🎪" E.CircusTent

instance matchLocomotive :: Match "🚂" E.Locomotive

instance matchRailwayCar :: Match "🚃" E.RailwayCar

instance matchHighSpeedTrain :: Match "🚄" E.HighSpeedTrain

instance matchBulletTrain :: Match "🚅" E.BulletTrain

instance matchTrain :: Match "🚆" E.Train

instance matchMetro :: Match "🚇" E.Metro

instance matchLightRail :: Match "🚈" E.LightRail

instance matchStation :: Match "🚉" E.Station

instance matchTram :: Match "🚊" E.Tram

instance matchMonorail :: Match "🚝" E.Monorail

instance matchMountainRailway :: Match "🚞" E.MountainRailway

instance matchTramCar :: Match "🚋" E.TramCar

instance matchBus :: Match "🚌" E.Bus

instance matchOncomingBus :: Match "🚍" E.OncomingBus

instance matchTrolleybus :: Match "🚎" E.Trolleybus

instance matchMinibus :: Match "🚐" E.Minibus

instance matchAmbulance :: Match "🚑" E.Ambulance

instance matchFireEngine :: Match "🚒" E.FireEngine

instance matchPoliceCar :: Match "🚓" E.PoliceCar

instance matchOncomingPoliceCar :: Match "🚔" E.OncomingPoliceCar

instance matchTaxi :: Match "🚕" E.Taxi

instance matchOncomingTaxi :: Match "🚖" E.OncomingTaxi

instance matchAutomobile :: Match "🚗" E.Automobile

instance matchOncomingAutomobile :: Match "🚘" E.OncomingAutomobile

instance matchSportUtilityVehicle :: Match "🚙" E.SportUtilityVehicle

instance matchPickupTruck :: Match "🛻" E.PickupTruck

instance matchDeliveryTruck :: Match "🚚" E.DeliveryTruck

instance matchArticulatedLorry :: Match "🚛" E.ArticulatedLorry

instance matchTractor :: Match "🚜" E.Tractor

instance matchRacingCar :: Match "🏎" E.RacingCar

instance matchMotorcycle :: Match "🏍" E.Motorcycle

instance matchMotorScooter :: Match "🛵" E.MotorScooter

instance matchManualWheelchair :: Match "🦽" E.ManualWheelchair

instance matchMotorizedWheelchair :: Match "🦼" E.MotorizedWheelchair

instance matchAutoRickshaw :: Match "🛺" E.AutoRickshaw

instance matchBicycle :: Match "🚲" E.Bicycle

instance matchKickScooter :: Match "🛴" E.KickScooter

instance matchSkateboard :: Match "🛹" E.Skateboard

instance matchRollerSkate :: Match "🛼" E.RollerSkate

instance matchBusStop :: Match "🚏" E.BusStop

instance matchMotorway :: Match "🛣" E.Motorway

instance matchRailwayTrack :: Match "🛤" E.RailwayTrack

instance matchOilDrum :: Match "🛢" E.OilDrum

instance matchFuelPump :: Match "⛽" E.FuelPump

instance matchPoliceCarLight :: Match "🚨" E.PoliceCarLight

instance matchHorizontalTrafficLight :: Match "🚥" E.HorizontalTrafficLight

instance matchVerticalTrafficLight :: Match "🚦" E.VerticalTrafficLight

instance matchStopSign :: Match "🛑" E.StopSign

instance matchConstruction :: Match "🚧" E.Construction

instance matchAnchor :: Match "⚓" E.Anchor

instance matchSailboat :: Match "⛵" E.Sailboat

instance matchCanoe :: Match "🛶" E.Canoe

instance matchSpeedboat :: Match "🚤" E.Speedboat

instance matchPassengerShip :: Match "🛳" E.PassengerShip

instance matchFerry :: Match "⛴" E.Ferry

instance matchMotorBoat :: Match "🛥" E.MotorBoat

instance matchShip :: Match "🚢" E.Ship

instance matchAirplane :: Match "✈" E.Airplane

instance matchSmallAirplane :: Match "🛩" E.SmallAirplane

instance matchAirplaneDeparture :: Match "🛫" E.AirplaneDeparture

instance matchAirplaneArrival :: Match "🛬" E.AirplaneArrival

instance matchParachute :: Match "🪂" E.Parachute

instance matchSeat :: Match "💺" E.Seat

instance matchHelicopter :: Match "🚁" E.Helicopter

instance matchSuspensionRailway :: Match "🚟" E.SuspensionRailway

instance matchMountainCableway :: Match "🚠" E.MountainCableway

instance matchAerialTramway :: Match "🚡" E.AerialTramway

instance matchSatellite :: Match "🛰" E.Satellite

instance matchRocket :: Match "🚀" E.Rocket

instance matchFlyingSaucer :: Match "🛸" E.FlyingSaucer

instance matchBellhopBell :: Match "🛎" E.BellhopBell

instance matchLuggage :: Match "🧳" E.Luggage

instance matchHourglassDone :: Match "⌛" E.HourglassDone

instance matchHourglassNotDone :: Match "⏳" E.HourglassNotDone

instance matchWatch :: Match "⌚" E.Watch

instance matchAlarmClock :: Match "⏰" E.AlarmClock

instance matchStopwatch :: Match "⏱" E.Stopwatch

instance matchTimerClock :: Match "⏲" E.TimerClock

instance matchMantelpieceClock :: Match "🕰" E.MantelpieceClock

instance matchTwelveOClock :: Match "🕛" E.TwelveOClock

instance matchTwelveThirty :: Match "🕧" E.TwelveThirty

instance matchOneOClock :: Match "🕐" E.OneOClock

instance matchOneThirty :: Match "🕜" E.OneThirty

instance matchTwoOClock :: Match "🕑" E.TwoOClock

instance matchTwoThirty :: Match "🕝" E.TwoThirty

instance matchThreeOClock :: Match "🕒" E.ThreeOClock

instance matchThreeThirty :: Match "🕞" E.ThreeThirty

instance matchFourOClock :: Match "🕓" E.FourOClock

instance matchFourThirty :: Match "🕟" E.FourThirty

instance matchFiveOClock :: Match "🕔" E.FiveOClock

instance matchFiveThirty :: Match "🕠" E.FiveThirty

instance matchSixOClock :: Match "🕕" E.SixOClock

instance matchSixThirty :: Match "🕡" E.SixThirty

instance matchSevenOClock :: Match "🕖" E.SevenOClock

instance matchSevenThirty :: Match "🕢" E.SevenThirty

instance matchEightOClock :: Match "🕗" E.EightOClock

instance matchEightThirty :: Match "🕣" E.EightThirty

instance matchNineOClock :: Match "🕘" E.NineOClock

instance matchNineThirty :: Match "🕤" E.NineThirty

instance matchTenOClock :: Match "🕙" E.TenOClock

instance matchTenThirty :: Match "🕥" E.TenThirty

instance matchElevenOClock :: Match "🕚" E.ElevenOClock

instance matchElevenThirty :: Match "🕦" E.ElevenThirty

instance matchNewMoon :: Match "🌑" E.NewMoon

instance matchWaxingCrescentMoon :: Match "🌒" E.WaxingCrescentMoon

instance matchFirstQuarterMoon :: Match "🌓" E.FirstQuarterMoon

instance matchWaxingGibbousMoon :: Match "🌔" E.WaxingGibbousMoon

instance matchFullMoon :: Match "🌕" E.FullMoon

instance matchWaningGibbousMoon :: Match "🌖" E.WaningGibbousMoon

instance matchLastQuarterMoon :: Match "🌗" E.LastQuarterMoon

instance matchWaningCrescentMoon :: Match "🌘" E.WaningCrescentMoon

instance matchCrescentMoon :: Match "🌙" E.CrescentMoon

instance matchNewMoonFace :: Match "🌚" E.NewMoonFace

instance matchFirstQuarterMoonFace :: Match "🌛" E.FirstQuarterMoonFace

instance matchLastQuarterMoonFace :: Match "🌜" E.LastQuarterMoonFace

instance matchThermometer :: Match "🌡" E.Thermometer

instance matchSun :: Match "☀" E.Sun

instance matchFullMoonFace :: Match "🌝" E.FullMoonFace

instance matchSunWithFace :: Match "🌞" E.SunWithFace

instance matchRingedPlanet :: Match "🪐" E.RingedPlanet

instance matchStar :: Match "⭐" E.Star

instance matchGlowingStar :: Match "🌟" E.GlowingStar

instance matchShootingStar :: Match "🌠" E.ShootingStar

instance matchMilkyWay :: Match "🌌" E.MilkyWay

instance matchCloud :: Match "☁" E.Cloud

instance matchSunBehindCloud :: Match "⛅" E.SunBehindCloud

instance matchCloudWithLightningAndRain :: Match "⛈" E.CloudWithLightningAndRain

instance matchSunBehindSmallCloud :: Match "🌤" E.SunBehindSmallCloud

instance matchSunBehindLargeCloud :: Match "🌥" E.SunBehindLargeCloud

instance matchSunBehindRainCloud :: Match "🌦" E.SunBehindRainCloud

instance matchCloudWithRain :: Match "🌧" E.CloudWithRain

instance matchCloudWithSnow :: Match "🌨" E.CloudWithSnow

instance matchCloudWithLightning :: Match "🌩" E.CloudWithLightning

instance matchTornado :: Match "🌪" E.Tornado

instance matchFog :: Match "🌫" E.Fog

instance matchWindFace :: Match "🌬" E.WindFace

instance matchCyclone :: Match "🌀" E.Cyclone

instance matchRainbow :: Match "🌈" E.Rainbow

instance matchClosedUmbrella :: Match "🌂" E.ClosedUmbrella

instance matchUmbrella :: Match "☂" E.Umbrella

instance matchUmbrellaWithRainDrops :: Match "☔" E.UmbrellaWithRainDrops

instance matchUmbrellaOnGround :: Match "⛱" E.UmbrellaOnGround

instance matchHighVoltage :: Match "⚡" E.HighVoltage

instance matchSnowflake :: Match "❄" E.Snowflake

instance matchSnowman :: Match "☃" E.Snowman

instance matchSnowmanWithoutSnow :: Match "⛄" E.SnowmanWithoutSnow

instance matchComet :: Match "☄" E.Comet

instance matchFire :: Match "🔥" E.Fire

instance matchDroplet :: Match "💧" E.Droplet

instance matchWaterWave :: Match "🌊" E.WaterWave

instance matchJackOLantern :: Match "🎃" E.JackOLantern

instance matchChristmasTree :: Match "🎄" E.ChristmasTree

instance matchFireworks :: Match "🎆" E.Fireworks

instance matchSparkler :: Match "🎇" E.Sparkler

instance matchFirecracker :: Match "🧨" E.Firecracker

instance matchSparkles :: Match "✨" E.Sparkles

instance matchBalloon :: Match "🎈" E.Balloon

instance matchPartyPopper :: Match "🎉" E.PartyPopper

instance matchConfettiBall :: Match "🎊" E.ConfettiBall

instance matchTanabataTree :: Match "🎋" E.TanabataTree

instance matchPineDecoration :: Match "🎍" E.PineDecoration

instance matchJapaneseDolls :: Match "🎎" E.JapaneseDolls

instance matchCarpStreamer :: Match "🎏" E.CarpStreamer

instance matchWindChime :: Match "🎐" E.WindChime

instance matchMoonViewingCeremony :: Match "🎑" E.MoonViewingCeremony

instance matchRedEnvelope :: Match "🧧" E.RedEnvelope

instance matchRibbon :: Match "🎀" E.Ribbon

instance matchWrappedGift :: Match "🎁" E.WrappedGift

instance matchReminderRibbon :: Match "🎗" E.ReminderRibbon

instance matchAdmissionTickets :: Match "🎟" E.AdmissionTickets

instance matchTicket :: Match "🎫" E.Ticket

instance matchMilitaryMedal :: Match "🎖" E.MilitaryMedal

instance matchTrophy :: Match "🏆" E.Trophy

instance matchSportsMedal :: Match "🏅" E.SportsMedal

instance matchFirstPlaceMedal :: Match "🥇" E.FirstPlaceMedal

instance matchSecondPlaceMedal :: Match "🥈" E.SecondPlaceMedal

instance matchThirdPlaceMedal :: Match "🥉" E.ThirdPlaceMedal

instance matchSoccerBall :: Match "⚽" E.SoccerBall

instance matchBaseball :: Match "⚾" E.Baseball

instance matchSoftball :: Match "🥎" E.Softball

instance matchBasketball :: Match "🏀" E.Basketball

instance matchVolleyball :: Match "🏐" E.Volleyball

instance matchAmericanFootball :: Match "🏈" E.AmericanFootball

instance matchRugbyFootball :: Match "🏉" E.RugbyFootball

instance matchTennis :: Match "🎾" E.Tennis

instance matchFlyingDisc :: Match "🥏" E.FlyingDisc

instance matchBowling :: Match "🎳" E.Bowling

instance matchCricketGame :: Match "🏏" E.CricketGame

instance matchFieldHockey :: Match "🏑" E.FieldHockey

instance matchIceHockey :: Match "🏒" E.IceHockey

instance matchLacrosse :: Match "🥍" E.Lacrosse

instance matchPingPong :: Match "🏓" E.PingPong

instance matchBadminton :: Match "🏸" E.Badminton

instance matchBoxingGlove :: Match "🥊" E.BoxingGlove

instance matchMartialArtsUniform :: Match "🥋" E.MartialArtsUniform

instance matchGoalNet :: Match "🥅" E.GoalNet

instance matchFlagInHole :: Match "⛳" E.FlagInHole

instance matchIceSkate :: Match "⛸" E.IceSkate

instance matchFishingPole :: Match "🎣" E.FishingPole

instance matchDivingMask :: Match "🤿" E.DivingMask

instance matchRunningShirt :: Match "🎽" E.RunningShirt

instance matchSkis :: Match "🎿" E.Skis

instance matchSled :: Match "🛷" E.Sled

instance matchCurlingStone :: Match "🥌" E.CurlingStone

instance matchDirectHit :: Match "🎯" E.DirectHit

instance matchYoYo :: Match "🪀" E.YoYo

instance matchKite :: Match "🪁" E.Kite

instance matchPool8Ball :: Match "🎱" E.Pool8Ball

instance matchCrystalBall :: Match "🔮" E.CrystalBall

instance matchMagicWand :: Match "🪄" E.MagicWand

instance matchNazarAmulet :: Match "🧿" E.NazarAmulet

instance matchVideoGame :: Match "🎮" E.VideoGame

instance matchJoystick :: Match "🕹" E.Joystick

instance matchSlotMachine :: Match "🎰" E.SlotMachine

instance matchGameDie :: Match "🎲" E.GameDie

instance matchPuzzlePiece :: Match "🧩" E.PuzzlePiece

instance matchTeddyBear :: Match "🧸" E.TeddyBear

instance matchPiñata :: Match "🪅" E.Piñata

instance matchNestingDolls :: Match "🪆" E.NestingDolls

instance matchSpadeSuit :: Match "♠" E.SpadeSuit

instance matchHeartSuit :: Match "♥" E.HeartSuit

instance matchDiamondSuit :: Match "♦" E.DiamondSuit

instance matchClubSuit :: Match "♣" E.ClubSuit

instance matchChessPawn :: Match "♟" E.ChessPawn

instance matchJoker :: Match "🃏" E.Joker

instance matchMahjongRedDragon :: Match "🀄" E.MahjongRedDragon

instance matchFlowerPlayingCards :: Match "🎴" E.FlowerPlayingCards

instance matchPerformingArts :: Match "🎭" E.PerformingArts

instance matchFramedPicture :: Match "🖼" E.FramedPicture

instance matchArtistPalette :: Match "🎨" E.ArtistPalette

instance matchThread :: Match "🧵" E.Thread

instance matchSewingNeedle :: Match "🪡" E.SewingNeedle

instance matchYarn :: Match "🧶" E.Yarn

instance matchKnot :: Match "🪢" E.Knot

instance matchGlasses :: Match "👓" E.Glasses

instance matchSunglasses :: Match "🕶" E.Sunglasses

instance matchGoggles :: Match "🥽" E.Goggles

instance matchLabCoat :: Match "🥼" E.LabCoat

instance matchSafetyVest :: Match "🦺" E.SafetyVest

instance matchNecktie :: Match "👔" E.Necktie

instance matchTShirt :: Match "👕" E.TShirt

instance matchJeans :: Match "👖" E.Jeans

instance matchScarf :: Match "🧣" E.Scarf

instance matchGloves :: Match "🧤" E.Gloves

instance matchCoat :: Match "🧥" E.Coat

instance matchSocks :: Match "🧦" E.Socks

instance matchDress :: Match "👗" E.Dress

instance matchKimono :: Match "👘" E.Kimono

instance matchSari :: Match "🥻" E.Sari

instance matchOnePieceSwimsuit :: Match "🩱" E.OnePieceSwimsuit

instance matchBriefs :: Match "🩲" E.Briefs

instance matchShorts :: Match "🩳" E.Shorts

instance matchBikini :: Match "👙" E.Bikini

instance matchWomanSClothes :: Match "👚" E.WomanSClothes

instance matchPurse :: Match "👛" E.Purse

instance matchHandbag :: Match "👜" E.Handbag

instance matchClutchBag :: Match "👝" E.ClutchBag

instance matchShoppingBags :: Match "🛍" E.ShoppingBags

instance matchBackpack :: Match "🎒" E.Backpack

instance matchThongSandal :: Match "🩴" E.ThongSandal

instance matchManSShoe :: Match "👞" E.ManSShoe

instance matchRunningShoe :: Match "👟" E.RunningShoe

instance matchHikingBoot :: Match "🥾" E.HikingBoot

instance matchFlatShoe :: Match "🥿" E.FlatShoe

instance matchHighHeeledShoe :: Match "👠" E.HighHeeledShoe

instance matchWomanSSandal :: Match "👡" E.WomanSSandal

instance matchBalletShoes :: Match "🩰" E.BalletShoes

instance matchWomanSBoot :: Match "👢" E.WomanSBoot

instance matchCrown :: Match "👑" E.Crown

instance matchWomanSHat :: Match "👒" E.WomanSHat

instance matchTopHat :: Match "🎩" E.TopHat

instance matchGraduationCap :: Match "🎓" E.GraduationCap

instance matchBilledCap :: Match "🧢" E.BilledCap

instance matchMilitaryHelmet :: Match "🪖" E.MilitaryHelmet

instance matchRescueWorkerSHelmet :: Match "⛑" E.RescueWorkerSHelmet

instance matchPrayerBeads :: Match "📿" E.PrayerBeads

instance matchLipstick :: Match "💄" E.Lipstick

instance matchRing :: Match "💍" E.Ring

instance matchGemStone :: Match "💎" E.GemStone

instance matchMutedSpeaker :: Match "🔇" E.MutedSpeaker

instance matchSpeakerLowVolume :: Match "🔈" E.SpeakerLowVolume

instance matchSpeakerMediumVolume :: Match "🔉" E.SpeakerMediumVolume

instance matchSpeakerHighVolume :: Match "🔊" E.SpeakerHighVolume

instance matchLoudspeaker :: Match "📢" E.Loudspeaker

instance matchMegaphone :: Match "📣" E.Megaphone

instance matchPostalHorn :: Match "📯" E.PostalHorn

instance matchBell :: Match "🔔" E.Bell

instance matchBellWithSlash :: Match "🔕" E.BellWithSlash

instance matchMusicalScore :: Match "🎼" E.MusicalScore

instance matchMusicalNote :: Match "🎵" E.MusicalNote

instance matchMusicalNotes :: Match "🎶" E.MusicalNotes

instance matchStudioMicrophone :: Match "🎙" E.StudioMicrophone

instance matchLevelSlider :: Match "🎚" E.LevelSlider

instance matchControlKnobs :: Match "🎛" E.ControlKnobs

instance matchMicrophone :: Match "🎤" E.Microphone

instance matchHeadphone :: Match "🎧" E.Headphone

instance matchRadio :: Match "📻" E.Radio

instance matchSaxophone :: Match "🎷" E.Saxophone

instance matchAccordion :: Match "🪗" E.Accordion

instance matchGuitar :: Match "🎸" E.Guitar

instance matchMusicalKeyboard :: Match "🎹" E.MusicalKeyboard

instance matchTrumpet :: Match "🎺" E.Trumpet

instance matchViolin :: Match "🎻" E.Violin

instance matchBanjo :: Match "🪕" E.Banjo

instance matchDrum :: Match "🥁" E.Drum

instance matchLongDrum :: Match "🪘" E.LongDrum

instance matchMobilePhone :: Match "📱" E.MobilePhone

instance matchMobilePhoneWithArrow :: Match "📲" E.MobilePhoneWithArrow

instance matchTelephone :: Match "☎" E.Telephone

instance matchTelephoneReceiver :: Match "📞" E.TelephoneReceiver

instance matchPager :: Match "📟" E.Pager

instance matchFaxMachine :: Match "📠" E.FaxMachine

instance matchBattery :: Match "🔋" E.Battery

instance matchElectricPlug :: Match "🔌" E.ElectricPlug

instance matchLaptop :: Match "💻" E.Laptop

instance matchDesktopComputer :: Match "🖥" E.DesktopComputer

instance matchPrinter :: Match "🖨" E.Printer

instance matchKeyboard :: Match "⌨" E.Keyboard

instance matchComputerMouse :: Match "🖱" E.ComputerMouse

instance matchTrackball :: Match "🖲" E.Trackball

instance matchComputerDisk :: Match "💽" E.ComputerDisk

instance matchFloppyDisk :: Match "💾" E.FloppyDisk

instance matchOpticalDisk :: Match "💿" E.OpticalDisk

instance matchDvd :: Match "📀" E.Dvd

instance matchAbacus :: Match "🧮" E.Abacus

instance matchMovieCamera :: Match "🎥" E.MovieCamera

instance matchFilmFrames :: Match "🎞" E.FilmFrames

instance matchFilmProjector :: Match "📽" E.FilmProjector

instance matchClapperBoard :: Match "🎬" E.ClapperBoard

instance matchTelevision :: Match "📺" E.Television

instance matchCamera :: Match "📷" E.Camera

instance matchCameraWithFlash :: Match "📸" E.CameraWithFlash

instance matchVideoCamera :: Match "📹" E.VideoCamera

instance matchVideocassette :: Match "📼" E.Videocassette

instance matchMagnifyingGlassTiltedLeft :: Match "🔍" E.MagnifyingGlassTiltedLeft

instance matchMagnifyingGlassTiltedRight :: Match "🔎" E.MagnifyingGlassTiltedRight

instance matchCandle :: Match "🕯" E.Candle

instance matchLightBulb :: Match "💡" E.LightBulb

instance matchFlashlight :: Match "🔦" E.Flashlight

instance matchRedPaperLantern :: Match "🏮" E.RedPaperLantern

instance matchDiyaLamp :: Match "🪔" E.DiyaLamp

instance matchNotebookWithDecorativeCover :: Match "📔" E.NotebookWithDecorativeCover

instance matchClosedBook :: Match "📕" E.ClosedBook

instance matchOpenBook :: Match "📖" E.OpenBook

instance matchGreenBook :: Match "📗" E.GreenBook

instance matchBlueBook :: Match "📘" E.BlueBook

instance matchOrangeBook :: Match "📙" E.OrangeBook

instance matchBooks :: Match "📚" E.Books

instance matchNotebook :: Match "📓" E.Notebook

instance matchLedger :: Match "📒" E.Ledger

instance matchPageWithCurl :: Match "📃" E.PageWithCurl

instance matchScroll :: Match "📜" E.Scroll

instance matchPageFacingUp :: Match "📄" E.PageFacingUp

instance matchNewspaper :: Match "📰" E.Newspaper

instance matchRolledUpNewspaper :: Match "🗞" E.RolledUpNewspaper

instance matchBookmarkTabs :: Match "📑" E.BookmarkTabs

instance matchBookmark :: Match "🔖" E.Bookmark

instance matchLabel :: Match "🏷" E.Label

instance matchMoneyBag :: Match "💰" E.MoneyBag

instance matchCoin :: Match "🪙" E.Coin

instance matchYenBanknote :: Match "💴" E.YenBanknote

instance matchDollarBanknote :: Match "💵" E.DollarBanknote

instance matchEuroBanknote :: Match "💶" E.EuroBanknote

instance matchPoundBanknote :: Match "💷" E.PoundBanknote

instance matchMoneyWithWings :: Match "💸" E.MoneyWithWings

instance matchCreditCard :: Match "💳" E.CreditCard

instance matchReceipt :: Match "🧾" E.Receipt

instance matchChartIncreasingWithYen :: Match "💹" E.ChartIncreasingWithYen

instance matchEnvelope :: Match "✉" E.Envelope

instance matchEMail :: Match "📧" E.EMail

instance matchIncomingEnvelope :: Match "📨" E.IncomingEnvelope

instance matchEnvelopeWithArrow :: Match "📩" E.EnvelopeWithArrow

instance matchOutboxTray :: Match "📤" E.OutboxTray

instance matchInboxTray :: Match "📥" E.InboxTray

instance matchPackage :: Match "📦" E.Package

instance matchClosedMailboxWithRaisedFlag :: Match "📫" E.ClosedMailboxWithRaisedFlag

instance matchClosedMailboxWithLoweredFlag :: Match "📪" E.ClosedMailboxWithLoweredFlag

instance matchOpenMailboxWithRaisedFlag :: Match "📬" E.OpenMailboxWithRaisedFlag

instance matchOpenMailboxWithLoweredFlag :: Match "📭" E.OpenMailboxWithLoweredFlag

instance matchPostbox :: Match "📮" E.Postbox

instance matchBallotBoxWithBallot :: Match "🗳" E.BallotBoxWithBallot

instance matchPencil :: Match "✏" E.Pencil

instance matchBlackNib :: Match "✒" E.BlackNib

instance matchFountainPen :: Match "🖋" E.FountainPen

instance matchPen :: Match "🖊" E.Pen

instance matchPaintbrush :: Match "🖌" E.Paintbrush

instance matchCrayon :: Match "🖍" E.Crayon

instance matchMemo :: Match "📝" E.Memo

instance matchBriefcase :: Match "💼" E.Briefcase

instance matchFileFolder :: Match "📁" E.FileFolder

instance matchOpenFileFolder :: Match "📂" E.OpenFileFolder

instance matchCardIndexDividers :: Match "🗂" E.CardIndexDividers

instance matchCalendar :: Match "📅" E.Calendar

instance matchTearOffCalendar :: Match "📆" E.TearOffCalendar

instance matchSpiralNotepad :: Match "🗒" E.SpiralNotepad

instance matchSpiralCalendar :: Match "🗓" E.SpiralCalendar

instance matchCardIndex :: Match "📇" E.CardIndex

instance matchChartIncreasing :: Match "📈" E.ChartIncreasing

instance matchChartDecreasing :: Match "📉" E.ChartDecreasing

instance matchBarChart :: Match "📊" E.BarChart

instance matchClipboard :: Match "📋" E.Clipboard

instance matchPushpin :: Match "📌" E.Pushpin

instance matchRoundPushpin :: Match "📍" E.RoundPushpin

instance matchPaperclip :: Match "📎" E.Paperclip

instance matchLinkedPaperclips :: Match "🖇" E.LinkedPaperclips

instance matchStraightRuler :: Match "📏" E.StraightRuler

instance matchTriangularRuler :: Match "📐" E.TriangularRuler

instance matchScissors :: Match "✂" E.Scissors

instance matchCardFileBox :: Match "🗃" E.CardFileBox

instance matchFileCabinet :: Match "🗄" E.FileCabinet

instance matchWastebasket :: Match "🗑" E.Wastebasket

instance matchLocked :: Match "🔒" E.Locked

instance matchUnlocked :: Match "🔓" E.Unlocked

instance matchLockedWithPen :: Match "🔏" E.LockedWithPen

instance matchLockedWithKey :: Match "🔐" E.LockedWithKey

instance matchKey :: Match "🔑" E.Key

instance matchOldKey :: Match "🗝" E.OldKey

instance matchHammer :: Match "🔨" E.Hammer

instance matchAxe :: Match "🪓" E.Axe

instance matchPick :: Match "⛏" E.Pick

instance matchHammerAndPick :: Match "⚒" E.HammerAndPick

instance matchHammerAndWrench :: Match "🛠" E.HammerAndWrench

instance matchDagger :: Match "🗡" E.Dagger

instance matchCrossedSwords :: Match "⚔" E.CrossedSwords

instance matchPistol :: Match "🔫" E.Pistol

instance matchBoomerang :: Match "🪃" E.Boomerang

instance matchBowAndArrow :: Match "🏹" E.BowAndArrow

instance matchShield :: Match "🛡" E.Shield

instance matchCarpentrySaw :: Match "🪚" E.CarpentrySaw

instance matchWrench :: Match "🔧" E.Wrench

instance matchScrewdriver :: Match "🪛" E.Screwdriver

instance matchNutAndBolt :: Match "🔩" E.NutAndBolt

instance matchGear :: Match "⚙" E.Gear

instance matchClamp :: Match "🗜" E.Clamp

instance matchBalanceScale :: Match "⚖" E.BalanceScale

instance matchWhiteCane :: Match "🦯" E.WhiteCane

instance matchLink :: Match "🔗" E.Link

instance matchChains :: Match "⛓" E.Chains

instance matchHook :: Match "🪝" E.Hook

instance matchToolbox :: Match "🧰" E.Toolbox

instance matchMagnet :: Match "🧲" E.Magnet

instance matchLadder :: Match "🪜" E.Ladder

instance matchAlembic :: Match "⚗" E.Alembic

instance matchTestTube :: Match "🧪" E.TestTube

instance matchPetriDish :: Match "🧫" E.PetriDish

instance matchDna :: Match "🧬" E.Dna

instance matchMicroscope :: Match "🔬" E.Microscope

instance matchTelescope :: Match "🔭" E.Telescope

instance matchSatelliteAntenna :: Match "📡" E.SatelliteAntenna

instance matchSyringe :: Match "💉" E.Syringe

instance matchDropOfBlood :: Match "🩸" E.DropOfBlood

instance matchPill :: Match "💊" E.Pill

instance matchAdhesiveBandage :: Match "🩹" E.AdhesiveBandage

instance matchStethoscope :: Match "🩺" E.Stethoscope

instance matchDoor :: Match "🚪" E.Door

instance matchElevator :: Match "🛗" E.Elevator

instance matchMirror :: Match "🪞" E.Mirror

instance matchWindow :: Match "🪟" E.Window

instance matchBed :: Match "🛏" E.Bed

instance matchCouchAndLamp :: Match "🛋" E.CouchAndLamp

instance matchChair :: Match "🪑" E.Chair

instance matchToilet :: Match "🚽" E.Toilet

instance matchPlunger :: Match "🪠" E.Plunger

instance matchShower :: Match "🚿" E.Shower

instance matchBathtub :: Match "🛁" E.Bathtub

instance matchMouseTrap :: Match "🪤" E.MouseTrap

instance matchRazor :: Match "🪒" E.Razor

instance matchLotionBottle :: Match "🧴" E.LotionBottle

instance matchSafetyPin :: Match "🧷" E.SafetyPin

instance matchBroom :: Match "🧹" E.Broom

instance matchBasket :: Match "🧺" E.Basket

instance matchRollOfPaper :: Match "🧻" E.RollOfPaper

instance matchBucket :: Match "🪣" E.Bucket

instance matchSoap :: Match "🧼" E.Soap

instance matchToothbrush :: Match "🪥" E.Toothbrush

instance matchSponge :: Match "🧽" E.Sponge

instance matchFireExtinguisher :: Match "🧯" E.FireExtinguisher

instance matchShoppingCart :: Match "🛒" E.ShoppingCart

instance matchCigarette :: Match "🚬" E.Cigarette

instance matchCoffin :: Match "⚰" E.Coffin

instance matchHeadstone :: Match "🪦" E.Headstone

instance matchFuneralUrn :: Match "⚱" E.FuneralUrn

instance matchMoai :: Match "🗿" E.Moai

instance matchPlacard :: Match "🪧" E.Placard

instance matchAtmSign :: Match "🏧" E.AtmSign

instance matchLitterInBinSign :: Match "🚮" E.LitterInBinSign

instance matchPotableWater :: Match "🚰" E.PotableWater

instance matchWheelchairSymbol :: Match "♿" E.WheelchairSymbol

instance matchMenSRoom :: Match "🚹" E.MenSRoom

instance matchWomenSRoom :: Match "🚺" E.WomenSRoom

instance matchRestroom :: Match "🚻" E.Restroom

instance matchBabySymbol :: Match "🚼" E.BabySymbol

instance matchWaterCloset :: Match "🚾" E.WaterCloset

instance matchPassportControl :: Match "🛂" E.PassportControl

instance matchCustoms :: Match "🛃" E.Customs

instance matchBaggageClaim :: Match "🛄" E.BaggageClaim

instance matchLeftLuggage :: Match "🛅" E.LeftLuggage

instance matchWarning :: Match "⚠" E.Warning

instance matchChildrenCrossing :: Match "🚸" E.ChildrenCrossing

instance matchNoEntry :: Match "⛔" E.NoEntry

instance matchProhibited :: Match "🚫" E.Prohibited

instance matchNoBicycles :: Match "🚳" E.NoBicycles

instance matchNoSmoking :: Match "🚭" E.NoSmoking

instance matchNoLittering :: Match "🚯" E.NoLittering

instance matchNonPotableWater :: Match "🚱" E.NonPotableWater

instance matchNoPedestrians :: Match "🚷" E.NoPedestrians

instance matchNoMobilePhones :: Match "📵" E.NoMobilePhones

instance matchNoOneUnderEighteen :: Match "🔞" E.NoOneUnderEighteen

instance matchRadioactive :: Match "☢" E.Radioactive

instance matchBiohazard :: Match "☣" E.Biohazard

instance matchUpArrow :: Match "⬆" E.UpArrow

instance matchUpRightArrow :: Match "↗" E.UpRightArrow

instance matchRightArrow :: Match "➡" E.RightArrow

instance matchDownRightArrow :: Match "↘" E.DownRightArrow

instance matchDownArrow :: Match "⬇" E.DownArrow

instance matchDownLeftArrow :: Match "↙" E.DownLeftArrow

instance matchLeftArrow :: Match "⬅" E.LeftArrow

instance matchUpLeftArrow :: Match "↖" E.UpLeftArrow

instance matchUpDownArrow :: Match "↕" E.UpDownArrow

instance matchLeftRightArrow :: Match "↔" E.LeftRightArrow

instance matchRightArrowCurvingLeft :: Match "↩" E.RightArrowCurvingLeft

instance matchLeftArrowCurvingRight :: Match "↪" E.LeftArrowCurvingRight

instance matchRightArrowCurvingUp :: Match "⤴" E.RightArrowCurvingUp

instance matchRightArrowCurvingDown :: Match "⤵" E.RightArrowCurvingDown

instance matchClockwiseVerticalArrows :: Match "🔃" E.ClockwiseVerticalArrows

instance matchCounterclockwiseArrowsButton :: Match "🔄" E.CounterclockwiseArrowsButton

instance matchBackArrow :: Match "🔙" E.BackArrow

instance matchEndArrow :: Match "🔚" E.EndArrow

instance matchOnArrow :: Match "🔛" E.OnArrow

instance matchSoonArrow :: Match "🔜" E.SoonArrow

instance matchTopArrow :: Match "🔝" E.TopArrow

instance matchPlaceOfWorship :: Match "🛐" E.PlaceOfWorship

instance matchAtomSymbol :: Match "⚛" E.AtomSymbol

instance matchOm :: Match "🕉" E.Om

instance matchStarOfDavid :: Match "✡" E.StarOfDavid

instance matchWheelOfDharma :: Match "☸" E.WheelOfDharma

instance matchYinYang :: Match "☯" E.YinYang

instance matchLatinCross :: Match "✝" E.LatinCross

instance matchOrthodoxCross :: Match "☦" E.OrthodoxCross

instance matchStarAndCrescent :: Match "☪" E.StarAndCrescent

instance matchPeaceSymbol :: Match "☮" E.PeaceSymbol

instance matchMenorah :: Match "🕎" E.Menorah

instance matchDottedSixPointedStar :: Match "🔯" E.DottedSixPointedStar

instance matchAries :: Match "♈" E.Aries

instance matchTaurus :: Match "♉" E.Taurus

instance matchGemini :: Match "♊" E.Gemini

instance matchCancer :: Match "♋" E.Cancer

instance matchLeo :: Match "♌" E.Leo

instance matchVirgo :: Match "♍" E.Virgo

instance matchLibra :: Match "♎" E.Libra

instance matchScorpio :: Match "♏" E.Scorpio

instance matchSagittarius :: Match "♐" E.Sagittarius

instance matchCapricorn :: Match "♑" E.Capricorn

instance matchAquarius :: Match "♒" E.Aquarius

instance matchPisces :: Match "♓" E.Pisces

instance matchOphiuchus :: Match "⛎" E.Ophiuchus

instance matchShuffleTracksButton :: Match "🔀" E.ShuffleTracksButton

instance matchRepeatButton :: Match "🔁" E.RepeatButton

instance matchRepeatSingleButton :: Match "🔂" E.RepeatSingleButton

instance matchPlayButton :: Match "▶" E.PlayButton

instance matchFastForwardButton :: Match "⏩" E.FastForwardButton

instance matchNextTrackButton :: Match "⏭" E.NextTrackButton

instance matchPlayOrPauseButton :: Match "⏯" E.PlayOrPauseButton

instance matchReverseButton :: Match "◀" E.ReverseButton

instance matchFastReverseButton :: Match "⏪" E.FastReverseButton

instance matchLastTrackButton :: Match "⏮" E.LastTrackButton

instance matchUpwardsButton :: Match "🔼" E.UpwardsButton

instance matchFastUpButton :: Match "⏫" E.FastUpButton

instance matchDownwardsButton :: Match "🔽" E.DownwardsButton

instance matchFastDownButton :: Match "⏬" E.FastDownButton

instance matchPauseButton :: Match "⏸" E.PauseButton

instance matchStopButton :: Match "⏹" E.StopButton

instance matchRecordButton :: Match "⏺" E.RecordButton

instance matchEjectButton :: Match "⏏" E.EjectButton

instance matchCinema :: Match "🎦" E.Cinema

instance matchDimButton :: Match "🔅" E.DimButton

instance matchBrightButton :: Match "🔆" E.BrightButton

instance matchAntennaBars :: Match "📶" E.AntennaBars

instance matchVibrationMode :: Match "📳" E.VibrationMode

instance matchMobilePhoneOff :: Match "📴" E.MobilePhoneOff

instance matchFemaleSign :: Match "♀" E.FemaleSign

instance matchMaleSign :: Match "♂" E.MaleSign

instance matchTransgenderSymbol :: Match "⚧" E.TransgenderSymbol

instance matchMultiply :: Match "✖" E.Multiply

instance matchPlus :: Match "➕" E.Plus

instance matchMinus :: Match "➖" E.Minus

instance matchDivide :: Match "➗" E.Divide

instance matchInfinity :: Match "♾" E.Infinity

instance matchDoubleExclamationMark :: Match "‼" E.DoubleExclamationMark

instance matchExclamationQuestionMark :: Match "⁉" E.ExclamationQuestionMark

instance matchQuestionMark :: Match "❓" E.QuestionMark

instance matchWhiteQuestionMark :: Match "❔" E.WhiteQuestionMark

instance matchWhiteExclamationMark :: Match "❕" E.WhiteExclamationMark

instance matchExclamationMark :: Match "❗" E.ExclamationMark

instance matchWavyDash :: Match "〰" E.WavyDash

instance matchCurrencyExchange :: Match "💱" E.CurrencyExchange

instance matchHeavyDollarSign :: Match "💲" E.HeavyDollarSign

instance matchMedicalSymbol :: Match "⚕" E.MedicalSymbol

instance matchRecyclingSymbol :: Match "♻" E.RecyclingSymbol

instance matchFleurDeLis :: Match "⚜" E.FleurDeLis

instance matchTridentEmblem :: Match "🔱" E.TridentEmblem

instance matchNameBadge :: Match "📛" E.NameBadge

instance matchJapaneseSymbolForBeginner :: Match "🔰" E.JapaneseSymbolForBeginner

instance matchHollowRedCircle :: Match "⭕" E.HollowRedCircle

instance matchCheckMarkButton :: Match "✅" E.CheckMarkButton

instance matchCheckBoxWithCheck :: Match "☑" E.CheckBoxWithCheck

instance matchCheckMark :: Match "✔" E.CheckMark

instance matchCrossMark :: Match "❌" E.CrossMark

instance matchCrossMarkButton :: Match "❎" E.CrossMarkButton

instance matchCurlyLoop :: Match "➰" E.CurlyLoop

instance matchDoubleCurlyLoop :: Match "➿" E.DoubleCurlyLoop

instance matchPartAlternationMark :: Match "〽" E.PartAlternationMark

instance matchEightSpokedAsterisk :: Match "✳" E.EightSpokedAsterisk

instance matchEightPointedStar :: Match "✴" E.EightPointedStar

instance matchSparkle :: Match "❇" E.Sparkle

instance matchCopyright :: Match "©" E.Copyright

instance matchRegistered :: Match "®" E.Registered

instance matchTradeMark :: Match "™" E.TradeMark

instance matchKeycap10 :: Match "🔟" E.Keycap10

instance matchInputLatinUppercase :: Match "🔠" E.InputLatinUppercase

instance matchInputLatinLowercase :: Match "🔡" E.InputLatinLowercase

instance matchInputNumbers :: Match "🔢" E.InputNumbers

instance matchInputSymbols :: Match "🔣" E.InputSymbols

instance matchInputLatinLetters :: Match "🔤" E.InputLatinLetters

instance matchAButtonBloodType :: Match "🅰" E.AButtonBloodType

instance matchAbButtonBloodType :: Match "🆎" E.AbButtonBloodType

instance matchBButtonBloodType :: Match "🅱" E.BButtonBloodType

instance matchClButton :: Match "🆑" E.ClButton

instance matchCoolButton :: Match "🆒" E.CoolButton

instance matchFreeButton :: Match "🆓" E.FreeButton

instance matchInformation :: Match "ℹ" E.Information

instance matchIdButton :: Match "🆔" E.IdButton

instance matchCircledM :: Match "Ⓜ" E.CircledM

instance matchNewButton :: Match "🆕" E.NewButton

instance matchNgButton :: Match "🆖" E.NgButton

instance matchOButtonBloodType :: Match "🅾" E.OButtonBloodType

instance matchOkButton :: Match "🆗" E.OkButton

instance matchPButton :: Match "🅿" E.PButton

instance matchSosButton :: Match "🆘" E.SosButton

instance matchUpButton :: Match "🆙" E.UpButton

instance matchVsButton :: Match "🆚" E.VsButton

instance matchJapaneseHereButton :: Match "🈁" E.JapaneseHereButton

instance matchJapaneseServiceChargeButton :: Match "🈂" E.JapaneseServiceChargeButton

instance matchJapaneseMonthlyAmountButton :: Match "🈷" E.JapaneseMonthlyAmountButton

instance matchJapaneseNotFreeOfChargeButton :: Match "🈶" E.JapaneseNotFreeOfChargeButton

instance matchJapaneseReservedButton :: Match "🈯" E.JapaneseReservedButton

instance matchJapaneseBargainButton :: Match "🉐" E.JapaneseBargainButton

instance matchJapaneseDiscountButton :: Match "🈹" E.JapaneseDiscountButton

instance matchJapaneseFreeOfChargeButton :: Match "🈚" E.JapaneseFreeOfChargeButton

instance matchJapaneseProhibitedButton :: Match "🈲" E.JapaneseProhibitedButton

instance matchJapaneseAcceptableButton :: Match "🉑" E.JapaneseAcceptableButton

instance matchJapaneseApplicationButton :: Match "🈸" E.JapaneseApplicationButton

instance matchJapanesePassingGradeButton :: Match "🈴" E.JapanesePassingGradeButton

instance matchJapaneseVacancyButton :: Match "🈳" E.JapaneseVacancyButton

instance matchJapaneseCongratulationsButton :: Match "㊗" E.JapaneseCongratulationsButton

instance matchJapaneseSecretButton :: Match "㊙" E.JapaneseSecretButton

instance matchJapaneseOpenForBusinessButton :: Match "🈺" E.JapaneseOpenForBusinessButton

instance matchJapaneseNoVacancyButton :: Match "🈵" E.JapaneseNoVacancyButton

instance matchRedCircle :: Match "🔴" E.RedCircle

instance matchOrangeCircle :: Match "🟠" E.OrangeCircle

instance matchYellowCircle :: Match "🟡" E.YellowCircle

instance matchGreenCircle :: Match "🟢" E.GreenCircle

instance matchBlueCircle :: Match "🔵" E.BlueCircle

instance matchPurpleCircle :: Match "🟣" E.PurpleCircle

instance matchBrownCircle :: Match "🟤" E.BrownCircle

instance matchBlackCircle :: Match "⚫" E.BlackCircle

instance matchWhiteCircle :: Match "⚪" E.WhiteCircle

instance matchRedSquare :: Match "🟥" E.RedSquare

instance matchOrangeSquare :: Match "🟧" E.OrangeSquare

instance matchYellowSquare :: Match "🟨" E.YellowSquare

instance matchGreenSquare :: Match "🟩" E.GreenSquare

instance matchBlueSquare :: Match "🟦" E.BlueSquare

instance matchPurpleSquare :: Match "🟪" E.PurpleSquare

instance matchBrownSquare :: Match "🟫" E.BrownSquare

instance matchBlackLargeSquare :: Match "⬛" E.BlackLargeSquare

instance matchWhiteLargeSquare :: Match "⬜" E.WhiteLargeSquare

instance matchBlackMediumSquare :: Match "◼" E.BlackMediumSquare

instance matchWhiteMediumSquare :: Match "◻" E.WhiteMediumSquare

instance matchBlackMediumSmallSquare :: Match "◾" E.BlackMediumSmallSquare

instance matchWhiteMediumSmallSquare :: Match "◽" E.WhiteMediumSmallSquare

instance matchBlackSmallSquare :: Match "▪" E.BlackSmallSquare

instance matchWhiteSmallSquare :: Match "▫" E.WhiteSmallSquare

instance matchLargeOrangeDiamond :: Match "🔶" E.LargeOrangeDiamond

instance matchLargeBlueDiamond :: Match "🔷" E.LargeBlueDiamond

instance matchSmallOrangeDiamond :: Match "🔸" E.SmallOrangeDiamond

instance matchSmallBlueDiamond :: Match "🔹" E.SmallBlueDiamond

instance matchRedTrianglePointedUp :: Match "🔺" E.RedTrianglePointedUp

instance matchRedTrianglePointedDown :: Match "🔻" E.RedTrianglePointedDown

instance matchDiamondWithADot :: Match "💠" E.DiamondWithADot

instance matchRadioButton :: Match "🔘" E.RadioButton

instance matchWhiteSquareButton :: Match "🔳" E.WhiteSquareButton

instance matchBlackSquareButton :: Match "🔲" E.BlackSquareButton

instance matchChequeredFlag :: Match "🏁" E.ChequeredFlag

instance matchTriangularFlag :: Match "🚩" E.TriangularFlag

instance matchCrossedFlags :: Match "🎌" E.CrossedFlags

instance matchBlackFlag :: Match "🏴" E.BlackFlag

instance matchWhiteFlag :: Match "🏳" E.WhiteFlag
