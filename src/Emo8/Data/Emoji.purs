module Emo8.Data.Emoji
  ( Emoji
  , grinningFace
  , grinningFaceWithBigEyes
  , grinningFaceWithSmilingEyes
  , beamingFaceWithSmilingEyes
  , grinningSquintingFace
  , grinningFaceWithSweat
  , rollingOnTheFloorLaughing
  , faceWithTearsOfJoy
  , slightlySmilingFace
  , upsideDownFace
  , winkingFace
  , smilingFaceWithSmilingEyes
  , smilingFaceWithHalo
  , smilingFaceWithHearts
  , smilingFaceWithHeartEyes
  , starStruck
  , faceBlowingAKiss
  , kissingFace
  , smilingFace
  , kissingFaceWithClosedEyes
  , kissingFaceWithSmilingEyes
  , smilingFaceWithTear
  , faceSavoringFood
  , faceWithTongue
  , winkingFaceWithTongue
  , zanyFace
  , squintingFaceWithTongue
  , moneyMouthFace
  , huggingFace
  , faceWithHandOverMouth
  , shushingFace
  , thinkingFace
  , zipperMouthFace
  , faceWithRaisedEyebrow
  , neutralFace
  , expressionlessFace
  , faceWithoutMouth
  , smirkingFace
  , unamusedFace
  , faceWithRollingEyes
  , grimacingFace
  , lyingFace
  , relievedFace
  , pensiveFace
  , sleepyFace
  , droolingFace
  , sleepingFace
  , faceWithMedicalMask
  , faceWithThermometer
  , faceWithHeadBandage
  , nauseatedFace
  , faceVomiting
  , sneezingFace
  , hotFace
  , coldFace
  , woozyFace
  , dizzyFace
  , explodingHead
  , cowboyHatFace
  , partyingFace
  , disguisedFace
  , smilingFaceWithSunglasses
  , nerdFace
  , faceWithMonocle
  , confusedFace
  , worriedFace
  , slightlyFrowningFace
  , frowningFace
  , faceWithOpenMouth
  , hushedFace
  , astonishedFace
  , flushedFace
  , pleadingFace
  , frowningFaceWithOpenMouth
  , anguishedFace
  , fearfulFace
  , anxiousFaceWithSweat
  , sadButRelievedFace
  , cryingFace
  , loudlyCryingFace
  , faceScreamingInFear
  , confoundedFace
  , perseveringFace
  , disappointedFace
  , downcastFaceWithSweat
  , wearyFace
  , tiredFace
  , yawningFace
  , faceWithSteamFromNose
  , poutingFace
  , angryFace
  , faceWithSymbolsOnMouth
  , smilingFaceWithHorns
  , angryFaceWithHorns
  , skull
  , skullAndCrossbones
  , pileOfPoo
  , clownFace
  , ogre
  , goblin
  , ghost
  , alien
  , alienMonster
  , robot
  , grinningCat
  , grinningCatWithSmilingEyes
  , catWithTearsOfJoy
  , smilingCatWithHeartEyes
  , catWithWrySmile
  , kissingCat
  , wearyCat
  , cryingCat
  , poutingCat
  , seeNoEvilMonkey
  , hearNoEvilMonkey
  , speakNoEvilMonkey
  , kissMark
  , loveLetter
  , heartWithArrow
  , heartWithRibbon
  , sparklingHeart
  , growingHeart
  , beatingHeart
  , revolvingHearts
  , twoHearts
  , heartDecoration
  , heartExclamation
  , brokenHeart
  , redHeart
  , orangeHeart
  , yellowHeart
  , greenHeart
  , blueHeart
  , purpleHeart
  , brownHeart
  , blackHeart
  , whiteHeart
  , hundredPoints
  , angerSymbol
  , collision
  , dizzy
  , sweatDroplets
  , dashingAway
  , hole
  , bomb
  , speechBalloon
  , leftSpeechBubble
  , rightAngerBubble
  , thoughtBalloon
  , zzz
  , wavingHand
  , raisedBackOfHand
  , handWithFingersSplayed
  , raisedHand
  , vulcanSalute
  , okHand
  , pinchedFingers
  , pinchingHand
  , victoryHand
  , crossedFingers
  , loveYouGesture
  , signOfTheHorns
  , callMeHand
  , backhandIndexPointingLeft
  , backhandIndexPointingRight
  , backhandIndexPointingUp
  , middleFinger
  , backhandIndexPointingDown
  , indexPointingUp
  , thumbsUp
  , thumbsDown
  , raisedFist
  , oncomingFist
  , leftFacingFist
  , rightFacingFist
  , clappingHands
  , raisingHands
  , openHands
  , palmsUpTogether
  , handshake
  , foldedHands
  , writingHand
  , nailPolish
  , selfie
  , flexedBiceps
  , mechanicalArm
  , mechanicalLeg
  , leg
  , foot
  , ear
  , earWithHearingAid
  , nose
  , brain
  , anatomicalHeart
  , lungs
  , tooth
  , bone
  , eyes
  , eye
  , tongue
  , mouth
  , baby
  , child
  , boy
  , girl
  , person
  , personBlondHair
  , man
  , manBeard
  , woman
  , olderPerson
  , oldMan
  , oldWoman
  , personFrowning
  , personPouting
  , personGesturingNo
  , personGesturingOk
  , personTippingHand
  , personRaisingHand
  , deafPerson
  , personBowing
  , personFacepalming
  , personShrugging
  , policeOfficer
  , detective
  , guard
  , ninja
  , constructionWorker
  , prince
  , princess
  , personWearingTurban
  , personWithSkullcap
  , womanWithHeadscarf
  , personInTuxedo
  , personWithVeil
  , pregnantWoman
  , breastFeeding
  , babyAngel
  , santaClaus
  , mrsClaus
  , superhero
  , supervillain
  , mage
  , fairy
  , vampire
  , merperson
  , elf
  , genie
  , zombie
  , personGettingMassage
  , personGettingHaircut
  , personWalking
  , personStanding
  , personKneeling
  , personRunning
  , womanDancing
  , manDancing
  , personInSuitLevitating
  , peopleWithBunnyEars
  , personInSteamyRoom
  , personClimbing
  , personFencing
  , horseRacing
  , skier
  , snowboarder
  , personGolfing
  , personSurfing
  , personRowingBoat
  , personSwimming
  , personBouncingBall
  , personLiftingWeights
  , personBiking
  , personMountainBiking
  , personCartwheeling
  , peopleWrestling
  , personPlayingWaterPolo
  , personPlayingHandball
  , personJuggling
  , personInLotusPosition
  , personTakingBath
  , personInBed
  , womenHoldingHands
  , womanAndManHoldingHands
  , menHoldingHands
  , kiss
  , coupleWithHeart
  , family
  , speakingHead
  , bustInSilhouette
  , bustsInSilhouette
  , peopleHugging
  , footprints
  , lightSkinTone
  , mediumLightSkinTone
  , mediumSkinTone
  , mediumDarkSkinTone
  , darkSkinTone
  , redHair
  , curlyHair
  , whiteHair
  , bald
  , monkeyFace
  , monkey
  , gorilla
  , orangutan
  , dogFace
  , dog
  , guideDog
  , poodle
  , wolf
  , fox
  , raccoon
  , catFace
  , cat
  , lion
  , tigerFace
  , tiger
  , leopard
  , horseFace
  , horse
  , unicorn
  , zebra
  , deer
  , bison
  , cowFace
  , ox
  , waterBuffalo
  , cow
  , pigFace
  , pig
  , boar
  , pigNose
  , ram
  , ewe
  , goat
  , camel
  , twoHumpCamel
  , llama
  , giraffe
  , elephant
  , mammoth
  , rhinoceros
  , hippopotamus
  , mouseFace
  , mouse
  , rat
  , hamster
  , rabbitFace
  , rabbit
  , chipmunk
  , beaver
  , hedgehog
  , bat
  , bear
  , koala
  , panda
  , sloth
  , otter
  , skunk
  , kangaroo
  , badger
  , pawPrints
  , turkey
  , chicken
  , rooster
  , hatchingChick
  , babyChick
  , frontFacingBabyChick
  , bird
  , penguin
  , dove
  , eagle
  , duck
  , swan
  , owl
  , dodo
  , feather
  , flamingo
  , peacock
  , parrot
  , frog
  , crocodile
  , turtle
  , lizard
  , snake
  , dragonFace
  , dragon
  , sauropod
  , tRex
  , spoutingWhale
  , whale
  , dolphin
  , seal
  , fish
  , tropicalFish
  , blowfish
  , shark
  , octopus
  , spiralShell
  , snail
  , butterfly
  , bug
  , ant
  , honeybee
  , beetle
  , ladyBeetle
  , cricket
  , cockroach
  , spider
  , spiderWeb
  , scorpion
  , mosquito
  , fly
  , worm
  , microbe
  , bouquet
  , cherryBlossom
  , whiteFlower
  , rosette
  , rose
  , wiltedFlower
  , hibiscus
  , sunflower
  , blossom
  , tulip
  , seedling
  , pottedPlant
  , evergreenTree
  , deciduousTree
  , palmTree
  , cactus
  , sheafOfRice
  , herb
  , shamrock
  , fourLeafClover
  , mapleLeaf
  , fallenLeaf
  , leafFlutteringInWind
  , grapes
  , melon
  , watermelon
  , tangerine
  , lemon
  , banana
  , pineapple
  , mango
  , redApple
  , greenApple
  , pear
  , peach
  , cherries
  , strawberry
  , blueberries
  , kiwiFruit
  , tomato
  , olive
  , coconut
  , avocado
  , eggplant
  , potato
  , carrot
  , earOfCorn
  , hotPepper
  , bellPepper
  , cucumber
  , leafyGreen
  , broccoli
  , garlic
  , onion
  , mushroom
  , peanuts
  , chestnut
  , bread
  , croissant
  , baguetteBread
  , flatbread
  , pretzel
  , bagel
  , pancakes
  , waffle
  , cheeseWedge
  , meatOnBone
  , poultryLeg
  , cutOfMeat
  , bacon
  , hamburger
  , frenchFries
  , pizza
  , hotDog
  , sandwich
  , taco
  , burrito
  , tamale
  , stuffedFlatbread
  , falafel
  , egg
  , cooking
  , shallowPanOfFood
  , potOfFood
  , fondue
  , bowlWithSpoon
  , greenSalad
  , popcorn
  , butter
  , salt
  , cannedFood
  , bentoBox
  , riceCracker
  , riceBall
  , cookedRice
  , curryRice
  , steamingBowl
  , spaghetti
  , roastedSweetPotato
  , oden
  , sushi
  , friedShrimp
  , fishCakeWithSwirl
  , moonCake
  , dango
  , dumpling
  , fortuneCookie
  , takeoutBox
  , crab
  , lobster
  , shrimp
  , squid
  , oyster
  , softIceCream
  , shavedIce
  , iceCream
  , doughnut
  , cookie
  , birthdayCake
  , shortcake
  , cupcake
  , pie
  , chocolateBar
  , candy
  , lollipop
  , custard
  , honeyPot
  , babyBottle
  , glassOfMilk
  , hotBeverage
  , teapot
  , teacupWithoutHandle
  , sake
  , bottleWithPoppingCork
  , wineGlass
  , cocktailGlass
  , tropicalDrink
  , beerMug
  , clinkingBeerMugs
  , clinkingGlasses
  , tumblerGlass
  , cupWithStraw
  , bubbleTea
  , beverageBox
  , mate
  , ice
  , chopsticks
  , forkAndKnifeWithPlate
  , forkAndKnife
  , spoon
  , kitchenKnife
  , amphora
  , globeShowingEuropeAfrica
  , globeShowingAmericas
  , globeShowingAsiaAustralia
  , globeWithMeridians
  , worldMap
  , mapOfJapan
  , compass
  , snowCappedMountain
  , mountain
  , volcano
  , mountFuji
  , camping
  , beachWithUmbrella
  , desert
  , desertIsland
  , nationalPark
  , stadium
  , classicalBuilding
  , buildingConstruction
  , brick
  , rock
  , wood
  , hut
  , houses
  , derelictHouse
  , house
  , houseWithGarden
  , officeBuilding
  , japanesePostOffice
  , postOffice
  , hospital
  , bank
  , hotel
  , loveHotel
  , convenienceStore
  , school
  , departmentStore
  , factory
  , japaneseCastle
  , castle
  , wedding
  , tokyoTower
  , statueOfLiberty
  , church
  , mosque
  , hinduTemple
  , synagogue
  , shintoShrine
  , kaaba
  , fountain
  , tent
  , foggy
  , nightWithStars
  , cityscape
  , sunriseOverMountains
  , sunrise
  , cityscapeAtDusk
  , sunset
  , bridgeAtNight
  , hotSprings
  , carouselHorse
  , ferrisWheel
  , rollerCoaster
  , barberPole
  , circusTent
  , locomotive
  , railwayCar
  , highSpeedTrain
  , bulletTrain
  , train
  , metro
  , lightRail
  , station
  , tram
  , monorail
  , mountainRailway
  , tramCar
  , bus
  , oncomingBus
  , trolleybus
  , minibus
  , ambulance
  , fireEngine
  , policeCar
  , oncomingPoliceCar
  , taxi
  , oncomingTaxi
  , automobile
  , oncomingAutomobile
  , sportUtilityVehicle
  , pickupTruck
  , deliveryTruck
  , articulatedLorry
  , tractor
  , racingCar
  , motorcycle
  , motorScooter
  , manualWheelchair
  , motorizedWheelchair
  , autoRickshaw
  , bicycle
  , kickScooter
  , skateboard
  , rollerSkate
  , busStop
  , motorway
  , railwayTrack
  , oilDrum
  , fuelPump
  , policeCarLight
  , horizontalTrafficLight
  , verticalTrafficLight
  , stopSign
  , construction
  , anchor
  , sailboat
  , canoe
  , speedboat
  , passengerShip
  , ferry
  , motorBoat
  , ship
  , airplane
  , smallAirplane
  , airplaneDeparture
  , airplaneArrival
  , parachute
  , seat
  , helicopter
  , suspensionRailway
  , mountainCableway
  , aerialTramway
  , satellite
  , rocket
  , flyingSaucer
  , bellhopBell
  , luggage
  , hourglassDone
  , hourglassNotDone
  , watch
  , alarmClock
  , stopwatch
  , timerClock
  , mantelpieceClock
  , twelveOClock
  , twelveThirty
  , oneOClock
  , oneThirty
  , twoOClock
  , twoThirty
  , threeOClock
  , threeThirty
  , fourOClock
  , fourThirty
  , fiveOClock
  , fiveThirty
  , sixOClock
  , sixThirty
  , sevenOClock
  , sevenThirty
  , eightOClock
  , eightThirty
  , nineOClock
  , nineThirty
  , tenOClock
  , tenThirty
  , elevenOClock
  , elevenThirty
  , newMoon
  , waxingCrescentMoon
  , firstQuarterMoon
  , waxingGibbousMoon
  , fullMoon
  , waningGibbousMoon
  , lastQuarterMoon
  , waningCrescentMoon
  , crescentMoon
  , newMoonFace
  , firstQuarterMoonFace
  , lastQuarterMoonFace
  , thermometer
  , sun
  , fullMoonFace
  , sunWithFace
  , ringedPlanet
  , star
  , glowingStar
  , shootingStar
  , milkyWay
  , cloud
  , sunBehindCloud
  , cloudWithLightningAndRain
  , sunBehindSmallCloud
  , sunBehindLargeCloud
  , sunBehindRainCloud
  , cloudWithRain
  , cloudWithSnow
  , cloudWithLightning
  , tornado
  , fog
  , windFace
  , cyclone
  , rainbow
  , closedUmbrella
  , umbrella
  , umbrellaWithRainDrops
  , umbrellaOnGround
  , highVoltage
  , snowflake
  , snowman
  , snowmanWithoutSnow
  , comet
  , fire
  , droplet
  , waterWave
  , jackOLantern
  , christmasTree
  , fireworks
  , sparkler
  , firecracker
  , sparkles
  , balloon
  , partyPopper
  , confettiBall
  , tanabataTree
  , pineDecoration
  , japaneseDolls
  , carpStreamer
  , windChime
  , moonViewingCeremony
  , redEnvelope
  , ribbon
  , wrappedGift
  , reminderRibbon
  , admissionTickets
  , ticket
  , militaryMedal
  , trophy
  , sportsMedal
  , firstPlaceMedal
  , secondPlaceMedal
  , thirdPlaceMedal
  , soccerBall
  , baseball
  , softball
  , basketball
  , volleyball
  , americanFootball
  , rugbyFootball
  , tennis
  , flyingDisc
  , bowling
  , cricketGame
  , fieldHockey
  , iceHockey
  , lacrosse
  , pingPong
  , badminton
  , boxingGlove
  , martialArtsUniform
  , goalNet
  , flagInHole
  , iceSkate
  , fishingPole
  , divingMask
  , runningShirt
  , skis
  , sled
  , curlingStone
  , directHit
  , yoYo
  , kite
  , pool8Ball
  , crystalBall
  , magicWand
  , nazarAmulet
  , videoGame
  , joystick
  , slotMachine
  , gameDie
  , puzzlePiece
  , teddyBear
  , piñata
  , nestingDolls
  , spadeSuit
  , heartSuit
  , diamondSuit
  , clubSuit
  , chessPawn
  , joker
  , mahjongRedDragon
  , flowerPlayingCards
  , performingArts
  , framedPicture
  , artistPalette
  , thread
  , sewingNeedle
  , yarn
  , knot
  , glasses
  , sunglasses
  , goggles
  , labCoat
  , safetyVest
  , necktie
  , tShirt
  , jeans
  , scarf
  , gloves
  , coat
  , socks
  , dress
  , kimono
  , sari
  , onePieceSwimsuit
  , briefs
  , shorts
  , bikini
  , womanSClothes
  , purse
  , handbag
  , clutchBag
  , shoppingBags
  , backpack
  , thongSandal
  , manSShoe
  , runningShoe
  , hikingBoot
  , flatShoe
  , highHeeledShoe
  , womanSSandal
  , balletShoes
  , womanSBoot
  , crown
  , womanSHat
  , topHat
  , graduationCap
  , billedCap
  , militaryHelmet
  , rescueWorkerSHelmet
  , prayerBeads
  , lipstick
  , ring
  , gemStone
  , mutedSpeaker
  , speakerLowVolume
  , speakerMediumVolume
  , speakerHighVolume
  , loudspeaker
  , megaphone
  , postalHorn
  , bell
  , bellWithSlash
  , musicalScore
  , musicalNote
  , musicalNotes
  , studioMicrophone
  , levelSlider
  , controlKnobs
  , microphone
  , headphone
  , radio
  , saxophone
  , accordion
  , guitar
  , musicalKeyboard
  , trumpet
  , violin
  , banjo
  , drum
  , longDrum
  , mobilePhone
  , mobilePhoneWithArrow
  , telephone
  , telephoneReceiver
  , pager
  , faxMachine
  , battery
  , electricPlug
  , laptop
  , desktopComputer
  , printer
  , keyboard
  , computerMouse
  , trackball
  , computerDisk
  , floppyDisk
  , opticalDisk
  , dvd
  , abacus
  , movieCamera
  , filmFrames
  , filmProjector
  , clapperBoard
  , television
  , camera
  , cameraWithFlash
  , videoCamera
  , videocassette
  , magnifyingGlassTiltedLeft
  , magnifyingGlassTiltedRight
  , candle
  , lightBulb
  , flashlight
  , redPaperLantern
  , diyaLamp
  , notebookWithDecorativeCover
  , closedBook
  , openBook
  , greenBook
  , blueBook
  , orangeBook
  , books
  , notebook
  , ledger
  , pageWithCurl
  , scroll
  , pageFacingUp
  , newspaper
  , rolledUpNewspaper
  , bookmarkTabs
  , bookmark
  , label
  , moneyBag
  , coin
  , yenBanknote
  , dollarBanknote
  , euroBanknote
  , poundBanknote
  , moneyWithWings
  , creditCard
  , receipt
  , chartIncreasingWithYen
  , envelope
  , eMail
  , incomingEnvelope
  , envelopeWithArrow
  , outboxTray
  , inboxTray
  , package
  , closedMailboxWithRaisedFlag
  , closedMailboxWithLoweredFlag
  , openMailboxWithRaisedFlag
  , openMailboxWithLoweredFlag
  , postbox
  , ballotBoxWithBallot
  , pencil
  , blackNib
  , fountainPen
  , pen
  , paintbrush
  , crayon
  , memo
  , briefcase
  , fileFolder
  , openFileFolder
  , cardIndexDividers
  , calendar
  , tearOffCalendar
  , spiralNotepad
  , spiralCalendar
  , cardIndex
  , chartIncreasing
  , chartDecreasing
  , barChart
  , clipboard
  , pushpin
  , roundPushpin
  , paperclip
  , linkedPaperclips
  , straightRuler
  , triangularRuler
  , scissors
  , cardFileBox
  , fileCabinet
  , wastebasket
  , locked
  , unlocked
  , lockedWithPen
  , lockedWithKey
  , key
  , oldKey
  , hammer
  , axe
  , pick
  , hammerAndPick
  , hammerAndWrench
  , dagger
  , crossedSwords
  , pistol
  , boomerang
  , bowAndArrow
  , shield
  , carpentrySaw
  , wrench
  , screwdriver
  , nutAndBolt
  , gear
  , clamp
  , balanceScale
  , whiteCane
  , link
  , chains
  , hook
  , toolbox
  , magnet
  , ladder
  , alembic
  , testTube
  , petriDish
  , dna
  , microscope
  , telescope
  , satelliteAntenna
  , syringe
  , dropOfBlood
  , pill
  , adhesiveBandage
  , stethoscope
  , door
  , elevator
  , mirror
  , window
  , bed
  , couchAndLamp
  , chair
  , toilet
  , plunger
  , shower
  , bathtub
  , mouseTrap
  , razor
  , lotionBottle
  , safetyPin
  , broom
  , basket
  , rollOfPaper
  , bucket
  , soap
  , toothbrush
  , sponge
  , fireExtinguisher
  , shoppingCart
  , cigarette
  , coffin
  , headstone
  , funeralUrn
  , moai
  , placard
  , atmSign
  , litterInBinSign
  , potableWater
  , wheelchairSymbol
  , menSRoom
  , womenSRoom
  , restroom
  , babySymbol
  , waterCloset
  , passportControl
  , customs
  , baggageClaim
  , leftLuggage
  , warning
  , childrenCrossing
  , noEntry
  , prohibited
  , noBicycles
  , noSmoking
  , noLittering
  , nonPotableWater
  , noPedestrians
  , noMobilePhones
  , noOneUnderEighteen
  , radioactive
  , biohazard
  , upArrow
  , upRightArrow
  , rightArrow
  , downRightArrow
  , downArrow
  , downLeftArrow
  , leftArrow
  , upLeftArrow
  , upDownArrow
  , leftRightArrow
  , rightArrowCurvingLeft
  , leftArrowCurvingRight
  , rightArrowCurvingUp
  , rightArrowCurvingDown
  , clockwiseVerticalArrows
  , counterclockwiseArrowsButton
  , backArrow
  , endArrow
  , onArrow
  , soonArrow
  , topArrow
  , placeOfWorship
  , atomSymbol
  , om
  , starOfDavid
  , wheelOfDharma
  , yinYang
  , latinCross
  , orthodoxCross
  , starAndCrescent
  , peaceSymbol
  , menorah
  , dottedSixPointedStar
  , aries
  , taurus
  , gemini
  , cancer
  , leo
  , virgo
  , libra
  , scorpio
  , sagittarius
  , capricorn
  , aquarius
  , pisces
  , ophiuchus
  , shuffleTracksButton
  , repeatButton
  , repeatSingleButton
  , playButton
  , fastForwardButton
  , nextTrackButton
  , playOrPauseButton
  , reverseButton
  , fastReverseButton
  , lastTrackButton
  , upwardsButton
  , fastUpButton
  , downwardsButton
  , fastDownButton
  , pauseButton
  , stopButton
  , recordButton
  , ejectButton
  , cinema
  , dimButton
  , brightButton
  , antennaBars
  , vibrationMode
  , mobilePhoneOff
  , femaleSign
  , maleSign
  , transgenderSymbol
  , multiply
  , plus
  , minus
  , divide
  , infinity
  , doubleExclamationMark
  , exclamationQuestionMark
  , questionMark
  , whiteQuestionMark
  , whiteExclamationMark
  , exclamationMark
  , wavyDash
  , currencyExchange
  , heavyDollarSign
  , medicalSymbol
  , recyclingSymbol
  , fleurDeLis
  , tridentEmblem
  , nameBadge
  , japaneseSymbolForBeginner
  , hollowRedCircle
  , checkMarkButton
  , checkBoxWithCheck
  , checkMark
  , crossMark
  , crossMarkButton
  , curlyLoop
  , doubleCurlyLoop
  , partAlternationMark
  , eightSpokedAsterisk
  , eightPointedStar
  , sparkle
  , copyright
  , registered
  , tradeMark
  , keycap10
  , inputLatinUppercase
  , inputLatinLowercase
  , inputNumbers
  , inputSymbols
  , inputLatinLetters
  , aButtonBloodType
  , abButtonBloodType
  , bButtonBloodType
  , clButton
  , coolButton
  , freeButton
  , information
  , idButton
  , circledM
  , newButton
  , ngButton
  , oButtonBloodType
  , okButton
  , pButton
  , sosButton
  , upButton
  , vsButton
  , japaneseHereButton
  , japaneseServiceChargeButton
  , japaneseMonthlyAmountButton
  , japaneseNotFreeOfChargeButton
  , japaneseReservedButton
  , japaneseBargainButton
  , japaneseDiscountButton
  , japaneseFreeOfChargeButton
  , japaneseProhibitedButton
  , japaneseAcceptableButton
  , japaneseApplicationButton
  , japanesePassingGradeButton
  , japaneseVacancyButton
  , japaneseCongratulationsButton
  , japaneseSecretButton
  , japaneseOpenForBusinessButton
  , japaneseNoVacancyButton
  , redCircle
  , orangeCircle
  , yellowCircle
  , greenCircle
  , blueCircle
  , purpleCircle
  , brownCircle
  , blackCircle
  , whiteCircle
  , redSquare
  , orangeSquare
  , yellowSquare
  , greenSquare
  , blueSquare
  , purpleSquare
  , brownSquare
  , blackLargeSquare
  , whiteLargeSquare
  , blackMediumSquare
  , whiteMediumSquare
  , blackMediumSmallSquare
  , whiteMediumSmallSquare
  , blackSmallSquare
  , whiteSmallSquare
  , largeOrangeDiamond
  , largeBlueDiamond
  , smallOrangeDiamond
  , smallBlueDiamond
  , redTrianglePointedUp
  , redTrianglePointedDown
  , diamondWithADot
  , radioButton
  , whiteSquareButton
  , blackSquareButton
  , chequeredFlag
  , triangularFlag
  , crossedFlags
  , blackFlag
  , whiteFlag
  ) where

