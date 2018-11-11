module Nemo.Data.Emoji where

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
grinningFace = Emoji "😀"
beamingFaceWithSmilingEyes = Emoji "😁"
faceWithTearsOfJoy = Emoji "😂"
rollingOnTheFloorLaughing = Emoji "🤣"
grinningFaceWithBigEyes = Emoji "😃"
grinningFaceWithSmilingEyes = Emoji "😄"
grinningFaceWithSweat = Emoji "😅"
grinningSquintingFace = Emoji "😆"
winkingFace = Emoji "😉"
smilingFaceWithSmilingEyes = Emoji "😊"
faceSavoringFood = Emoji "😋"
smilingFaceWithSunglasses = Emoji "😎"
smilingFaceWithHeartEyes = Emoji "😍"
faceBlowingAKiss = Emoji "😘"
smilingFaceWith3Hearts = Emoji "🥰"
kissingFace = Emoji "😗"
kissingFaceWithSmilingEyes = Emoji "😙"
kissingFaceWithClosedEyes = Emoji "😚"
smilingFace = Emoji "☺️"
slightlySmilingFace = Emoji "🙂"
huggingFace = Emoji "🤗"
starStruck = Emoji "🤩"
-- subgroup: face-neutral
thinkingFace = Emoji "🤔"
faceWithRaisedEyebrow = Emoji "🤨"
neutralFace = Emoji "😐"
expressionlessFace = Emoji "😑"
faceWithoutMouth = Emoji "😶"
faceWithRollingEyes = Emoji "🙄"
smirkingFace = Emoji "😏"
perseveringFace = Emoji "😣"
sadButRelievedFace = Emoji "😥"
faceWithOpenMouth = Emoji "😮"
zipperMouthFace = Emoji "🤐"
hushedFace = Emoji "😯"
sleepyFace = Emoji "😪"
tiredFace = Emoji "😫"
sleepingFace = Emoji "😴"
relievedFace = Emoji "😌"
faceWithTongue = Emoji "😛"
winkingFaceWithTongue = Emoji "😜"
squintingFaceWithTongue = Emoji "😝"
droolingFace = Emoji "🤤"
unamusedFace = Emoji "😒"
downcastFaceWithSweat = Emoji "😓"
pensiveFace = Emoji "😔"
confusedFace = Emoji "😕"
upsideDownFace = Emoji "🙃"
moneyMouthFace = Emoji "🤑"
astonishedFace = Emoji "😲"
-- subgroup: face-negative
frowningFace = Emoji "☹️"
slightlyFrowningFace = Emoji "🙁"
confoundedFace = Emoji "😖"
disappointedFace = Emoji "😞"
worriedFace = Emoji "😟"
faceWithSteamFromNose = Emoji "😤"
cryingFace = Emoji "😢"
loudlyCryingFace = Emoji "😭"
frowningFaceWithOpenMouth = Emoji "😦"
anguishedFace = Emoji "😧"
fearfulFace = Emoji "😨"
wearyFace = Emoji "😩"
explodingHead = Emoji "🤯"
grimacingFace = Emoji "😬"
anxiousFaceWithSweat = Emoji "😰"
faceScreamingInFear = Emoji "😱"
hotFace = Emoji "🥵"
coldFace = Emoji "🥶"
flushedFace = Emoji "😳"
zanyFace = Emoji "🤪"
dizzyFace = Emoji "😵"
poutingFace = Emoji "😡"
angryFace = Emoji "😠"
faceWithSymbolsOnMouth = Emoji "🤬"
-- subgroup: face-sick
faceWithMedicalMask = Emoji "😷"
faceWithThermometer = Emoji "🤒"
faceWithHeadBandage = Emoji "🤕"
nauseatedFace = Emoji "🤢"
faceVomiting = Emoji "🤮"
sneezingFace = Emoji "🤧"
-- subgroup: face-role
smilingFaceWithHalo = Emoji "😇"
cowboyHatFace = Emoji "🤠"
partyingFace = Emoji "🥳"
woozyFace = Emoji "🥴"
pleadingFace = Emoji "🥺"
lyingFace = Emoji "🤥"
shushingFace = Emoji "🤫"
faceWithHandOverMouth = Emoji "🤭"
faceWithMonocle = Emoji "🧐"
nerdFace = Emoji "🤓"
-- subgroup: face-fantasy
smilingFaceWithHorns = Emoji "😈"
angryFaceWithHorns = Emoji "👿"
clownFace = Emoji "🤡"
ogre = Emoji "👹"
goblin = Emoji "👺"
skull = Emoji "💀"
skullAndCrossbones = Emoji "☠️"
ghost = Emoji "👻"
alien = Emoji "👽"
alienMonster = Emoji "👾"
robotFace = Emoji "🤖"
pileOfPoo = Emoji "💩"
-- subgroup: cat-face
grinningCatFace = Emoji "😺"
grinningCatFaceWithSmilingEyes = Emoji "😸"
catFaceWithTearsOfJoy = Emoji "😹"
smilingCatFaceWithHeartEyes = Emoji "😻"
catFaceWithWrySmile = Emoji "😼"
kissingCatFace = Emoji "😽"
wearyCatFace = Emoji "🙀"
cryingCatFace = Emoji "😿"
poutingCatFace = Emoji "😾"
-- subgroup: monkey-face
seeNoEvilMonkey = Emoji "🙈"
hearNoEvilMonkey = Emoji "🙉"
speakNoEvilMonkey = Emoji "🙊"
-- subgroup: skin-tone
lightSkinTone = Emoji "🏻"
mediumLightSkinTone = Emoji "🏼"
mediumSkinTone = Emoji "🏽"
mediumDarkSkinTone = Emoji "🏾"
darkSkinTone = Emoji "🏿"
-- subgroup: person
baby = Emoji "👶"
child = Emoji "🧒"
boy = Emoji "👦"
girl = Emoji "👧"
adult = Emoji "🧑"
man = Emoji "👨"
woman = Emoji "👩"
olderAdult = Emoji "🧓"
oldMan = Emoji "👴"
oldWoman = Emoji "👵"
-- subgroup: person-role
manHealthWorker = Emoji "👨‍⚕️"
womanHealthWorker = Emoji "👩‍⚕️"
manStudent = Emoji "👨‍🎓"
womanStudent = Emoji "👩‍🎓"
manTeacher = Emoji "👨‍🏫"
womanTeacher = Emoji "👩‍🏫"
manJudge = Emoji "👨‍⚖️"
womanJudge = Emoji "👩‍⚖️"
manFarmer = Emoji "👨‍🌾"
womanFarmer = Emoji "👩‍🌾"
manCook = Emoji "👨‍🍳"
womanCook = Emoji "👩‍🍳"
manMechanic = Emoji "👨‍🔧"
womanMechanic = Emoji "👩‍🔧"
manFactoryWorker = Emoji "👨‍🏭"
womanFactoryWorker = Emoji "👩‍🏭"
manOfficeWorker = Emoji "👨‍💼"
womanOfficeWorker = Emoji "👩‍💼"
manScientist = Emoji "👨‍🔬"
womanScientist = Emoji "👩‍🔬"
manTechnologist = Emoji "👨‍💻"
womanTechnologist = Emoji "👩‍💻"
manSinger = Emoji "👨‍🎤"
womanSinger = Emoji "👩‍🎤"
manArtist = Emoji "👨‍🎨"
womanArtist = Emoji "👩‍🎨"
manPilot = Emoji "👨‍✈️"
womanPilot = Emoji "👩‍✈️"
manAstronaut = Emoji "👨‍🚀"
womanAstronaut = Emoji "👩‍🚀"
manFirefighter = Emoji "👨‍🚒"
womanFirefighter = Emoji "👩‍🚒"
policeOfficer = Emoji "👮"
manPoliceOfficer = Emoji "👮‍♂️"
womanPoliceOfficer = Emoji "👮‍♀️"
detective = Emoji "🕵️"
manDetective = Emoji "🕵️‍♂️"
womanDetective = Emoji "🕵️‍♀️"
guard = Emoji "💂"
manGuard = Emoji "💂‍♂️"
womanGuard = Emoji "💂‍♀️"
constructionWorker = Emoji "👷"
manConstructionWorker = Emoji "👷‍♂️"
womanConstructionWorker = Emoji "👷‍♀️"
prince = Emoji "🤴"
princess = Emoji "👸"
personWearingTurban = Emoji "👳"
manWearingTurban = Emoji "👳‍♂️"
womanWearingTurban = Emoji "👳‍♀️"
manWithChineseCap = Emoji "👲"
womanWithHeadscarf = Emoji "🧕"
beardedPerson = Emoji "🧔"
blondHairedPerson = Emoji "👱"
blondHairedMan = Emoji "👱‍♂️"
blondHairedWoman = Emoji "👱‍♀️"
manRedHaired = Emoji "👨‍🦰"
womanRedHaired = Emoji "👩‍🦰"
manCurlyHaired = Emoji "👨‍🦱"
womanCurlyHaired = Emoji "👩‍🦱"
manBald = Emoji "👨‍🦲"
womanBald = Emoji "👩‍🦲"
manWhiteHaired = Emoji "👨‍🦳"
womanWhiteHaired = Emoji "👩‍🦳"
manInTuxedo = Emoji "🤵"
brideWithVeil = Emoji "👰"
pregnantWoman = Emoji "🤰"
breastFeeding = Emoji "🤱"
-- subgroup: person-fantasy
babyAngel = Emoji "👼"
santaClaus = Emoji "🎅"
mrsClaus = Emoji "🤶"
superhero = Emoji "🦸"
womanSuperhero = Emoji "🦸‍♀️"
manSuperhero = Emoji "🦸‍♂️"
supervillain = Emoji "🦹"
womanSupervillain = Emoji "🦹‍♀️"
manSupervillain = Emoji "🦹‍♂️"
mage = Emoji "🧙"
womanMage = Emoji "🧙‍♀️"
manMage = Emoji "🧙‍♂️"
fairy = Emoji "🧚"
womanFairy = Emoji "🧚‍♀️"
manFairy = Emoji "🧚‍♂️"
vampire = Emoji "🧛"
womanVampire = Emoji "🧛‍♀️"
manVampire = Emoji "🧛‍♂️"
merperson = Emoji "🧜"
mermaid = Emoji "🧜‍♀️"
merman = Emoji "🧜‍♂️"
elf = Emoji "🧝"
womanElf = Emoji "🧝‍♀️"
manElf = Emoji "🧝‍♂️"
genie = Emoji "🧞"
womanGenie = Emoji "🧞‍♀️"
manGenie = Emoji "🧞‍♂️"
zombie = Emoji "🧟"
womanZombie = Emoji "🧟‍♀️"
manZombie = Emoji "🧟‍♂️"
-- subgroup: person-gesture
personFrowning = Emoji "🙍"
manFrowning = Emoji "🙍‍♂️"
womanFrowning = Emoji "🙍‍♀️"
personPouting = Emoji "🙎"
manPouting = Emoji "🙎‍♂️"
womanPouting = Emoji "🙎‍♀️"
personGesturingNO = Emoji "🙅"
manGesturingNO = Emoji "🙅‍♂️"
womanGesturingNO = Emoji "🙅‍♀️"
personGesturingOK = Emoji "🙆"
manGesturingOK = Emoji "🙆‍♂️"
womanGesturingOK = Emoji "🙆‍♀️"
personTippingHand = Emoji "💁"
manTippingHand = Emoji "💁‍♂️"
womanTippingHand = Emoji "💁‍♀️"
personRaisingHand = Emoji "🙋"
manRaisingHand = Emoji "🙋‍♂️"
womanRaisingHand = Emoji "🙋‍♀️"
personBowing = Emoji "🙇"
manBowing = Emoji "🙇‍♂️"
womanBowing = Emoji "🙇‍♀️"
personFacepalming = Emoji "🤦"
manFacepalming = Emoji "🤦‍♂️"
womanFacepalming = Emoji "🤦‍♀️"
personShrugging = Emoji "🤷"
manShrugging = Emoji "🤷‍♂️"
womanShrugging = Emoji "🤷‍♀️"
-- subgroup: person-activity
personGettingMassage = Emoji "💆"
manGettingMassage = Emoji "💆‍♂️"
womanGettingMassage = Emoji "💆‍♀️"
personGettingHaircut = Emoji "💇"
manGettingHaircut = Emoji "💇‍♂️"
womanGettingHaircut = Emoji "💇‍♀️"
personWalking = Emoji "🚶"
manWalking = Emoji "🚶‍♂️"
womanWalking = Emoji "🚶‍♀️"
personRunning = Emoji "🏃"
manRunning = Emoji "🏃‍♂️"
womanRunning = Emoji "🏃‍♀️"
womanDancing = Emoji "💃"
manDancing = Emoji "🕺"
peopleWithBunnyEars = Emoji "👯"
menWithBunnyEars = Emoji "👯‍♂️"
womenWithBunnyEars = Emoji "👯‍♀️"
personInSteamyRoom = Emoji "🧖"
womanInSteamyRoom = Emoji "🧖‍♀️"
manInSteamyRoom = Emoji "🧖‍♂️"
personClimbing = Emoji "🧗"
womanClimbing = Emoji "🧗‍♀️"
manClimbing = Emoji "🧗‍♂️"
personInLotusPosition = Emoji "🧘"
womanInLotusPosition = Emoji "🧘‍♀️"
manInLotusPosition = Emoji "🧘‍♂️"
personTakingBath = Emoji "🛀"
personInBed = Emoji "🛌"
manInSuitLevitating = Emoji "🕴️"
speakingHead = Emoji "🗣️"
bustInSilhouette = Emoji "👤"
bustsInSilhouette = Emoji "👥"
-- subgroup: person-sport
personFencing = Emoji "🤺"
horseRacing = Emoji "🏇"
skier = Emoji "⛷️"
snowboarder = Emoji "🏂"
personGolfing = Emoji "🏌️"
manGolfing = Emoji "🏌️‍♂️"
womanGolfing = Emoji "🏌️‍♀️"
personSurfing = Emoji "🏄"
manSurfing = Emoji "🏄‍♂️"
womanSurfing = Emoji "🏄‍♀️"
personRowingBoat = Emoji "🚣"
manRowingBoat = Emoji "🚣‍♂️"
womanRowingBoat = Emoji "🚣‍♀️"
personSwimming = Emoji "🏊"
manSwimming = Emoji "🏊‍♂️"
womanSwimming = Emoji "🏊‍♀️"
personBouncingBall = Emoji "⛹️"
manBouncingBall = Emoji "⛹️‍♂️"
womanBouncingBall = Emoji "⛹️‍♀️"
personLiftingWeights = Emoji "🏋️"
manLiftingWeights = Emoji "🏋️‍♂️"
womanLiftingWeights = Emoji "🏋️‍♀️"
personBiking = Emoji "🚴"
manBiking = Emoji "🚴‍♂️"
womanBiking = Emoji "🚴‍♀️"
personMountainBiking = Emoji "🚵"
manMountainBiking = Emoji "🚵‍♂️"
womanMountainBiking = Emoji "🚵‍♀️"
racingCar = Emoji "🏎️"
motorcycle = Emoji "🏍️"
personCartwheeling = Emoji "🤸"
manCartwheeling = Emoji "🤸‍♂️"
womanCartwheeling = Emoji "🤸‍♀️"
peopleWrestling = Emoji "🤼"
menWrestling = Emoji "🤼‍♂️"
womenWrestling = Emoji "🤼‍♀️"
personPlayingWaterPolo = Emoji "🤽"
manPlayingWaterPolo = Emoji "🤽‍♂️"
womanPlayingWaterPolo = Emoji "🤽‍♀️"
personPlayingHandball = Emoji "🤾"
manPlayingHandball = Emoji "🤾‍♂️"
womanPlayingHandball = Emoji "🤾‍♀️"
personJuggling = Emoji "🤹"
manJuggling = Emoji "🤹‍♂️"
womanJuggling = Emoji "🤹‍♀️"
-- subgroup: family
manAndWomanHoldingHands = Emoji "👫"
twoMenHoldingHands = Emoji "👬"
twoWomenHoldingHands = Emoji "👭"
kiss = Emoji "💏"
kissWomanMan = Emoji "👩‍❤️‍💋‍👨"
kissManMan = Emoji "👨‍❤️‍💋‍👨"
kissWomanWoman = Emoji "👩‍❤️‍💋‍👩"
coupleWithHeart = Emoji "💑"
coupleWithHeartWomanMan = Emoji "👩‍❤️‍👨"
coupleWithHeartManMan = Emoji "👨‍❤️‍👨"
coupleWithHeartWomanWoman = Emoji "👩‍❤️‍👩"
family = Emoji "👪"
familyManWomanBoy = Emoji "👨‍👩‍👦"
familyManWomanGirl = Emoji "👨‍👩‍👧"
familyManWomanGirlBoy = Emoji "👨‍👩‍👧‍👦"
familyManWomanBoyBoy = Emoji "👨‍👩‍👦‍👦"
familyManWomanGirlGirl = Emoji "👨‍👩‍👧‍👧"
familyManManBoy = Emoji "👨‍👨‍👦"
familyManManGirl = Emoji "👨‍👨‍👧"
familyManManGirlBoy = Emoji "👨‍👨‍👧‍👦"
familyManManBoyBoy = Emoji "👨‍👨‍👦‍👦"
familyManManGirlGirl = Emoji "👨‍👨‍👧‍👧"
familyWomanWomanBoy = Emoji "👩‍👩‍👦"
familyWomanWomanGirl = Emoji "👩‍👩‍👧"
familyWomanWomanGirlBoy = Emoji "👩‍👩‍👧‍👦"
familyWomanWomanBoyBoy = Emoji "👩‍👩‍👦‍👦"
familyWomanWomanGirlGirl = Emoji "👩‍👩‍👧‍👧"
familyManBoy = Emoji "👨‍👦"
familyManBoyBoy = Emoji "👨‍👦‍👦"
familyManGirl = Emoji "👨‍👧"
familyManGirlBoy = Emoji "👨‍👧‍👦"
familyManGirlGirl = Emoji "👨‍👧‍👧"
familyWomanBoy = Emoji "👩‍👦"
familyWomanBoyBoy = Emoji "👩‍👦‍👦"
familyWomanGirl = Emoji "👩‍👧"
familyWomanGirlBoy = Emoji "👩‍👧‍👦"
familyWomanGirlGirl = Emoji "👩‍👧‍👧"
-- subgroup: body
selfie = Emoji "🤳"
flexedBiceps = Emoji "💪"
leg = Emoji "🦵"
foot = Emoji "🦶"
backhandIndexPointingLeft = Emoji "👈"
backhandIndexPointingRight = Emoji "👉"
indexPointingUp = Emoji "☝️"
backhandIndexPointingUp = Emoji "👆"
middleFinger = Emoji "🖕"
backhandIndexPointingDown = Emoji "👇"
victoryHand = Emoji "✌️"
crossedFingers = Emoji "🤞"
vulcanSalute = Emoji "🖖"
signOfTheHorns = Emoji "🤘"
callMeHand = Emoji "🤙"
handWithFingersSplayed = Emoji "🖐️"
raisedHand = Emoji "✋"
oKHand = Emoji "👌"
thumbsUp = Emoji "👍"
thumbsDown = Emoji "👎"
raisedFist = Emoji "✊"
oncomingFist = Emoji "👊"
leftFacingFist = Emoji "🤛"
rightFacingFist = Emoji "🤜"
raisedBackOfHand = Emoji "🤚"
wavingHand = Emoji "👋"
loveYouGesture = Emoji "🤟"
writingHand = Emoji "✍️"
clappingHands = Emoji "👏"
openHands = Emoji "👐"
raisingHands = Emoji "🙌"
palmsUpTogether = Emoji "🤲"
foldedHands = Emoji "🙏"
handshake = Emoji "🤝"
nailPolish = Emoji "💅"
ear = Emoji "👂"
nose = Emoji "👃"
redHaired = Emoji "🦰"
curlyHaired = Emoji "🦱"
bald = Emoji "🦲"
whiteHaired = Emoji "🦳"
footprints = Emoji "👣"
eyes = Emoji "👀"
eye = Emoji "👁️"
eyeInSpeechBubble = Emoji "👁️‍🗨️"
brain = Emoji "🧠"
bone = Emoji "🦴"
tooth = Emoji "🦷"
tongue = Emoji "👅"
mouth = Emoji "👄"
-- subgroup: emotion
kissMark = Emoji "💋"
heartWithArrow = Emoji "💘"
redHeart = Emoji "❤️"
beatingHeart = Emoji "💓"
brokenHeart = Emoji "💔"
twoHearts = Emoji "💕"
sparklingHeart = Emoji "💖"
growingHeart = Emoji "💗"
blueHeart = Emoji "💙"
greenHeart = Emoji "💚"
yellowHeart = Emoji "💛"
orangeHeart = Emoji "🧡"
purpleHeart = Emoji "💜"
blackHeart = Emoji "🖤"
heartWithRibbon = Emoji "💝"
revolvingHearts = Emoji "💞"
heartDecoration = Emoji "💟"
heavyHeartExclamation = Emoji "❣️"
loveLetter = Emoji "💌"
zzz = Emoji "💤"
angerSymbol = Emoji "💢"
bomb = Emoji "💣"
collision = Emoji "💥"
sweatDroplets = Emoji "💦"
dashingAway = Emoji "💨"
dizzy = Emoji "💫"
speechBalloon = Emoji "💬"
leftSpeechBubble = Emoji "🗨️"
rightAngerBubble = Emoji "🗯️"
thoughtBalloon = Emoji "💭"
hole = Emoji "🕳️"
-- subgroup: clothing
glasses = Emoji "👓"
sunglasses = Emoji "🕶️"
goggles = Emoji "🥽"
labCoat = Emoji "🥼"
necktie = Emoji "👔"
tShirt = Emoji "👕"
jeans = Emoji "👖"
scarf = Emoji "🧣"
gloves = Emoji "🧤"
coat = Emoji "🧥"
socks = Emoji "🧦"
dress = Emoji "👗"
kimono = Emoji "👘"
bikini = Emoji "👙"
womansClothes = Emoji "👚"
purse = Emoji "👛"
handbag = Emoji "👜"
clutchBag = Emoji "👝"
shoppingBags = Emoji "🛍️"
schoolBackpack = Emoji "🎒"
mansShoe = Emoji "👞"
runningShoe = Emoji "👟"
hikingBoot = Emoji "🥾"
womansFlatShoe = Emoji "🥿"
highHeeledShoe = Emoji "👠"
womansSandal = Emoji "👡"
womansBoot = Emoji "👢"
crown = Emoji "👑"
womansHat = Emoji "👒"
topHat = Emoji "🎩"
graduationCap = Emoji "🎓"
billedCap = Emoji "🧢"
rescueWorkersHelmet = Emoji "⛑️"
prayerBeads = Emoji "📿"
lipstick = Emoji "💄"
ring = Emoji "💍"
gemStone = Emoji "💎"
-- group: Animals & Nature
-- subgroup: animal-mammal
monkeyFace = Emoji "🐵"
monkey = Emoji "🐒"
gorilla = Emoji "🦍"
dogFace = Emoji "🐶"
dog = Emoji "🐕"
poodle = Emoji "🐩"
wolfFace = Emoji "🐺"
foxFace = Emoji "🦊"
raccoon = Emoji "🦝"
catFace = Emoji "🐱"
cat = Emoji "🐈"
lionFace = Emoji "🦁"
tigerFace = Emoji "🐯"
tiger = Emoji "🐅"
leopard = Emoji "🐆"
horseFace = Emoji "🐴"
horse = Emoji "🐎"
unicornFace = Emoji "🦄"
zebra = Emoji "🦓"
deer = Emoji "🦌"
cowFace = Emoji "🐮"
ox = Emoji "🐂"
waterBuffalo = Emoji "🐃"
cow = Emoji "🐄"
pigFace = Emoji "🐷"
pig = Emoji "🐖"
boar = Emoji "🐗"
pigNose = Emoji "🐽"
ram = Emoji "🐏"
ewe = Emoji "🐑"
goat = Emoji "🐐"
camel = Emoji "🐪"
twoHumpCamel = Emoji "🐫"
llama = Emoji "🦙"
giraffe = Emoji "🦒"
elephant = Emoji "🐘"
rhinoceros = Emoji "🦏"
hippopotamus = Emoji "🦛"
mouseFace = Emoji "🐭"
mouse = Emoji "🐁"
rat = Emoji "🐀"
hamsterFace = Emoji "🐹"
rabbitFace = Emoji "🐰"
rabbit = Emoji "🐇"
chipmunk = Emoji "🐿️"
hedgehog = Emoji "🦔"
bat = Emoji "🦇"
bearFace = Emoji "🐻"
koala = Emoji "🐨"
pandaFace = Emoji "🐼"
kangaroo = Emoji "🦘"
badger = Emoji "🦡"
pawPrints = Emoji "🐾"
-- subgroup: animal-bird
turkey = Emoji "🦃"
chicken = Emoji "🐔"
rooster = Emoji "🐓"
hatchingChick = Emoji "🐣"
babyChick = Emoji "🐤"
frontFacingBabyChick = Emoji "🐥"
bird = Emoji "🐦"
penguin = Emoji "🐧"
dove = Emoji "🕊️"
eagle = Emoji "🦅"
duck = Emoji "🦆"
swan = Emoji "🦢"
owl = Emoji "🦉"
peacock = Emoji "🦚"
parrot = Emoji "🦜"
-- subgroup: animal-amphibian
frogFace = Emoji "🐸"
-- subgroup: animal-reptile
crocodile = Emoji "🐊"
turtle = Emoji "🐢"
lizard = Emoji "🦎"
snake = Emoji "🐍"
dragonFace = Emoji "🐲"
dragon = Emoji "🐉"
sauropod = Emoji "🦕"
tRex = Emoji "🦖"
-- subgroup: animal-marine
spoutingWhale = Emoji "🐳"
whale = Emoji "🐋"
dolphin = Emoji "🐬"
fish = Emoji "🐟"
tropicalFish = Emoji "🐠"
blowfish = Emoji "🐡"
shark = Emoji "🦈"
octopus = Emoji "🐙"
spiralShell = Emoji "🐚"
crab = Emoji "🦀"
lobster = Emoji "🦞"
shrimp = Emoji "🦐"
squid = Emoji "🦑"
-- subgroup: animal-bug
snail = Emoji "🐌"
butterfly = Emoji "🦋"
bug = Emoji "🐛"
ant = Emoji "🐜"
honeybee = Emoji "🐝"
ladyBeetle = Emoji "🐞"
cricket = Emoji "🦗"
spider = Emoji "🕷️"
spiderWeb = Emoji "🕸️"
scorpion = Emoji "🦂"
mosquito = Emoji "🦟"
microbe = Emoji "🦠"
-- subgroup: plant-flower
bouquet = Emoji "💐"
cherryBlossom = Emoji "🌸"
whiteFlower = Emoji "💮"
rosette = Emoji "🏵️"
rose = Emoji "🌹"
wiltedFlower = Emoji "🥀"
hibiscus = Emoji "🌺"
sunflower = Emoji "🌻"
blossom = Emoji "🌼"
tulip = Emoji "🌷"
-- subgroup: plant-other
seedling = Emoji "🌱"
evergreenTree = Emoji "🌲"
deciduousTree = Emoji "🌳"
palmTree = Emoji "🌴"
cactus = Emoji "🌵"
sheafOfRice = Emoji "🌾"
herb = Emoji "🌿"
shamrock = Emoji "☘️"
fourLeafClover = Emoji "🍀"
mapleLeaf = Emoji "🍁"
fallenLeaf = Emoji "🍂"
leafFlutteringInWind = Emoji "🍃"
-- group: Food & Drink
-- subgroup: food-fruit
grapes = Emoji "🍇"
melon = Emoji "🍈"
watermelon = Emoji "🍉"
tangerine = Emoji "🍊"
lemon = Emoji "🍋"
banana = Emoji "🍌"
pineapple = Emoji "🍍"
mango = Emoji "🥭"
redApple = Emoji "🍎"
greenApple = Emoji "🍏"
pear = Emoji "🍐"
peach = Emoji "🍑"
cherries = Emoji "🍒"
strawberry = Emoji "🍓"
kiwiFruit = Emoji "🥝"
tomato = Emoji "🍅"
coconut = Emoji "🥥"
-- subgroup: food-vegetable
avocado = Emoji "🥑"
eggplant = Emoji "🍆"
potato = Emoji "🥔"
carrot = Emoji "🥕"
earOfCorn = Emoji "🌽"
hotPepper = Emoji "🌶️"
cucumber = Emoji "🥒"
leafyGreen = Emoji "🥬"
broccoli = Emoji "🥦"
mushroom = Emoji "🍄"
peanuts = Emoji "🥜"
chestnut = Emoji "🌰"
-- subgroup: food-prepared
bread = Emoji "🍞"
croissant = Emoji "🥐"
baguetteBread = Emoji "🥖"
pretzel = Emoji "🥨"
bagel = Emoji "🥯"
pancakes = Emoji "🥞"
cheeseWedge = Emoji "🧀"
meatOnBone = Emoji "🍖"
poultryLeg = Emoji "🍗"
cutOfMeat = Emoji "🥩"
bacon = Emoji "🥓"
hamburger = Emoji "🍔"
frenchFries = Emoji "🍟"
pizza = Emoji "🍕"
hotDog = Emoji "🌭"
sandwich = Emoji "🥪"
taco = Emoji "🌮"
burrito = Emoji "🌯"
stuffedFlatbread = Emoji "🥙"
egg = Emoji "🥚"
cooking = Emoji "🍳"
shallowPanOfFood = Emoji "🥘"
potOfFood = Emoji "🍲"
bowlWithSpoon = Emoji "🥣"
greenSalad = Emoji "🥗"
popcorn = Emoji "🍿"
salt = Emoji "🧂"
cannedFood = Emoji "🥫"
-- subgroup: food-asian
bentoBox = Emoji "🍱"
riceCracker = Emoji "🍘"
riceBall = Emoji "🍙"
cookedRice = Emoji "🍚"
curryRice = Emoji "🍛"
steamingBowl = Emoji "🍜"
spaghetti = Emoji "🍝"
roastedSweetPotato = Emoji "🍠"
oden = Emoji "🍢"
sushi = Emoji "🍣"
friedShrimp = Emoji "🍤"
fishCakeWithSwirl = Emoji "🍥"
moonCake = Emoji "🥮"
dango = Emoji "🍡"
dumpling = Emoji "🥟"
fortuneCookie = Emoji "🥠"
takeoutBox = Emoji "🥡"
-- subgroup: food-sweet
softIceCream = Emoji "🍦"
shavedIce = Emoji "🍧"
iceCream = Emoji "🍨"
doughnut = Emoji "🍩"
cookie = Emoji "🍪"
birthdayCake = Emoji "🎂"
shortcake = Emoji "🍰"
cupcake = Emoji "🧁"
pie = Emoji "🥧"
chocolateBar = Emoji "🍫"
candy = Emoji "🍬"
lollipop = Emoji "🍭"
custard = Emoji "🍮"
honeyPot = Emoji "🍯"
-- subgroup: drink
babyBottle = Emoji "🍼"
glassOfMilk = Emoji "🥛"
hotBeverage = Emoji "☕"
teacupWithoutHandle = Emoji "🍵"
sake = Emoji "🍶"
bottleWithPoppingCork = Emoji "🍾"
wineGlass = Emoji "🍷"
cocktailGlass = Emoji "🍸"
tropicalDrink = Emoji "🍹"
beerMug = Emoji "🍺"
clinkingBeerMugs = Emoji "🍻"
clinkingGlasses = Emoji "🥂"
tumblerGlass = Emoji "🥃"
cupWithStraw = Emoji "🥤"
-- subgroup: dishware
chopsticks = Emoji "🥢"
forkAndKnifeWithPlate = Emoji "🍽️"
forkAndKnife = Emoji "🍴"
spoon = Emoji "🥄"
kitchenKnife = Emoji "🔪"
amphora = Emoji "🏺"
-- group: Travel & Places
-- subgroup: place-map
globeShowingEuropeAfrica = Emoji "🌍"
globeShowingAmericas = Emoji "🌎"
globeShowingAsiaAustralia = Emoji "🌏"
globeWithMeridians = Emoji "🌐"
worldMap = Emoji "🗺️"
mapOfJapan = Emoji "🗾"
compass = Emoji "🧭"
-- subgroup: place-geographic
snowCappedMountain = Emoji "🏔️"
mountain = Emoji "⛰️"
volcano = Emoji "🌋"
mountFuji = Emoji "🗻"
camping = Emoji "🏕️"
beachWithUmbrella = Emoji "🏖️"
desert = Emoji "🏜️"
desertIsland = Emoji "🏝️"
nationalPark = Emoji "🏞️"
-- subgroup: place-building
stadium = Emoji "🏟️"
classicalBuilding = Emoji "🏛️"
buildingConstruction = Emoji "🏗️"
bricks = Emoji "🧱"
houses = Emoji "🏘️"
derelictHouse = Emoji "🏚️"
house = Emoji "🏠"
houseWithGarden = Emoji "🏡"
officeBuilding = Emoji "🏢"
japanesePostOffice = Emoji "🏣"
postOffice = Emoji "🏤"
hospital = Emoji "🏥"
bank = Emoji "🏦"
hotel = Emoji "🏨"
loveHotel = Emoji "🏩"
convenienceStore = Emoji "🏪"
school = Emoji "🏫"
departmentStore = Emoji "🏬"
factory = Emoji "🏭"
japaneseCastle = Emoji "🏯"
castle = Emoji "🏰"
wedding = Emoji "💒"
tokyoTower = Emoji "🗼"
statueOfLiberty = Emoji "🗽"
-- subgroup: place-religious
church = Emoji "⛪"
mosque = Emoji "🕌"
synagogue = Emoji "🕍"
shintoShrine = Emoji "⛩️"
kaaba = Emoji "🕋"
-- subgroup: place-other
fountain = Emoji "⛲"
tent = Emoji "⛺"
foggy = Emoji "🌁"
nightWithStars = Emoji "🌃"
cityscape = Emoji "🏙️"
sunriseOverMountains = Emoji "🌄"
sunrise = Emoji "🌅"
cityscapeAtDusk = Emoji "🌆"
sunset = Emoji "🌇"
bridgeAtNight = Emoji "🌉"
hotSprings = Emoji "♨️"
milkyWay = Emoji "🌌"
carouselHorse = Emoji "🎠"
ferrisWheel = Emoji "🎡"
rollerCoaster = Emoji "🎢"
barberPole = Emoji "💈"
circusTent = Emoji "🎪"
-- subgroup: transport-ground
locomotive = Emoji "🚂"
railwayCar = Emoji "🚃"
highSpeedTrain = Emoji "🚄"
bulletTrain = Emoji "🚅"
train = Emoji "🚆"
metro = Emoji "🚇"
lightRail = Emoji "🚈"
station = Emoji "🚉"
tram = Emoji "🚊"
monorail = Emoji "🚝"
mountainRailway = Emoji "🚞"
tramCar = Emoji "🚋"
bus = Emoji "🚌"
oncomingBus = Emoji "🚍"
trolleybus = Emoji "🚎"
minibus = Emoji "🚐"
ambulance = Emoji "🚑"
fireEngine = Emoji "🚒"
policeCar = Emoji "🚓"
oncomingPoliceCar = Emoji "🚔"
taxi = Emoji "🚕"
oncomingTaxi = Emoji "🚖"
automobile = Emoji "🚗"
oncomingAutomobile = Emoji "🚘"
sportUtilityVehicle = Emoji "🚙"
deliveryTruck = Emoji "🚚"
articulatedLorry = Emoji "🚛"
tractor = Emoji "🚜"
bicycle = Emoji "🚲"
kickScooter = Emoji "🛴"
skateboard = Emoji "🛹"
motorScooter = Emoji "🛵"
busStop = Emoji "🚏"
motorway = Emoji "🛣️"
railwayTrack = Emoji "🛤️"
oilDrum = Emoji "🛢️"
fuelPump = Emoji "⛽"
policeCarLight = Emoji "🚨"
horizontalTrafficLight = Emoji "🚥"
verticalTrafficLight = Emoji "🚦"
stopSign = Emoji "🛑"
construction = Emoji "🚧"
-- subgroup: transport-water
anchor = Emoji "⚓"
sailboat = Emoji "⛵"
canoe = Emoji "🛶"
speedboat = Emoji "🚤"
passengerShip = Emoji "🛳️"
ferry = Emoji "⛴️"
motorBoat = Emoji "🛥️"
ship = Emoji "🚢"
-- subgroup: transport-air
airplane = Emoji "✈️"
smallAirplane = Emoji "🛩️"
airplaneDeparture = Emoji "🛫"
airplaneArrival = Emoji "🛬"
seat = Emoji "💺"
helicopter = Emoji "🚁"
suspensionRailway = Emoji "🚟"
mountainCableway = Emoji "🚠"
aerialTramway = Emoji "🚡"
satellite = Emoji "🛰️"
rocket = Emoji "🚀"
flyingSaucer = Emoji "🛸"
-- subgroup: hotel
bellhopBell = Emoji "🛎️"
luggage = Emoji "🧳"
-- subgroup: time
hourglassDone = Emoji "⌛"
hourglassNotDone = Emoji "⏳"
watch = Emoji "⌚"
alarmClock = Emoji "⏰"
stopwatch = Emoji "⏱️"
timerClock = Emoji "⏲️"
mantelpieceClock = Emoji "🕰️"
twelveOclock = Emoji "🕛"
twelveThirty = Emoji "🕧"
oneOclock = Emoji "🕐"
oneThirty = Emoji "🕜"
twoOclock = Emoji "🕑"
twoThirty = Emoji "🕝"
threeOclock = Emoji "🕒"
threeThirty = Emoji "🕞"
fourOclock = Emoji "🕓"
fourThirty = Emoji "🕟"
fiveOclock = Emoji "🕔"
fiveThirty = Emoji "🕠"
sixOclock = Emoji "🕕"
sixThirty = Emoji "🕡"
sevenOclock = Emoji "🕖"
sevenThirty = Emoji "🕢"
eightOclock = Emoji "🕗"
eightThirty = Emoji "🕣"
nineOclock = Emoji "🕘"
nineThirty = Emoji "🕤"
tenOclock = Emoji "🕙"
tenThirty = Emoji "🕥"
elevenOclock = Emoji "🕚"
elevenThirty = Emoji "🕦"
-- subgroup: sky & weather
newMoon = Emoji "🌑"
waxingCrescentMoon = Emoji "🌒"
firstQuarterMoon = Emoji "🌓"
waxingGibbousMoon = Emoji "🌔"
fullMoon = Emoji "🌕"
waningGibbousMoon = Emoji "🌖"
lastQuarterMoon = Emoji "🌗"
waningCrescentMoon = Emoji "🌘"
crescentMoon = Emoji "🌙"
newMoonFace = Emoji "🌚"
firstQuarterMoonFace = Emoji "🌛"
lastQuarterMoonFace = Emoji "🌜"
thermometer = Emoji "🌡️"
sun = Emoji "☀️"
fullMoonFace = Emoji "🌝"
sunWithFace = Emoji "🌞"
star = Emoji "⭐"
glowingStar = Emoji "🌟"
shootingStar = Emoji "🌠"
cloud = Emoji "☁️"
sunBehindCloud = Emoji "⛅"
cloudWithLightningAndRain = Emoji "⛈️"
sunBehindSmallCloud = Emoji "🌤️"
sunBehindLargeCloud = Emoji "🌥️"
sunBehindRainCloud = Emoji "🌦️"
cloudWithRain = Emoji "🌧️"
cloudWithSnow = Emoji "🌨️"
cloudWithLightning = Emoji "🌩️"
tornado = Emoji "🌪️"
fog = Emoji "🌫️"
windFace = Emoji "🌬️"
cyclone = Emoji "🌀"
rainbow = Emoji "🌈"
closedUmbrella = Emoji "🌂"
umbrella = Emoji "☂️"
umbrellaWithRainDrops = Emoji "☔"
umbrellaOnGround = Emoji "⛱️"
highVoltage = Emoji "⚡"
snowflake = Emoji "❄️"
snowman = Emoji "☃️"
snowmanWithoutSnow = Emoji "⛄"
comet = Emoji "☄️"
fire = Emoji "🔥"
droplet = Emoji "💧"
waterWave = Emoji "🌊"
-- group: Activities
-- subgroup: event
jackOLantern = Emoji "🎃"
christmasTree = Emoji "🎄"
fireworks = Emoji "🎆"
sparkler = Emoji "🎇"
firecracker = Emoji "🧨"
sparkles = Emoji "✨"
balloon = Emoji "🎈"
partyPopper = Emoji "🎉"
confettiBall = Emoji "🎊"
tanabataTree = Emoji "🎋"
pineDecoration = Emoji "🎍"
japaneseDolls = Emoji "🎎"
carpStreamer = Emoji "🎏"
windChime = Emoji "🎐"
moonViewingCeremony = Emoji "🎑"
redEnvelope = Emoji "🧧"
ribbon = Emoji "🎀"
wrappedGift = Emoji "🎁"
reminderRibbon = Emoji "🎗️"
admissionTickets = Emoji "🎟️"
ticket = Emoji "🎫"
-- subgroup: award-medal
militaryMedal = Emoji "🎖️"
trophy = Emoji "🏆"
sportsMedal = Emoji "🏅"
firstPlaceMedal = Emoji "🥇"
secondPlaceMedal = Emoji "🥈"
thirdPlaceMedal = Emoji "🥉"
-- subgroup: sport
soccerBall = Emoji "⚽"
baseball = Emoji "⚾"
softball = Emoji "🥎"
basketball = Emoji "🏀"
volleyball = Emoji "🏐"
americanFootball = Emoji "🏈"
rugbyFootball = Emoji "🏉"
tennis = Emoji "🎾"
flyingDisc = Emoji "🥏"
bowling = Emoji "🎳"
cricketGame = Emoji "🏏"
fieldHockey = Emoji "🏑"
iceHockey = Emoji "🏒"
lacrosse = Emoji "🥍"
pingPong = Emoji "🏓"
badminton = Emoji "🏸"
boxingGlove = Emoji "🥊"
martialArtsUniform = Emoji "🥋"
goalNet = Emoji "🥅"
flagInHole = Emoji "⛳"
iceSkate = Emoji "⛸️"
fishingPole = Emoji "🎣"
runningShirt = Emoji "🎽"
skis = Emoji "🎿"
sled = Emoji "🛷"
curlingStone = Emoji "🥌"
-- subgroup: game
directHit = Emoji "🎯"
pool8Ball = Emoji "🎱"
crystalBall = Emoji "🔮"
nazarAmulet = Emoji "🧿"
videoGame = Emoji "🎮"
joystick = Emoji "🕹️"
slotMachine = Emoji "🎰"
gameDie = Emoji "🎲"
jigsaw = Emoji "🧩"
teddyBear = Emoji "🧸"
spadeSuit = Emoji "♠️"
heartSuit = Emoji "♥️"
diamondSuit = Emoji "♦️"
clubSuit = Emoji "♣️"
chessPawn = Emoji "♟️"
joker = Emoji "🃏"
mahjongRedDragon = Emoji "🀄"
flowerPlayingCards = Emoji "🎴"
-- subgroup: arts & crafts
performingArts = Emoji "🎭"
framedPicture = Emoji "🖼️"
artistPalette = Emoji "🎨"
thread = Emoji "🧵"
yarn = Emoji "🧶"
-- group: Objects
-- subgroup: sound
mutedSpeaker = Emoji "🔇"
speakerLowVolume = Emoji "🔈"
speakerMediumVolume = Emoji "🔉"
speakerHighVolume = Emoji "🔊"
loudspeaker = Emoji "📢"
megaphone = Emoji "📣"
postalHorn = Emoji "📯"
bell = Emoji "🔔"
bellWithSlash = Emoji "🔕"
-- subgroup: music
musicalScore = Emoji "🎼"
musicalNote = Emoji "🎵"
musicalNotes = Emoji "🎶"
studioMicrophone = Emoji "🎙️"
levelSlider = Emoji "🎚️"
controlKnobs = Emoji "🎛️"
microphone = Emoji "🎤"
headphone = Emoji "🎧"
radio = Emoji "📻"
-- subgroup: musical-instrument
saxophone = Emoji "🎷"
guitar = Emoji "🎸"
musicalKeyboard = Emoji "🎹"
trumpet = Emoji "🎺"
violin = Emoji "🎻"
drum = Emoji "🥁"
-- subgroup: phone
mobilePhone = Emoji "📱"
mobilePhoneWithArrow = Emoji "📲"
telephone = Emoji "☎️"
telephoneReceiver = Emoji "📞"
pager = Emoji "📟"
faxMachine = Emoji "📠"
-- subgroup: computer
battery = Emoji "🔋"
electricPlug = Emoji "🔌"
laptopComputer = Emoji "💻"
desktopComputer = Emoji "🖥️"
printer = Emoji "🖨️"
keyboard = Emoji "⌨️"
computerMouse = Emoji "🖱️"
trackball = Emoji "🖲️"
computerDisk = Emoji "💽"
floppyDisk = Emoji "💾"
opticalDisk = Emoji "💿"
dvd = Emoji "📀"
abacus = Emoji "🧮"
-- subgroup: light & video
movieCamera = Emoji "🎥"
filmFrames = Emoji "🎞️"
filmProjector = Emoji "📽️"
clapperBoard = Emoji "🎬"
television = Emoji "📺"
camera = Emoji "📷"
cameraWithFlash = Emoji "📸"
videoCamera = Emoji "📹"
videocassette = Emoji "📼"
magnifyingGlassTiltedLeft = Emoji "🔍"
magnifyingGlassTiltedRight = Emoji "🔎"
candle = Emoji "🕯️"
lightBulb = Emoji "💡"
flashlight = Emoji "🔦"
redPaperLantern = Emoji "🏮"
-- subgroup: book-paper
notebookWithDecorativeCover = Emoji "📔"
closedBook = Emoji "📕"
openBook = Emoji "📖"
greenBook = Emoji "📗"
blueBook = Emoji "📘"
orangeBook = Emoji "📙"
books = Emoji "📚"
notebook = Emoji "📓"
ledger = Emoji "📒"
pageWithCurl = Emoji "📃"
scroll = Emoji "📜"
pageFacingUp = Emoji "📄"
newspaper = Emoji "📰"
rolledUpNewspaper = Emoji "🗞️"
bookmarkTabs = Emoji "📑"
bookmark = Emoji "🔖"
label = Emoji "🏷️"
-- subgroup: money
moneyBag = Emoji "💰"
yenBanknote = Emoji "💴"
dollarBanknote = Emoji "💵"
euroBanknote = Emoji "💶"
poundBanknote = Emoji "💷"
moneyWithWings = Emoji "💸"
creditCard = Emoji "💳"
receipt = Emoji "🧾"
chartIncreasingWithYen = Emoji "💹"
currencyExchange = Emoji "💱"
heavyDollarSign = Emoji "💲"
-- subgroup: mail
envelope = Emoji "✉️"
eMail = Emoji "📧"
incomingEnvelope = Emoji "📨"
envelopeWithArrow = Emoji "📩"
outboxTray = Emoji "📤"
inboxTray = Emoji "📥"
package = Emoji "📦"
closedMailboxWithRaisedFlag = Emoji "📫"
closedMailboxWithLoweredFlag = Emoji "📪"
openMailboxWithRaisedFlag = Emoji "📬"
openMailboxWithLoweredFlag = Emoji "📭"
postbox = Emoji "📮"
ballotBoxWithBallot = Emoji "🗳️"
-- subgroup: writing
pencil = Emoji "✏️"
blackNib = Emoji "✒️"
fountainPen = Emoji "🖋️"
pen = Emoji "🖊️"
paintbrush = Emoji "🖌️"
crayon = Emoji "🖍️"
memo = Emoji "📝"
-- subgroup: office
briefcase = Emoji "💼"
fileFolder = Emoji "📁"
openFileFolder = Emoji "📂"
cardIndexDividers = Emoji "🗂️"
calendar = Emoji "📅"
tearOffCalendar = Emoji "📆"
spiralNotepad = Emoji "🗒️"
spiralCalendar = Emoji "🗓️"
cardIndex = Emoji "📇"
chartIncreasing = Emoji "📈"
chartDecreasing = Emoji "📉"
barChart = Emoji "📊"
clipboard = Emoji "📋"
pushpin = Emoji "📌"
roundPushpin = Emoji "📍"
paperclip = Emoji "📎"
linkedPaperclips = Emoji "🖇️"
straightRuler = Emoji "📏"
triangularRuler = Emoji "📐"
scissors = Emoji "✂️"
cardFileBox = Emoji "🗃️"
fileCabinet = Emoji "🗄️"
wastebasket = Emoji "🗑️"
-- subgroup: lock
locked = Emoji "🔒"
unlocked = Emoji "🔓"
lockedWithPen = Emoji "🔏"
lockedWithKey = Emoji "🔐"
key = Emoji "🔑"
oldKey = Emoji "🗝️"
-- subgroup: tool
hammer = Emoji "🔨"
pick = Emoji "⛏️"
hammerAndPick = Emoji "⚒️"
hammerAndWrench = Emoji "🛠️"
dagger = Emoji "🗡️"
crossedSwords = Emoji "⚔️"
pistol = Emoji "🔫"
bowAndArrow = Emoji "🏹"
shield = Emoji "🛡️"
wrench = Emoji "🔧"
nutAndBolt = Emoji "🔩"
gear = Emoji "⚙️"
clamp = Emoji "🗜️"
balanceScale = Emoji "⚖️"
link = Emoji "🔗"
chains = Emoji "⛓️"
toolbox = Emoji "🧰"
magnet = Emoji "🧲"
-- subgroup: science
alembic = Emoji "⚗️"
testTube = Emoji "🧪"
petriDish = Emoji "🧫"
dna = Emoji "🧬"
microscope = Emoji "🔬"
telescope = Emoji "🔭"
satelliteAntenna = Emoji "📡"
-- subgroup: medical
syringe = Emoji "💉"
pill = Emoji "💊"
-- subgroup: household
door = Emoji "🚪"
bed = Emoji "🛏️"
couchAndLamp = Emoji "🛋️"
toilet = Emoji "🚽"
shower = Emoji "🚿"
bathtub = Emoji "🛁"
lotionBottle = Emoji "🧴"
safetyPin = Emoji "🧷"
broom = Emoji "🧹"
basket = Emoji "🧺"
rollOfPaper = Emoji "🧻"
soap = Emoji "🧼"
sponge = Emoji "🧽"
fireExtinguisher = Emoji "🧯"
shoppingCart = Emoji "🛒"
-- subgroup: other-object
cigarette = Emoji "🚬"
coffin = Emoji "⚰️"
funeralUrn = Emoji "⚱️"
moai = Emoji "🗿"
-- group: Symbols
-- subgroup: transport-sign
aTMSign = Emoji "🏧"
litterInBinSign = Emoji "🚮"
potableWater = Emoji "🚰"
wheelchairSymbol = Emoji "♿"
mensRoom = Emoji "🚹"
womensRoom = Emoji "🚺"
restroom = Emoji "🚻"
babySymbol = Emoji "🚼"
waterCloset = Emoji "🚾"
passportControl = Emoji "🛂"
customs = Emoji "🛃"
baggageClaim = Emoji "🛄"
leftLuggage = Emoji "🛅"
-- subgroup: warning
warning = Emoji "⚠️"
childrenCrossing = Emoji "🚸"
noEntry = Emoji "⛔"
prohibited = Emoji "🚫"
noBicycles = Emoji "🚳"
noSmoking = Emoji "🚭"
noLittering = Emoji "🚯"
nonPotableWater = Emoji "🚱"
noPedestrians = Emoji "🚷"
noMobilePhones = Emoji "📵"
noOneUnderEighteen = Emoji "🔞"
radioactive = Emoji "☢️"
biohazard = Emoji "☣️"
-- subgroup: arrow
upArrow = Emoji "⬆️"
upRightArrow = Emoji "↗️"
rightArrow = Emoji "➡️"
downRightArrow = Emoji "↘️"
downArrow = Emoji "⬇️"
downLeftArrow = Emoji "↙️"
leftArrow = Emoji "⬅️"
upLeftArrow = Emoji "↖️"
upDownArrow = Emoji "↕️"
leftRightArrow = Emoji "↔️"
rightArrowCurvingLeft = Emoji "↩️"
leftArrowCurvingRight = Emoji "↪️"
rightArrowCurvingUp = Emoji "⤴️"
rightArrowCurvingDown = Emoji "⤵️"
clockwiseVerticalArrows = Emoji "🔃"
counterclockwiseArrowsButton = Emoji "🔄"
bACKArrow = Emoji "🔙"
eNDArrow = Emoji "🔚"
oNArrow = Emoji "🔛"
sOONArrow = Emoji "🔜"
tOPArrow = Emoji "🔝"
-- subgroup: religion
placeOfWorship = Emoji "🛐"
atomSymbol = Emoji "⚛️"
om = Emoji "🕉️"
starOfDavid = Emoji "✡️"
wheelOfDharma = Emoji "☸️"
yinYang = Emoji "☯️"
latinCross = Emoji "✝️"
orthodoxCross = Emoji "☦️"
starAndCrescent = Emoji "☪️"
peaceSymbol = Emoji "☮️"
menorah = Emoji "🕎"
dottedSixPointedStar = Emoji "🔯"
-- subgroup: zodiac
aries = Emoji "♈"
taurus = Emoji "♉"
gemini = Emoji "♊"
cancer = Emoji "♋"
leo = Emoji "♌"
virgo = Emoji "♍"
libra = Emoji "♎"
scorpio = Emoji "♏"
sagittarius = Emoji "♐"
capricorn = Emoji "♑"
aquarius = Emoji "♒"
pisces = Emoji "♓"
ophiuchus = Emoji "⛎"
-- subgroup: av-symbol
shuffleTracksButton = Emoji "🔀"
repeatButton = Emoji "🔁"
repeatSingleButton = Emoji "🔂"
playButton = Emoji "▶️"
fastForwardButton = Emoji "⏩"
nextTrackButton = Emoji "⏭️"
playOrPauseButton = Emoji "⏯️"
reverseButton = Emoji "◀️"
fastReverseButton = Emoji "⏪"
lastTrackButton = Emoji "⏮️"
upwardsButton = Emoji "🔼"
fastUpButton = Emoji "⏫"
downwardsButton = Emoji "🔽"
fastDownButton = Emoji "⏬"
pauseButton = Emoji "⏸️"
stopButton = Emoji "⏹️"
recordButton = Emoji "⏺️"
ejectButton = Emoji "⏏️"
cinema = Emoji "🎦"
dimButton = Emoji "🔅"
brightButton = Emoji "🔆"
antennaBars = Emoji "📶"
vibrationMode = Emoji "📳"
mobilePhoneOff = Emoji "📴"
-- subgroup: other-symbol
femaleSign = Emoji "♀️"
maleSign = Emoji "♂️"
medicalSymbol = Emoji "⚕️"
infinity = Emoji "♾️"
recyclingSymbol = Emoji "♻️"
fleurDeLis = Emoji "⚜️"
tridentEmblem = Emoji "🔱"
nameBadge = Emoji "📛"
japaneseSymbolForBeginner = Emoji "🔰"
heavyLargeCircle = Emoji "⭕"
whiteHeavyCheckMark = Emoji "✅"
ballotBoxWithCheck = Emoji "☑️"
heavyCheckMark = Emoji "✔️"
heavyMultiplicationX = Emoji "✖️"
crossMark = Emoji "❌"
crossMarkButton = Emoji "❎"
heavyPlusSign = Emoji "➕"
heavyMinusSign = Emoji "➖"
heavyDivisionSign = Emoji "➗"
curlyLoop = Emoji "➰"
doubleCurlyLoop = Emoji "➿"
partAlternationMark = Emoji "〽️"
eightSpokedAsterisk = Emoji "✳️"
eightPointedStar = Emoji "✴️"
sparkle = Emoji "❇️"
doubleExclamationMark = Emoji "‼️"
exclamationQuestionMark = Emoji "⁉️"
questionMark = Emoji "❓"
whiteQuestionMark = Emoji "❔"
whiteExclamationMark = Emoji "❕"
exclamationMark = Emoji "❗"
wavyDash = Emoji "〰️"
copyright = Emoji "©️"
registered = Emoji "®️"
tradeMark = Emoji "™️"
-- subgroup: keycap
keycapSharp = Emoji "#️⃣"
keycapAsterisk = Emoji "*️⃣"
keycap0 = Emoji "0️⃣"
keycap1 = Emoji "1️⃣"
keycap2 = Emoji "2️⃣"
keycap3 = Emoji "3️⃣"
keycap4 = Emoji "4️⃣"
keycap5 = Emoji "5️⃣"
keycap6 = Emoji "6️⃣"
keycap7 = Emoji "7️⃣"
keycap8 = Emoji "8️⃣"
keycap9 = Emoji "9️⃣"
keycap10 = Emoji "🔟"
-- subgroup: alphanum
hundredPoints = Emoji "💯"
inputLatinUppercase = Emoji "🔠"
inputLatinLowercase = Emoji "🔡"
inputNumbers = Emoji "🔢"
inputSymbols = Emoji "🔣"
inputLatinLetters = Emoji "🔤"
aButtonBloodType = Emoji "🅰️"
aBButtonBloodType = Emoji "🆎"
bButtonBloodType = Emoji "🅱️"
cLButton = Emoji "🆑"
cOOLButton = Emoji "🆒"
fREEButton = Emoji "🆓"
information = Emoji "ℹ️"
iDButton = Emoji "🆔"
circledM = Emoji "Ⓜ️"
nEWButton = Emoji "🆕"
nGButton = Emoji "🆖"
oButtonBloodType = Emoji "🅾️"
oKButton = Emoji "🆗"
pButton = Emoji "🅿️"
sOSButton = Emoji "🆘"
uPButton = Emoji "🆙"
vSButton = Emoji "🆚"
japaneseHereButton = Emoji "🈁"
japaneseServiceChargeButton = Emoji "🈂️"
japaneseMonthlyAmountButton = Emoji "🈷️"
japaneseNotFreeOfChargeButton = Emoji "🈶"
japaneseReservedButton = Emoji "🈯"
japaneseBargainButton = Emoji "🉐"
japaneseDiscountButton = Emoji "🈹"
japaneseFreeOfChargeButton = Emoji "🈚"
japaneseProhibitedButton = Emoji "🈲"
japaneseAcceptableButton = Emoji "🉑"
japaneseApplicationButton = Emoji "🈸"
japanesePassingGradeButton = Emoji "🈴"
japaneseVacancyButton = Emoji "🈳"
japaneseCongratulationsButton = Emoji "㊗️"
japaneseSecretButton = Emoji "㊙️"
japaneseOpenForBusinessButton = Emoji "🈺"
japaneseNoVacancyButton = Emoji "🈵"
-- subgroup: geometric
blackSmallSquare = Emoji "▪️"
whiteSmallSquare = Emoji "▫️"
whiteMediumSquare = Emoji "◻️"
blackMediumSquare = Emoji "◼️"
whiteMediumSmallSquare = Emoji "◽"
blackMediumSmallSquare = Emoji "◾"
blackLargeSquare = Emoji "⬛"
whiteLargeSquare = Emoji "⬜"
largeOrangeDiamond = Emoji "🔶"
largeBlueDiamond = Emoji "🔷"
smallOrangeDiamond = Emoji "🔸"
smallBlueDiamond = Emoji "🔹"
redTrianglePointedUp = Emoji "🔺"
redTrianglePointedDown = Emoji "🔻"
diamondWithADot = Emoji "💠"
radioButton = Emoji "🔘"
blackSquareButton = Emoji "🔲"
whiteSquareButton = Emoji "🔳"
whiteCircle = Emoji "⚪"
blackCircle = Emoji "⚫"
redCircle = Emoji "🔴"
blueCircle = Emoji "🔵"
-- group: Flags
-- subgroup: flag
chequeredFlag = Emoji "🏁"
triangularFlag = Emoji "🚩"
crossedFlags = Emoji "🎌"
blackFlag = Emoji "🏴"
whiteFlag = Emoji "🏳️"
rainbowFlag = Emoji "🏳️‍🌈"
pirateFlag = Emoji "🏴‍☠️"
