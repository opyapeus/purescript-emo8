module Emo8.Data.Emoji where

import Prelude

newtype Emoji = Emoji String

instance showEmoji :: Show Emoji where
  show (Emoji s) = s

derive instance eqEmoji :: Eq Emoji

-- | Supported emoji functions
-- TODO: define type signature all at once
-- In Haskell: grinningFace, beamingFaceWithSmilingEyes, ... :: Emoji
-- group: Smileys & People
-- subgroup: face-positive
grinningFace :: Emoji
grinningFace = Emoji "😀"
beamingFaceWithSmilingEyes :: Emoji
beamingFaceWithSmilingEyes = Emoji "😁"
faceWithTearsOfJoy :: Emoji
faceWithTearsOfJoy = Emoji "😂"
rollingOnTheFloorLaughing :: Emoji
rollingOnTheFloorLaughing = Emoji "🤣"
grinningFaceWithBigEyes :: Emoji
grinningFaceWithBigEyes = Emoji "😃"
grinningFaceWithSmilingEyes :: Emoji
grinningFaceWithSmilingEyes = Emoji "😄"
grinningFaceWithSweat :: Emoji
grinningFaceWithSweat = Emoji "😅"
grinningSquintingFace :: Emoji
grinningSquintingFace = Emoji "😆"
winkingFace :: Emoji
winkingFace = Emoji "😉"
smilingFaceWithSmilingEyes :: Emoji
smilingFaceWithSmilingEyes = Emoji "😊"
faceSavoringFood :: Emoji
faceSavoringFood = Emoji "😋"
smilingFaceWithSunglasses :: Emoji
smilingFaceWithSunglasses = Emoji "😎"
smilingFaceWithHeartEyes :: Emoji
smilingFaceWithHeartEyes = Emoji "😍"
faceBlowingAKiss :: Emoji
faceBlowingAKiss = Emoji "😘"
smilingFaceWith3Hearts :: Emoji
smilingFaceWith3Hearts = Emoji "🥰"
kissingFace :: Emoji
kissingFace = Emoji "😗"
kissingFaceWithSmilingEyes :: Emoji
kissingFaceWithSmilingEyes = Emoji "😙"
kissingFaceWithClosedEyes :: Emoji
kissingFaceWithClosedEyes = Emoji "😚"
smilingFace :: Emoji
smilingFace = Emoji "☺️"
slightlySmilingFace :: Emoji
slightlySmilingFace = Emoji "🙂"
huggingFace :: Emoji
huggingFace = Emoji "🤗"
starStruck :: Emoji
starStruck = Emoji "🤩"
-- subgroup: face-neutral
thinkingFace :: Emoji
thinkingFace = Emoji "🤔"
faceWithRaisedEyebrow :: Emoji
faceWithRaisedEyebrow = Emoji "🤨"
neutralFace :: Emoji
neutralFace = Emoji "😐"
expressionlessFace :: Emoji
expressionlessFace = Emoji "😑"
faceWithoutMouth :: Emoji
faceWithoutMouth = Emoji "😶"
faceWithRollingEyes :: Emoji
faceWithRollingEyes = Emoji "🙄"
smirkingFace :: Emoji
smirkingFace = Emoji "😏"
perseveringFace :: Emoji
perseveringFace = Emoji "😣"
sadButRelievedFace :: Emoji
sadButRelievedFace = Emoji "😥"
faceWithOpenMouth :: Emoji
faceWithOpenMouth = Emoji "😮"
zipperMouthFace :: Emoji
zipperMouthFace = Emoji "🤐"
hushedFace :: Emoji
hushedFace = Emoji "😯"
sleepyFace :: Emoji
sleepyFace = Emoji "😪"
tiredFace :: Emoji
tiredFace = Emoji "😫"
sleepingFace :: Emoji
sleepingFace = Emoji "😴"
relievedFace :: Emoji
relievedFace = Emoji "😌"
faceWithTongue :: Emoji
faceWithTongue = Emoji "😛"
winkingFaceWithTongue :: Emoji
winkingFaceWithTongue = Emoji "😜"
squintingFaceWithTongue :: Emoji
squintingFaceWithTongue = Emoji "😝"
droolingFace :: Emoji
droolingFace = Emoji "🤤"
unamusedFace :: Emoji
unamusedFace = Emoji "😒"
downcastFaceWithSweat :: Emoji
downcastFaceWithSweat = Emoji "😓"
pensiveFace :: Emoji
pensiveFace = Emoji "😔"
confusedFace :: Emoji
confusedFace = Emoji "😕"
upsideDownFace :: Emoji
upsideDownFace = Emoji "🙃"
moneyMouthFace :: Emoji
moneyMouthFace = Emoji "🤑"
astonishedFace :: Emoji
astonishedFace = Emoji "😲"
-- subgroup: face-negative
frowningFace :: Emoji
frowningFace = Emoji "☹️"
slightlyFrowningFace :: Emoji
slightlyFrowningFace = Emoji "🙁"
confoundedFace :: Emoji
confoundedFace = Emoji "😖"
disappointedFace :: Emoji
disappointedFace = Emoji "😞"
worriedFace :: Emoji
worriedFace = Emoji "😟"
faceWithSteamFromNose :: Emoji
faceWithSteamFromNose = Emoji "😤"
cryingFace :: Emoji
cryingFace = Emoji "😢"
loudlyCryingFace :: Emoji
loudlyCryingFace = Emoji "😭"
frowningFaceWithOpenMouth :: Emoji
frowningFaceWithOpenMouth = Emoji "😦"
anguishedFace :: Emoji
anguishedFace = Emoji "😧"
fearfulFace :: Emoji
fearfulFace = Emoji "😨"
wearyFace :: Emoji
wearyFace = Emoji "😩"
explodingHead :: Emoji
explodingHead = Emoji "🤯"
grimacingFace :: Emoji
grimacingFace = Emoji "😬"
anxiousFaceWithSweat :: Emoji
anxiousFaceWithSweat = Emoji "😰"
faceScreamingInFear :: Emoji
faceScreamingInFear = Emoji "😱"
hotFace :: Emoji
hotFace = Emoji "🥵"
coldFace :: Emoji
coldFace = Emoji "🥶"
flushedFace :: Emoji
flushedFace = Emoji "😳"
zanyFace :: Emoji
zanyFace = Emoji "🤪"
dizzyFace :: Emoji
dizzyFace = Emoji "😵"
poutingFace :: Emoji
poutingFace = Emoji "😡"
angryFace :: Emoji
angryFace = Emoji "😠"
faceWithSymbolsOnMouth :: Emoji
faceWithSymbolsOnMouth = Emoji "🤬"
-- subgroup: face-sick
faceWithMedicalMask :: Emoji
faceWithMedicalMask = Emoji "😷"
faceWithThermometer :: Emoji
faceWithThermometer = Emoji "🤒"
faceWithHeadBandage :: Emoji
faceWithHeadBandage = Emoji "🤕"
nauseatedFace :: Emoji
nauseatedFace = Emoji "🤢"
faceVomiting :: Emoji
faceVomiting = Emoji "🤮"
sneezingFace :: Emoji
sneezingFace = Emoji "🤧"
-- subgroup: face-role
smilingFaceWithHalo :: Emoji
smilingFaceWithHalo = Emoji "😇"
cowboyHatFace :: Emoji
cowboyHatFace = Emoji "🤠"
partyingFace :: Emoji
partyingFace = Emoji "🥳"
woozyFace :: Emoji
woozyFace = Emoji "🥴"
pleadingFace :: Emoji
pleadingFace = Emoji "🥺"
lyingFace :: Emoji
lyingFace = Emoji "🤥"
shushingFace :: Emoji
shushingFace = Emoji "🤫"
faceWithHandOverMouth :: Emoji
faceWithHandOverMouth = Emoji "🤭"
faceWithMonocle :: Emoji
faceWithMonocle = Emoji "🧐"
nerdFace :: Emoji
nerdFace = Emoji "🤓"
-- subgroup: face-fantasy
smilingFaceWithHorns :: Emoji
smilingFaceWithHorns = Emoji "😈"
angryFaceWithHorns :: Emoji
angryFaceWithHorns = Emoji "👿"
clownFace :: Emoji
clownFace = Emoji "🤡"
ogre :: Emoji
ogre = Emoji "👹"
goblin :: Emoji
goblin = Emoji "👺"
skull :: Emoji
skull = Emoji "💀"
skullAndCrossbones :: Emoji
skullAndCrossbones = Emoji "☠️"
ghost :: Emoji
ghost = Emoji "👻"
alien :: Emoji
alien = Emoji "👽"
alienMonster :: Emoji
alienMonster = Emoji "👾"
robotFace :: Emoji
robotFace = Emoji "🤖"
pileOfPoo :: Emoji
pileOfPoo = Emoji "💩"
-- subgroup: cat-face
grinningCatFace :: Emoji
grinningCatFace = Emoji "😺"
grinningCatFaceWithSmilingEyes :: Emoji
grinningCatFaceWithSmilingEyes = Emoji "😸"
catFaceWithTearsOfJoy :: Emoji
catFaceWithTearsOfJoy = Emoji "😹"
smilingCatFaceWithHeartEyes :: Emoji
smilingCatFaceWithHeartEyes = Emoji "😻"
catFaceWithWrySmile :: Emoji
catFaceWithWrySmile = Emoji "😼"
kissingCatFace :: Emoji
kissingCatFace = Emoji "😽"
wearyCatFace :: Emoji
wearyCatFace = Emoji "🙀"
cryingCatFace :: Emoji
cryingCatFace = Emoji "😿"
poutingCatFace :: Emoji
poutingCatFace = Emoji "😾"
-- subgroup: monkey-face
seeNoEvilMonkey :: Emoji
seeNoEvilMonkey = Emoji "🙈"
hearNoEvilMonkey :: Emoji
hearNoEvilMonkey = Emoji "🙉"
speakNoEvilMonkey :: Emoji
speakNoEvilMonkey = Emoji "🙊"
-- subgroup: skin-tone
lightSkinTone :: Emoji
lightSkinTone = Emoji "🏻"
mediumLightSkinTone :: Emoji
mediumLightSkinTone = Emoji "🏼"
mediumSkinTone :: Emoji
mediumSkinTone = Emoji "🏽"
mediumDarkSkinTone :: Emoji
mediumDarkSkinTone = Emoji "🏾"
darkSkinTone :: Emoji
darkSkinTone = Emoji "🏿"
-- subgroup: person
baby :: Emoji
baby = Emoji "👶"
child :: Emoji
child = Emoji "🧒"
boy :: Emoji
boy = Emoji "👦"
girl :: Emoji
girl = Emoji "👧"
adult :: Emoji
adult = Emoji "🧑"
man :: Emoji
man = Emoji "👨"
woman :: Emoji
woman = Emoji "👩"
olderAdult :: Emoji
olderAdult = Emoji "🧓"
oldMan :: Emoji
oldMan = Emoji "👴"
oldWoman :: Emoji
oldWoman = Emoji "👵"
-- subgroup: person-role
manHealthWorker :: Emoji
manHealthWorker = Emoji "👨‍⚕️"
womanHealthWorker :: Emoji
womanHealthWorker = Emoji "👩‍⚕️"
manStudent :: Emoji
manStudent = Emoji "👨‍🎓"
womanStudent :: Emoji
womanStudent = Emoji "👩‍🎓"
manTeacher :: Emoji
manTeacher = Emoji "👨‍🏫"
womanTeacher :: Emoji
womanTeacher = Emoji "👩‍🏫"
manJudge :: Emoji
manJudge = Emoji "👨‍⚖️"
womanJudge :: Emoji
womanJudge = Emoji "👩‍⚖️"
manFarmer :: Emoji
manFarmer = Emoji "👨‍🌾"
womanFarmer :: Emoji
womanFarmer = Emoji "👩‍🌾"
manCook :: Emoji
manCook = Emoji "👨‍🍳"
womanCook :: Emoji
womanCook = Emoji "👩‍🍳"
manMechanic :: Emoji
manMechanic = Emoji "👨‍🔧"
womanMechanic :: Emoji
womanMechanic = Emoji "👩‍🔧"
manFactoryWorker :: Emoji
manFactoryWorker = Emoji "👨‍🏭"
womanFactoryWorker :: Emoji
womanFactoryWorker = Emoji "👩‍🏭"
manOfficeWorker :: Emoji
manOfficeWorker = Emoji "👨‍💼"
womanOfficeWorker :: Emoji
womanOfficeWorker = Emoji "👩‍💼"
manScientist :: Emoji
manScientist = Emoji "👨‍🔬"
womanScientist :: Emoji
womanScientist = Emoji "👩‍🔬"
manTechnologist :: Emoji
manTechnologist = Emoji "👨‍💻"
womanTechnologist :: Emoji
womanTechnologist = Emoji "👩‍💻"
manSinger :: Emoji
manSinger = Emoji "👨‍🎤"
womanSinger :: Emoji
womanSinger = Emoji "👩‍🎤"
manArtist :: Emoji
manArtist = Emoji "👨‍🎨"
womanArtist :: Emoji
womanArtist = Emoji "👩‍🎨"
manPilot :: Emoji
manPilot = Emoji "👨‍✈️"
womanPilot :: Emoji
womanPilot = Emoji "👩‍✈️"
manAstronaut :: Emoji
manAstronaut = Emoji "👨‍🚀"
womanAstronaut :: Emoji
womanAstronaut = Emoji "👩‍🚀"
manFirefighter :: Emoji
manFirefighter = Emoji "👨‍🚒"
womanFirefighter :: Emoji
womanFirefighter = Emoji "👩‍🚒"
policeOfficer :: Emoji
policeOfficer = Emoji "👮"
manPoliceOfficer :: Emoji
manPoliceOfficer = Emoji "👮‍♂️"
womanPoliceOfficer :: Emoji
womanPoliceOfficer = Emoji "👮‍♀️"
detective :: Emoji
detective = Emoji "🕵️"
manDetective :: Emoji
manDetective = Emoji "🕵️‍♂️"
womanDetective :: Emoji
womanDetective = Emoji "🕵️‍♀️"
guard :: Emoji
guard = Emoji "💂"
manGuard :: Emoji
manGuard = Emoji "💂‍♂️"
womanGuard :: Emoji
womanGuard = Emoji "💂‍♀️"
constructionWorker :: Emoji
constructionWorker = Emoji "👷"
manConstructionWorker :: Emoji
manConstructionWorker = Emoji "👷‍♂️"
womanConstructionWorker :: Emoji
womanConstructionWorker = Emoji "👷‍♀️"
prince :: Emoji
prince = Emoji "🤴"
princess :: Emoji
princess = Emoji "👸"
personWearingTurban :: Emoji
personWearingTurban = Emoji "👳"
manWearingTurban :: Emoji
manWearingTurban = Emoji "👳‍♂️"
womanWearingTurban :: Emoji
womanWearingTurban = Emoji "👳‍♀️"
manWithChineseCap :: Emoji
manWithChineseCap = Emoji "👲"
womanWithHeadscarf :: Emoji
womanWithHeadscarf = Emoji "🧕"
beardedPerson :: Emoji
beardedPerson = Emoji "🧔"
blondHairedPerson :: Emoji
blondHairedPerson = Emoji "👱"
blondHairedMan :: Emoji
blondHairedMan = Emoji "👱‍♂️"
blondHairedWoman :: Emoji
blondHairedWoman = Emoji "👱‍♀️"
manRedHaired :: Emoji
manRedHaired = Emoji "👨‍🦰"
womanRedHaired :: Emoji
womanRedHaired = Emoji "👩‍🦰"
manCurlyHaired :: Emoji
manCurlyHaired = Emoji "👨‍🦱"
womanCurlyHaired :: Emoji
womanCurlyHaired = Emoji "👩‍🦱"
manBald :: Emoji
manBald = Emoji "👨‍🦲"
womanBald :: Emoji
womanBald = Emoji "👩‍🦲"
manWhiteHaired :: Emoji
manWhiteHaired = Emoji "👨‍🦳"
womanWhiteHaired :: Emoji
womanWhiteHaired = Emoji "👩‍🦳"
manInTuxedo :: Emoji
manInTuxedo = Emoji "🤵"
brideWithVeil :: Emoji
brideWithVeil = Emoji "👰"
pregnantWoman :: Emoji
pregnantWoman = Emoji "🤰"
breastFeeding :: Emoji
breastFeeding = Emoji "🤱"
-- subgroup: person-fantasy
babyAngel :: Emoji
babyAngel = Emoji "👼"
santaClaus :: Emoji
santaClaus = Emoji "🎅"
mrsClaus :: Emoji
mrsClaus = Emoji "🤶"
superhero :: Emoji
superhero = Emoji "🦸"
womanSuperhero :: Emoji
womanSuperhero = Emoji "🦸‍♀️"
manSuperhero :: Emoji
manSuperhero = Emoji "🦸‍♂️"
supervillain :: Emoji
supervillain = Emoji "🦹"
womanSupervillain :: Emoji
womanSupervillain = Emoji "🦹‍♀️"
manSupervillain :: Emoji
manSupervillain = Emoji "🦹‍♂️"
mage :: Emoji
mage = Emoji "🧙"
womanMage :: Emoji
womanMage = Emoji "🧙‍♀️"
manMage :: Emoji
manMage = Emoji "🧙‍♂️"
fairy :: Emoji
fairy = Emoji "🧚"
womanFairy :: Emoji
womanFairy = Emoji "🧚‍♀️"
manFairy :: Emoji
manFairy = Emoji "🧚‍♂️"
vampire :: Emoji
vampire = Emoji "🧛"
womanVampire :: Emoji
womanVampire = Emoji "🧛‍♀️"
manVampire :: Emoji
manVampire = Emoji "🧛‍♂️"
merperson :: Emoji
merperson = Emoji "🧜"
mermaid :: Emoji
mermaid = Emoji "🧜‍♀️"
merman :: Emoji
merman = Emoji "🧜‍♂️"
elf :: Emoji
elf = Emoji "🧝"
womanElf :: Emoji
womanElf = Emoji "🧝‍♀️"
manElf :: Emoji
manElf = Emoji "🧝‍♂️"
genie :: Emoji
genie = Emoji "🧞"
womanGenie :: Emoji
womanGenie = Emoji "🧞‍♀️"
manGenie :: Emoji
manGenie = Emoji "🧞‍♂️"
zombie :: Emoji
zombie = Emoji "🧟"
womanZombie :: Emoji
womanZombie = Emoji "🧟‍♀️"
manZombie :: Emoji
manZombie = Emoji "🧟‍♂️"
-- subgroup: person-gesture
personFrowning :: Emoji
personFrowning = Emoji "🙍"
manFrowning :: Emoji
manFrowning = Emoji "🙍‍♂️"
womanFrowning :: Emoji
womanFrowning = Emoji "🙍‍♀️"
personPouting :: Emoji
personPouting = Emoji "🙎"
manPouting :: Emoji
manPouting = Emoji "🙎‍♂️"
womanPouting :: Emoji
womanPouting = Emoji "🙎‍♀️"
personGesturingNO :: Emoji
personGesturingNO = Emoji "🙅"
manGesturingNO :: Emoji
manGesturingNO = Emoji "🙅‍♂️"
womanGesturingNO :: Emoji
womanGesturingNO = Emoji "🙅‍♀️"
personGesturingOK :: Emoji
personGesturingOK = Emoji "🙆"
manGesturingOK :: Emoji
manGesturingOK = Emoji "🙆‍♂️"
womanGesturingOK :: Emoji
womanGesturingOK = Emoji "🙆‍♀️"
personTippingHand :: Emoji
personTippingHand = Emoji "💁"
manTippingHand :: Emoji
manTippingHand = Emoji "💁‍♂️"
womanTippingHand :: Emoji
womanTippingHand = Emoji "💁‍♀️"
personRaisingHand :: Emoji
personRaisingHand = Emoji "🙋"
manRaisingHand :: Emoji
manRaisingHand = Emoji "🙋‍♂️"
womanRaisingHand :: Emoji
womanRaisingHand = Emoji "🙋‍♀️"
personBowing :: Emoji
personBowing = Emoji "🙇"
manBowing :: Emoji
manBowing = Emoji "🙇‍♂️"
womanBowing :: Emoji
womanBowing = Emoji "🙇‍♀️"
personFacepalming :: Emoji
personFacepalming = Emoji "🤦"
manFacepalming :: Emoji
manFacepalming = Emoji "🤦‍♂️"
womanFacepalming :: Emoji
womanFacepalming = Emoji "🤦‍♀️"
personShrugging :: Emoji
personShrugging = Emoji "🤷"
manShrugging :: Emoji
manShrugging = Emoji "🤷‍♂️"
womanShrugging :: Emoji
womanShrugging = Emoji "🤷‍♀️"
-- subgroup: person-activity
personGettingMassage :: Emoji
personGettingMassage = Emoji "💆"
manGettingMassage :: Emoji
manGettingMassage = Emoji "💆‍♂️"
womanGettingMassage :: Emoji
womanGettingMassage = Emoji "💆‍♀️"
personGettingHaircut :: Emoji
personGettingHaircut = Emoji "💇"
manGettingHaircut :: Emoji
manGettingHaircut = Emoji "💇‍♂️"
womanGettingHaircut :: Emoji
womanGettingHaircut = Emoji "💇‍♀️"
personWalking :: Emoji
personWalking = Emoji "🚶"
manWalking :: Emoji
manWalking = Emoji "🚶‍♂️"
womanWalking :: Emoji
womanWalking = Emoji "🚶‍♀️"
personRunning :: Emoji
personRunning = Emoji "🏃"
manRunning :: Emoji
manRunning = Emoji "🏃‍♂️"
womanRunning :: Emoji
womanRunning = Emoji "🏃‍♀️"
womanDancing :: Emoji
womanDancing = Emoji "💃"
manDancing :: Emoji
manDancing = Emoji "🕺"
peopleWithBunnyEars :: Emoji
peopleWithBunnyEars = Emoji "👯"
menWithBunnyEars :: Emoji
menWithBunnyEars = Emoji "👯‍♂️"
womenWithBunnyEars :: Emoji
womenWithBunnyEars = Emoji "👯‍♀️"
personInSteamyRoom :: Emoji
personInSteamyRoom = Emoji "🧖"
womanInSteamyRoom :: Emoji
womanInSteamyRoom = Emoji "🧖‍♀️"
manInSteamyRoom :: Emoji
manInSteamyRoom = Emoji "🧖‍♂️"
personClimbing :: Emoji
personClimbing = Emoji "🧗"
womanClimbing :: Emoji
womanClimbing = Emoji "🧗‍♀️"
manClimbing :: Emoji
manClimbing = Emoji "🧗‍♂️"
personInLotusPosition :: Emoji
personInLotusPosition = Emoji "🧘"
womanInLotusPosition :: Emoji
womanInLotusPosition = Emoji "🧘‍♀️"
manInLotusPosition :: Emoji
manInLotusPosition = Emoji "🧘‍♂️"
personTakingBath :: Emoji
personTakingBath = Emoji "🛀"
personInBed :: Emoji
personInBed = Emoji "🛌"
manInSuitLevitating :: Emoji
manInSuitLevitating = Emoji "🕴️"
speakingHead :: Emoji
speakingHead = Emoji "🗣️"
bustInSilhouette :: Emoji
bustInSilhouette = Emoji "👤"
bustsInSilhouette :: Emoji
bustsInSilhouette = Emoji "👥"
-- subgroup: person-sport
personFencing :: Emoji
personFencing = Emoji "🤺"
horseRacing :: Emoji
horseRacing = Emoji "🏇"
skier :: Emoji
skier = Emoji "⛷️"
snowboarder :: Emoji
snowboarder = Emoji "🏂"
personGolfing :: Emoji
personGolfing = Emoji "🏌️"
manGolfing :: Emoji
manGolfing = Emoji "🏌️‍♂️"
womanGolfing :: Emoji
womanGolfing = Emoji "🏌️‍♀️"
personSurfing :: Emoji
personSurfing = Emoji "🏄"
manSurfing :: Emoji
manSurfing = Emoji "🏄‍♂️"
womanSurfing :: Emoji
womanSurfing = Emoji "🏄‍♀️"
personRowingBoat :: Emoji
personRowingBoat = Emoji "🚣"
manRowingBoat :: Emoji
manRowingBoat = Emoji "🚣‍♂️"
womanRowingBoat :: Emoji
womanRowingBoat = Emoji "🚣‍♀️"
personSwimming :: Emoji
personSwimming = Emoji "🏊"
manSwimming :: Emoji
manSwimming = Emoji "🏊‍♂️"
womanSwimming :: Emoji
womanSwimming = Emoji "🏊‍♀️"
personBouncingBall :: Emoji
personBouncingBall = Emoji "⛹️"
manBouncingBall :: Emoji
manBouncingBall = Emoji "⛹️‍♂️"
womanBouncingBall :: Emoji
womanBouncingBall = Emoji "⛹️‍♀️"
personLiftingWeights :: Emoji
personLiftingWeights = Emoji "🏋️"
manLiftingWeights :: Emoji
manLiftingWeights = Emoji "🏋️‍♂️"
womanLiftingWeights :: Emoji
womanLiftingWeights = Emoji "🏋️‍♀️"
personBiking :: Emoji
personBiking = Emoji "🚴"
manBiking :: Emoji
manBiking = Emoji "🚴‍♂️"
womanBiking :: Emoji
womanBiking = Emoji "🚴‍♀️"
personMountainBiking :: Emoji
personMountainBiking = Emoji "🚵"
manMountainBiking :: Emoji
manMountainBiking = Emoji "🚵‍♂️"
womanMountainBiking :: Emoji
womanMountainBiking = Emoji "🚵‍♀️"
racingCar :: Emoji
racingCar = Emoji "🏎️"
motorcycle :: Emoji
motorcycle = Emoji "🏍️"
personCartwheeling :: Emoji
personCartwheeling = Emoji "🤸"
manCartwheeling :: Emoji
manCartwheeling = Emoji "🤸‍♂️"
womanCartwheeling :: Emoji
womanCartwheeling = Emoji "🤸‍♀️"
peopleWrestling :: Emoji
peopleWrestling = Emoji "🤼"
menWrestling :: Emoji
menWrestling = Emoji "🤼‍♂️"
womenWrestling :: Emoji
womenWrestling = Emoji "🤼‍♀️"
personPlayingWaterPolo :: Emoji
personPlayingWaterPolo = Emoji "🤽"
manPlayingWaterPolo :: Emoji
manPlayingWaterPolo = Emoji "🤽‍♂️"
womanPlayingWaterPolo :: Emoji
womanPlayingWaterPolo = Emoji "🤽‍♀️"
personPlayingHandball :: Emoji
personPlayingHandball = Emoji "🤾"
manPlayingHandball :: Emoji
manPlayingHandball = Emoji "🤾‍♂️"
womanPlayingHandball :: Emoji
womanPlayingHandball = Emoji "🤾‍♀️"
personJuggling :: Emoji
personJuggling = Emoji "🤹"
manJuggling :: Emoji
manJuggling = Emoji "🤹‍♂️"
womanJuggling :: Emoji
womanJuggling = Emoji "🤹‍♀️"
-- subgroup: family
manAndWomanHoldingHands :: Emoji
manAndWomanHoldingHands = Emoji "👫"
twoMenHoldingHands :: Emoji
twoMenHoldingHands = Emoji "👬"
twoWomenHoldingHands :: Emoji
twoWomenHoldingHands = Emoji "👭"
kiss :: Emoji
kiss = Emoji "💏"
kissWomanMan :: Emoji
kissWomanMan = Emoji "👩‍❤️‍💋‍👨"
kissManMan :: Emoji
kissManMan = Emoji "👨‍❤️‍💋‍👨"
kissWomanWoman :: Emoji
kissWomanWoman = Emoji "👩‍❤️‍💋‍👩"
coupleWithHeart :: Emoji
coupleWithHeart = Emoji "💑"
coupleWithHeartWomanMan :: Emoji
coupleWithHeartWomanMan = Emoji "👩‍❤️‍👨"
coupleWithHeartManMan :: Emoji
coupleWithHeartManMan = Emoji "👨‍❤️‍👨"
coupleWithHeartWomanWoman :: Emoji
coupleWithHeartWomanWoman = Emoji "👩‍❤️‍👩"
family :: Emoji
family = Emoji "👪"
familyManWomanBoy :: Emoji
familyManWomanBoy = Emoji "👨‍👩‍👦"
familyManWomanGirl :: Emoji
familyManWomanGirl = Emoji "👨‍👩‍👧"
familyManWomanGirlBoy :: Emoji
familyManWomanGirlBoy = Emoji "👨‍👩‍👧‍👦"
familyManWomanBoyBoy :: Emoji
familyManWomanBoyBoy = Emoji "👨‍👩‍👦‍👦"
familyManWomanGirlGirl :: Emoji
familyManWomanGirlGirl = Emoji "👨‍👩‍👧‍👧"
familyManManBoy :: Emoji
familyManManBoy = Emoji "👨‍👨‍👦"
familyManManGirl :: Emoji
familyManManGirl = Emoji "👨‍👨‍👧"
familyManManGirlBoy :: Emoji
familyManManGirlBoy = Emoji "👨‍👨‍👧‍👦"
familyManManBoyBoy :: Emoji
familyManManBoyBoy = Emoji "👨‍👨‍👦‍👦"
familyManManGirlGirl :: Emoji
familyManManGirlGirl = Emoji "👨‍👨‍👧‍👧"
familyWomanWomanBoy :: Emoji
familyWomanWomanBoy = Emoji "👩‍👩‍👦"
familyWomanWomanGirl :: Emoji
familyWomanWomanGirl = Emoji "👩‍👩‍👧"
familyWomanWomanGirlBoy :: Emoji
familyWomanWomanGirlBoy = Emoji "👩‍👩‍👧‍👦"
familyWomanWomanBoyBoy :: Emoji
familyWomanWomanBoyBoy = Emoji "👩‍👩‍👦‍👦"
familyWomanWomanGirlGirl :: Emoji
familyWomanWomanGirlGirl = Emoji "👩‍👩‍👧‍👧"
familyManBoy :: Emoji
familyManBoy = Emoji "👨‍👦"
familyManBoyBoy :: Emoji
familyManBoyBoy = Emoji "👨‍👦‍👦"
familyManGirl :: Emoji
familyManGirl = Emoji "👨‍👧"
familyManGirlBoy :: Emoji
familyManGirlBoy = Emoji "👨‍👧‍👦"
familyManGirlGirl :: Emoji
familyManGirlGirl = Emoji "👨‍👧‍👧"
familyWomanBoy :: Emoji
familyWomanBoy = Emoji "👩‍👦"
familyWomanBoyBoy :: Emoji
familyWomanBoyBoy = Emoji "👩‍👦‍👦"
familyWomanGirl :: Emoji
familyWomanGirl = Emoji "👩‍👧"
familyWomanGirlBoy :: Emoji
familyWomanGirlBoy = Emoji "👩‍👧‍👦"
familyWomanGirlGirl :: Emoji
familyWomanGirlGirl = Emoji "👩‍👧‍👧"
-- subgroup: body
selfie :: Emoji
selfie = Emoji "🤳"
flexedBiceps :: Emoji
flexedBiceps = Emoji "💪"
leg :: Emoji
leg = Emoji "🦵"
foot :: Emoji
foot = Emoji "🦶"
backhandIndexPointingLeft :: Emoji
backhandIndexPointingLeft = Emoji "👈"
backhandIndexPointingRight :: Emoji
backhandIndexPointingRight = Emoji "👉"
indexPointingUp :: Emoji
indexPointingUp = Emoji "☝️"
backhandIndexPointingUp :: Emoji
backhandIndexPointingUp = Emoji "👆"
middleFinger :: Emoji
middleFinger = Emoji "🖕"
backhandIndexPointingDown :: Emoji
backhandIndexPointingDown = Emoji "👇"
victoryHand :: Emoji
victoryHand = Emoji "✌️"
crossedFingers :: Emoji
crossedFingers = Emoji "🤞"
vulcanSalute :: Emoji
vulcanSalute = Emoji "🖖"
signOfTheHorns :: Emoji
signOfTheHorns = Emoji "🤘"
callMeHand :: Emoji
callMeHand = Emoji "🤙"
handWithFingersSplayed :: Emoji
handWithFingersSplayed = Emoji "🖐️"
raisedHand :: Emoji
raisedHand = Emoji "✋"
oKHand :: Emoji
oKHand = Emoji "👌"
thumbsUp :: Emoji
thumbsUp = Emoji "👍"
thumbsDown :: Emoji
thumbsDown = Emoji "👎"
raisedFist :: Emoji
raisedFist = Emoji "✊"
oncomingFist :: Emoji
oncomingFist = Emoji "👊"
leftFacingFist :: Emoji
leftFacingFist = Emoji "🤛"
rightFacingFist :: Emoji
rightFacingFist = Emoji "🤜"
raisedBackOfHand :: Emoji
raisedBackOfHand = Emoji "🤚"
wavingHand :: Emoji
wavingHand = Emoji "👋"
loveYouGesture :: Emoji
loveYouGesture = Emoji "🤟"
writingHand :: Emoji
writingHand = Emoji "✍️"
clappingHands :: Emoji
clappingHands = Emoji "👏"
openHands :: Emoji
openHands = Emoji "👐"
raisingHands :: Emoji
raisingHands = Emoji "🙌"
palmsUpTogether :: Emoji
palmsUpTogether = Emoji "🤲"
foldedHands :: Emoji
foldedHands = Emoji "🙏"
handshake :: Emoji
handshake = Emoji "🤝"
nailPolish :: Emoji
nailPolish = Emoji "💅"
ear :: Emoji
ear = Emoji "👂"
nose :: Emoji
nose = Emoji "👃"
redHaired :: Emoji
redHaired = Emoji "🦰"
curlyHaired :: Emoji
curlyHaired = Emoji "🦱"
bald :: Emoji
bald = Emoji "🦲"
whiteHaired :: Emoji
whiteHaired = Emoji "🦳"
footprints :: Emoji
footprints = Emoji "👣"
eyes :: Emoji
eyes = Emoji "👀"
eye :: Emoji
eye = Emoji "👁️"
eyeInSpeechBubble :: Emoji
eyeInSpeechBubble = Emoji "👁️‍🗨️"
brain :: Emoji
brain = Emoji "🧠"
bone :: Emoji
bone = Emoji "🦴"
tooth :: Emoji
tooth = Emoji "🦷"
tongue :: Emoji
tongue = Emoji "👅"
mouth :: Emoji
mouth = Emoji "👄"
-- subgroup: emotion
kissMark :: Emoji
kissMark = Emoji "💋"
heartWithArrow :: Emoji
heartWithArrow = Emoji "💘"
redHeart :: Emoji
redHeart = Emoji "❤️"
beatingHeart :: Emoji
beatingHeart = Emoji "💓"
brokenHeart :: Emoji
brokenHeart = Emoji "💔"
twoHearts :: Emoji
twoHearts = Emoji "💕"
sparklingHeart :: Emoji
sparklingHeart = Emoji "💖"
growingHeart :: Emoji
growingHeart = Emoji "💗"
blueHeart :: Emoji
blueHeart = Emoji "💙"
greenHeart :: Emoji
greenHeart = Emoji "💚"
yellowHeart :: Emoji
yellowHeart = Emoji "💛"
orangeHeart :: Emoji
orangeHeart = Emoji "🧡"
purpleHeart :: Emoji
purpleHeart = Emoji "💜"
blackHeart :: Emoji
blackHeart = Emoji "🖤"
heartWithRibbon :: Emoji
heartWithRibbon = Emoji "💝"
revolvingHearts :: Emoji
revolvingHearts = Emoji "💞"
heartDecoration :: Emoji
heartDecoration = Emoji "💟"
heavyHeartExclamation :: Emoji
heavyHeartExclamation = Emoji "❣️"
loveLetter :: Emoji
loveLetter = Emoji "💌"
zzz :: Emoji
zzz = Emoji "💤"
angerSymbol :: Emoji
angerSymbol = Emoji "💢"
bomb :: Emoji
bomb = Emoji "💣"
collision :: Emoji
collision = Emoji "💥"
sweatDroplets :: Emoji
sweatDroplets = Emoji "💦"
dashingAway :: Emoji
dashingAway = Emoji "💨"
dizzy :: Emoji
dizzy = Emoji "💫"
speechBalloon :: Emoji
speechBalloon = Emoji "💬"
leftSpeechBubble :: Emoji
leftSpeechBubble = Emoji "🗨️"
rightAngerBubble :: Emoji
rightAngerBubble = Emoji "🗯️"
thoughtBalloon :: Emoji
thoughtBalloon = Emoji "💭"
hole :: Emoji
hole = Emoji "🕳️"
-- subgroup: clothing
glasses :: Emoji
glasses = Emoji "👓"
sunglasses :: Emoji
sunglasses = Emoji "🕶️"
goggles :: Emoji
goggles = Emoji "🥽"
labCoat :: Emoji
labCoat = Emoji "🥼"
necktie :: Emoji
necktie = Emoji "👔"
tShirt :: Emoji
tShirt = Emoji "👕"
jeans :: Emoji
jeans = Emoji "👖"
scarf :: Emoji
scarf = Emoji "🧣"
gloves :: Emoji
gloves = Emoji "🧤"
coat :: Emoji
coat = Emoji "🧥"
socks :: Emoji
socks = Emoji "🧦"
dress :: Emoji
dress = Emoji "👗"
kimono :: Emoji
kimono = Emoji "👘"
bikini :: Emoji
bikini = Emoji "👙"
womansClothes :: Emoji
womansClothes = Emoji "👚"
purse :: Emoji
purse = Emoji "👛"
handbag :: Emoji
handbag = Emoji "👜"
clutchBag :: Emoji
clutchBag = Emoji "👝"
shoppingBags :: Emoji
shoppingBags = Emoji "🛍️"
schoolBackpack :: Emoji
schoolBackpack = Emoji "🎒"
mansShoe :: Emoji
mansShoe = Emoji "👞"
runningShoe :: Emoji
runningShoe = Emoji "👟"
hikingBoot :: Emoji
hikingBoot = Emoji "🥾"
womansFlatShoe :: Emoji
womansFlatShoe = Emoji "🥿"
highHeeledShoe :: Emoji
highHeeledShoe = Emoji "👠"
womansSandal :: Emoji
womansSandal = Emoji "👡"
womansBoot :: Emoji
womansBoot = Emoji "👢"
crown :: Emoji
crown = Emoji "👑"
womansHat :: Emoji
womansHat = Emoji "👒"
topHat :: Emoji
topHat = Emoji "🎩"
graduationCap :: Emoji
graduationCap = Emoji "🎓"
billedCap :: Emoji
billedCap = Emoji "🧢"
rescueWorkersHelmet :: Emoji
rescueWorkersHelmet = Emoji "⛑️"
prayerBeads :: Emoji
prayerBeads = Emoji "📿"
lipstick :: Emoji
lipstick = Emoji "💄"
ring :: Emoji
ring = Emoji "💍"
gemStone :: Emoji
gemStone = Emoji "💎"
-- group: Animals & Nature
-- subgroup: animal-mammal
monkeyFace :: Emoji
monkeyFace = Emoji "🐵"
monkey :: Emoji
monkey = Emoji "🐒"
gorilla :: Emoji
gorilla = Emoji "🦍"
dogFace :: Emoji
dogFace = Emoji "🐶"
dog :: Emoji
dog = Emoji "🐕"
poodle :: Emoji
poodle = Emoji "🐩"
wolfFace :: Emoji
wolfFace = Emoji "🐺"
foxFace :: Emoji
foxFace = Emoji "🦊"
raccoon :: Emoji
raccoon = Emoji "🦝"
catFace :: Emoji
catFace = Emoji "🐱"
cat :: Emoji
cat = Emoji "🐈"
lionFace :: Emoji
lionFace = Emoji "🦁"
tigerFace :: Emoji
tigerFace = Emoji "🐯"
tiger :: Emoji
tiger = Emoji "🐅"
leopard :: Emoji
leopard = Emoji "🐆"
horseFace :: Emoji
horseFace = Emoji "🐴"
horse :: Emoji
horse = Emoji "🐎"
unicornFace :: Emoji
unicornFace = Emoji "🦄"
zebra :: Emoji
zebra = Emoji "🦓"
deer :: Emoji
deer = Emoji "🦌"
cowFace :: Emoji
cowFace = Emoji "🐮"
ox :: Emoji
ox = Emoji "🐂"
waterBuffalo :: Emoji
waterBuffalo = Emoji "🐃"
cow :: Emoji
cow = Emoji "🐄"
pigFace :: Emoji
pigFace = Emoji "🐷"
pig :: Emoji
pig = Emoji "🐖"
boar :: Emoji
boar = Emoji "🐗"
pigNose :: Emoji
pigNose = Emoji "🐽"
ram :: Emoji
ram = Emoji "🐏"
ewe :: Emoji
ewe = Emoji "🐑"
goat :: Emoji
goat = Emoji "🐐"
camel :: Emoji
camel = Emoji "🐪"
twoHumpCamel :: Emoji
twoHumpCamel = Emoji "🐫"
llama :: Emoji
llama = Emoji "🦙"
giraffe :: Emoji
giraffe = Emoji "🦒"
elephant :: Emoji
elephant = Emoji "🐘"
rhinoceros :: Emoji
rhinoceros = Emoji "🦏"
hippopotamus :: Emoji
hippopotamus = Emoji "🦛"
mouseFace :: Emoji
mouseFace = Emoji "🐭"
mouse :: Emoji
mouse = Emoji "🐁"
rat :: Emoji
rat = Emoji "🐀"
hamsterFace :: Emoji
hamsterFace = Emoji "🐹"
rabbitFace :: Emoji
rabbitFace = Emoji "🐰"
rabbit :: Emoji
rabbit = Emoji "🐇"
chipmunk :: Emoji
chipmunk = Emoji "🐿️"
hedgehog :: Emoji
hedgehog = Emoji "🦔"
bat :: Emoji
bat = Emoji "🦇"
bearFace :: Emoji
bearFace = Emoji "🐻"
koala :: Emoji
koala = Emoji "🐨"
pandaFace :: Emoji
pandaFace = Emoji "🐼"
kangaroo :: Emoji
kangaroo = Emoji "🦘"
badger :: Emoji
badger = Emoji "🦡"
pawPrints :: Emoji
pawPrints = Emoji "🐾"
-- subgroup: animal-bird
turkey :: Emoji
turkey = Emoji "🦃"
chicken :: Emoji
chicken = Emoji "🐔"
rooster :: Emoji
rooster = Emoji "🐓"
hatchingChick :: Emoji
hatchingChick = Emoji "🐣"
babyChick :: Emoji
babyChick = Emoji "🐤"
frontFacingBabyChick :: Emoji
frontFacingBabyChick = Emoji "🐥"
bird :: Emoji
bird = Emoji "🐦"
penguin :: Emoji
penguin = Emoji "🐧"
dove :: Emoji
dove = Emoji "🕊️"
eagle :: Emoji
eagle = Emoji "🦅"
duck :: Emoji
duck = Emoji "🦆"
swan :: Emoji
swan = Emoji "🦢"
owl :: Emoji
owl = Emoji "🦉"
peacock :: Emoji
peacock = Emoji "🦚"
parrot :: Emoji
parrot = Emoji "🦜"
-- subgroup: animal-amphibian
frogFace :: Emoji
frogFace = Emoji "🐸"
-- subgroup: animal-reptile
crocodile :: Emoji
crocodile = Emoji "🐊"
turtle :: Emoji
turtle = Emoji "🐢"
lizard :: Emoji
lizard = Emoji "🦎"
snake :: Emoji
snake = Emoji "🐍"
dragonFace :: Emoji
dragonFace = Emoji "🐲"
dragon :: Emoji
dragon = Emoji "🐉"
sauropod :: Emoji
sauropod = Emoji "🦕"
tRex :: Emoji
tRex = Emoji "🦖"
-- subgroup: animal-marine
spoutingWhale :: Emoji
spoutingWhale = Emoji "🐳"
whale :: Emoji
whale = Emoji "🐋"
dolphin :: Emoji
dolphin = Emoji "🐬"
fish :: Emoji
fish = Emoji "🐟"
tropicalFish :: Emoji
tropicalFish = Emoji "🐠"
blowfish :: Emoji
blowfish = Emoji "🐡"
shark :: Emoji
shark = Emoji "🦈"
octopus :: Emoji
octopus = Emoji "🐙"
spiralShell :: Emoji
spiralShell = Emoji "🐚"
crab :: Emoji
crab = Emoji "🦀"
lobster :: Emoji
lobster = Emoji "🦞"
shrimp :: Emoji
shrimp = Emoji "🦐"
squid :: Emoji
squid = Emoji "🦑"
-- subgroup: animal-bug
snail :: Emoji
snail = Emoji "🐌"
butterfly :: Emoji
butterfly = Emoji "🦋"
bug :: Emoji
bug = Emoji "🐛"
ant :: Emoji
ant = Emoji "🐜"
honeybee :: Emoji
honeybee = Emoji "🐝"
ladyBeetle :: Emoji
ladyBeetle = Emoji "🐞"
cricket :: Emoji
cricket = Emoji "🦗"
spider :: Emoji
spider = Emoji "🕷️"
spiderWeb :: Emoji
spiderWeb = Emoji "🕸️"
scorpion :: Emoji
scorpion = Emoji "🦂"
mosquito :: Emoji
mosquito = Emoji "🦟"
microbe :: Emoji
microbe = Emoji "🦠"
-- subgroup: plant-flower
bouquet :: Emoji
bouquet = Emoji "💐"
cherryBlossom :: Emoji
cherryBlossom = Emoji "🌸"
whiteFlower :: Emoji
whiteFlower = Emoji "💮"
rosette :: Emoji
rosette = Emoji "🏵️"
rose :: Emoji
rose = Emoji "🌹"
wiltedFlower :: Emoji
wiltedFlower = Emoji "🥀"
hibiscus :: Emoji
hibiscus = Emoji "🌺"
sunflower :: Emoji
sunflower = Emoji "🌻"
blossom :: Emoji
blossom = Emoji "🌼"
tulip :: Emoji
tulip = Emoji "🌷"
-- subgroup: plant-other
seedling :: Emoji
seedling = Emoji "🌱"
evergreenTree :: Emoji
evergreenTree = Emoji "🌲"
deciduousTree :: Emoji
deciduousTree = Emoji "🌳"
palmTree :: Emoji
palmTree = Emoji "🌴"
cactus :: Emoji
cactus = Emoji "🌵"
sheafOfRice :: Emoji
sheafOfRice = Emoji "🌾"
herb :: Emoji
herb = Emoji "🌿"
shamrock :: Emoji
shamrock = Emoji "☘️"
fourLeafClover :: Emoji
fourLeafClover = Emoji "🍀"
mapleLeaf :: Emoji
mapleLeaf = Emoji "🍁"
fallenLeaf :: Emoji
fallenLeaf = Emoji "🍂"
leafFlutteringInWind :: Emoji
leafFlutteringInWind = Emoji "🍃"
-- group: Food & Drink
-- subgroup: food-fruit
grapes :: Emoji
grapes = Emoji "🍇"
melon :: Emoji
melon = Emoji "🍈"
watermelon :: Emoji
watermelon = Emoji "🍉"
tangerine :: Emoji
tangerine = Emoji "🍊"
lemon :: Emoji
lemon = Emoji "🍋"
banana :: Emoji
banana = Emoji "🍌"
pineapple :: Emoji
pineapple = Emoji "🍍"
mango :: Emoji
mango = Emoji "🥭"
redApple :: Emoji
redApple = Emoji "🍎"
greenApple :: Emoji
greenApple = Emoji "🍏"
pear :: Emoji
pear = Emoji "🍐"
peach :: Emoji
peach = Emoji "🍑"
cherries :: Emoji
cherries = Emoji "🍒"
strawberry :: Emoji
strawberry = Emoji "🍓"
kiwiFruit :: Emoji
kiwiFruit = Emoji "🥝"
tomato :: Emoji
tomato = Emoji "🍅"
coconut :: Emoji
coconut = Emoji "🥥"
-- subgroup: food-vegetable
avocado :: Emoji
avocado = Emoji "🥑"
eggplant :: Emoji
eggplant = Emoji "🍆"
potato :: Emoji
potato = Emoji "🥔"
carrot :: Emoji
carrot = Emoji "🥕"
earOfCorn :: Emoji
earOfCorn = Emoji "🌽"
hotPepper :: Emoji
hotPepper = Emoji "🌶️"
cucumber :: Emoji
cucumber = Emoji "🥒"
leafyGreen :: Emoji
leafyGreen = Emoji "🥬"
broccoli :: Emoji
broccoli = Emoji "🥦"
mushroom :: Emoji
mushroom = Emoji "🍄"
peanuts :: Emoji
peanuts = Emoji "🥜"
chestnut :: Emoji
chestnut = Emoji "🌰"
-- subgroup: food-prepared
bread :: Emoji
bread = Emoji "🍞"
croissant :: Emoji
croissant = Emoji "🥐"
baguetteBread :: Emoji
baguetteBread = Emoji "🥖"
pretzel :: Emoji
pretzel = Emoji "🥨"
bagel :: Emoji
bagel = Emoji "🥯"
pancakes :: Emoji
pancakes = Emoji "🥞"
cheeseWedge :: Emoji
cheeseWedge = Emoji "🧀"
meatOnBone :: Emoji
meatOnBone = Emoji "🍖"
poultryLeg :: Emoji
poultryLeg = Emoji "🍗"
cutOfMeat :: Emoji
cutOfMeat = Emoji "🥩"
bacon :: Emoji
bacon = Emoji "🥓"
hamburger :: Emoji
hamburger = Emoji "🍔"
frenchFries :: Emoji
frenchFries = Emoji "🍟"
pizza :: Emoji
pizza = Emoji "🍕"
hotDog :: Emoji
hotDog = Emoji "🌭"
sandwich :: Emoji
sandwich = Emoji "🥪"
taco :: Emoji
taco = Emoji "🌮"
burrito :: Emoji
burrito = Emoji "🌯"
stuffedFlatbread :: Emoji
stuffedFlatbread = Emoji "🥙"
egg :: Emoji
egg = Emoji "🥚"
cooking :: Emoji
cooking = Emoji "🍳"
shallowPanOfFood :: Emoji
shallowPanOfFood = Emoji "🥘"
potOfFood :: Emoji
potOfFood = Emoji "🍲"
bowlWithSpoon :: Emoji
bowlWithSpoon = Emoji "🥣"
greenSalad :: Emoji
greenSalad = Emoji "🥗"
popcorn :: Emoji
popcorn = Emoji "🍿"
salt :: Emoji
salt = Emoji "🧂"
cannedFood :: Emoji
cannedFood = Emoji "🥫"
-- subgroup: food-asian
bentoBox :: Emoji
bentoBox = Emoji "🍱"
riceCracker :: Emoji
riceCracker = Emoji "🍘"
riceBall :: Emoji
riceBall = Emoji "🍙"
cookedRice :: Emoji
cookedRice = Emoji "🍚"
curryRice :: Emoji
curryRice = Emoji "🍛"
steamingBowl :: Emoji
steamingBowl = Emoji "🍜"
spaghetti :: Emoji
spaghetti = Emoji "🍝"
roastedSweetPotato :: Emoji
roastedSweetPotato = Emoji "🍠"
oden :: Emoji
oden = Emoji "🍢"
sushi :: Emoji
sushi = Emoji "🍣"
friedShrimp :: Emoji
friedShrimp = Emoji "🍤"
fishCakeWithSwirl :: Emoji
fishCakeWithSwirl = Emoji "🍥"
moonCake :: Emoji
moonCake = Emoji "🥮"
dango :: Emoji
dango = Emoji "🍡"
dumpling :: Emoji
dumpling = Emoji "🥟"
fortuneCookie :: Emoji
fortuneCookie = Emoji "🥠"
takeoutBox :: Emoji
takeoutBox = Emoji "🥡"
-- subgroup: food-sweet
softIceCream :: Emoji
softIceCream = Emoji "🍦"
shavedIce :: Emoji
shavedIce = Emoji "🍧"
iceCream :: Emoji
iceCream = Emoji "🍨"
doughnut :: Emoji
doughnut = Emoji "🍩"
cookie :: Emoji
cookie = Emoji "🍪"
birthdayCake :: Emoji
birthdayCake = Emoji "🎂"
shortcake :: Emoji
shortcake = Emoji "🍰"
cupcake :: Emoji
cupcake = Emoji "🧁"
pie :: Emoji
pie = Emoji "🥧"
chocolateBar :: Emoji
chocolateBar = Emoji "🍫"
candy :: Emoji
candy = Emoji "🍬"
lollipop :: Emoji
lollipop = Emoji "🍭"
custard :: Emoji
custard = Emoji "🍮"
honeyPot :: Emoji
honeyPot = Emoji "🍯"
-- subgroup: drink
babyBottle :: Emoji
babyBottle = Emoji "🍼"
glassOfMilk :: Emoji
glassOfMilk = Emoji "🥛"
hotBeverage :: Emoji
hotBeverage = Emoji "☕"
teacupWithoutHandle :: Emoji
teacupWithoutHandle = Emoji "🍵"
sake :: Emoji
sake = Emoji "🍶"
bottleWithPoppingCork :: Emoji
bottleWithPoppingCork = Emoji "🍾"
wineGlass :: Emoji
wineGlass = Emoji "🍷"
cocktailGlass :: Emoji
cocktailGlass = Emoji "🍸"
tropicalDrink :: Emoji
tropicalDrink = Emoji "🍹"
beerMug :: Emoji
beerMug = Emoji "🍺"
clinkingBeerMugs :: Emoji
clinkingBeerMugs = Emoji "🍻"
clinkingGlasses :: Emoji
clinkingGlasses = Emoji "🥂"
tumblerGlass :: Emoji
tumblerGlass = Emoji "🥃"
cupWithStraw :: Emoji
cupWithStraw = Emoji "🥤"
-- subgroup: dishware
chopsticks :: Emoji
chopsticks = Emoji "🥢"
forkAndKnifeWithPlate :: Emoji
forkAndKnifeWithPlate = Emoji "🍽️"
forkAndKnife :: Emoji
forkAndKnife = Emoji "🍴"
spoon :: Emoji
spoon = Emoji "🥄"
kitchenKnife :: Emoji
kitchenKnife = Emoji "🔪"
amphora :: Emoji
amphora = Emoji "🏺"
-- group: Travel & Places
-- subgroup: place-map
globeShowingEuropeAfrica :: Emoji
globeShowingEuropeAfrica = Emoji "🌍"
globeShowingAmericas :: Emoji
globeShowingAmericas = Emoji "🌎"
globeShowingAsiaAustralia :: Emoji
globeShowingAsiaAustralia = Emoji "🌏"
globeWithMeridians :: Emoji
globeWithMeridians = Emoji "🌐"
worldMap :: Emoji
worldMap = Emoji "🗺️"
mapOfJapan :: Emoji
mapOfJapan = Emoji "🗾"
compass :: Emoji
compass = Emoji "🧭"
-- subgroup: place-geographic
snowCappedMountain :: Emoji
snowCappedMountain = Emoji "🏔️"
mountain :: Emoji
mountain = Emoji "⛰️"
volcano :: Emoji
volcano = Emoji "🌋"
mountFuji :: Emoji
mountFuji = Emoji "🗻"
camping :: Emoji
camping = Emoji "🏕️"
beachWithUmbrella :: Emoji
beachWithUmbrella = Emoji "🏖️"
desert :: Emoji
desert = Emoji "🏜️"
desertIsland :: Emoji
desertIsland = Emoji "🏝️"
nationalPark :: Emoji
nationalPark = Emoji "🏞️"
-- subgroup: place-building
stadium :: Emoji
stadium = Emoji "🏟️"
classicalBuilding :: Emoji
classicalBuilding = Emoji "🏛️"
buildingConstruction :: Emoji
buildingConstruction = Emoji "🏗️"
bricks :: Emoji
bricks = Emoji "🧱"
houses :: Emoji
houses = Emoji "🏘️"
derelictHouse :: Emoji
derelictHouse = Emoji "🏚️"
house :: Emoji
house = Emoji "🏠"
houseWithGarden :: Emoji
houseWithGarden = Emoji "🏡"
officeBuilding :: Emoji
officeBuilding = Emoji "🏢"
japanesePostOffice :: Emoji
japanesePostOffice = Emoji "🏣"
postOffice :: Emoji
postOffice = Emoji "🏤"
hospital :: Emoji
hospital = Emoji "🏥"
bank :: Emoji
bank = Emoji "🏦"
hotel :: Emoji
hotel = Emoji "🏨"
loveHotel :: Emoji
loveHotel = Emoji "🏩"
convenienceStore :: Emoji
convenienceStore = Emoji "🏪"
school :: Emoji
school = Emoji "🏫"
departmentStore :: Emoji
departmentStore = Emoji "🏬"
factory :: Emoji
factory = Emoji "🏭"
japaneseCastle :: Emoji
japaneseCastle = Emoji "🏯"
castle :: Emoji
castle = Emoji "🏰"
wedding :: Emoji
wedding = Emoji "💒"
tokyoTower :: Emoji
tokyoTower = Emoji "🗼"
statueOfLiberty :: Emoji
statueOfLiberty = Emoji "🗽"
-- subgroup: place-religious
church :: Emoji
church = Emoji "⛪"
mosque :: Emoji
mosque = Emoji "🕌"
synagogue :: Emoji
synagogue = Emoji "🕍"
shintoShrine :: Emoji
shintoShrine = Emoji "⛩️"
kaaba :: Emoji
kaaba = Emoji "🕋"
-- subgroup: place-other
fountain :: Emoji
fountain = Emoji "⛲"
tent :: Emoji
tent = Emoji "⛺"
foggy :: Emoji
foggy = Emoji "🌁"
nightWithStars :: Emoji
nightWithStars = Emoji "🌃"
cityscape :: Emoji
cityscape = Emoji "🏙️"
sunriseOverMountains :: Emoji
sunriseOverMountains = Emoji "🌄"
sunrise :: Emoji
sunrise = Emoji "🌅"
cityscapeAtDusk :: Emoji
cityscapeAtDusk = Emoji "🌆"
sunset :: Emoji
sunset = Emoji "🌇"
bridgeAtNight :: Emoji
bridgeAtNight = Emoji "🌉"
hotSprings :: Emoji
hotSprings = Emoji "♨️"
milkyWay :: Emoji
milkyWay = Emoji "🌌"
carouselHorse :: Emoji
carouselHorse = Emoji "🎠"
ferrisWheel :: Emoji
ferrisWheel = Emoji "🎡"
rollerCoaster :: Emoji
rollerCoaster = Emoji "🎢"
barberPole :: Emoji
barberPole = Emoji "💈"
circusTent :: Emoji
circusTent = Emoji "🎪"
-- subgroup: transport-ground
locomotive :: Emoji
locomotive = Emoji "🚂"
railwayCar :: Emoji
railwayCar = Emoji "🚃"
highSpeedTrain :: Emoji
highSpeedTrain = Emoji "🚄"
bulletTrain :: Emoji
bulletTrain = Emoji "🚅"
train :: Emoji
train = Emoji "🚆"
metro :: Emoji
metro = Emoji "🚇"
lightRail :: Emoji
lightRail = Emoji "🚈"
station :: Emoji
station = Emoji "🚉"
tram :: Emoji
tram = Emoji "🚊"
monorail :: Emoji
monorail = Emoji "🚝"
mountainRailway :: Emoji
mountainRailway = Emoji "🚞"
tramCar :: Emoji
tramCar = Emoji "🚋"
bus :: Emoji
bus = Emoji "🚌"
oncomingBus :: Emoji
oncomingBus = Emoji "🚍"
trolleybus :: Emoji
trolleybus = Emoji "🚎"
minibus :: Emoji
minibus = Emoji "🚐"
ambulance :: Emoji
ambulance = Emoji "🚑"
fireEngine :: Emoji
fireEngine = Emoji "🚒"
policeCar :: Emoji
policeCar = Emoji "🚓"
oncomingPoliceCar :: Emoji
oncomingPoliceCar = Emoji "🚔"
taxi :: Emoji
taxi = Emoji "🚕"
oncomingTaxi :: Emoji
oncomingTaxi = Emoji "🚖"
automobile :: Emoji
automobile = Emoji "🚗"
oncomingAutomobile :: Emoji
oncomingAutomobile = Emoji "🚘"
sportUtilityVehicle :: Emoji
sportUtilityVehicle = Emoji "🚙"
deliveryTruck :: Emoji
deliveryTruck = Emoji "🚚"
articulatedLorry :: Emoji
articulatedLorry = Emoji "🚛"
tractor :: Emoji
tractor = Emoji "🚜"
bicycle :: Emoji
bicycle = Emoji "🚲"
kickScooter :: Emoji
kickScooter = Emoji "🛴"
skateboard :: Emoji
skateboard = Emoji "🛹"
motorScooter :: Emoji
motorScooter = Emoji "🛵"
busStop :: Emoji
busStop = Emoji "🚏"
motorway :: Emoji
motorway = Emoji "🛣️"
railwayTrack :: Emoji
railwayTrack = Emoji "🛤️"
oilDrum :: Emoji
oilDrum = Emoji "🛢️"
fuelPump :: Emoji
fuelPump = Emoji "⛽"
policeCarLight :: Emoji
policeCarLight = Emoji "🚨"
horizontalTrafficLight :: Emoji
horizontalTrafficLight = Emoji "🚥"
verticalTrafficLight :: Emoji
verticalTrafficLight = Emoji "🚦"
stopSign :: Emoji
stopSign = Emoji "🛑"
construction :: Emoji
construction = Emoji "🚧"
-- subgroup: transport-water
anchor :: Emoji
anchor = Emoji "⚓"
sailboat :: Emoji
sailboat = Emoji "⛵"
canoe :: Emoji
canoe = Emoji "🛶"
speedboat :: Emoji
speedboat = Emoji "🚤"
passengerShip :: Emoji
passengerShip = Emoji "🛳️"
ferry :: Emoji
ferry = Emoji "⛴️"
motorBoat :: Emoji
motorBoat = Emoji "🛥️"
ship :: Emoji
ship = Emoji "🚢"
-- subgroup: transport-air
airplane :: Emoji
airplane = Emoji "✈️"
smallAirplane :: Emoji
smallAirplane = Emoji "🛩️"
airplaneDeparture :: Emoji
airplaneDeparture = Emoji "🛫"
airplaneArrival :: Emoji
airplaneArrival = Emoji "🛬"
seat :: Emoji
seat = Emoji "💺"
helicopter :: Emoji
helicopter = Emoji "🚁"
suspensionRailway :: Emoji
suspensionRailway = Emoji "🚟"
mountainCableway :: Emoji
mountainCableway = Emoji "🚠"
aerialTramway :: Emoji
aerialTramway = Emoji "🚡"
satellite :: Emoji
satellite = Emoji "🛰️"
rocket :: Emoji
rocket = Emoji "🚀"
flyingSaucer :: Emoji
flyingSaucer = Emoji "🛸"
-- subgroup: hotel
bellhopBell :: Emoji
bellhopBell = Emoji "🛎️"
luggage :: Emoji
luggage = Emoji "🧳"
-- subgroup: time
hourglassDone :: Emoji
hourglassDone = Emoji "⌛"
hourglassNotDone :: Emoji
hourglassNotDone = Emoji "⏳"
watch :: Emoji
watch = Emoji "⌚"
alarmClock :: Emoji
alarmClock = Emoji "⏰"
stopwatch :: Emoji
stopwatch = Emoji "⏱️"
timerClock :: Emoji
timerClock = Emoji "⏲️"
mantelpieceClock :: Emoji
mantelpieceClock = Emoji "🕰️"
twelveOclock :: Emoji
twelveOclock = Emoji "🕛"
twelveThirty :: Emoji
twelveThirty = Emoji "🕧"
oneOclock :: Emoji
oneOclock = Emoji "🕐"
oneThirty :: Emoji
oneThirty = Emoji "🕜"
twoOclock :: Emoji
twoOclock = Emoji "🕑"
twoThirty :: Emoji
twoThirty = Emoji "🕝"
threeOclock :: Emoji
threeOclock = Emoji "🕒"
threeThirty :: Emoji
threeThirty = Emoji "🕞"
fourOclock :: Emoji
fourOclock = Emoji "🕓"
fourThirty :: Emoji
fourThirty = Emoji "🕟"
fiveOclock :: Emoji
fiveOclock = Emoji "🕔"
fiveThirty :: Emoji
fiveThirty = Emoji "🕠"
sixOclock :: Emoji
sixOclock = Emoji "🕕"
sixThirty :: Emoji
sixThirty = Emoji "🕡"
sevenOclock :: Emoji
sevenOclock = Emoji "🕖"
sevenThirty :: Emoji
sevenThirty = Emoji "🕢"
eightOclock :: Emoji
eightOclock = Emoji "🕗"
eightThirty :: Emoji
eightThirty = Emoji "🕣"
nineOclock :: Emoji
nineOclock = Emoji "🕘"
nineThirty :: Emoji
nineThirty = Emoji "🕤"
tenOclock :: Emoji
tenOclock = Emoji "🕙"
tenThirty :: Emoji
tenThirty = Emoji "🕥"
elevenOclock :: Emoji
elevenOclock = Emoji "🕚"
elevenThirty :: Emoji
elevenThirty = Emoji "🕦"
-- subgroup: sky & weather
newMoon :: Emoji
newMoon = Emoji "🌑"
waxingCrescentMoon :: Emoji
waxingCrescentMoon = Emoji "🌒"
firstQuarterMoon :: Emoji
firstQuarterMoon = Emoji "🌓"
waxingGibbousMoon :: Emoji
waxingGibbousMoon = Emoji "🌔"
fullMoon :: Emoji
fullMoon = Emoji "🌕"
waningGibbousMoon :: Emoji
waningGibbousMoon = Emoji "🌖"
lastQuarterMoon :: Emoji
lastQuarterMoon = Emoji "🌗"
waningCrescentMoon :: Emoji
waningCrescentMoon = Emoji "🌘"
crescentMoon :: Emoji
crescentMoon = Emoji "🌙"
newMoonFace :: Emoji
newMoonFace = Emoji "🌚"
firstQuarterMoonFace :: Emoji
firstQuarterMoonFace = Emoji "🌛"
lastQuarterMoonFace :: Emoji
lastQuarterMoonFace = Emoji "🌜"
thermometer :: Emoji
thermometer = Emoji "🌡️"
sun :: Emoji
sun = Emoji "☀️"
fullMoonFace :: Emoji
fullMoonFace = Emoji "🌝"
sunWithFace :: Emoji
sunWithFace = Emoji "🌞"
star :: Emoji
star = Emoji "⭐"
glowingStar :: Emoji
glowingStar = Emoji "🌟"
shootingStar :: Emoji
shootingStar = Emoji "🌠"
cloud :: Emoji
cloud = Emoji "☁️"
sunBehindCloud :: Emoji
sunBehindCloud = Emoji "⛅"
cloudWithLightningAndRain :: Emoji
cloudWithLightningAndRain = Emoji "⛈️"
sunBehindSmallCloud :: Emoji
sunBehindSmallCloud = Emoji "🌤️"
sunBehindLargeCloud :: Emoji
sunBehindLargeCloud = Emoji "🌥️"
sunBehindRainCloud :: Emoji
sunBehindRainCloud = Emoji "🌦️"
cloudWithRain :: Emoji
cloudWithRain = Emoji "🌧️"
cloudWithSnow :: Emoji
cloudWithSnow = Emoji "🌨️"
cloudWithLightning :: Emoji
cloudWithLightning = Emoji "🌩️"
tornado :: Emoji
tornado = Emoji "🌪️"
fog :: Emoji
fog = Emoji "🌫️"
windFace :: Emoji
windFace = Emoji "🌬️"
cyclone :: Emoji
cyclone = Emoji "🌀"
rainbow :: Emoji
rainbow = Emoji "🌈"
closedUmbrella :: Emoji
closedUmbrella = Emoji "🌂"
umbrella :: Emoji
umbrella = Emoji "☂️"
umbrellaWithRainDrops :: Emoji
umbrellaWithRainDrops = Emoji "☔"
umbrellaOnGround :: Emoji
umbrellaOnGround = Emoji "⛱️"
highVoltage :: Emoji
highVoltage = Emoji "⚡"
snowflake :: Emoji
snowflake = Emoji "❄️"
snowman :: Emoji
snowman = Emoji "☃️"
snowmanWithoutSnow :: Emoji
snowmanWithoutSnow = Emoji "⛄"
comet :: Emoji
comet = Emoji "☄️"
fire :: Emoji
fire = Emoji "🔥"
droplet :: Emoji
droplet = Emoji "💧"
waterWave :: Emoji
waterWave = Emoji "🌊"
-- group: Activities
-- subgroup: event
jackOLantern :: Emoji
jackOLantern = Emoji "🎃"
christmasTree :: Emoji
christmasTree = Emoji "🎄"
fireworks :: Emoji
fireworks = Emoji "🎆"
sparkler :: Emoji
sparkler = Emoji "🎇"
firecracker :: Emoji
firecracker = Emoji "🧨"
sparkles :: Emoji
sparkles = Emoji "✨"
balloon :: Emoji
balloon = Emoji "🎈"
partyPopper :: Emoji
partyPopper = Emoji "🎉"
confettiBall :: Emoji
confettiBall = Emoji "🎊"
tanabataTree :: Emoji
tanabataTree = Emoji "🎋"
pineDecoration :: Emoji
pineDecoration = Emoji "🎍"
japaneseDolls :: Emoji
japaneseDolls = Emoji "🎎"
carpStreamer :: Emoji
carpStreamer = Emoji "🎏"
windChime :: Emoji
windChime = Emoji "🎐"
moonViewingCeremony :: Emoji
moonViewingCeremony = Emoji "🎑"
redEnvelope :: Emoji
redEnvelope = Emoji "🧧"
ribbon :: Emoji
ribbon = Emoji "🎀"
wrappedGift :: Emoji
wrappedGift = Emoji "🎁"
reminderRibbon :: Emoji
reminderRibbon = Emoji "🎗️"
admissionTickets :: Emoji
admissionTickets = Emoji "🎟️"
ticket :: Emoji
ticket = Emoji "🎫"
-- subgroup: award-medal
militaryMedal :: Emoji
militaryMedal = Emoji "🎖️"
trophy :: Emoji
trophy = Emoji "🏆"
sportsMedal :: Emoji
sportsMedal = Emoji "🏅"
firstPlaceMedal :: Emoji
firstPlaceMedal = Emoji "🥇"
secondPlaceMedal :: Emoji
secondPlaceMedal = Emoji "🥈"
thirdPlaceMedal :: Emoji
thirdPlaceMedal = Emoji "🥉"
-- subgroup: sport
soccerBall :: Emoji
soccerBall = Emoji "⚽"
baseball :: Emoji
baseball = Emoji "⚾"
softball :: Emoji
softball = Emoji "🥎"
basketball :: Emoji
basketball = Emoji "🏀"
volleyball :: Emoji
volleyball = Emoji "🏐"
americanFootball :: Emoji
americanFootball = Emoji "🏈"
rugbyFootball :: Emoji
rugbyFootball = Emoji "🏉"
tennis :: Emoji
tennis = Emoji "🎾"
flyingDisc :: Emoji
flyingDisc = Emoji "🥏"
bowling :: Emoji
bowling = Emoji "🎳"
cricketGame :: Emoji
cricketGame = Emoji "🏏"
fieldHockey :: Emoji
fieldHockey = Emoji "🏑"
iceHockey :: Emoji
iceHockey = Emoji "🏒"
lacrosse :: Emoji
lacrosse = Emoji "🥍"
pingPong :: Emoji
pingPong = Emoji "🏓"
badminton :: Emoji
badminton = Emoji "🏸"
boxingGlove :: Emoji
boxingGlove = Emoji "🥊"
martialArtsUniform :: Emoji
martialArtsUniform = Emoji "🥋"
goalNet :: Emoji
goalNet = Emoji "🥅"
flagInHole :: Emoji
flagInHole = Emoji "⛳"
iceSkate :: Emoji
iceSkate = Emoji "⛸️"
fishingPole :: Emoji
fishingPole = Emoji "🎣"
runningShirt :: Emoji
runningShirt = Emoji "🎽"
skis :: Emoji
skis = Emoji "🎿"
sled :: Emoji
sled = Emoji "🛷"
curlingStone :: Emoji
curlingStone = Emoji "🥌"
-- subgroup: game
directHit :: Emoji
directHit = Emoji "🎯"
pool8Ball :: Emoji
pool8Ball = Emoji "🎱"
crystalBall :: Emoji
crystalBall = Emoji "🔮"
nazarAmulet :: Emoji
nazarAmulet = Emoji "🧿"
videoGame :: Emoji
videoGame = Emoji "🎮"
joystick :: Emoji
joystick = Emoji "🕹️"
slotMachine :: Emoji
slotMachine = Emoji "🎰"
gameDie :: Emoji
gameDie = Emoji "🎲"
jigsaw :: Emoji
jigsaw = Emoji "🧩"
teddyBear :: Emoji
teddyBear = Emoji "🧸"
spadeSuit :: Emoji
spadeSuit = Emoji "♠️"
heartSuit :: Emoji
heartSuit = Emoji "♥️"
diamondSuit :: Emoji
diamondSuit = Emoji "♦️"
clubSuit :: Emoji
clubSuit = Emoji "♣️"
chessPawn :: Emoji
chessPawn = Emoji "♟️"
joker :: Emoji
joker = Emoji "🃏"
mahjongRedDragon :: Emoji
mahjongRedDragon = Emoji "🀄"
flowerPlayingCards :: Emoji
flowerPlayingCards = Emoji "🎴"
-- subgroup: arts & crafts
performingArts :: Emoji
performingArts = Emoji "🎭"
framedPicture :: Emoji
framedPicture = Emoji "🖼️"
artistPalette :: Emoji
artistPalette = Emoji "🎨"
thread :: Emoji
thread = Emoji "🧵"
yarn :: Emoji
yarn = Emoji "🧶"
-- group: Objects
-- subgroup: sound
mutedSpeaker :: Emoji
mutedSpeaker = Emoji "🔇"
speakerLowVolume :: Emoji
speakerLowVolume = Emoji "🔈"
speakerMediumVolume :: Emoji
speakerMediumVolume = Emoji "🔉"
speakerHighVolume :: Emoji
speakerHighVolume = Emoji "🔊"
loudspeaker :: Emoji
loudspeaker = Emoji "📢"
megaphone :: Emoji
megaphone = Emoji "📣"
postalHorn :: Emoji
postalHorn = Emoji "📯"
bell :: Emoji
bell = Emoji "🔔"
bellWithSlash :: Emoji
bellWithSlash = Emoji "🔕"
-- subgroup: music
musicalScore :: Emoji
musicalScore = Emoji "🎼"
musicalNote :: Emoji
musicalNote = Emoji "🎵"
musicalNotes :: Emoji
musicalNotes = Emoji "🎶"
studioMicrophone :: Emoji
studioMicrophone = Emoji "🎙️"
levelSlider :: Emoji
levelSlider = Emoji "🎚️"
controlKnobs :: Emoji
controlKnobs = Emoji "🎛️"
microphone :: Emoji
microphone = Emoji "🎤"
headphone :: Emoji
headphone = Emoji "🎧"
radio :: Emoji
radio = Emoji "📻"
-- subgroup: musical-instrument
saxophone :: Emoji
saxophone = Emoji "🎷"
guitar :: Emoji
guitar = Emoji "🎸"
musicalKeyboard :: Emoji
musicalKeyboard = Emoji "🎹"
trumpet :: Emoji
trumpet = Emoji "🎺"
violin :: Emoji
violin = Emoji "🎻"
drum :: Emoji
drum = Emoji "🥁"
-- subgroup: phone
mobilePhone :: Emoji
mobilePhone = Emoji "📱"
mobilePhoneWithArrow :: Emoji
mobilePhoneWithArrow = Emoji "📲"
telephone :: Emoji
telephone = Emoji "☎️"
telephoneReceiver :: Emoji
telephoneReceiver = Emoji "📞"
pager :: Emoji
pager = Emoji "📟"
faxMachine :: Emoji
faxMachine = Emoji "📠"
-- subgroup: computer
battery :: Emoji
battery = Emoji "🔋"
electricPlug :: Emoji
electricPlug = Emoji "🔌"
laptopComputer :: Emoji
laptopComputer = Emoji "💻"
desktopComputer :: Emoji
desktopComputer = Emoji "🖥️"
printer :: Emoji
printer = Emoji "🖨️"
keyboard :: Emoji
keyboard = Emoji "⌨️"
computerMouse :: Emoji
computerMouse = Emoji "🖱️"
trackball :: Emoji
trackball = Emoji "🖲️"
computerDisk :: Emoji
computerDisk = Emoji "💽"
floppyDisk :: Emoji
floppyDisk = Emoji "💾"
opticalDisk :: Emoji
opticalDisk = Emoji "💿"
dvd :: Emoji
dvd = Emoji "📀"
abacus :: Emoji
abacus = Emoji "🧮"
-- subgroup: light & video
movieCamera :: Emoji
movieCamera = Emoji "🎥"
filmFrames :: Emoji
filmFrames = Emoji "🎞️"
filmProjector :: Emoji
filmProjector = Emoji "📽️"
clapperBoard :: Emoji
clapperBoard = Emoji "🎬"
television :: Emoji
television = Emoji "📺"
camera :: Emoji
camera = Emoji "📷"
cameraWithFlash :: Emoji
cameraWithFlash = Emoji "📸"
videoCamera :: Emoji
videoCamera = Emoji "📹"
videocassette :: Emoji
videocassette = Emoji "📼"
magnifyingGlassTiltedLeft :: Emoji
magnifyingGlassTiltedLeft = Emoji "🔍"
magnifyingGlassTiltedRight :: Emoji
magnifyingGlassTiltedRight = Emoji "🔎"
candle :: Emoji
candle = Emoji "🕯️"
lightBulb :: Emoji
lightBulb = Emoji "💡"
flashlight :: Emoji
flashlight = Emoji "🔦"
redPaperLantern :: Emoji
redPaperLantern = Emoji "🏮"
-- subgroup: book-paper
notebookWithDecorativeCover :: Emoji
notebookWithDecorativeCover = Emoji "📔"
closedBook :: Emoji
closedBook = Emoji "📕"
openBook :: Emoji
openBook = Emoji "📖"
greenBook :: Emoji
greenBook = Emoji "📗"
blueBook :: Emoji
blueBook = Emoji "📘"
orangeBook :: Emoji
orangeBook = Emoji "📙"
books :: Emoji
books = Emoji "📚"
notebook :: Emoji
notebook = Emoji "📓"
ledger :: Emoji
ledger = Emoji "📒"
pageWithCurl :: Emoji
pageWithCurl = Emoji "📃"
scroll :: Emoji
scroll = Emoji "📜"
pageFacingUp :: Emoji
pageFacingUp = Emoji "📄"
newspaper :: Emoji
newspaper = Emoji "📰"
rolledUpNewspaper :: Emoji
rolledUpNewspaper = Emoji "🗞️"
bookmarkTabs :: Emoji
bookmarkTabs = Emoji "📑"
bookmark :: Emoji
bookmark = Emoji "🔖"
label :: Emoji
label = Emoji "🏷️"
-- subgroup: money
moneyBag :: Emoji
moneyBag = Emoji "💰"
yenBanknote :: Emoji
yenBanknote = Emoji "💴"
dollarBanknote :: Emoji
dollarBanknote = Emoji "💵"
euroBanknote :: Emoji
euroBanknote = Emoji "💶"
poundBanknote :: Emoji
poundBanknote = Emoji "💷"
moneyWithWings :: Emoji
moneyWithWings = Emoji "💸"
creditCard :: Emoji
creditCard = Emoji "💳"
receipt :: Emoji
receipt = Emoji "🧾"
chartIncreasingWithYen :: Emoji
chartIncreasingWithYen = Emoji "💹"
currencyExchange :: Emoji
currencyExchange = Emoji "💱"
heavyDollarSign :: Emoji
heavyDollarSign = Emoji "💲"
-- subgroup: mail
envelope :: Emoji
envelope = Emoji "✉️"
eMail :: Emoji
eMail = Emoji "📧"
incomingEnvelope :: Emoji
incomingEnvelope = Emoji "📨"
envelopeWithArrow :: Emoji
envelopeWithArrow = Emoji "📩"
outboxTray :: Emoji
outboxTray = Emoji "📤"
inboxTray :: Emoji
inboxTray = Emoji "📥"
package :: Emoji
package = Emoji "📦"
closedMailboxWithRaisedFlag :: Emoji
closedMailboxWithRaisedFlag = Emoji "📫"
closedMailboxWithLoweredFlag :: Emoji
closedMailboxWithLoweredFlag = Emoji "📪"
openMailboxWithRaisedFlag :: Emoji
openMailboxWithRaisedFlag = Emoji "📬"
openMailboxWithLoweredFlag :: Emoji
openMailboxWithLoweredFlag = Emoji "📭"
postbox :: Emoji
postbox = Emoji "📮"
ballotBoxWithBallot :: Emoji
ballotBoxWithBallot = Emoji "🗳️"
-- subgroup: writing
pencil :: Emoji
pencil = Emoji "✏️"
blackNib :: Emoji
blackNib = Emoji "✒️"
fountainPen :: Emoji
fountainPen = Emoji "🖋️"
pen :: Emoji
pen = Emoji "🖊️"
paintbrush :: Emoji
paintbrush = Emoji "🖌️"
crayon :: Emoji
crayon = Emoji "🖍️"
memo :: Emoji
memo = Emoji "📝"
-- subgroup: office
briefcase :: Emoji
briefcase = Emoji "💼"
fileFolder :: Emoji
fileFolder = Emoji "📁"
openFileFolder :: Emoji
openFileFolder = Emoji "📂"
cardIndexDividers :: Emoji
cardIndexDividers = Emoji "🗂️"
calendar :: Emoji
calendar = Emoji "📅"
tearOffCalendar :: Emoji
tearOffCalendar = Emoji "📆"
spiralNotepad :: Emoji
spiralNotepad = Emoji "🗒️"
spiralCalendar :: Emoji
spiralCalendar = Emoji "🗓️"
cardIndex :: Emoji
cardIndex = Emoji "📇"
chartIncreasing :: Emoji
chartIncreasing = Emoji "📈"
chartDecreasing :: Emoji
chartDecreasing = Emoji "📉"
barChart :: Emoji
barChart = Emoji "📊"
clipboard :: Emoji
clipboard = Emoji "📋"
pushpin :: Emoji
pushpin = Emoji "📌"
roundPushpin :: Emoji
roundPushpin = Emoji "📍"
paperclip :: Emoji
paperclip = Emoji "📎"
linkedPaperclips :: Emoji
linkedPaperclips = Emoji "🖇️"
straightRuler :: Emoji
straightRuler = Emoji "📏"
triangularRuler :: Emoji
triangularRuler = Emoji "📐"
scissors :: Emoji
scissors = Emoji "✂️"
cardFileBox :: Emoji
cardFileBox = Emoji "🗃️"
fileCabinet :: Emoji
fileCabinet = Emoji "🗄️"
wastebasket :: Emoji
wastebasket = Emoji "🗑️"
-- subgroup: lock
locked :: Emoji
locked = Emoji "🔒"
unlocked :: Emoji
unlocked = Emoji "🔓"
lockedWithPen :: Emoji
lockedWithPen = Emoji "🔏"
lockedWithKey :: Emoji
lockedWithKey = Emoji "🔐"
key :: Emoji
key = Emoji "🔑"
oldKey :: Emoji
oldKey = Emoji "🗝️"
-- subgroup: tool
hammer :: Emoji
hammer = Emoji "🔨"
pick :: Emoji
pick = Emoji "⛏️"
hammerAndPick :: Emoji
hammerAndPick = Emoji "⚒️"
hammerAndWrench :: Emoji
hammerAndWrench = Emoji "🛠️"
dagger :: Emoji
dagger = Emoji "🗡️"
crossedSwords :: Emoji
crossedSwords = Emoji "⚔️"
pistol :: Emoji
pistol = Emoji "🔫"
bowAndArrow :: Emoji
bowAndArrow = Emoji "🏹"
shield :: Emoji
shield = Emoji "🛡️"
wrench :: Emoji
wrench = Emoji "🔧"
nutAndBolt :: Emoji
nutAndBolt = Emoji "🔩"
gear :: Emoji
gear = Emoji "⚙️"
clamp :: Emoji
clamp = Emoji "🗜️"
balanceScale :: Emoji
balanceScale = Emoji "⚖️"
link :: Emoji
link = Emoji "🔗"
chains :: Emoji
chains = Emoji "⛓️"
toolbox :: Emoji
toolbox = Emoji "🧰"
magnet :: Emoji
magnet = Emoji "🧲"
-- subgroup: science
alembic :: Emoji
alembic = Emoji "⚗️"
testTube :: Emoji
testTube = Emoji "🧪"
petriDish :: Emoji
petriDish = Emoji "🧫"
dna :: Emoji
dna = Emoji "🧬"
microscope :: Emoji
microscope = Emoji "🔬"
telescope :: Emoji
telescope = Emoji "🔭"
satelliteAntenna :: Emoji
satelliteAntenna = Emoji "📡"
-- subgroup: medical
syringe :: Emoji
syringe = Emoji "💉"
pill :: Emoji
pill = Emoji "💊"
-- subgroup: household
door :: Emoji
door = Emoji "🚪"
bed :: Emoji
bed = Emoji "🛏️"
couchAndLamp :: Emoji
couchAndLamp = Emoji "🛋️"
toilet :: Emoji
toilet = Emoji "🚽"
shower :: Emoji
shower = Emoji "🚿"
bathtub :: Emoji
bathtub = Emoji "🛁"
lotionBottle :: Emoji
lotionBottle = Emoji "🧴"
safetyPin :: Emoji
safetyPin = Emoji "🧷"
broom :: Emoji
broom = Emoji "🧹"
basket :: Emoji
basket = Emoji "🧺"
rollOfPaper :: Emoji
rollOfPaper = Emoji "🧻"
soap :: Emoji
soap = Emoji "🧼"
sponge :: Emoji
sponge = Emoji "🧽"
fireExtinguisher :: Emoji
fireExtinguisher = Emoji "🧯"
shoppingCart :: Emoji
shoppingCart = Emoji "🛒"
-- subgroup: other-object
cigarette :: Emoji
cigarette = Emoji "🚬"
coffin :: Emoji
coffin = Emoji "⚰️"
funeralUrn :: Emoji
funeralUrn = Emoji "⚱️"
moai :: Emoji
moai = Emoji "🗿"
-- group: Symbols
-- subgroup: transport-sign
aTMSign :: Emoji
aTMSign = Emoji "🏧"
litterInBinSign :: Emoji
litterInBinSign = Emoji "🚮"
potableWater :: Emoji
potableWater = Emoji "🚰"
wheelchairSymbol :: Emoji
wheelchairSymbol = Emoji "♿"
mensRoom :: Emoji
mensRoom = Emoji "🚹"
womensRoom :: Emoji
womensRoom = Emoji "🚺"
restroom :: Emoji
restroom = Emoji "🚻"
babySymbol :: Emoji
babySymbol = Emoji "🚼"
waterCloset :: Emoji
waterCloset = Emoji "🚾"
passportControl :: Emoji
passportControl = Emoji "🛂"
customs :: Emoji
customs = Emoji "🛃"
baggageClaim :: Emoji
baggageClaim = Emoji "🛄"
leftLuggage :: Emoji
leftLuggage = Emoji "🛅"
-- subgroup: warning
warning :: Emoji
warning = Emoji "⚠️"
childrenCrossing :: Emoji
childrenCrossing = Emoji "🚸"
noEntry :: Emoji
noEntry = Emoji "⛔"
prohibited :: Emoji
prohibited = Emoji "🚫"
noBicycles :: Emoji
noBicycles = Emoji "🚳"
noSmoking :: Emoji
noSmoking = Emoji "🚭"
noLittering :: Emoji
noLittering = Emoji "🚯"
nonPotableWater :: Emoji
nonPotableWater = Emoji "🚱"
noPedestrians :: Emoji
noPedestrians = Emoji "🚷"
noMobilePhones :: Emoji
noMobilePhones = Emoji "📵"
noOneUnderEighteen :: Emoji
noOneUnderEighteen = Emoji "🔞"
radioactive :: Emoji
radioactive = Emoji "☢️"
biohazard :: Emoji
biohazard = Emoji "☣️"
-- subgroup: arrow
upArrow :: Emoji
upArrow = Emoji "⬆️"
upRightArrow :: Emoji
upRightArrow = Emoji "↗️"
rightArrow :: Emoji
rightArrow = Emoji "➡️"
downRightArrow :: Emoji
downRightArrow = Emoji "↘️"
downArrow :: Emoji
downArrow = Emoji "⬇️"
downLeftArrow :: Emoji
downLeftArrow = Emoji "↙️"
leftArrow :: Emoji
leftArrow = Emoji "⬅️"
upLeftArrow :: Emoji
upLeftArrow = Emoji "↖️"
upDownArrow :: Emoji
upDownArrow = Emoji "↕️"
leftRightArrow :: Emoji
leftRightArrow = Emoji "↔️"
rightArrowCurvingLeft :: Emoji
rightArrowCurvingLeft = Emoji "↩️"
leftArrowCurvingRight :: Emoji
leftArrowCurvingRight = Emoji "↪️"
rightArrowCurvingUp :: Emoji
rightArrowCurvingUp = Emoji "⤴️"
rightArrowCurvingDown :: Emoji
rightArrowCurvingDown = Emoji "⤵️"
clockwiseVerticalArrows :: Emoji
clockwiseVerticalArrows = Emoji "🔃"
counterclockwiseArrowsButton :: Emoji
counterclockwiseArrowsButton = Emoji "🔄"
bACKArrow :: Emoji
bACKArrow = Emoji "🔙"
eNDArrow :: Emoji
eNDArrow = Emoji "🔚"
oNArrow :: Emoji
oNArrow = Emoji "🔛"
sOONArrow :: Emoji
sOONArrow = Emoji "🔜"
tOPArrow :: Emoji
tOPArrow = Emoji "🔝"
-- subgroup: religion
placeOfWorship :: Emoji
placeOfWorship = Emoji "🛐"
atomSymbol :: Emoji
atomSymbol = Emoji "⚛️"
om :: Emoji
om = Emoji "🕉️"
starOfDavid :: Emoji
starOfDavid = Emoji "✡️"
wheelOfDharma :: Emoji
wheelOfDharma = Emoji "☸️"
yinYang :: Emoji
yinYang = Emoji "☯️"
latinCross :: Emoji
latinCross = Emoji "✝️"
orthodoxCross :: Emoji
orthodoxCross = Emoji "☦️"
starAndCrescent :: Emoji
starAndCrescent = Emoji "☪️"
peaceSymbol :: Emoji
peaceSymbol = Emoji "☮️"
menorah :: Emoji
menorah = Emoji "🕎"
dottedSixPointedStar :: Emoji
dottedSixPointedStar = Emoji "🔯"
-- subgroup: zodiac
aries :: Emoji
aries = Emoji "♈"
taurus :: Emoji
taurus = Emoji "♉"
gemini :: Emoji
gemini = Emoji "♊"
cancer :: Emoji
cancer = Emoji "♋"
leo :: Emoji
leo = Emoji "♌"
virgo :: Emoji
virgo = Emoji "♍"
libra :: Emoji
libra = Emoji "♎"
scorpio :: Emoji
scorpio = Emoji "♏"
sagittarius :: Emoji
sagittarius = Emoji "♐"
capricorn :: Emoji
capricorn = Emoji "♑"
aquarius :: Emoji
aquarius = Emoji "♒"
pisces :: Emoji
pisces = Emoji "♓"
ophiuchus :: Emoji
ophiuchus = Emoji "⛎"
-- subgroup: av-symbol
shuffleTracksButton :: Emoji
shuffleTracksButton = Emoji "🔀"
repeatButton :: Emoji
repeatButton = Emoji "🔁"
repeatSingleButton :: Emoji
repeatSingleButton = Emoji "🔂"
playButton :: Emoji
playButton = Emoji "▶️"
fastForwardButton :: Emoji
fastForwardButton = Emoji "⏩"
nextTrackButton :: Emoji
nextTrackButton = Emoji "⏭️"
playOrPauseButton :: Emoji
playOrPauseButton = Emoji "⏯️"
reverseButton :: Emoji
reverseButton = Emoji "◀️"
fastReverseButton :: Emoji
fastReverseButton = Emoji "⏪"
lastTrackButton :: Emoji
lastTrackButton = Emoji "⏮️"
upwardsButton :: Emoji
upwardsButton = Emoji "🔼"
fastUpButton :: Emoji
fastUpButton = Emoji "⏫"
downwardsButton :: Emoji
downwardsButton = Emoji "🔽"
fastDownButton :: Emoji
fastDownButton = Emoji "⏬"
pauseButton :: Emoji
pauseButton = Emoji "⏸️"
stopButton :: Emoji
stopButton = Emoji "⏹️"
recordButton :: Emoji
recordButton = Emoji "⏺️"
ejectButton :: Emoji
ejectButton = Emoji "⏏️"
cinema :: Emoji
cinema = Emoji "🎦"
dimButton :: Emoji
dimButton = Emoji "🔅"
brightButton :: Emoji
brightButton = Emoji "🔆"
antennaBars :: Emoji
antennaBars = Emoji "📶"
vibrationMode :: Emoji
vibrationMode = Emoji "📳"
mobilePhoneOff :: Emoji
mobilePhoneOff = Emoji "📴"
-- subgroup: other-symbol
femaleSign :: Emoji
femaleSign = Emoji "♀️"
maleSign :: Emoji
maleSign = Emoji "♂️"
medicalSymbol :: Emoji
medicalSymbol = Emoji "⚕️"
infinity :: Emoji
infinity = Emoji "♾️"
recyclingSymbol :: Emoji
recyclingSymbol = Emoji "♻️"
fleurDeLis :: Emoji
fleurDeLis = Emoji "⚜️"
tridentEmblem :: Emoji
tridentEmblem = Emoji "🔱"
nameBadge :: Emoji
nameBadge = Emoji "📛"
japaneseSymbolForBeginner :: Emoji
japaneseSymbolForBeginner = Emoji "🔰"
heavyLargeCircle :: Emoji
heavyLargeCircle = Emoji "⭕"
whiteHeavyCheckMark :: Emoji
whiteHeavyCheckMark = Emoji "✅"
ballotBoxWithCheck :: Emoji
ballotBoxWithCheck = Emoji "☑️"
heavyCheckMark :: Emoji
heavyCheckMark = Emoji "✔️"
heavyMultiplicationX :: Emoji
heavyMultiplicationX = Emoji "✖️"
crossMark :: Emoji
crossMark = Emoji "❌"
crossMarkButton :: Emoji
crossMarkButton = Emoji "❎"
heavyPlusSign :: Emoji
heavyPlusSign = Emoji "➕"
heavyMinusSign :: Emoji
heavyMinusSign = Emoji "➖"
heavyDivisionSign :: Emoji
heavyDivisionSign = Emoji "➗"
curlyLoop :: Emoji
curlyLoop = Emoji "➰"
doubleCurlyLoop :: Emoji
doubleCurlyLoop = Emoji "➿"
partAlternationMark :: Emoji
partAlternationMark = Emoji "〽️"
eightSpokedAsterisk :: Emoji
eightSpokedAsterisk = Emoji "✳️"
eightPointedStar :: Emoji
eightPointedStar = Emoji "✴️"
sparkle :: Emoji
sparkle = Emoji "❇️"
doubleExclamationMark :: Emoji
doubleExclamationMark = Emoji "‼️"
exclamationQuestionMark :: Emoji
exclamationQuestionMark = Emoji "⁉️"
questionMark :: Emoji
questionMark = Emoji "❓"
whiteQuestionMark :: Emoji
whiteQuestionMark = Emoji "❔"
whiteExclamationMark :: Emoji
whiteExclamationMark = Emoji "❕"
exclamationMark :: Emoji
exclamationMark = Emoji "❗"
wavyDash :: Emoji
wavyDash = Emoji "〰️"
copyright :: Emoji
copyright = Emoji "©️"
registered :: Emoji
registered = Emoji "®️"
tradeMark :: Emoji
tradeMark = Emoji "™️"
-- subgroup: keycap
keycapSharp :: Emoji
keycapSharp = Emoji "#️⃣"
keycapAsterisk :: Emoji
keycapAsterisk = Emoji "*️⃣"
keycap0 :: Emoji
keycap0 = Emoji "0️⃣"
keycap1 :: Emoji
keycap1 = Emoji "1️⃣"
keycap2 :: Emoji
keycap2 = Emoji "2️⃣"
keycap3 :: Emoji
keycap3 = Emoji "3️⃣"
keycap4 :: Emoji
keycap4 = Emoji "4️⃣"
keycap5 :: Emoji
keycap5 = Emoji "5️⃣"
keycap6 :: Emoji
keycap6 = Emoji "6️⃣"
keycap7 :: Emoji
keycap7 = Emoji "7️⃣"
keycap8 :: Emoji
keycap8 = Emoji "8️⃣"
keycap9 :: Emoji
keycap9 = Emoji "9️⃣"
keycap10 :: Emoji
keycap10 = Emoji "🔟"
-- subgroup: alphanum
hundredPoints :: Emoji
hundredPoints = Emoji "💯"
inputLatinUppercase :: Emoji
inputLatinUppercase = Emoji "🔠"
inputLatinLowercase :: Emoji
inputLatinLowercase = Emoji "🔡"
inputNumbers :: Emoji
inputNumbers = Emoji "🔢"
inputSymbols :: Emoji
inputSymbols = Emoji "🔣"
inputLatinLetters :: Emoji
inputLatinLetters = Emoji "🔤"
aButtonBloodType :: Emoji
aButtonBloodType = Emoji "🅰️"
aBButtonBloodType :: Emoji
aBButtonBloodType = Emoji "🆎"
bButtonBloodType :: Emoji
bButtonBloodType = Emoji "🅱️"
cLButton :: Emoji
cLButton = Emoji "🆑"
cOOLButton :: Emoji
cOOLButton = Emoji "🆒"
fREEButton :: Emoji
fREEButton = Emoji "🆓"
information :: Emoji
information = Emoji "ℹ️"
iDButton :: Emoji
iDButton = Emoji "🆔"
circledM :: Emoji
circledM = Emoji "Ⓜ️"
nEWButton :: Emoji
nEWButton = Emoji "🆕"
nGButton :: Emoji
nGButton = Emoji "🆖"
oButtonBloodType :: Emoji
oButtonBloodType = Emoji "🅾️"
oKButton :: Emoji
oKButton = Emoji "🆗"
pButton :: Emoji
pButton = Emoji "🅿️"
sOSButton :: Emoji
sOSButton = Emoji "🆘"
uPButton :: Emoji
uPButton = Emoji "🆙"
vSButton :: Emoji
vSButton = Emoji "🆚"
japaneseHereButton :: Emoji
japaneseHereButton = Emoji "🈁"
japaneseServiceChargeButton :: Emoji
japaneseServiceChargeButton = Emoji "🈂️"
japaneseMonthlyAmountButton :: Emoji
japaneseMonthlyAmountButton = Emoji "🈷️"
japaneseNotFreeOfChargeButton :: Emoji
japaneseNotFreeOfChargeButton = Emoji "🈶"
japaneseReservedButton :: Emoji
japaneseReservedButton = Emoji "🈯"
japaneseBargainButton :: Emoji
japaneseBargainButton = Emoji "🉐"
japaneseDiscountButton :: Emoji
japaneseDiscountButton = Emoji "🈹"
japaneseFreeOfChargeButton :: Emoji
japaneseFreeOfChargeButton = Emoji "🈚"
japaneseProhibitedButton :: Emoji
japaneseProhibitedButton = Emoji "🈲"
japaneseAcceptableButton :: Emoji
japaneseAcceptableButton = Emoji "🉑"
japaneseApplicationButton :: Emoji
japaneseApplicationButton = Emoji "🈸"
japanesePassingGradeButton :: Emoji
japanesePassingGradeButton = Emoji "🈴"
japaneseVacancyButton :: Emoji
japaneseVacancyButton = Emoji "🈳"
japaneseCongratulationsButton :: Emoji
japaneseCongratulationsButton = Emoji "㊗️"
japaneseSecretButton :: Emoji
japaneseSecretButton = Emoji "㊙️"
japaneseOpenForBusinessButton :: Emoji
japaneseOpenForBusinessButton = Emoji "🈺"
japaneseNoVacancyButton :: Emoji
japaneseNoVacancyButton = Emoji "🈵"
-- subgroup: geometric
blackSmallSquare :: Emoji
blackSmallSquare = Emoji "▪️"
whiteSmallSquare :: Emoji
whiteSmallSquare = Emoji "▫️"
whiteMediumSquare :: Emoji
whiteMediumSquare = Emoji "◻️"
blackMediumSquare :: Emoji
blackMediumSquare = Emoji "◼️"
whiteMediumSmallSquare :: Emoji
whiteMediumSmallSquare = Emoji "◽"
blackMediumSmallSquare :: Emoji
blackMediumSmallSquare = Emoji "◾"
blackLargeSquare :: Emoji
blackLargeSquare = Emoji "⬛"
whiteLargeSquare :: Emoji
whiteLargeSquare = Emoji "⬜"
largeOrangeDiamond :: Emoji
largeOrangeDiamond = Emoji "🔶"
largeBlueDiamond :: Emoji
largeBlueDiamond = Emoji "🔷"
smallOrangeDiamond :: Emoji
smallOrangeDiamond = Emoji "🔸"
smallBlueDiamond :: Emoji
smallBlueDiamond = Emoji "🔹"
redTrianglePointedUp :: Emoji
redTrianglePointedUp = Emoji "🔺"
redTrianglePointedDown :: Emoji
redTrianglePointedDown = Emoji "🔻"
diamondWithADot :: Emoji
diamondWithADot = Emoji "💠"
radioButton :: Emoji
radioButton = Emoji "🔘"
blackSquareButton :: Emoji
blackSquareButton = Emoji "🔲"
whiteSquareButton :: Emoji
whiteSquareButton = Emoji "🔳"
whiteCircle :: Emoji
whiteCircle = Emoji "⚪"
blackCircle :: Emoji
blackCircle = Emoji "⚫"
redCircle :: Emoji
redCircle = Emoji "🔴"
blueCircle :: Emoji
blueCircle = Emoji "🔵"
-- group: Flags
-- subgroup: flag
chequeredFlag :: Emoji
chequeredFlag = Emoji "🏁"
triangularFlag :: Emoji
triangularFlag = Emoji "🚩"
crossedFlags :: Emoji
crossedFlags = Emoji "🎌"
blackFlag :: Emoji
blackFlag = Emoji "🏴"
whiteFlag :: Emoji
whiteFlag = Emoji "🏳️"
rainbowFlag :: Emoji
rainbowFlag = Emoji "🏳️‍🌈"
pirateFlag :: Emoji
pirateFlag = Emoji "🏴‍☠️"