import Prelude

-- | Emo8 emoji type which supports 1329 (Unicode v13.0) single code point emojis.
newtype Emoji
  = Emoji String

derive instance eqEmoji :: Eq Emoji

instance showEmoji :: Show Emoji where
  show (Emoji s) = s

-- | 😀
grinningFace :: Emoji
grinningFace = Emoji "😀"

-- | 😃
grinningFaceWithBigEyes :: Emoji
grinningFaceWithBigEyes = Emoji "😃"

-- | 😄
grinningFaceWithSmilingEyes :: Emoji
grinningFaceWithSmilingEyes = Emoji "😄"

-- | 😁
beamingFaceWithSmilingEyes :: Emoji
beamingFaceWithSmilingEyes = Emoji "😁"

-- | 😆
grinningSquintingFace :: Emoji
grinningSquintingFace = Emoji "😆"

-- | 😅
grinningFaceWithSweat :: Emoji
grinningFaceWithSweat = Emoji "😅"

-- | 🤣
rollingOnTheFloorLaughing :: Emoji
rollingOnTheFloorLaughing = Emoji "🤣"

-- | 😂
faceWithTearsOfJoy :: Emoji
faceWithTearsOfJoy = Emoji "😂"

-- | 🙂
slightlySmilingFace :: Emoji
slightlySmilingFace = Emoji "🙂"

-- | 🙃
upsideDownFace :: Emoji
upsideDownFace = Emoji "🙃"

-- | 😉
winkingFace :: Emoji
winkingFace = Emoji "😉"

-- | 😊
smilingFaceWithSmilingEyes :: Emoji
smilingFaceWithSmilingEyes = Emoji "😊"

-- | 😇
smilingFaceWithHalo :: Emoji
smilingFaceWithHalo = Emoji "😇"

-- | 🥰
smilingFaceWithHearts :: Emoji
smilingFaceWithHearts = Emoji "🥰"

-- | 😍
smilingFaceWithHeartEyes :: Emoji
smilingFaceWithHeartEyes = Emoji "😍"

-- | 🤩
starStruck :: Emoji
starStruck = Emoji "🤩"

-- | 😘
faceBlowingAKiss :: Emoji
faceBlowingAKiss = Emoji "😘"

-- | 😗
kissingFace :: Emoji
kissingFace = Emoji "😗"

-- | ☺
smilingFace :: Emoji
smilingFace = Emoji "☺"

-- | 😚
kissingFaceWithClosedEyes :: Emoji
kissingFaceWithClosedEyes = Emoji "😚"

-- | 😙
kissingFaceWithSmilingEyes :: Emoji
kissingFaceWithSmilingEyes = Emoji "😙"

-- | 🥲
smilingFaceWithTear :: Emoji
smilingFaceWithTear = Emoji "🥲"

-- | 😋
faceSavoringFood :: Emoji
faceSavoringFood = Emoji "😋"

-- | 😛
faceWithTongue :: Emoji
faceWithTongue = Emoji "😛"

-- | 😜
winkingFaceWithTongue :: Emoji
winkingFaceWithTongue = Emoji "😜"

-- | 🤪
zanyFace :: Emoji
zanyFace = Emoji "🤪"

-- | 😝
squintingFaceWithTongue :: Emoji
squintingFaceWithTongue = Emoji "😝"

-- | 🤑
moneyMouthFace :: Emoji
moneyMouthFace = Emoji "🤑"

-- | 🤗
huggingFace :: Emoji
huggingFace = Emoji "🤗"

-- | 🤭
faceWithHandOverMouth :: Emoji
faceWithHandOverMouth = Emoji "🤭"

-- | 🤫
shushingFace :: Emoji
shushingFace = Emoji "🤫"

-- | 🤔
thinkingFace :: Emoji
thinkingFace = Emoji "🤔"

-- | 🤐
zipperMouthFace :: Emoji
zipperMouthFace = Emoji "🤐"

-- | 🤨
faceWithRaisedEyebrow :: Emoji
faceWithRaisedEyebrow = Emoji "🤨"

-- | 😐
neutralFace :: Emoji
neutralFace = Emoji "😐"

-- | 😑
expressionlessFace :: Emoji
expressionlessFace = Emoji "😑"

-- | 😶
faceWithoutMouth :: Emoji
faceWithoutMouth = Emoji "😶"

-- | 😏
smirkingFace :: Emoji
smirkingFace = Emoji "😏"

-- | 😒
unamusedFace :: Emoji
unamusedFace = Emoji "😒"

-- | 🙄
faceWithRollingEyes :: Emoji
faceWithRollingEyes = Emoji "🙄"

-- | 😬
grimacingFace :: Emoji
grimacingFace = Emoji "😬"

-- | 🤥
lyingFace :: Emoji
lyingFace = Emoji "🤥"

-- | 😌
relievedFace :: Emoji
relievedFace = Emoji "😌"

-- | 😔
pensiveFace :: Emoji
pensiveFace = Emoji "😔"

-- | 😪
sleepyFace :: Emoji
sleepyFace = Emoji "😪"

-- | 🤤
droolingFace :: Emoji
droolingFace = Emoji "🤤"

-- | 😴
sleepingFace :: Emoji
sleepingFace = Emoji "😴"

-- | 😷
faceWithMedicalMask :: Emoji
faceWithMedicalMask = Emoji "😷"

-- | 🤒
faceWithThermometer :: Emoji
faceWithThermometer = Emoji "🤒"

-- | 🤕
faceWithHeadBandage :: Emoji
faceWithHeadBandage = Emoji "🤕"

-- | 🤢
nauseatedFace :: Emoji
nauseatedFace = Emoji "🤢"

-- | 🤮
faceVomiting :: Emoji
faceVomiting = Emoji "🤮"

-- | 🤧
sneezingFace :: Emoji
sneezingFace = Emoji "🤧"

-- | 🥵
hotFace :: Emoji
hotFace = Emoji "🥵"

-- | 🥶
coldFace :: Emoji
coldFace = Emoji "🥶"

-- | 🥴
woozyFace :: Emoji
woozyFace = Emoji "🥴"

-- | 😵
dizzyFace :: Emoji
dizzyFace = Emoji "😵"

-- | 🤯
explodingHead :: Emoji
explodingHead = Emoji "🤯"

-- | 🤠
cowboyHatFace :: Emoji
cowboyHatFace = Emoji "🤠"

-- | 🥳
partyingFace :: Emoji
partyingFace = Emoji "🥳"

-- | 🥸
disguisedFace :: Emoji
disguisedFace = Emoji "🥸"

-- | 😎
smilingFaceWithSunglasses :: Emoji
smilingFaceWithSunglasses = Emoji "😎"

-- | 🤓
nerdFace :: Emoji
nerdFace = Emoji "🤓"

-- | 🧐
faceWithMonocle :: Emoji
faceWithMonocle = Emoji "🧐"

-- | 😕
confusedFace :: Emoji
confusedFace = Emoji "😕"

-- | 😟
worriedFace :: Emoji
worriedFace = Emoji "😟"

-- | 🙁
slightlyFrowningFace :: Emoji
slightlyFrowningFace = Emoji "🙁"

-- | ☹
frowningFace :: Emoji
frowningFace = Emoji "☹"

-- | 😮
faceWithOpenMouth :: Emoji
faceWithOpenMouth = Emoji "😮"

-- | 😯
hushedFace :: Emoji
hushedFace = Emoji "😯"

-- | 😲
astonishedFace :: Emoji
astonishedFace = Emoji "😲"

-- | 😳
flushedFace :: Emoji
flushedFace = Emoji "😳"

-- | 🥺
pleadingFace :: Emoji
pleadingFace = Emoji "🥺"

-- | 😦
frowningFaceWithOpenMouth :: Emoji
frowningFaceWithOpenMouth = Emoji "😦"

-- | 😧
anguishedFace :: Emoji
anguishedFace = Emoji "😧"

-- | 😨
fearfulFace :: Emoji
fearfulFace = Emoji "😨"

-- | 😰
anxiousFaceWithSweat :: Emoji
anxiousFaceWithSweat = Emoji "😰"

-- | 😥
sadButRelievedFace :: Emoji
sadButRelievedFace = Emoji "😥"

-- | 😢
cryingFace :: Emoji
cryingFace = Emoji "😢"

-- | 😭
loudlyCryingFace :: Emoji
loudlyCryingFace = Emoji "😭"

-- | 😱
faceScreamingInFear :: Emoji
faceScreamingInFear = Emoji "😱"

-- | 😖
confoundedFace :: Emoji
confoundedFace = Emoji "😖"

-- | 😣
perseveringFace :: Emoji
perseveringFace = Emoji "😣"

-- | 😞
disappointedFace :: Emoji
disappointedFace = Emoji "😞"

-- | 😓
downcastFaceWithSweat :: Emoji
downcastFaceWithSweat = Emoji "😓"

-- | 😩
wearyFace :: Emoji
wearyFace = Emoji "😩"

-- | 😫
tiredFace :: Emoji
tiredFace = Emoji "😫"

-- | 🥱
yawningFace :: Emoji
yawningFace = Emoji "🥱"

-- | 😤
faceWithSteamFromNose :: Emoji
faceWithSteamFromNose = Emoji "😤"

-- | 😡
poutingFace :: Emoji
poutingFace = Emoji "😡"

-- | 😠
angryFace :: Emoji
angryFace = Emoji "😠"

-- | 🤬
faceWithSymbolsOnMouth :: Emoji
faceWithSymbolsOnMouth = Emoji "🤬"

-- | 😈
smilingFaceWithHorns :: Emoji
smilingFaceWithHorns = Emoji "😈"

-- | 👿
angryFaceWithHorns :: Emoji
angryFaceWithHorns = Emoji "👿"

-- | 💀
skull :: Emoji
skull = Emoji "💀"

-- | ☠
skullAndCrossbones :: Emoji
skullAndCrossbones = Emoji "☠"

-- | 💩
pileOfPoo :: Emoji
pileOfPoo = Emoji "💩"

-- | 🤡
clownFace :: Emoji
clownFace = Emoji "🤡"

-- | 👹
ogre :: Emoji
ogre = Emoji "👹"

-- | 👺
goblin :: Emoji
goblin = Emoji "👺"

-- | 👻
ghost :: Emoji
ghost = Emoji "👻"

-- | 👽
alien :: Emoji
alien = Emoji "👽"

-- | 👾
alienMonster :: Emoji
alienMonster = Emoji "👾"

-- | 🤖
robot :: Emoji
robot = Emoji "🤖"

-- | 😺
grinningCat :: Emoji
grinningCat = Emoji "😺"

-- | 😸
grinningCatWithSmilingEyes :: Emoji
grinningCatWithSmilingEyes = Emoji "😸"

-- | 😹
catWithTearsOfJoy :: Emoji
catWithTearsOfJoy = Emoji "😹"

-- | 😻
smilingCatWithHeartEyes :: Emoji
smilingCatWithHeartEyes = Emoji "😻"

-- | 😼
catWithWrySmile :: Emoji
catWithWrySmile = Emoji "😼"

-- | 😽
kissingCat :: Emoji
kissingCat = Emoji "😽"

-- | 🙀
wearyCat :: Emoji
wearyCat = Emoji "🙀"

-- | 😿
cryingCat :: Emoji
cryingCat = Emoji "😿"

-- | 😾
poutingCat :: Emoji
poutingCat = Emoji "😾"

-- | 🙈
seeNoEvilMonkey :: Emoji
seeNoEvilMonkey = Emoji "🙈"

-- | 🙉
hearNoEvilMonkey :: Emoji
hearNoEvilMonkey = Emoji "🙉"

-- | 🙊
speakNoEvilMonkey :: Emoji
speakNoEvilMonkey = Emoji "🙊"

-- | 💋
kissMark :: Emoji
kissMark = Emoji "💋"

-- | 💌
loveLetter :: Emoji
loveLetter = Emoji "💌"

-- | 💘
heartWithArrow :: Emoji
heartWithArrow = Emoji "💘"

-- | 💝
heartWithRibbon :: Emoji
heartWithRibbon = Emoji "💝"

-- | 💖
sparklingHeart :: Emoji
sparklingHeart = Emoji "💖"

-- | 💗
growingHeart :: Emoji
growingHeart = Emoji "💗"

-- | 💓
beatingHeart :: Emoji
beatingHeart = Emoji "💓"

-- | 💞
revolvingHearts :: Emoji
revolvingHearts = Emoji "💞"

-- | 💕
twoHearts :: Emoji
twoHearts = Emoji "💕"

-- | 💟
heartDecoration :: Emoji
heartDecoration = Emoji "💟"

-- | ❣
heartExclamation :: Emoji
heartExclamation = Emoji "❣"

-- | 💔
brokenHeart :: Emoji
brokenHeart = Emoji "💔"

-- | ❤
redHeart :: Emoji
redHeart = Emoji "❤"

-- | 🧡
orangeHeart :: Emoji
orangeHeart = Emoji "🧡"

-- | 💛
yellowHeart :: Emoji
yellowHeart = Emoji "💛"

-- | 💚
greenHeart :: Emoji
greenHeart = Emoji "💚"

-- | 💙
blueHeart :: Emoji
blueHeart = Emoji "💙"

-- | 💜
purpleHeart :: Emoji
purpleHeart = Emoji "💜"

-- | 🤎
brownHeart :: Emoji
brownHeart = Emoji "🤎"

-- | 🖤
blackHeart :: Emoji
blackHeart = Emoji "🖤"

-- | 🤍
whiteHeart :: Emoji
whiteHeart = Emoji "🤍"

-- | 💯
hundredPoints :: Emoji
hundredPoints = Emoji "💯"

-- | 💢
angerSymbol :: Emoji
angerSymbol = Emoji "💢"

-- | 💥
collision :: Emoji
collision = Emoji "💥"

-- | 💫
dizzy :: Emoji
dizzy = Emoji "💫"

-- | 💦
sweatDroplets :: Emoji
sweatDroplets = Emoji "💦"

-- | 💨
dashingAway :: Emoji
dashingAway = Emoji "💨"

-- | 🕳
hole :: Emoji
hole = Emoji "🕳"

-- | 💣
bomb :: Emoji
bomb = Emoji "💣"

-- | 💬
speechBalloon :: Emoji
speechBalloon = Emoji "💬"

-- | 🗨
leftSpeechBubble :: Emoji
leftSpeechBubble = Emoji "🗨"

-- | 🗯
rightAngerBubble :: Emoji
rightAngerBubble = Emoji "🗯"

-- | 💭
thoughtBalloon :: Emoji
thoughtBalloon = Emoji "💭"

-- | 💤
zzz :: Emoji
zzz = Emoji "💤"

-- | 👋
wavingHand :: Emoji
wavingHand = Emoji "👋"

-- | 🤚
raisedBackOfHand :: Emoji
raisedBackOfHand = Emoji "🤚"

-- | 🖐
handWithFingersSplayed :: Emoji
handWithFingersSplayed = Emoji "🖐"

-- | ✋
raisedHand :: Emoji
raisedHand = Emoji "✋"

-- | 🖖
vulcanSalute :: Emoji
vulcanSalute = Emoji "🖖"

-- | 👌
okHand :: Emoji
okHand = Emoji "👌"

-- | 🤌
pinchedFingers :: Emoji
pinchedFingers = Emoji "🤌"

-- | 🤏
pinchingHand :: Emoji
pinchingHand = Emoji "🤏"

-- | ✌
victoryHand :: Emoji
victoryHand = Emoji "✌"

-- | 🤞
crossedFingers :: Emoji
crossedFingers = Emoji "🤞"

-- | 🤟
loveYouGesture :: Emoji
loveYouGesture = Emoji "🤟"

-- | 🤘
signOfTheHorns :: Emoji
signOfTheHorns = Emoji "🤘"

-- | 🤙
callMeHand :: Emoji
callMeHand = Emoji "🤙"

-- | 👈
backhandIndexPointingLeft :: Emoji
backhandIndexPointingLeft = Emoji "👈"

-- | 👉
backhandIndexPointingRight :: Emoji
backhandIndexPointingRight = Emoji "👉"

-- | 👆
backhandIndexPointingUp :: Emoji
backhandIndexPointingUp = Emoji "👆"

-- | 🖕
middleFinger :: Emoji
middleFinger = Emoji "🖕"

-- | 👇
backhandIndexPointingDown :: Emoji
backhandIndexPointingDown = Emoji "👇"

-- | ☝
indexPointingUp :: Emoji
indexPointingUp = Emoji "☝"

-- | 👍
thumbsUp :: Emoji
thumbsUp = Emoji "👍"

-- | 👎
thumbsDown :: Emoji
thumbsDown = Emoji "👎"

-- | ✊
raisedFist :: Emoji
raisedFist = Emoji "✊"

-- | 👊
oncomingFist :: Emoji
oncomingFist = Emoji "👊"

-- | 🤛
leftFacingFist :: Emoji
leftFacingFist = Emoji "🤛"

-- | 🤜
rightFacingFist :: Emoji
rightFacingFist = Emoji "🤜"

-- | 👏
clappingHands :: Emoji
clappingHands = Emoji "👏"

-- | 🙌
raisingHands :: Emoji
raisingHands = Emoji "🙌"

-- | 👐
openHands :: Emoji
openHands = Emoji "👐"

-- | 🤲
palmsUpTogether :: Emoji
palmsUpTogether = Emoji "🤲"

-- | 🤝
handshake :: Emoji
handshake = Emoji "🤝"

-- | 🙏
foldedHands :: Emoji
foldedHands = Emoji "🙏"

-- | ✍
writingHand :: Emoji
writingHand = Emoji "✍"

-- | 💅
nailPolish :: Emoji
nailPolish = Emoji "💅"

-- | 🤳
selfie :: Emoji
selfie = Emoji "🤳"

-- | 💪
flexedBiceps :: Emoji
flexedBiceps = Emoji "💪"

-- | 🦾
mechanicalArm :: Emoji
mechanicalArm = Emoji "🦾"

-- | 🦿
mechanicalLeg :: Emoji
mechanicalLeg = Emoji "🦿"

-- | 🦵
leg :: Emoji
leg = Emoji "🦵"

-- | 🦶
foot :: Emoji
foot = Emoji "🦶"

-- | 👂
ear :: Emoji
ear = Emoji "👂"

-- | 🦻
earWithHearingAid :: Emoji
earWithHearingAid = Emoji "🦻"

-- | 👃
nose :: Emoji
nose = Emoji "👃"

-- | 🧠
brain :: Emoji
brain = Emoji "🧠"

-- | 🫀
anatomicalHeart :: Emoji
anatomicalHeart = Emoji "🫀"

-- | 🫁
lungs :: Emoji
lungs = Emoji "🫁"

-- | 🦷
tooth :: Emoji
tooth = Emoji "🦷"

-- | 🦴
bone :: Emoji
bone = Emoji "🦴"

-- | 👀
eyes :: Emoji
eyes = Emoji "👀"

-- | 👁
eye :: Emoji
eye = Emoji "👁"

-- | 👅
tongue :: Emoji
tongue = Emoji "👅"

-- | 👄
mouth :: Emoji
mouth = Emoji "👄"

-- | 👶
baby :: Emoji
baby = Emoji "👶"

-- | 🧒
child :: Emoji
child = Emoji "🧒"

-- | 👦
boy :: Emoji
boy = Emoji "👦"

-- | 👧
girl :: Emoji
girl = Emoji "👧"

-- | 🧑
person :: Emoji
person = Emoji "🧑"

-- | 👱
personBlondHair :: Emoji
personBlondHair = Emoji "👱"

-- | 👨
man :: Emoji
man = Emoji "👨"

-- | 🧔
manBeard :: Emoji
manBeard = Emoji "🧔"

-- | 👩
woman :: Emoji
woman = Emoji "👩"

-- | 🧓
olderPerson :: Emoji
olderPerson = Emoji "🧓"

-- | 👴
oldMan :: Emoji
oldMan = Emoji "👴"

-- | 👵
oldWoman :: Emoji
oldWoman = Emoji "👵"

-- | 🙍
personFrowning :: Emoji
personFrowning = Emoji "🙍"

-- | 🙎
personPouting :: Emoji
personPouting = Emoji "🙎"

-- | 🙅
personGesturingNo :: Emoji
personGesturingNo = Emoji "🙅"

-- | 🙆
personGesturingOk :: Emoji
personGesturingOk = Emoji "🙆"

-- | 💁
personTippingHand :: Emoji
personTippingHand = Emoji "💁"

-- | 🙋
personRaisingHand :: Emoji
personRaisingHand = Emoji "🙋"

-- | 🧏
deafPerson :: Emoji
deafPerson = Emoji "🧏"

-- | 🙇
personBowing :: Emoji
personBowing = Emoji "🙇"

-- | 🤦
personFacepalming :: Emoji
personFacepalming = Emoji "🤦"

-- | 🤷
personShrugging :: Emoji
personShrugging = Emoji "🤷"

-- | 👮
policeOfficer :: Emoji
policeOfficer = Emoji "👮"

-- | 🕵
detective :: Emoji
detective = Emoji "🕵"

-- | 💂
guard :: Emoji
guard = Emoji "💂"

-- | 🥷
ninja :: Emoji
ninja = Emoji "🥷"

-- | 👷
constructionWorker :: Emoji
constructionWorker = Emoji "👷"

-- | 🤴
prince :: Emoji
prince = Emoji "🤴"

-- | 👸
princess :: Emoji
princess = Emoji "👸"

-- | 👳
personWearingTurban :: Emoji
personWearingTurban = Emoji "👳"

-- | 👲
personWithSkullcap :: Emoji
personWithSkullcap = Emoji "👲"

-- | 🧕
womanWithHeadscarf :: Emoji
womanWithHeadscarf = Emoji "🧕"

-- | 🤵
personInTuxedo :: Emoji
personInTuxedo = Emoji "🤵"

-- | 👰
personWithVeil :: Emoji
personWithVeil = Emoji "👰"

-- | 🤰
pregnantWoman :: Emoji
pregnantWoman = Emoji "🤰"

-- | 🤱
breastFeeding :: Emoji
breastFeeding = Emoji "🤱"

-- | 👼
babyAngel :: Emoji
babyAngel = Emoji "👼"

-- | 🎅
santaClaus :: Emoji
santaClaus = Emoji "🎅"

-- | 🤶
mrsClaus :: Emoji
mrsClaus = Emoji "🤶"

-- | 🦸
superhero :: Emoji
superhero = Emoji "🦸"

-- | 🦹
supervillain :: Emoji
supervillain = Emoji "🦹"

-- | 🧙
mage :: Emoji
mage = Emoji "🧙"

-- | 🧚
fairy :: Emoji
fairy = Emoji "🧚"

-- | 🧛
vampire :: Emoji
vampire = Emoji "🧛"

-- | 🧜
merperson :: Emoji
merperson = Emoji "🧜"

-- | 🧝
elf :: Emoji
elf = Emoji "🧝"

-- | 🧞
genie :: Emoji
genie = Emoji "🧞"

-- | 🧟
zombie :: Emoji
zombie = Emoji "🧟"

-- | 💆
personGettingMassage :: Emoji
personGettingMassage = Emoji "💆"

-- | 💇
personGettingHaircut :: Emoji
personGettingHaircut = Emoji "💇"

-- | 🚶
personWalking :: Emoji
personWalking = Emoji "🚶"

-- | 🧍
personStanding :: Emoji
personStanding = Emoji "🧍"

-- | 🧎
personKneeling :: Emoji
personKneeling = Emoji "🧎"

-- | 🏃
personRunning :: Emoji
personRunning = Emoji "🏃"

-- | 💃
womanDancing :: Emoji
womanDancing = Emoji "💃"

-- | 🕺
manDancing :: Emoji
manDancing = Emoji "🕺"

-- | 🕴
personInSuitLevitating :: Emoji
personInSuitLevitating = Emoji "🕴"

-- | 👯
peopleWithBunnyEars :: Emoji
peopleWithBunnyEars = Emoji "👯"

-- | 🧖
personInSteamyRoom :: Emoji
personInSteamyRoom = Emoji "🧖"

-- | 🧗
personClimbing :: Emoji
personClimbing = Emoji "🧗"

-- | 🤺
personFencing :: Emoji
personFencing = Emoji "🤺"

-- | 🏇
horseRacing :: Emoji
horseRacing = Emoji "🏇"

-- | ⛷
skier :: Emoji
skier = Emoji "⛷"

-- | 🏂
snowboarder :: Emoji
snowboarder = Emoji "🏂"

-- | 🏌
personGolfing :: Emoji
personGolfing = Emoji "🏌"

-- | 🏄
personSurfing :: Emoji
personSurfing = Emoji "🏄"

-- | 🚣
personRowingBoat :: Emoji
personRowingBoat = Emoji "🚣"

-- | 🏊
personSwimming :: Emoji
personSwimming = Emoji "🏊"

-- | ⛹
personBouncingBall :: Emoji
personBouncingBall = Emoji "⛹"

-- | 🏋
personLiftingWeights :: Emoji
personLiftingWeights = Emoji "🏋"

-- | 🚴
personBiking :: Emoji
personBiking = Emoji "🚴"

-- | 🚵
personMountainBiking :: Emoji
personMountainBiking = Emoji "🚵"

-- | 🤸
personCartwheeling :: Emoji
personCartwheeling = Emoji "🤸"

-- | 🤼
peopleWrestling :: Emoji
peopleWrestling = Emoji "🤼"

-- | 🤽
personPlayingWaterPolo :: Emoji
personPlayingWaterPolo = Emoji "🤽"

-- | 🤾
personPlayingHandball :: Emoji
personPlayingHandball = Emoji "🤾"

-- | 🤹
personJuggling :: Emoji
personJuggling = Emoji "🤹"

-- | 🧘
personInLotusPosition :: Emoji
personInLotusPosition = Emoji "🧘"

-- | 🛀
personTakingBath :: Emoji
personTakingBath = Emoji "🛀"

-- | 🛌
personInBed :: Emoji
personInBed = Emoji "🛌"

-- | 👭
womenHoldingHands :: Emoji
womenHoldingHands = Emoji "👭"

-- | 👫
womanAndManHoldingHands :: Emoji
womanAndManHoldingHands = Emoji "👫"

-- | 👬
menHoldingHands :: Emoji
menHoldingHands = Emoji "👬"

-- | 💏
kiss :: Emoji
kiss = Emoji "💏"

-- | 💑
coupleWithHeart :: Emoji
coupleWithHeart = Emoji "💑"

-- | 👪
family :: Emoji
family = Emoji "👪"

-- | 🗣
speakingHead :: Emoji
speakingHead = Emoji "🗣"

-- | 👤
bustInSilhouette :: Emoji
bustInSilhouette = Emoji "👤"

-- | 👥
bustsInSilhouette :: Emoji
bustsInSilhouette = Emoji "👥"

-- | 🫂
peopleHugging :: Emoji
peopleHugging = Emoji "🫂"

-- | 👣
footprints :: Emoji
footprints = Emoji "👣"

-- | 🏻
lightSkinTone :: Emoji
lightSkinTone = Emoji "🏻"

-- | 🏼
mediumLightSkinTone :: Emoji
mediumLightSkinTone = Emoji "🏼"

-- | 🏽
mediumSkinTone :: Emoji
mediumSkinTone = Emoji "🏽"

-- | 🏾
mediumDarkSkinTone :: Emoji
mediumDarkSkinTone = Emoji "🏾"

-- | 🏿
darkSkinTone :: Emoji
darkSkinTone = Emoji "🏿"

-- | 🦰
redHair :: Emoji
redHair = Emoji "🦰"

-- | 🦱
curlyHair :: Emoji
curlyHair = Emoji "🦱"

-- | 🦳
whiteHair :: Emoji
whiteHair = Emoji "🦳"

-- | 🦲
bald :: Emoji
bald = Emoji "🦲"

-- | 🐵
monkeyFace :: Emoji
monkeyFace = Emoji "🐵"

-- | 🐒
monkey :: Emoji
monkey = Emoji "🐒"

-- | 🦍
gorilla :: Emoji
gorilla = Emoji "🦍"

-- | 🦧
orangutan :: Emoji
orangutan = Emoji "🦧"

-- | 🐶
dogFace :: Emoji
dogFace = Emoji "🐶"

-- | 🐕
dog :: Emoji
dog = Emoji "🐕"

-- | 🦮
guideDog :: Emoji
guideDog = Emoji "🦮"

-- | 🐩
poodle :: Emoji
poodle = Emoji "🐩"

-- | 🐺
wolf :: Emoji
wolf = Emoji "🐺"

-- | 🦊
fox :: Emoji
fox = Emoji "🦊"

-- | 🦝
raccoon :: Emoji
raccoon = Emoji "🦝"

-- | 🐱
catFace :: Emoji
catFace = Emoji "🐱"

-- | 🐈
cat :: Emoji
cat = Emoji "🐈"

-- | 🦁
lion :: Emoji
lion = Emoji "🦁"

-- | 🐯
tigerFace :: Emoji
tigerFace = Emoji "🐯"

-- | 🐅
tiger :: Emoji
tiger = Emoji "🐅"

-- | 🐆
leopard :: Emoji
leopard = Emoji "🐆"

-- | 🐴
horseFace :: Emoji
horseFace = Emoji "🐴"

-- | 🐎
horse :: Emoji
horse = Emoji "🐎"

-- | 🦄
unicorn :: Emoji
unicorn = Emoji "🦄"

-- | 🦓
zebra :: Emoji
zebra = Emoji "🦓"

-- | 🦌
deer :: Emoji
deer = Emoji "🦌"

-- | 🦬
bison :: Emoji
bison = Emoji "🦬"

-- | 🐮
cowFace :: Emoji
cowFace = Emoji "🐮"

-- | 🐂
ox :: Emoji
ox = Emoji "🐂"

-- | 🐃
waterBuffalo :: Emoji
waterBuffalo = Emoji "🐃"

-- | 🐄
cow :: Emoji
cow = Emoji "🐄"

-- | 🐷
pigFace :: Emoji
pigFace = Emoji "🐷"

-- | 🐖
pig :: Emoji
pig = Emoji "🐖"

-- | 🐗
boar :: Emoji
boar = Emoji "🐗"

-- | 🐽
pigNose :: Emoji
pigNose = Emoji "🐽"

-- | 🐏
ram :: Emoji
ram = Emoji "🐏"

-- | 🐑
ewe :: Emoji
ewe = Emoji "🐑"

-- | 🐐
goat :: Emoji
goat = Emoji "🐐"

-- | 🐪
camel :: Emoji
camel = Emoji "🐪"

-- | 🐫
twoHumpCamel :: Emoji
twoHumpCamel = Emoji "🐫"

-- | 🦙
llama :: Emoji
llama = Emoji "🦙"

-- | 🦒
giraffe :: Emoji
giraffe = Emoji "🦒"

-- | 🐘
elephant :: Emoji
elephant = Emoji "🐘"

-- | 🦣
mammoth :: Emoji
mammoth = Emoji "🦣"

-- | 🦏
rhinoceros :: Emoji
rhinoceros = Emoji "🦏"

-- | 🦛
hippopotamus :: Emoji
hippopotamus = Emoji "🦛"

-- | 🐭
mouseFace :: Emoji
mouseFace = Emoji "🐭"

-- | 🐁
mouse :: Emoji
mouse = Emoji "🐁"

-- | 🐀
rat :: Emoji
rat = Emoji "🐀"

-- | 🐹
hamster :: Emoji
hamster = Emoji "🐹"

-- | 🐰
rabbitFace :: Emoji
rabbitFace = Emoji "🐰"

-- | 🐇
rabbit :: Emoji
rabbit = Emoji "🐇"

-- | 🐿
chipmunk :: Emoji
chipmunk = Emoji "🐿"

-- | 🦫
beaver :: Emoji
beaver = Emoji "🦫"

-- | 🦔
hedgehog :: Emoji
hedgehog = Emoji "🦔"

-- | 🦇
bat :: Emoji
bat = Emoji "🦇"

-- | 🐻
bear :: Emoji
bear = Emoji "🐻"

-- | 🐨
koala :: Emoji
koala = Emoji "🐨"

-- | 🐼
panda :: Emoji
panda = Emoji "🐼"

-- | 🦥
sloth :: Emoji
sloth = Emoji "🦥"

-- | 🦦
otter :: Emoji
otter = Emoji "🦦"

-- | 🦨
skunk :: Emoji
skunk = Emoji "🦨"

-- | 🦘
kangaroo :: Emoji
kangaroo = Emoji "🦘"

-- | 🦡
badger :: Emoji
badger = Emoji "🦡"

-- | 🐾
pawPrints :: Emoji
pawPrints = Emoji "🐾"

-- | 🦃
turkey :: Emoji
turkey = Emoji "🦃"

-- | 🐔
chicken :: Emoji
chicken = Emoji "🐔"

-- | 🐓
rooster :: Emoji
rooster = Emoji "🐓"

-- | 🐣
hatchingChick :: Emoji
hatchingChick = Emoji "🐣"

-- | 🐤
babyChick :: Emoji
babyChick = Emoji "🐤"

-- | 🐥
frontFacingBabyChick :: Emoji
frontFacingBabyChick = Emoji "🐥"

-- | 🐦
bird :: Emoji
bird = Emoji "🐦"

-- | 🐧
penguin :: Emoji
penguin = Emoji "🐧"

-- | 🕊
dove :: Emoji
dove = Emoji "🕊"

-- | 🦅
eagle :: Emoji
eagle = Emoji "🦅"

-- | 🦆
duck :: Emoji
duck = Emoji "🦆"

-- | 🦢
swan :: Emoji
swan = Emoji "🦢"

-- | 🦉
owl :: Emoji
owl = Emoji "🦉"

-- | 🦤
dodo :: Emoji
dodo = Emoji "🦤"

-- | 🪶
feather :: Emoji
feather = Emoji "🪶"

-- | 🦩
flamingo :: Emoji
flamingo = Emoji "🦩"

-- | 🦚
peacock :: Emoji
peacock = Emoji "🦚"

-- | 🦜
parrot :: Emoji
parrot = Emoji "🦜"

-- | 🐸
frog :: Emoji
frog = Emoji "🐸"

-- | 🐊
crocodile :: Emoji
crocodile = Emoji "🐊"

-- | 🐢
turtle :: Emoji
turtle = Emoji "🐢"

-- | 🦎
lizard :: Emoji
lizard = Emoji "🦎"

-- | 🐍
snake :: Emoji
snake = Emoji "🐍"

-- | 🐲
dragonFace :: Emoji
dragonFace = Emoji "🐲"

-- | 🐉
dragon :: Emoji
dragon = Emoji "🐉"

-- | 🦕
sauropod :: Emoji
sauropod = Emoji "🦕"

-- | 🦖
tRex :: Emoji
tRex = Emoji "🦖"

-- | 🐳
spoutingWhale :: Emoji
spoutingWhale = Emoji "🐳"

-- | 🐋
whale :: Emoji
whale = Emoji "🐋"

-- | 🐬
dolphin :: Emoji
dolphin = Emoji "🐬"

-- | 🦭
seal :: Emoji
seal = Emoji "🦭"

-- | 🐟
fish :: Emoji
fish = Emoji "🐟"

-- | 🐠
tropicalFish :: Emoji
tropicalFish = Emoji "🐠"

-- | 🐡
blowfish :: Emoji
blowfish = Emoji "🐡"

-- | 🦈
shark :: Emoji
shark = Emoji "🦈"

-- | 🐙
octopus :: Emoji
octopus = Emoji "🐙"

-- | 🐚
spiralShell :: Emoji
spiralShell = Emoji "🐚"

-- | 🐌
snail :: Emoji
snail = Emoji "🐌"

-- | 🦋
butterfly :: Emoji
butterfly = Emoji "🦋"

-- | 🐛
bug :: Emoji
bug = Emoji "🐛"

-- | 🐜
ant :: Emoji
ant = Emoji "🐜"

-- | 🐝
honeybee :: Emoji
honeybee = Emoji "🐝"

-- | 🪲
beetle :: Emoji
beetle = Emoji "🪲"

-- | 🐞
ladyBeetle :: Emoji
ladyBeetle = Emoji "🐞"

-- | 🦗
cricket :: Emoji
cricket = Emoji "🦗"

-- | 🪳
cockroach :: Emoji
cockroach = Emoji "🪳"

-- | 🕷
spider :: Emoji
spider = Emoji "🕷"

-- | 🕸
spiderWeb :: Emoji
spiderWeb = Emoji "🕸"

-- | 🦂
scorpion :: Emoji
scorpion = Emoji "🦂"

-- | 🦟
mosquito :: Emoji
mosquito = Emoji "🦟"

-- | 🪰
fly :: Emoji
fly = Emoji "🪰"

-- | 🪱
worm :: Emoji
worm = Emoji "🪱"

-- | 🦠
microbe :: Emoji
microbe = Emoji "🦠"

-- | 💐
bouquet :: Emoji
bouquet = Emoji "💐"

-- | 🌸
cherryBlossom :: Emoji
cherryBlossom = Emoji "🌸"

-- | 💮
whiteFlower :: Emoji
whiteFlower = Emoji "💮"

-- | 🏵
rosette :: Emoji
rosette = Emoji "🏵"

-- | 🌹
rose :: Emoji
rose = Emoji "🌹"

-- | 🥀
wiltedFlower :: Emoji
wiltedFlower = Emoji "🥀"

-- | 🌺
hibiscus :: Emoji
hibiscus = Emoji "🌺"

-- | 🌻
sunflower :: Emoji
sunflower = Emoji "🌻"

-- | 🌼
blossom :: Emoji
blossom = Emoji "🌼"

-- | 🌷
tulip :: Emoji
tulip = Emoji "🌷"

-- | 🌱
seedling :: Emoji
seedling = Emoji "🌱"

-- | 🪴
pottedPlant :: Emoji
pottedPlant = Emoji "🪴"

-- | 🌲
evergreenTree :: Emoji
evergreenTree = Emoji "🌲"

-- | 🌳
deciduousTree :: Emoji
deciduousTree = Emoji "🌳"

-- | 🌴
palmTree :: Emoji
palmTree = Emoji "🌴"

-- | 🌵
cactus :: Emoji
cactus = Emoji "🌵"

-- | 🌾
sheafOfRice :: Emoji
sheafOfRice = Emoji "🌾"

-- | 🌿
herb :: Emoji
herb = Emoji "🌿"

-- | ☘
shamrock :: Emoji
shamrock = Emoji "☘"

-- | 🍀
fourLeafClover :: Emoji
fourLeafClover = Emoji "🍀"

-- | 🍁
mapleLeaf :: Emoji
mapleLeaf = Emoji "🍁"

-- | 🍂
fallenLeaf :: Emoji
fallenLeaf = Emoji "🍂"

-- | 🍃
leafFlutteringInWind :: Emoji
leafFlutteringInWind = Emoji "🍃"

-- | 🍇
grapes :: Emoji
grapes = Emoji "🍇"

-- | 🍈
melon :: Emoji
melon = Emoji "🍈"

-- | 🍉
watermelon :: Emoji
watermelon = Emoji "🍉"

-- | 🍊
tangerine :: Emoji
tangerine = Emoji "🍊"

-- | 🍋
lemon :: Emoji
lemon = Emoji "🍋"

-- | 🍌
banana :: Emoji
banana = Emoji "🍌"

-- | 🍍
pineapple :: Emoji
pineapple = Emoji "🍍"

-- | 🥭
mango :: Emoji
mango = Emoji "🥭"

-- | 🍎
redApple :: Emoji
redApple = Emoji "🍎"

-- | 🍏
greenApple :: Emoji
greenApple = Emoji "🍏"

-- | 🍐
pear :: Emoji
pear = Emoji "🍐"

-- | 🍑
peach :: Emoji
peach = Emoji "🍑"

-- | 🍒
cherries :: Emoji
cherries = Emoji "🍒"

-- | 🍓
strawberry :: Emoji
strawberry = Emoji "🍓"

-- | 🫐
blueberries :: Emoji
blueberries = Emoji "🫐"

-- | 🥝
kiwiFruit :: Emoji
kiwiFruit = Emoji "🥝"

-- | 🍅
tomato :: Emoji
tomato = Emoji "🍅"

-- | 🫒
olive :: Emoji
olive = Emoji "🫒"

-- | 🥥
coconut :: Emoji
coconut = Emoji "🥥"

-- | 🥑
avocado :: Emoji
avocado = Emoji "🥑"

-- | 🍆
eggplant :: Emoji
eggplant = Emoji "🍆"

-- | 🥔
potato :: Emoji
potato = Emoji "🥔"

-- | 🥕
carrot :: Emoji
carrot = Emoji "🥕"

-- | 🌽
earOfCorn :: Emoji
earOfCorn = Emoji "🌽"

-- | 🌶
hotPepper :: Emoji
hotPepper = Emoji "🌶"

-- | 🫑
bellPepper :: Emoji
bellPepper = Emoji "🫑"

-- | 🥒
cucumber :: Emoji
cucumber = Emoji "🥒"

-- | 🥬
leafyGreen :: Emoji
leafyGreen = Emoji "🥬"

-- | 🥦
broccoli :: Emoji
broccoli = Emoji "🥦"

-- | 🧄
garlic :: Emoji
garlic = Emoji "🧄"

-- | 🧅
onion :: Emoji
onion = Emoji "🧅"

-- | 🍄
mushroom :: Emoji
mushroom = Emoji "🍄"

-- | 🥜
peanuts :: Emoji
peanuts = Emoji "🥜"

-- | 🌰
chestnut :: Emoji
chestnut = Emoji "🌰"

-- | 🍞
bread :: Emoji
bread = Emoji "🍞"

-- | 🥐
croissant :: Emoji
croissant = Emoji "🥐"

-- | 🥖
baguetteBread :: Emoji
baguetteBread = Emoji "🥖"

-- | 🫓
flatbread :: Emoji
flatbread = Emoji "🫓"

-- | 🥨
pretzel :: Emoji
pretzel = Emoji "🥨"

-- | 🥯
bagel :: Emoji
bagel = Emoji "🥯"

-- | 🥞
pancakes :: Emoji
pancakes = Emoji "🥞"

-- | 🧇
waffle :: Emoji
waffle = Emoji "🧇"

-- | 🧀
cheeseWedge :: Emoji
cheeseWedge = Emoji "🧀"

-- | 🍖
meatOnBone :: Emoji
meatOnBone = Emoji "🍖"

-- | 🍗
poultryLeg :: Emoji
poultryLeg = Emoji "🍗"

-- | 🥩
cutOfMeat :: Emoji
cutOfMeat = Emoji "🥩"

-- | 🥓
bacon :: Emoji
bacon = Emoji "🥓"

-- | 🍔
hamburger :: Emoji
hamburger = Emoji "🍔"

-- | 🍟
frenchFries :: Emoji
frenchFries = Emoji "🍟"

-- | 🍕
pizza :: Emoji
pizza = Emoji "🍕"

-- | 🌭
hotDog :: Emoji
hotDog = Emoji "🌭"

-- | 🥪
sandwich :: Emoji
sandwich = Emoji "🥪"

-- | 🌮
taco :: Emoji
taco = Emoji "🌮"

-- | 🌯
burrito :: Emoji
burrito = Emoji "🌯"

-- | 🫔
tamale :: Emoji
tamale = Emoji "🫔"

-- | 🥙
stuffedFlatbread :: Emoji
stuffedFlatbread = Emoji "🥙"

-- | 🧆
falafel :: Emoji
falafel = Emoji "🧆"

-- | 🥚
egg :: Emoji
egg = Emoji "🥚"

-- | 🍳
cooking :: Emoji
cooking = Emoji "🍳"

-- | 🥘
shallowPanOfFood :: Emoji
shallowPanOfFood = Emoji "🥘"

-- | 🍲
potOfFood :: Emoji
potOfFood = Emoji "🍲"

-- | 🫕
fondue :: Emoji
fondue = Emoji "🫕"

-- | 🥣
bowlWithSpoon :: Emoji
bowlWithSpoon = Emoji "🥣"

-- | 🥗
greenSalad :: Emoji
greenSalad = Emoji "🥗"

-- | 🍿
popcorn :: Emoji
popcorn = Emoji "🍿"

-- | 🧈
butter :: Emoji
butter = Emoji "🧈"

-- | 🧂
salt :: Emoji
salt = Emoji "🧂"

-- | 🥫
cannedFood :: Emoji
cannedFood = Emoji "🥫"

-- | 🍱
bentoBox :: Emoji
bentoBox = Emoji "🍱"

-- | 🍘
riceCracker :: Emoji
riceCracker = Emoji "🍘"

-- | 🍙
riceBall :: Emoji
riceBall = Emoji "🍙"

-- | 🍚
cookedRice :: Emoji
cookedRice = Emoji "🍚"

-- | 🍛
curryRice :: Emoji
curryRice = Emoji "🍛"

-- | 🍜
steamingBowl :: Emoji
steamingBowl = Emoji "🍜"

-- | 🍝
spaghetti :: Emoji
spaghetti = Emoji "🍝"

-- | 🍠
roastedSweetPotato :: Emoji
roastedSweetPotato = Emoji "🍠"

-- | 🍢
oden :: Emoji
oden = Emoji "🍢"

-- | 🍣
sushi :: Emoji
sushi = Emoji "🍣"

-- | 🍤
friedShrimp :: Emoji
friedShrimp = Emoji "🍤"

-- | 🍥
fishCakeWithSwirl :: Emoji
fishCakeWithSwirl = Emoji "🍥"

-- | 🥮
moonCake :: Emoji
moonCake = Emoji "🥮"

-- | 🍡
dango :: Emoji
dango = Emoji "🍡"

-- | 🥟
dumpling :: Emoji
dumpling = Emoji "🥟"

-- | 🥠
fortuneCookie :: Emoji
fortuneCookie = Emoji "🥠"

-- | 🥡
takeoutBox :: Emoji
takeoutBox = Emoji "🥡"

-- | 🦀
crab :: Emoji
crab = Emoji "🦀"

-- | 🦞
lobster :: Emoji
lobster = Emoji "🦞"

-- | 🦐
shrimp :: Emoji
shrimp = Emoji "🦐"

-- | 🦑
squid :: Emoji
squid = Emoji "🦑"

-- | 🦪
oyster :: Emoji
oyster = Emoji "🦪"

-- | 🍦
softIceCream :: Emoji
softIceCream = Emoji "🍦"

-- | 🍧
shavedIce :: Emoji
shavedIce = Emoji "🍧"

-- | 🍨
iceCream :: Emoji
iceCream = Emoji "🍨"

-- | 🍩
doughnut :: Emoji
doughnut = Emoji "🍩"

-- | 🍪
cookie :: Emoji
cookie = Emoji "🍪"

-- | 🎂
birthdayCake :: Emoji
birthdayCake = Emoji "🎂"

-- | 🍰
shortcake :: Emoji
shortcake = Emoji "🍰"

-- | 🧁
cupcake :: Emoji
cupcake = Emoji "🧁"

-- | 🥧
pie :: Emoji
pie = Emoji "🥧"

-- | 🍫
chocolateBar :: Emoji
chocolateBar = Emoji "🍫"

-- | 🍬
candy :: Emoji
candy = Emoji "🍬"

-- | 🍭
lollipop :: Emoji
lollipop = Emoji "🍭"

-- | 🍮
custard :: Emoji
custard = Emoji "🍮"

-- | 🍯
honeyPot :: Emoji
honeyPot = Emoji "🍯"

-- | 🍼
babyBottle :: Emoji
babyBottle = Emoji "🍼"

-- | 🥛
glassOfMilk :: Emoji
glassOfMilk = Emoji "🥛"

-- | ☕
hotBeverage :: Emoji
hotBeverage = Emoji "☕"

-- | 🫖
teapot :: Emoji
teapot = Emoji "🫖"

-- | 🍵
teacupWithoutHandle :: Emoji
teacupWithoutHandle = Emoji "🍵"

-- | 🍶
sake :: Emoji
sake = Emoji "🍶"

-- | 🍾
bottleWithPoppingCork :: Emoji
bottleWithPoppingCork = Emoji "🍾"

-- | 🍷
wineGlass :: Emoji
wineGlass = Emoji "🍷"

-- | 🍸
cocktailGlass :: Emoji
cocktailGlass = Emoji "🍸"

-- | 🍹
tropicalDrink :: Emoji
tropicalDrink = Emoji "🍹"

-- | 🍺
beerMug :: Emoji
beerMug = Emoji "🍺"

-- | 🍻
clinkingBeerMugs :: Emoji
clinkingBeerMugs = Emoji "🍻"

-- | 🥂
clinkingGlasses :: Emoji
clinkingGlasses = Emoji "🥂"

-- | 🥃
tumblerGlass :: Emoji
tumblerGlass = Emoji "🥃"

-- | 🥤
cupWithStraw :: Emoji
cupWithStraw = Emoji "🥤"

-- | 🧋
bubbleTea :: Emoji
bubbleTea = Emoji "🧋"

-- | 🧃
beverageBox :: Emoji
beverageBox = Emoji "🧃"

-- | 🧉
mate :: Emoji
mate = Emoji "🧉"

-- | 🧊
ice :: Emoji
ice = Emoji "🧊"

-- | 🥢
chopsticks :: Emoji
chopsticks = Emoji "🥢"

-- | 🍽
forkAndKnifeWithPlate :: Emoji
forkAndKnifeWithPlate = Emoji "🍽"

-- | 🍴
forkAndKnife :: Emoji
forkAndKnife = Emoji "🍴"

-- | 🥄
spoon :: Emoji
spoon = Emoji "🥄"

-- | 🔪
kitchenKnife :: Emoji
kitchenKnife = Emoji "🔪"

-- | 🏺
amphora :: Emoji
amphora = Emoji "🏺"

-- | 🌍
globeShowingEuropeAfrica :: Emoji
globeShowingEuropeAfrica = Emoji "🌍"

-- | 🌎
globeShowingAmericas :: Emoji
globeShowingAmericas = Emoji "🌎"

-- | 🌏
globeShowingAsiaAustralia :: Emoji
globeShowingAsiaAustralia = Emoji "🌏"

-- | 🌐
globeWithMeridians :: Emoji
globeWithMeridians = Emoji "🌐"

-- | 🗺
worldMap :: Emoji
worldMap = Emoji "🗺"

-- | 🗾
mapOfJapan :: Emoji
mapOfJapan = Emoji "🗾"

-- | 🧭
compass :: Emoji
compass = Emoji "🧭"

-- | 🏔
snowCappedMountain :: Emoji
snowCappedMountain = Emoji "🏔"

-- | ⛰
mountain :: Emoji
mountain = Emoji "⛰"

-- | 🌋
volcano :: Emoji
volcano = Emoji "🌋"

-- | 🗻
mountFuji :: Emoji
mountFuji = Emoji "🗻"

-- | 🏕
camping :: Emoji
camping = Emoji "🏕"

-- | 🏖
beachWithUmbrella :: Emoji
beachWithUmbrella = Emoji "🏖"

-- | 🏜
desert :: Emoji
desert = Emoji "🏜"

-- | 🏝
desertIsland :: Emoji
desertIsland = Emoji "🏝"

-- | 🏞
nationalPark :: Emoji
nationalPark = Emoji "🏞"

-- | 🏟
stadium :: Emoji
stadium = Emoji "🏟"

-- | 🏛
classicalBuilding :: Emoji
classicalBuilding = Emoji "🏛"

-- | 🏗
buildingConstruction :: Emoji
buildingConstruction = Emoji "🏗"

-- | 🧱
brick :: Emoji
brick = Emoji "🧱"

-- | 🪨
rock :: Emoji
rock = Emoji "🪨"

-- | 🪵
wood :: Emoji
wood = Emoji "🪵"

-- | 🛖
hut :: Emoji
hut = Emoji "🛖"

-- | 🏘
houses :: Emoji
houses = Emoji "🏘"

-- | 🏚
derelictHouse :: Emoji
derelictHouse = Emoji "🏚"

-- | 🏠
house :: Emoji
house = Emoji "🏠"

-- | 🏡
houseWithGarden :: Emoji
houseWithGarden = Emoji "🏡"

-- | 🏢
officeBuilding :: Emoji
officeBuilding = Emoji "🏢"

-- | 🏣
japanesePostOffice :: Emoji
japanesePostOffice = Emoji "🏣"

-- | 🏤
postOffice :: Emoji
postOffice = Emoji "🏤"

-- | 🏥
hospital :: Emoji
hospital = Emoji "🏥"

-- | 🏦
bank :: Emoji
bank = Emoji "🏦"

-- | 🏨
hotel :: Emoji
hotel = Emoji "🏨"

-- | 🏩
loveHotel :: Emoji
loveHotel = Emoji "🏩"

-- | 🏪
convenienceStore :: Emoji
convenienceStore = Emoji "🏪"

-- | 🏫
school :: Emoji
school = Emoji "🏫"

-- | 🏬
departmentStore :: Emoji
departmentStore = Emoji "🏬"

-- | 🏭
factory :: Emoji
factory = Emoji "🏭"

-- | 🏯
japaneseCastle :: Emoji
japaneseCastle = Emoji "🏯"

-- | 🏰
castle :: Emoji
castle = Emoji "🏰"

-- | 💒
wedding :: Emoji
wedding = Emoji "💒"

-- | 🗼
tokyoTower :: Emoji
tokyoTower = Emoji "🗼"

-- | 🗽
statueOfLiberty :: Emoji
statueOfLiberty = Emoji "🗽"

-- | ⛪
church :: Emoji
church = Emoji "⛪"

-- | 🕌
mosque :: Emoji
mosque = Emoji "🕌"

-- | 🛕
hinduTemple :: Emoji
hinduTemple = Emoji "🛕"

-- | 🕍
synagogue :: Emoji
synagogue = Emoji "🕍"

-- | ⛩
shintoShrine :: Emoji
shintoShrine = Emoji "⛩"

-- | 🕋
kaaba :: Emoji
kaaba = Emoji "🕋"

-- | ⛲
fountain :: Emoji
fountain = Emoji "⛲"

-- | ⛺
tent :: Emoji
tent = Emoji "⛺"

-- | 🌁
foggy :: Emoji
foggy = Emoji "🌁"

-- | 🌃
nightWithStars :: Emoji
nightWithStars = Emoji "🌃"

-- | 🏙
cityscape :: Emoji
cityscape = Emoji "🏙"

-- | 🌄
sunriseOverMountains :: Emoji
sunriseOverMountains = Emoji "🌄"

-- | 🌅
sunrise :: Emoji
sunrise = Emoji "🌅"

-- | 🌆
cityscapeAtDusk :: Emoji
cityscapeAtDusk = Emoji "🌆"

-- | 🌇
sunset :: Emoji
sunset = Emoji "🌇"

-- | 🌉
bridgeAtNight :: Emoji
bridgeAtNight = Emoji "🌉"

-- | ♨
hotSprings :: Emoji
hotSprings = Emoji "♨"

-- | 🎠
carouselHorse :: Emoji
carouselHorse = Emoji "🎠"

-- | 🎡
ferrisWheel :: Emoji
ferrisWheel = Emoji "🎡"

-- | 🎢
rollerCoaster :: Emoji
rollerCoaster = Emoji "🎢"

-- | 💈
barberPole :: Emoji
barberPole = Emoji "💈"

-- | 🎪
circusTent :: Emoji
circusTent = Emoji "🎪"

-- | 🚂
locomotive :: Emoji
locomotive = Emoji "🚂"

-- | 🚃
railwayCar :: Emoji
railwayCar = Emoji "🚃"

-- | 🚄
highSpeedTrain :: Emoji
highSpeedTrain = Emoji "🚄"

-- | 🚅
bulletTrain :: Emoji
bulletTrain = Emoji "🚅"

-- | 🚆
train :: Emoji
train = Emoji "🚆"

-- | 🚇
metro :: Emoji
metro = Emoji "🚇"

-- | 🚈
lightRail :: Emoji
lightRail = Emoji "🚈"

-- | 🚉
station :: Emoji
station = Emoji "🚉"

-- | 🚊
tram :: Emoji
tram = Emoji "🚊"

-- | 🚝
monorail :: Emoji
monorail = Emoji "🚝"

-- | 🚞
mountainRailway :: Emoji
mountainRailway = Emoji "🚞"

-- | 🚋
tramCar :: Emoji
tramCar = Emoji "🚋"

-- | 🚌
bus :: Emoji
bus = Emoji "🚌"

-- | 🚍
oncomingBus :: Emoji
oncomingBus = Emoji "🚍"

-- | 🚎
trolleybus :: Emoji
trolleybus = Emoji "🚎"

-- | 🚐
minibus :: Emoji
minibus = Emoji "🚐"

-- | 🚑
ambulance :: Emoji
ambulance = Emoji "🚑"

-- | 🚒
fireEngine :: Emoji
fireEngine = Emoji "🚒"

-- | 🚓
policeCar :: Emoji
policeCar = Emoji "🚓"

-- | 🚔
oncomingPoliceCar :: Emoji
oncomingPoliceCar = Emoji "🚔"

-- | 🚕
taxi :: Emoji
taxi = Emoji "🚕"

-- | 🚖
oncomingTaxi :: Emoji
oncomingTaxi = Emoji "🚖"

-- | 🚗
automobile :: Emoji
automobile = Emoji "🚗"

-- | 🚘
oncomingAutomobile :: Emoji
oncomingAutomobile = Emoji "🚘"

-- | 🚙
sportUtilityVehicle :: Emoji
sportUtilityVehicle = Emoji "🚙"

-- | 🛻
pickupTruck :: Emoji
pickupTruck = Emoji "🛻"

-- | 🚚
deliveryTruck :: Emoji
deliveryTruck = Emoji "🚚"

-- | 🚛
articulatedLorry :: Emoji
articulatedLorry = Emoji "🚛"

-- | 🚜
tractor :: Emoji
tractor = Emoji "🚜"

-- | 🏎
racingCar :: Emoji
racingCar = Emoji "🏎"

-- | 🏍
motorcycle :: Emoji
motorcycle = Emoji "🏍"

-- | 🛵
motorScooter :: Emoji
motorScooter = Emoji "🛵"

-- | 🦽
manualWheelchair :: Emoji
manualWheelchair = Emoji "🦽"

-- | 🦼
motorizedWheelchair :: Emoji
motorizedWheelchair = Emoji "🦼"

-- | 🛺
autoRickshaw :: Emoji
autoRickshaw = Emoji "🛺"

-- | 🚲
bicycle :: Emoji
bicycle = Emoji "🚲"

-- | 🛴
kickScooter :: Emoji
kickScooter = Emoji "🛴"

-- | 🛹
skateboard :: Emoji
skateboard = Emoji "🛹"

-- | 🛼
rollerSkate :: Emoji
rollerSkate = Emoji "🛼"

-- | 🚏
busStop :: Emoji
busStop = Emoji "🚏"

-- | 🛣
motorway :: Emoji
motorway = Emoji "🛣"

-- | 🛤
railwayTrack :: Emoji
railwayTrack = Emoji "🛤"

-- | 🛢
oilDrum :: Emoji
oilDrum = Emoji "🛢"

-- | ⛽
fuelPump :: Emoji
fuelPump = Emoji "⛽"

-- | 🚨
policeCarLight :: Emoji
policeCarLight = Emoji "🚨"

-- | 🚥
horizontalTrafficLight :: Emoji
horizontalTrafficLight = Emoji "🚥"

-- | 🚦
verticalTrafficLight :: Emoji
verticalTrafficLight = Emoji "🚦"

-- | 🛑
stopSign :: Emoji
stopSign = Emoji "🛑"

-- | 🚧
construction :: Emoji
construction = Emoji "🚧"

-- | ⚓
anchor :: Emoji
anchor = Emoji "⚓"

-- | ⛵
sailboat :: Emoji
sailboat = Emoji "⛵"

-- | 🛶
canoe :: Emoji
canoe = Emoji "🛶"

-- | 🚤
speedboat :: Emoji
speedboat = Emoji "🚤"

-- | 🛳
passengerShip :: Emoji
passengerShip = Emoji "🛳"

-- | ⛴
ferry :: Emoji
ferry = Emoji "⛴"

-- | 🛥
motorBoat :: Emoji
motorBoat = Emoji "🛥"

-- | 🚢
ship :: Emoji
ship = Emoji "🚢"

-- | ✈
airplane :: Emoji
airplane = Emoji "✈"

-- | 🛩
smallAirplane :: Emoji
smallAirplane = Emoji "🛩"

-- | 🛫
airplaneDeparture :: Emoji
airplaneDeparture = Emoji "🛫"

-- | 🛬
airplaneArrival :: Emoji
airplaneArrival = Emoji "🛬"

-- | 🪂
parachute :: Emoji
parachute = Emoji "🪂"

-- | 💺
seat :: Emoji
seat = Emoji "💺"

-- | 🚁
helicopter :: Emoji
helicopter = Emoji "🚁"

-- | 🚟
suspensionRailway :: Emoji
suspensionRailway = Emoji "🚟"

-- | 🚠
mountainCableway :: Emoji
mountainCableway = Emoji "🚠"

-- | 🚡
aerialTramway :: Emoji
aerialTramway = Emoji "🚡"

-- | 🛰
satellite :: Emoji
satellite = Emoji "🛰"

-- | 🚀
rocket :: Emoji
rocket = Emoji "🚀"

-- | 🛸
flyingSaucer :: Emoji
flyingSaucer = Emoji "🛸"

-- | 🛎
bellhopBell :: Emoji
bellhopBell = Emoji "🛎"

-- | 🧳
luggage :: Emoji
luggage = Emoji "🧳"

-- | ⌛
hourglassDone :: Emoji
hourglassDone = Emoji "⌛"

-- | ⏳
hourglassNotDone :: Emoji
hourglassNotDone = Emoji "⏳"

-- | ⌚
watch :: Emoji
watch = Emoji "⌚"

-- | ⏰
alarmClock :: Emoji
alarmClock = Emoji "⏰"

-- | ⏱
stopwatch :: Emoji
stopwatch = Emoji "⏱"

-- | ⏲
timerClock :: Emoji
timerClock = Emoji "⏲"

-- | 🕰
mantelpieceClock :: Emoji
mantelpieceClock = Emoji "🕰"

-- | 🕛
twelveOClock :: Emoji
twelveOClock = Emoji "🕛"

-- | 🕧
twelveThirty :: Emoji
twelveThirty = Emoji "🕧"

-- | 🕐
oneOClock :: Emoji
oneOClock = Emoji "🕐"

-- | 🕜
oneThirty :: Emoji
oneThirty = Emoji "🕜"

-- | 🕑
twoOClock :: Emoji
twoOClock = Emoji "🕑"

-- | 🕝
twoThirty :: Emoji
twoThirty = Emoji "🕝"

-- | 🕒
threeOClock :: Emoji
threeOClock = Emoji "🕒"

-- | 🕞
threeThirty :: Emoji
threeThirty = Emoji "🕞"

-- | 🕓
fourOClock :: Emoji
fourOClock = Emoji "🕓"

-- | 🕟
fourThirty :: Emoji
fourThirty = Emoji "🕟"

-- | 🕔
fiveOClock :: Emoji
fiveOClock = Emoji "🕔"

-- | 🕠
fiveThirty :: Emoji
fiveThirty = Emoji "🕠"

-- | 🕕
sixOClock :: Emoji
sixOClock = Emoji "🕕"

-- | 🕡
sixThirty :: Emoji
sixThirty = Emoji "🕡"

-- | 🕖
sevenOClock :: Emoji
sevenOClock = Emoji "🕖"

-- | 🕢
sevenThirty :: Emoji
sevenThirty = Emoji "🕢"

-- | 🕗
eightOClock :: Emoji
eightOClock = Emoji "🕗"

-- | 🕣
eightThirty :: Emoji
eightThirty = Emoji "🕣"

-- | 🕘
nineOClock :: Emoji
nineOClock = Emoji "🕘"

-- | 🕤
nineThirty :: Emoji
nineThirty = Emoji "🕤"

-- | 🕙
tenOClock :: Emoji
tenOClock = Emoji "🕙"

-- | 🕥
tenThirty :: Emoji
tenThirty = Emoji "🕥"

-- | 🕚
elevenOClock :: Emoji
elevenOClock = Emoji "🕚"

-- | 🕦
elevenThirty :: Emoji
elevenThirty = Emoji "🕦"

-- | 🌑
newMoon :: Emoji
newMoon = Emoji "🌑"

-- | 🌒
waxingCrescentMoon :: Emoji
waxingCrescentMoon = Emoji "🌒"

-- | 🌓
firstQuarterMoon :: Emoji
firstQuarterMoon = Emoji "🌓"

-- | 🌔
waxingGibbousMoon :: Emoji
waxingGibbousMoon = Emoji "🌔"

-- | 🌕
fullMoon :: Emoji
fullMoon = Emoji "🌕"

-- | 🌖
waningGibbousMoon :: Emoji
waningGibbousMoon = Emoji "🌖"

-- | 🌗
lastQuarterMoon :: Emoji
lastQuarterMoon = Emoji "🌗"

-- | 🌘
waningCrescentMoon :: Emoji
waningCrescentMoon = Emoji "🌘"

-- | 🌙
crescentMoon :: Emoji
crescentMoon = Emoji "🌙"

-- | 🌚
newMoonFace :: Emoji
newMoonFace = Emoji "🌚"

-- | 🌛
firstQuarterMoonFace :: Emoji
firstQuarterMoonFace = Emoji "🌛"

-- | 🌜
lastQuarterMoonFace :: Emoji
lastQuarterMoonFace = Emoji "🌜"

-- | 🌡
thermometer :: Emoji
thermometer = Emoji "🌡"

-- | ☀
sun :: Emoji
sun = Emoji "☀"

-- | 🌝
fullMoonFace :: Emoji
fullMoonFace = Emoji "🌝"

-- | 🌞
sunWithFace :: Emoji
sunWithFace = Emoji "🌞"

-- | 🪐
ringedPlanet :: Emoji
ringedPlanet = Emoji "🪐"

-- | ⭐
star :: Emoji
star = Emoji "⭐"

-- | 🌟
glowingStar :: Emoji
glowingStar = Emoji "🌟"

-- | 🌠
shootingStar :: Emoji
shootingStar = Emoji "🌠"

-- | 🌌
milkyWay :: Emoji
milkyWay = Emoji "🌌"

-- | ☁
cloud :: Emoji
cloud = Emoji "☁"

-- | ⛅
sunBehindCloud :: Emoji
sunBehindCloud = Emoji "⛅"

-- | ⛈
cloudWithLightningAndRain :: Emoji
cloudWithLightningAndRain = Emoji "⛈"

-- | 🌤
sunBehindSmallCloud :: Emoji
sunBehindSmallCloud = Emoji "🌤"

-- | 🌥
sunBehindLargeCloud :: Emoji
sunBehindLargeCloud = Emoji "🌥"

-- | 🌦
sunBehindRainCloud :: Emoji
sunBehindRainCloud = Emoji "🌦"

-- | 🌧
cloudWithRain :: Emoji
cloudWithRain = Emoji "🌧"

-- | 🌨
cloudWithSnow :: Emoji
cloudWithSnow = Emoji "🌨"

-- | 🌩
cloudWithLightning :: Emoji
cloudWithLightning = Emoji "🌩"

-- | 🌪
tornado :: Emoji
tornado = Emoji "🌪"

-- | 🌫
fog :: Emoji
fog = Emoji "🌫"

-- | 🌬
windFace :: Emoji
windFace = Emoji "🌬"

-- | 🌀
cyclone :: Emoji
cyclone = Emoji "🌀"

-- | 🌈
rainbow :: Emoji
rainbow = Emoji "🌈"

-- | 🌂
closedUmbrella :: Emoji
closedUmbrella = Emoji "🌂"

-- | ☂
umbrella :: Emoji
umbrella = Emoji "☂"

-- | ☔
umbrellaWithRainDrops :: Emoji
umbrellaWithRainDrops = Emoji "☔"

-- | ⛱
umbrellaOnGround :: Emoji
umbrellaOnGround = Emoji "⛱"

-- | ⚡
highVoltage :: Emoji
highVoltage = Emoji "⚡"

-- | ❄
snowflake :: Emoji
snowflake = Emoji "❄"

-- | ☃
snowman :: Emoji
snowman = Emoji "☃"

-- | ⛄
snowmanWithoutSnow :: Emoji
snowmanWithoutSnow = Emoji "⛄"

-- | ☄
comet :: Emoji
comet = Emoji "☄"

-- | 🔥
fire :: Emoji
fire = Emoji "🔥"

-- | 💧
droplet :: Emoji
droplet = Emoji "💧"

-- | 🌊
waterWave :: Emoji
waterWave = Emoji "🌊"

-- | 🎃
jackOLantern :: Emoji
jackOLantern = Emoji "🎃"

-- | 🎄
christmasTree :: Emoji
christmasTree = Emoji "🎄"

-- | 🎆
fireworks :: Emoji
fireworks = Emoji "🎆"

-- | 🎇
sparkler :: Emoji
sparkler = Emoji "🎇"

-- | 🧨
firecracker :: Emoji
firecracker = Emoji "🧨"

-- | ✨
sparkles :: Emoji
sparkles = Emoji "✨"

-- | 🎈
balloon :: Emoji
balloon = Emoji "🎈"

-- | 🎉
partyPopper :: Emoji
partyPopper = Emoji "🎉"

-- | 🎊
confettiBall :: Emoji
confettiBall = Emoji "🎊"

-- | 🎋
tanabataTree :: Emoji
tanabataTree = Emoji "🎋"

-- | 🎍
pineDecoration :: Emoji
pineDecoration = Emoji "🎍"

-- | 🎎
japaneseDolls :: Emoji
japaneseDolls = Emoji "🎎"

-- | 🎏
carpStreamer :: Emoji
carpStreamer = Emoji "🎏"

-- | 🎐
windChime :: Emoji
windChime = Emoji "🎐"

-- | 🎑
moonViewingCeremony :: Emoji
moonViewingCeremony = Emoji "🎑"

-- | 🧧
redEnvelope :: Emoji
redEnvelope = Emoji "🧧"

-- | 🎀
ribbon :: Emoji
ribbon = Emoji "🎀"

-- | 🎁
wrappedGift :: Emoji
wrappedGift = Emoji "🎁"

-- | 🎗
reminderRibbon :: Emoji
reminderRibbon = Emoji "🎗"

-- | 🎟
admissionTickets :: Emoji
admissionTickets = Emoji "🎟"

-- | 🎫
ticket :: Emoji
ticket = Emoji "🎫"

-- | 🎖
militaryMedal :: Emoji
militaryMedal = Emoji "🎖"

-- | 🏆
trophy :: Emoji
trophy = Emoji "🏆"

-- | 🏅
sportsMedal :: Emoji
sportsMedal = Emoji "🏅"

-- | 🥇
firstPlaceMedal :: Emoji
firstPlaceMedal = Emoji "🥇"

-- | 🥈
secondPlaceMedal :: Emoji
secondPlaceMedal = Emoji "🥈"

-- | 🥉
thirdPlaceMedal :: Emoji
thirdPlaceMedal = Emoji "🥉"

-- | ⚽
soccerBall :: Emoji
soccerBall = Emoji "⚽"

-- | ⚾
baseball :: Emoji
baseball = Emoji "⚾"

-- | 🥎
softball :: Emoji
softball = Emoji "🥎"

-- | 🏀
basketball :: Emoji
basketball = Emoji "🏀"

-- | 🏐
volleyball :: Emoji
volleyball = Emoji "🏐"

-- | 🏈
americanFootball :: Emoji
americanFootball = Emoji "🏈"

-- | 🏉
rugbyFootball :: Emoji
rugbyFootball = Emoji "🏉"

-- | 🎾
tennis :: Emoji
tennis = Emoji "🎾"

-- | 🥏
flyingDisc :: Emoji
flyingDisc = Emoji "🥏"

-- | 🎳
bowling :: Emoji
bowling = Emoji "🎳"

-- | 🏏
cricketGame :: Emoji
cricketGame = Emoji "🏏"

-- | 🏑
fieldHockey :: Emoji
fieldHockey = Emoji "🏑"

-- | 🏒
iceHockey :: Emoji
iceHockey = Emoji "🏒"

-- | 🥍
lacrosse :: Emoji
lacrosse = Emoji "🥍"

-- | 🏓
pingPong :: Emoji
pingPong = Emoji "🏓"

-- | 🏸
badminton :: Emoji
badminton = Emoji "🏸"

-- | 🥊
boxingGlove :: Emoji
boxingGlove = Emoji "🥊"

-- | 🥋
martialArtsUniform :: Emoji
martialArtsUniform = Emoji "🥋"

-- | 🥅
goalNet :: Emoji
goalNet = Emoji "🥅"

-- | ⛳
flagInHole :: Emoji
flagInHole = Emoji "⛳"

-- | ⛸
iceSkate :: Emoji
iceSkate = Emoji "⛸"

-- | 🎣
fishingPole :: Emoji
fishingPole = Emoji "🎣"

-- | 🤿
divingMask :: Emoji
divingMask = Emoji "🤿"

-- | 🎽
runningShirt :: Emoji
runningShirt = Emoji "🎽"

-- | 🎿
skis :: Emoji
skis = Emoji "🎿"

-- | 🛷
sled :: Emoji
sled = Emoji "🛷"

-- | 🥌
curlingStone :: Emoji
curlingStone = Emoji "🥌"

-- | 🎯
directHit :: Emoji
directHit = Emoji "🎯"

-- | 🪀
yoYo :: Emoji
yoYo = Emoji "🪀"

-- | 🪁
kite :: Emoji
kite = Emoji "🪁"

-- | 🎱
pool8Ball :: Emoji
pool8Ball = Emoji "🎱"

-- | 🔮
crystalBall :: Emoji
crystalBall = Emoji "🔮"

-- | 🪄
magicWand :: Emoji
magicWand = Emoji "🪄"

-- | 🧿
nazarAmulet :: Emoji
nazarAmulet = Emoji "🧿"

-- | 🎮
videoGame :: Emoji
videoGame = Emoji "🎮"

-- | 🕹
joystick :: Emoji
joystick = Emoji "🕹"

-- | 🎰
slotMachine :: Emoji
slotMachine = Emoji "🎰"

-- | 🎲
gameDie :: Emoji
gameDie = Emoji "🎲"

-- | 🧩
puzzlePiece :: Emoji
puzzlePiece = Emoji "🧩"

-- | 🧸
teddyBear :: Emoji
teddyBear = Emoji "🧸"

-- | 🪅
piñata :: Emoji
piñata = Emoji "🪅"

-- | 🪆
nestingDolls :: Emoji
nestingDolls = Emoji "🪆"

-- | ♠
spadeSuit :: Emoji
spadeSuit = Emoji "♠"

-- | ♥
heartSuit :: Emoji
heartSuit = Emoji "♥"

-- | ♦
diamondSuit :: Emoji
diamondSuit = Emoji "♦"

-- | ♣
clubSuit :: Emoji
clubSuit = Emoji "♣"

-- | ♟
chessPawn :: Emoji
chessPawn = Emoji "♟"

-- | 🃏
joker :: Emoji
joker = Emoji "🃏"

-- | 🀄
mahjongRedDragon :: Emoji
mahjongRedDragon = Emoji "🀄"

-- | 🎴
flowerPlayingCards :: Emoji
flowerPlayingCards = Emoji "🎴"

-- | 🎭
performingArts :: Emoji
performingArts = Emoji "🎭"

-- | 🖼
framedPicture :: Emoji
framedPicture = Emoji "🖼"

-- | 🎨
artistPalette :: Emoji
artistPalette = Emoji "🎨"

-- | 🧵
thread :: Emoji
thread = Emoji "🧵"

-- | 🪡
sewingNeedle :: Emoji
sewingNeedle = Emoji "🪡"

-- | 🧶
yarn :: Emoji
yarn = Emoji "🧶"

-- | 🪢
knot :: Emoji
knot = Emoji "🪢"

-- | 👓
glasses :: Emoji
glasses = Emoji "👓"

-- | 🕶
sunglasses :: Emoji
sunglasses = Emoji "🕶"

-- | 🥽
goggles :: Emoji
goggles = Emoji "🥽"

-- | 🥼
labCoat :: Emoji
labCoat = Emoji "🥼"

-- | 🦺
safetyVest :: Emoji
safetyVest = Emoji "🦺"

-- | 👔
necktie :: Emoji
necktie = Emoji "👔"

-- | 👕
tShirt :: Emoji
tShirt = Emoji "👕"

-- | 👖
jeans :: Emoji
jeans = Emoji "👖"

-- | 🧣
scarf :: Emoji
scarf = Emoji "🧣"

-- | 🧤
gloves :: Emoji
gloves = Emoji "🧤"

-- | 🧥
coat :: Emoji
coat = Emoji "🧥"

-- | 🧦
socks :: Emoji
socks = Emoji "🧦"

-- | 👗
dress :: Emoji
dress = Emoji "👗"

-- | 👘
kimono :: Emoji
kimono = Emoji "👘"

-- | 🥻
sari :: Emoji
sari = Emoji "🥻"

-- | 🩱
onePieceSwimsuit :: Emoji
onePieceSwimsuit = Emoji "🩱"

-- | 🩲
briefs :: Emoji
briefs = Emoji "🩲"

-- | 🩳
shorts :: Emoji
shorts = Emoji "🩳"

-- | 👙
bikini :: Emoji
bikini = Emoji "👙"

-- | 👚
womanSClothes :: Emoji
womanSClothes = Emoji "👚"

-- | 👛
purse :: Emoji
purse = Emoji "👛"

-- | 👜
handbag :: Emoji
handbag = Emoji "👜"

-- | 👝
clutchBag :: Emoji
clutchBag = Emoji "👝"

-- | 🛍
shoppingBags :: Emoji
shoppingBags = Emoji "🛍"

-- | 🎒
backpack :: Emoji
backpack = Emoji "🎒"

-- | 🩴
thongSandal :: Emoji
thongSandal = Emoji "🩴"

-- | 👞
manSShoe :: Emoji
manSShoe = Emoji "👞"

-- | 👟
runningShoe :: Emoji
runningShoe = Emoji "👟"

-- | 🥾
hikingBoot :: Emoji
hikingBoot = Emoji "🥾"

-- | 🥿
flatShoe :: Emoji
flatShoe = Emoji "🥿"

-- | 👠
highHeeledShoe :: Emoji
highHeeledShoe = Emoji "👠"

-- | 👡
womanSSandal :: Emoji
womanSSandal = Emoji "👡"

-- | 🩰
balletShoes :: Emoji
balletShoes = Emoji "🩰"

-- | 👢
womanSBoot :: Emoji
womanSBoot = Emoji "👢"

-- | 👑
crown :: Emoji
crown = Emoji "👑"

-- | 👒
womanSHat :: Emoji
womanSHat = Emoji "👒"

-- | 🎩
topHat :: Emoji
topHat = Emoji "🎩"

-- | 🎓
graduationCap :: Emoji
graduationCap = Emoji "🎓"

-- | 🧢
billedCap :: Emoji
billedCap = Emoji "🧢"

-- | 🪖
militaryHelmet :: Emoji
militaryHelmet = Emoji "🪖"

-- | ⛑
rescueWorkerSHelmet :: Emoji
rescueWorkerSHelmet = Emoji "⛑"

-- | 📿
prayerBeads :: Emoji
prayerBeads = Emoji "📿"

-- | 💄
lipstick :: Emoji
lipstick = Emoji "💄"

-- | 💍
ring :: Emoji
ring = Emoji "💍"

-- | 💎
gemStone :: Emoji
gemStone = Emoji "💎"

-- | 🔇
mutedSpeaker :: Emoji
mutedSpeaker = Emoji "🔇"

-- | 🔈
speakerLowVolume :: Emoji
speakerLowVolume = Emoji "🔈"

-- | 🔉
speakerMediumVolume :: Emoji
speakerMediumVolume = Emoji "🔉"

-- | 🔊
speakerHighVolume :: Emoji
speakerHighVolume = Emoji "🔊"

-- | 📢
loudspeaker :: Emoji
loudspeaker = Emoji "📢"

-- | 📣
megaphone :: Emoji
megaphone = Emoji "📣"

-- | 📯
postalHorn :: Emoji
postalHorn = Emoji "📯"

-- | 🔔
bell :: Emoji
bell = Emoji "🔔"

-- | 🔕
bellWithSlash :: Emoji
bellWithSlash = Emoji "🔕"

-- | 🎼
musicalScore :: Emoji
musicalScore = Emoji "🎼"

-- | 🎵
musicalNote :: Emoji
musicalNote = Emoji "🎵"

-- | 🎶
musicalNotes :: Emoji
musicalNotes = Emoji "🎶"

-- | 🎙
studioMicrophone :: Emoji
studioMicrophone = Emoji "🎙"

-- | 🎚
levelSlider :: Emoji
levelSlider = Emoji "🎚"

-- | 🎛
controlKnobs :: Emoji
controlKnobs = Emoji "🎛"

-- | 🎤
microphone :: Emoji
microphone = Emoji "🎤"

-- | 🎧
headphone :: Emoji
headphone = Emoji "🎧"

-- | 📻
radio :: Emoji
radio = Emoji "📻"

-- | 🎷
saxophone :: Emoji
saxophone = Emoji "🎷"

-- | 🪗
accordion :: Emoji
accordion = Emoji "🪗"

-- | 🎸
guitar :: Emoji
guitar = Emoji "🎸"

-- | 🎹
musicalKeyboard :: Emoji
musicalKeyboard = Emoji "🎹"

-- | 🎺
trumpet :: Emoji
trumpet = Emoji "🎺"

-- | 🎻
violin :: Emoji
violin = Emoji "🎻"

-- | 🪕
banjo :: Emoji
banjo = Emoji "🪕"

-- | 🥁
drum :: Emoji
drum = Emoji "🥁"

-- | 🪘
longDrum :: Emoji
longDrum = Emoji "🪘"

-- | 📱
mobilePhone :: Emoji
mobilePhone = Emoji "📱"

-- | 📲
mobilePhoneWithArrow :: Emoji
mobilePhoneWithArrow = Emoji "📲"

-- | ☎
telephone :: Emoji
telephone = Emoji "☎"

-- | 📞
telephoneReceiver :: Emoji
telephoneReceiver = Emoji "📞"

-- | 📟
pager :: Emoji
pager = Emoji "📟"

-- | 📠
faxMachine :: Emoji
faxMachine = Emoji "📠"

-- | 🔋
battery :: Emoji
battery = Emoji "🔋"

-- | 🔌
electricPlug :: Emoji
electricPlug = Emoji "🔌"

-- | 💻
laptop :: Emoji
laptop = Emoji "💻"

-- | 🖥
desktopComputer :: Emoji
desktopComputer = Emoji "🖥"

-- | 🖨
printer :: Emoji
printer = Emoji "🖨"

-- | ⌨
keyboard :: Emoji
keyboard = Emoji "⌨"

-- | 🖱
computerMouse :: Emoji
computerMouse = Emoji "🖱"

-- | 🖲
trackball :: Emoji
trackball = Emoji "🖲"

-- | 💽
computerDisk :: Emoji
computerDisk = Emoji "💽"

-- | 💾
floppyDisk :: Emoji
floppyDisk = Emoji "💾"

-- | 💿
opticalDisk :: Emoji
opticalDisk = Emoji "💿"

-- | 📀
dvd :: Emoji
dvd = Emoji "📀"

-- | 🧮
abacus :: Emoji
abacus = Emoji "🧮"

-- | 🎥
movieCamera :: Emoji
movieCamera = Emoji "🎥"

-- | 🎞
filmFrames :: Emoji
filmFrames = Emoji "🎞"

-- | 📽
filmProjector :: Emoji
filmProjector = Emoji "📽"

-- | 🎬
clapperBoard :: Emoji
clapperBoard = Emoji "🎬"

-- | 📺
television :: Emoji
television = Emoji "📺"

-- | 📷
camera :: Emoji
camera = Emoji "📷"

-- | 📸
cameraWithFlash :: Emoji
cameraWithFlash = Emoji "📸"

-- | 📹
videoCamera :: Emoji
videoCamera = Emoji "📹"

-- | 📼
videocassette :: Emoji
videocassette = Emoji "📼"

-- | 🔍
magnifyingGlassTiltedLeft :: Emoji
magnifyingGlassTiltedLeft = Emoji "🔍"

-- | 🔎
magnifyingGlassTiltedRight :: Emoji
magnifyingGlassTiltedRight = Emoji "🔎"

-- | 🕯
candle :: Emoji
candle = Emoji "🕯"

-- | 💡
lightBulb :: Emoji
lightBulb = Emoji "💡"

-- | 🔦
flashlight :: Emoji
flashlight = Emoji "🔦"

-- | 🏮
redPaperLantern :: Emoji
redPaperLantern = Emoji "🏮"

-- | 🪔
diyaLamp :: Emoji
diyaLamp = Emoji "🪔"

-- | 📔
notebookWithDecorativeCover :: Emoji
notebookWithDecorativeCover = Emoji "📔"

-- | 📕
closedBook :: Emoji
closedBook = Emoji "📕"

-- | 📖
openBook :: Emoji
openBook = Emoji "📖"

-- | 📗
greenBook :: Emoji
greenBook = Emoji "📗"

-- | 📘
blueBook :: Emoji
blueBook = Emoji "📘"

-- | 📙
orangeBook :: Emoji
orangeBook = Emoji "📙"

-- | 📚
books :: Emoji
books = Emoji "📚"

-- | 📓
notebook :: Emoji
notebook = Emoji "📓"

-- | 📒
ledger :: Emoji
ledger = Emoji "📒"

-- | 📃
pageWithCurl :: Emoji
pageWithCurl = Emoji "📃"

-- | 📜
scroll :: Emoji
scroll = Emoji "📜"

-- | 📄
pageFacingUp :: Emoji
pageFacingUp = Emoji "📄"

-- | 📰
newspaper :: Emoji
newspaper = Emoji "📰"

-- | 🗞
rolledUpNewspaper :: Emoji
rolledUpNewspaper = Emoji "🗞"

-- | 📑
bookmarkTabs :: Emoji
bookmarkTabs = Emoji "📑"

-- | 🔖
bookmark :: Emoji
bookmark = Emoji "🔖"

-- | 🏷
label :: Emoji
label = Emoji "🏷"

-- | 💰
moneyBag :: Emoji
moneyBag = Emoji "💰"

-- | 🪙
coin :: Emoji
coin = Emoji "🪙"

-- | 💴
yenBanknote :: Emoji
yenBanknote = Emoji "💴"

-- | 💵
dollarBanknote :: Emoji
dollarBanknote = Emoji "💵"

-- | 💶
euroBanknote :: Emoji
euroBanknote = Emoji "💶"

-- | 💷
poundBanknote :: Emoji
poundBanknote = Emoji "💷"

-- | 💸
moneyWithWings :: Emoji
moneyWithWings = Emoji "💸"

-- | 💳
creditCard :: Emoji
creditCard = Emoji "💳"

-- | 🧾
receipt :: Emoji
receipt = Emoji "🧾"

-- | 💹
chartIncreasingWithYen :: Emoji
chartIncreasingWithYen = Emoji "💹"

-- | ✉
envelope :: Emoji
envelope = Emoji "✉"

-- | 📧
eMail :: Emoji
eMail = Emoji "📧"

-- | 📨
incomingEnvelope :: Emoji
incomingEnvelope = Emoji "📨"

-- | 📩
envelopeWithArrow :: Emoji
envelopeWithArrow = Emoji "📩"

-- | 📤
outboxTray :: Emoji
outboxTray = Emoji "📤"

-- | 📥
inboxTray :: Emoji
inboxTray = Emoji "📥"

-- | 📦
package :: Emoji
package = Emoji "📦"

-- | 📫
closedMailboxWithRaisedFlag :: Emoji
closedMailboxWithRaisedFlag = Emoji "📫"

-- | 📪
closedMailboxWithLoweredFlag :: Emoji
closedMailboxWithLoweredFlag = Emoji "📪"

-- | 📬
openMailboxWithRaisedFlag :: Emoji
openMailboxWithRaisedFlag = Emoji "📬"

-- | 📭
openMailboxWithLoweredFlag :: Emoji
openMailboxWithLoweredFlag = Emoji "📭"

-- | 📮
postbox :: Emoji
postbox = Emoji "📮"

-- | 🗳
ballotBoxWithBallot :: Emoji
ballotBoxWithBallot = Emoji "🗳"

-- | ✏
pencil :: Emoji
pencil = Emoji "✏"

-- | ✒
blackNib :: Emoji
blackNib = Emoji "✒"

-- | 🖋
fountainPen :: Emoji
fountainPen = Emoji "🖋"

-- | 🖊
pen :: Emoji
pen = Emoji "🖊"

-- | 🖌
paintbrush :: Emoji
paintbrush = Emoji "🖌"

-- | 🖍
crayon :: Emoji
crayon = Emoji "🖍"

-- | 📝
memo :: Emoji
memo = Emoji "📝"

-- | 💼
briefcase :: Emoji
briefcase = Emoji "💼"

-- | 📁
fileFolder :: Emoji
fileFolder = Emoji "📁"

-- | 📂
openFileFolder :: Emoji
openFileFolder = Emoji "📂"

-- | 🗂
cardIndexDividers :: Emoji
cardIndexDividers = Emoji "🗂"

-- | 📅
calendar :: Emoji
calendar = Emoji "📅"

-- | 📆
tearOffCalendar :: Emoji
tearOffCalendar = Emoji "📆"

-- | 🗒
spiralNotepad :: Emoji
spiralNotepad = Emoji "🗒"

-- | 🗓
spiralCalendar :: Emoji
spiralCalendar = Emoji "🗓"

-- | 📇
cardIndex :: Emoji
cardIndex = Emoji "📇"

-- | 📈
chartIncreasing :: Emoji
chartIncreasing = Emoji "📈"

-- | 📉
chartDecreasing :: Emoji
chartDecreasing = Emoji "📉"

-- | 📊
barChart :: Emoji
barChart = Emoji "📊"

-- | 📋
clipboard :: Emoji
clipboard = Emoji "📋"

-- | 📌
pushpin :: Emoji
pushpin = Emoji "📌"

-- | 📍
roundPushpin :: Emoji
roundPushpin = Emoji "📍"

-- | 📎
paperclip :: Emoji
paperclip = Emoji "📎"

-- | 🖇
linkedPaperclips :: Emoji
linkedPaperclips = Emoji "🖇"

-- | 📏
straightRuler :: Emoji
straightRuler = Emoji "📏"

-- | 📐
triangularRuler :: Emoji
triangularRuler = Emoji "📐"

-- | ✂
scissors :: Emoji
scissors = Emoji "✂"

-- | 🗃
cardFileBox :: Emoji
cardFileBox = Emoji "🗃"

-- | 🗄
fileCabinet :: Emoji
fileCabinet = Emoji "🗄"

-- | 🗑
wastebasket :: Emoji
wastebasket = Emoji "🗑"

-- | 🔒
locked :: Emoji
locked = Emoji "🔒"

-- | 🔓
unlocked :: Emoji
unlocked = Emoji "🔓"

-- | 🔏
lockedWithPen :: Emoji
lockedWithPen = Emoji "🔏"

-- | 🔐
lockedWithKey :: Emoji
lockedWithKey = Emoji "🔐"

-- | 🔑
key :: Emoji
key = Emoji "🔑"

-- | 🗝
oldKey :: Emoji
oldKey = Emoji "🗝"

-- | 🔨
hammer :: Emoji
hammer = Emoji "🔨"

-- | 🪓
axe :: Emoji
axe = Emoji "🪓"

-- | ⛏
pick :: Emoji
pick = Emoji "⛏"

-- | ⚒
hammerAndPick :: Emoji
hammerAndPick = Emoji "⚒"

-- | 🛠
hammerAndWrench :: Emoji
hammerAndWrench = Emoji "🛠"

-- | 🗡
dagger :: Emoji
dagger = Emoji "🗡"

-- | ⚔
crossedSwords :: Emoji
crossedSwords = Emoji "⚔"

-- | 🔫
pistol :: Emoji
pistol = Emoji "🔫"

-- | 🪃
boomerang :: Emoji
boomerang = Emoji "🪃"

-- | 🏹
bowAndArrow :: Emoji
bowAndArrow = Emoji "🏹"

-- | 🛡
shield :: Emoji
shield = Emoji "🛡"

-- | 🪚
carpentrySaw :: Emoji
carpentrySaw = Emoji "🪚"

-- | 🔧
wrench :: Emoji
wrench = Emoji "🔧"

-- | 🪛
screwdriver :: Emoji
screwdriver = Emoji "🪛"

-- | 🔩
nutAndBolt :: Emoji
nutAndBolt = Emoji "🔩"

-- | ⚙
gear :: Emoji
gear = Emoji "⚙"

-- | 🗜
clamp :: Emoji
clamp = Emoji "🗜"

-- | ⚖
balanceScale :: Emoji
balanceScale = Emoji "⚖"

-- | 🦯
whiteCane :: Emoji
whiteCane = Emoji "🦯"

-- | 🔗
link :: Emoji
link = Emoji "🔗"

-- | ⛓
chains :: Emoji
chains = Emoji "⛓"

-- | 🪝
hook :: Emoji
hook = Emoji "🪝"

-- | 🧰
toolbox :: Emoji
toolbox = Emoji "🧰"

-- | 🧲
magnet :: Emoji
magnet = Emoji "🧲"

-- | 🪜
ladder :: Emoji
ladder = Emoji "🪜"

-- | ⚗
alembic :: Emoji
alembic = Emoji "⚗"

-- | 🧪
testTube :: Emoji
testTube = Emoji "🧪"

-- | 🧫
petriDish :: Emoji
petriDish = Emoji "🧫"

-- | 🧬
dna :: Emoji
dna = Emoji "🧬"

-- | 🔬
microscope :: Emoji
microscope = Emoji "🔬"

-- | 🔭
telescope :: Emoji
telescope = Emoji "🔭"

-- | 📡
satelliteAntenna :: Emoji
satelliteAntenna = Emoji "📡"

-- | 💉
syringe :: Emoji
syringe = Emoji "💉"

-- | 🩸
dropOfBlood :: Emoji
dropOfBlood = Emoji "🩸"

-- | 💊
pill :: Emoji
pill = Emoji "💊"

-- | 🩹
adhesiveBandage :: Emoji
adhesiveBandage = Emoji "🩹"

-- | 🩺
stethoscope :: Emoji
stethoscope = Emoji "🩺"

-- | 🚪
door :: Emoji
door = Emoji "🚪"

-- | 🛗
elevator :: Emoji
elevator = Emoji "🛗"

-- | 🪞
mirror :: Emoji
mirror = Emoji "🪞"

-- | 🪟
window :: Emoji
window = Emoji "🪟"

-- | 🛏
bed :: Emoji
bed = Emoji "🛏"

-- | 🛋
couchAndLamp :: Emoji
couchAndLamp = Emoji "🛋"

-- | 🪑
chair :: Emoji
chair = Emoji "🪑"

-- | 🚽
toilet :: Emoji
toilet = Emoji "🚽"

-- | 🪠
plunger :: Emoji
plunger = Emoji "🪠"

-- | 🚿
shower :: Emoji
shower = Emoji "🚿"

-- | 🛁
bathtub :: Emoji
bathtub = Emoji "🛁"

-- | 🪤
mouseTrap :: Emoji
mouseTrap = Emoji "🪤"

-- | 🪒
razor :: Emoji
razor = Emoji "🪒"

-- | 🧴
lotionBottle :: Emoji
lotionBottle = Emoji "🧴"

-- | 🧷
safetyPin :: Emoji
safetyPin = Emoji "🧷"

-- | 🧹
broom :: Emoji
broom = Emoji "🧹"

-- | 🧺
basket :: Emoji
basket = Emoji "🧺"

-- | 🧻
rollOfPaper :: Emoji
rollOfPaper = Emoji "🧻"

-- | 🪣
bucket :: Emoji
bucket = Emoji "🪣"

-- | 🧼
soap :: Emoji
soap = Emoji "🧼"

-- | 🪥
toothbrush :: Emoji
toothbrush = Emoji "🪥"

-- | 🧽
sponge :: Emoji
sponge = Emoji "🧽"

-- | 🧯
fireExtinguisher :: Emoji
fireExtinguisher = Emoji "🧯"

-- | 🛒
shoppingCart :: Emoji
shoppingCart = Emoji "🛒"

-- | 🚬
cigarette :: Emoji
cigarette = Emoji "🚬"

-- | ⚰
coffin :: Emoji
coffin = Emoji "⚰"

-- | 🪦
headstone :: Emoji
headstone = Emoji "🪦"

-- | ⚱
funeralUrn :: Emoji
funeralUrn = Emoji "⚱"

-- | 🗿
moai :: Emoji
moai = Emoji "🗿"

-- | 🪧
placard :: Emoji
placard = Emoji "🪧"

-- | 🏧
atmSign :: Emoji
atmSign = Emoji "🏧"

-- | 🚮
litterInBinSign :: Emoji
litterInBinSign = Emoji "🚮"

-- | 🚰
potableWater :: Emoji
potableWater = Emoji "🚰"

-- | ♿
wheelchairSymbol :: Emoji
wheelchairSymbol = Emoji "♿"

-- | 🚹
menSRoom :: Emoji
menSRoom = Emoji "🚹"

-- | 🚺
womenSRoom :: Emoji
womenSRoom = Emoji "🚺"

-- | 🚻
restroom :: Emoji
restroom = Emoji "🚻"

-- | 🚼
babySymbol :: Emoji
babySymbol = Emoji "🚼"

-- | 🚾
waterCloset :: Emoji
waterCloset = Emoji "🚾"

-- | 🛂
passportControl :: Emoji
passportControl = Emoji "🛂"

-- | 🛃
customs :: Emoji
customs = Emoji "🛃"

-- | 🛄
baggageClaim :: Emoji
baggageClaim = Emoji "🛄"

-- | 🛅
leftLuggage :: Emoji
leftLuggage = Emoji "🛅"

-- | ⚠
warning :: Emoji
warning = Emoji "⚠"

-- | 🚸
childrenCrossing :: Emoji
childrenCrossing = Emoji "🚸"

-- | ⛔
noEntry :: Emoji
noEntry = Emoji "⛔"

-- | 🚫
prohibited :: Emoji
prohibited = Emoji "🚫"

-- | 🚳
noBicycles :: Emoji
noBicycles = Emoji "🚳"

-- | 🚭
noSmoking :: Emoji
noSmoking = Emoji "🚭"

-- | 🚯
noLittering :: Emoji
noLittering = Emoji "🚯"

-- | 🚱
nonPotableWater :: Emoji
nonPotableWater = Emoji "🚱"

-- | 🚷
noPedestrians :: Emoji
noPedestrians = Emoji "🚷"

-- | 📵
noMobilePhones :: Emoji
noMobilePhones = Emoji "📵"

-- | 🔞
noOneUnderEighteen :: Emoji
noOneUnderEighteen = Emoji "🔞"

-- | ☢
radioactive :: Emoji
radioactive = Emoji "☢"

-- | ☣
biohazard :: Emoji
biohazard = Emoji "☣"

-- | ⬆
upArrow :: Emoji
upArrow = Emoji "⬆"

-- | ↗
upRightArrow :: Emoji
upRightArrow = Emoji "↗"

-- | ➡
rightArrow :: Emoji
rightArrow = Emoji "➡"

-- | ↘
downRightArrow :: Emoji
downRightArrow = Emoji "↘"

-- | ⬇
downArrow :: Emoji
downArrow = Emoji "⬇"

-- | ↙
downLeftArrow :: Emoji
downLeftArrow = Emoji "↙"

-- | ⬅
leftArrow :: Emoji
leftArrow = Emoji "⬅"

-- | ↖
upLeftArrow :: Emoji
upLeftArrow = Emoji "↖"

-- | ↕
upDownArrow :: Emoji
upDownArrow = Emoji "↕"

-- | ↔
leftRightArrow :: Emoji
leftRightArrow = Emoji "↔"

-- | ↩
rightArrowCurvingLeft :: Emoji
rightArrowCurvingLeft = Emoji "↩"

-- | ↪
leftArrowCurvingRight :: Emoji
leftArrowCurvingRight = Emoji "↪"

-- | ⤴
rightArrowCurvingUp :: Emoji
rightArrowCurvingUp = Emoji "⤴"

-- | ⤵
rightArrowCurvingDown :: Emoji
rightArrowCurvingDown = Emoji "⤵"

-- | 🔃
clockwiseVerticalArrows :: Emoji
clockwiseVerticalArrows = Emoji "🔃"

-- | 🔄
counterclockwiseArrowsButton :: Emoji
counterclockwiseArrowsButton = Emoji "🔄"

-- | 🔙
backArrow :: Emoji
backArrow = Emoji "🔙"

-- | 🔚
endArrow :: Emoji
endArrow = Emoji "🔚"

-- | 🔛
onArrow :: Emoji
onArrow = Emoji "🔛"

-- | 🔜
soonArrow :: Emoji
soonArrow = Emoji "🔜"

-- | 🔝
topArrow :: Emoji
topArrow = Emoji "🔝"

-- | 🛐
placeOfWorship :: Emoji
placeOfWorship = Emoji "🛐"

-- | ⚛
atomSymbol :: Emoji
atomSymbol = Emoji "⚛"

-- | 🕉
om :: Emoji
om = Emoji "🕉"

-- | ✡
starOfDavid :: Emoji
starOfDavid = Emoji "✡"

-- | ☸
wheelOfDharma :: Emoji
wheelOfDharma = Emoji "☸"

-- | ☯
yinYang :: Emoji
yinYang = Emoji "☯"

-- | ✝
latinCross :: Emoji
latinCross = Emoji "✝"

-- | ☦
orthodoxCross :: Emoji
orthodoxCross = Emoji "☦"

-- | ☪
starAndCrescent :: Emoji
starAndCrescent = Emoji "☪"

-- | ☮
peaceSymbol :: Emoji
peaceSymbol = Emoji "☮"

-- | 🕎
menorah :: Emoji
menorah = Emoji "🕎"

-- | 🔯
dottedSixPointedStar :: Emoji
dottedSixPointedStar = Emoji "🔯"

-- | ♈
aries :: Emoji
aries = Emoji "♈"

-- | ♉
taurus :: Emoji
taurus = Emoji "♉"

-- | ♊
gemini :: Emoji
gemini = Emoji "♊"

-- | ♋
cancer :: Emoji
cancer = Emoji "♋"

-- | ♌
leo :: Emoji
leo = Emoji "♌"

-- | ♍
virgo :: Emoji
virgo = Emoji "♍"

-- | ♎
libra :: Emoji
libra = Emoji "♎"

-- | ♏
scorpio :: Emoji
scorpio = Emoji "♏"

-- | ♐
sagittarius :: Emoji
sagittarius = Emoji "♐"

-- | ♑
capricorn :: Emoji
capricorn = Emoji "♑"

-- | ♒
aquarius :: Emoji
aquarius = Emoji "♒"

-- | ♓
pisces :: Emoji
pisces = Emoji "♓"

-- | ⛎
ophiuchus :: Emoji
ophiuchus = Emoji "⛎"

-- | 🔀
shuffleTracksButton :: Emoji
shuffleTracksButton = Emoji "🔀"

-- | 🔁
repeatButton :: Emoji
repeatButton = Emoji "🔁"

-- | 🔂
repeatSingleButton :: Emoji
repeatSingleButton = Emoji "🔂"

-- | ▶
playButton :: Emoji
playButton = Emoji "▶"

-- | ⏩
fastForwardButton :: Emoji
fastForwardButton = Emoji "⏩"

-- | ⏭
nextTrackButton :: Emoji
nextTrackButton = Emoji "⏭"

-- | ⏯
playOrPauseButton :: Emoji
playOrPauseButton = Emoji "⏯"

-- | ◀
reverseButton :: Emoji
reverseButton = Emoji "◀"

-- | ⏪
fastReverseButton :: Emoji
fastReverseButton = Emoji "⏪"

-- | ⏮
lastTrackButton :: Emoji
lastTrackButton = Emoji "⏮"

-- | 🔼
upwardsButton :: Emoji
upwardsButton = Emoji "🔼"

-- | ⏫
fastUpButton :: Emoji
fastUpButton = Emoji "⏫"

-- | 🔽
downwardsButton :: Emoji
downwardsButton = Emoji "🔽"

-- | ⏬
fastDownButton :: Emoji
fastDownButton = Emoji "⏬"

-- | ⏸
pauseButton :: Emoji
pauseButton = Emoji "⏸"

-- | ⏹
stopButton :: Emoji
stopButton = Emoji "⏹"

-- | ⏺
recordButton :: Emoji
recordButton = Emoji "⏺"

-- | ⏏
ejectButton :: Emoji
ejectButton = Emoji "⏏"

-- | 🎦
cinema :: Emoji
cinema = Emoji "🎦"

-- | 🔅
dimButton :: Emoji
dimButton = Emoji "🔅"

-- | 🔆
brightButton :: Emoji
brightButton = Emoji "🔆"

-- | 📶
antennaBars :: Emoji
antennaBars = Emoji "📶"

-- | 📳
vibrationMode :: Emoji
vibrationMode = Emoji "📳"

-- | 📴
mobilePhoneOff :: Emoji
mobilePhoneOff = Emoji "📴"

-- | ♀
femaleSign :: Emoji
femaleSign = Emoji "♀"

-- | ♂
maleSign :: Emoji
maleSign = Emoji "♂"

-- | ⚧
transgenderSymbol :: Emoji
transgenderSymbol = Emoji "⚧"

-- | ✖
multiply :: Emoji
multiply = Emoji "✖"

-- | ➕
plus :: Emoji
plus = Emoji "➕"

-- | ➖
minus :: Emoji
minus = Emoji "➖"

-- | ➗
divide :: Emoji
divide = Emoji "➗"

-- | ♾
infinity :: Emoji
infinity = Emoji "♾"

-- | ‼
doubleExclamationMark :: Emoji
doubleExclamationMark = Emoji "‼"

-- | ⁉
exclamationQuestionMark :: Emoji
exclamationQuestionMark = Emoji "⁉"

-- | ❓
questionMark :: Emoji
questionMark = Emoji "❓"

-- | ❔
whiteQuestionMark :: Emoji
whiteQuestionMark = Emoji "❔"

-- | ❕
whiteExclamationMark :: Emoji
whiteExclamationMark = Emoji "❕"

-- | ❗
exclamationMark :: Emoji
exclamationMark = Emoji "❗"

-- | 〰
wavyDash :: Emoji
wavyDash = Emoji "〰"

-- | 💱
currencyExchange :: Emoji
currencyExchange = Emoji "💱"

-- | 💲
heavyDollarSign :: Emoji
heavyDollarSign = Emoji "💲"

-- | ⚕
medicalSymbol :: Emoji
medicalSymbol = Emoji "⚕"

-- | ♻
recyclingSymbol :: Emoji
recyclingSymbol = Emoji "♻"

-- | ⚜
fleurDeLis :: Emoji
fleurDeLis = Emoji "⚜"

-- | 🔱
tridentEmblem :: Emoji
tridentEmblem = Emoji "🔱"

-- | 📛
nameBadge :: Emoji
nameBadge = Emoji "📛"

-- | 🔰
japaneseSymbolForBeginner :: Emoji
japaneseSymbolForBeginner = Emoji "🔰"

-- | ⭕
hollowRedCircle :: Emoji
hollowRedCircle = Emoji "⭕"

-- | ✅
checkMarkButton :: Emoji
checkMarkButton = Emoji "✅"

-- | ☑
checkBoxWithCheck :: Emoji
checkBoxWithCheck = Emoji "☑"

-- | ✔
checkMark :: Emoji
checkMark = Emoji "✔"

-- | ❌
crossMark :: Emoji
crossMark = Emoji "❌"

-- | ❎
crossMarkButton :: Emoji
crossMarkButton = Emoji "❎"

-- | ➰
curlyLoop :: Emoji
curlyLoop = Emoji "➰"

-- | ➿
doubleCurlyLoop :: Emoji
doubleCurlyLoop = Emoji "➿"

-- | 〽
partAlternationMark :: Emoji
partAlternationMark = Emoji "〽"

-- | ✳
eightSpokedAsterisk :: Emoji
eightSpokedAsterisk = Emoji "✳"

-- | ✴
eightPointedStar :: Emoji
eightPointedStar = Emoji "✴"

-- | ❇
sparkle :: Emoji
sparkle = Emoji "❇"

-- | ©
copyright :: Emoji
copyright = Emoji "©"

-- | ®
registered :: Emoji
registered = Emoji "®"

-- | ™
tradeMark :: Emoji
tradeMark = Emoji "™"

-- | 🔟
keycap10 :: Emoji
keycap10 = Emoji "🔟"

-- | 🔠
inputLatinUppercase :: Emoji
inputLatinUppercase = Emoji "🔠"

-- | 🔡
inputLatinLowercase :: Emoji
inputLatinLowercase = Emoji "🔡"

-- | 🔢
inputNumbers :: Emoji
inputNumbers = Emoji "🔢"

-- | 🔣
inputSymbols :: Emoji
inputSymbols = Emoji "🔣"

-- | 🔤
inputLatinLetters :: Emoji
inputLatinLetters = Emoji "🔤"

-- | 🅰
aButtonBloodType :: Emoji
aButtonBloodType = Emoji "🅰"

-- | 🆎
abButtonBloodType :: Emoji
abButtonBloodType = Emoji "🆎"

-- | 🅱
bButtonBloodType :: Emoji
bButtonBloodType = Emoji "🅱"

-- | 🆑
clButton :: Emoji
clButton = Emoji "🆑"

-- | 🆒
coolButton :: Emoji
coolButton = Emoji "🆒"

-- | 🆓
freeButton :: Emoji
freeButton = Emoji "🆓"

-- | ℹ
information :: Emoji
information = Emoji "ℹ"

-- | 🆔
idButton :: Emoji
idButton = Emoji "🆔"

-- | Ⓜ
circledM :: Emoji
circledM = Emoji "Ⓜ"

-- | 🆕
newButton :: Emoji
newButton = Emoji "🆕"

-- | 🆖
ngButton :: Emoji
ngButton = Emoji "🆖"

-- | 🅾
oButtonBloodType :: Emoji
oButtonBloodType = Emoji "🅾"

-- | 🆗
okButton :: Emoji
okButton = Emoji "🆗"

-- | 🅿
pButton :: Emoji
pButton = Emoji "🅿"

-- | 🆘
sosButton :: Emoji
sosButton = Emoji "🆘"

-- | 🆙
upButton :: Emoji
upButton = Emoji "🆙"

-- | 🆚
vsButton :: Emoji
vsButton = Emoji "🆚"

-- | 🈁
japaneseHereButton :: Emoji
japaneseHereButton = Emoji "🈁"

-- | 🈂
japaneseServiceChargeButton :: Emoji
japaneseServiceChargeButton = Emoji "🈂"

-- | 🈷
japaneseMonthlyAmountButton :: Emoji
japaneseMonthlyAmountButton = Emoji "🈷"

-- | 🈶
japaneseNotFreeOfChargeButton :: Emoji
japaneseNotFreeOfChargeButton = Emoji "🈶"

-- | 🈯
japaneseReservedButton :: Emoji
japaneseReservedButton = Emoji "🈯"

-- | 🉐
japaneseBargainButton :: Emoji
japaneseBargainButton = Emoji "🉐"

-- | 🈹
japaneseDiscountButton :: Emoji
japaneseDiscountButton = Emoji "🈹"

-- | 🈚
japaneseFreeOfChargeButton :: Emoji
japaneseFreeOfChargeButton = Emoji "🈚"

-- | 🈲
japaneseProhibitedButton :: Emoji
japaneseProhibitedButton = Emoji "🈲"

-- | 🉑
japaneseAcceptableButton :: Emoji
japaneseAcceptableButton = Emoji "🉑"

-- | 🈸
japaneseApplicationButton :: Emoji
japaneseApplicationButton = Emoji "🈸"

-- | 🈴
japanesePassingGradeButton :: Emoji
japanesePassingGradeButton = Emoji "🈴"

-- | 🈳
japaneseVacancyButton :: Emoji
japaneseVacancyButton = Emoji "🈳"

-- | ㊗
japaneseCongratulationsButton :: Emoji
japaneseCongratulationsButton = Emoji "㊗"

-- | ㊙
japaneseSecretButton :: Emoji
japaneseSecretButton = Emoji "㊙"

-- | 🈺
japaneseOpenForBusinessButton :: Emoji
japaneseOpenForBusinessButton = Emoji "🈺"

-- | 🈵
japaneseNoVacancyButton :: Emoji
japaneseNoVacancyButton = Emoji "🈵"

-- | 🔴
redCircle :: Emoji
redCircle = Emoji "🔴"

-- | 🟠
orangeCircle :: Emoji
orangeCircle = Emoji "🟠"

-- | 🟡
yellowCircle :: Emoji
yellowCircle = Emoji "🟡"

-- | 🟢
greenCircle :: Emoji
greenCircle = Emoji "🟢"

-- | 🔵
blueCircle :: Emoji
blueCircle = Emoji "🔵"

-- | 🟣
purpleCircle :: Emoji
purpleCircle = Emoji "🟣"

-- | 🟤
brownCircle :: Emoji
brownCircle = Emoji "🟤"

-- | ⚫
blackCircle :: Emoji
blackCircle = Emoji "⚫"

-- | ⚪
whiteCircle :: Emoji
whiteCircle = Emoji "⚪"

-- | 🟥
redSquare :: Emoji
redSquare = Emoji "🟥"

-- | 🟧
orangeSquare :: Emoji
orangeSquare = Emoji "🟧"

-- | 🟨
yellowSquare :: Emoji
yellowSquare = Emoji "🟨"

-- | 🟩
greenSquare :: Emoji
greenSquare = Emoji "🟩"

-- | 🟦
blueSquare :: Emoji
blueSquare = Emoji "🟦"

-- | 🟪
purpleSquare :: Emoji
purpleSquare = Emoji "🟪"

-- | 🟫
brownSquare :: Emoji
brownSquare = Emoji "🟫"

-- | ⬛
blackLargeSquare :: Emoji
blackLargeSquare = Emoji "⬛"

-- | ⬜
whiteLargeSquare :: Emoji
whiteLargeSquare = Emoji "⬜"

-- | ◼
blackMediumSquare :: Emoji
blackMediumSquare = Emoji "◼"

-- | ◻
whiteMediumSquare :: Emoji
whiteMediumSquare = Emoji "◻"

-- | ◾
blackMediumSmallSquare :: Emoji
blackMediumSmallSquare = Emoji "◾"

-- | ◽
whiteMediumSmallSquare :: Emoji
whiteMediumSmallSquare = Emoji "◽"

-- | ▪
blackSmallSquare :: Emoji
blackSmallSquare = Emoji "▪"

-- | ▫
whiteSmallSquare :: Emoji
whiteSmallSquare = Emoji "▫"

-- | 🔶
largeOrangeDiamond :: Emoji
largeOrangeDiamond = Emoji "🔶"

-- | 🔷
largeBlueDiamond :: Emoji
largeBlueDiamond = Emoji "🔷"

-- | 🔸
smallOrangeDiamond :: Emoji
smallOrangeDiamond = Emoji "🔸"

-- | 🔹
smallBlueDiamond :: Emoji
smallBlueDiamond = Emoji "🔹"

-- | 🔺
redTrianglePointedUp :: Emoji
redTrianglePointedUp = Emoji "🔺"

-- | 🔻
redTrianglePointedDown :: Emoji
redTrianglePointedDown = Emoji "🔻"

-- | 💠
diamondWithADot :: Emoji
diamondWithADot = Emoji "💠"

-- | 🔘
radioButton :: Emoji
radioButton = Emoji "🔘"

-- | 🔳
whiteSquareButton :: Emoji
whiteSquareButton = Emoji "🔳"

-- | 🔲
blackSquareButton :: Emoji
blackSquareButton = Emoji "🔲"

-- | 🏁
chequeredFlag :: Emoji
chequeredFlag = Emoji "🏁"

-- | 🚩
triangularFlag :: Emoji
triangularFlag = Emoji "🚩"

-- | 🎌
crossedFlags :: Emoji
crossedFlags = Emoji "🎌"

-- | 🏴
blackFlag :: Emoji
blackFlag = Emoji "🏴"

-- | 🏳
whiteFlag :: Emoji
whiteFlag = Emoji "🏳"
