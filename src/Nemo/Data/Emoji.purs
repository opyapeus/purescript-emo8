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
  | Child
  | Boy
  | Girl
  | Adult
  | Man
  | Woman
  | OlderAdult
  | OldMan
  | OldWoman
  | ManHealthWorker
  | WomanHealthWorker
  | ManStudent
  | WomanStudent
  | ManTeacher
  | WomanTeacher
  | ManJudge
  | WomanJudge
  | ManFarmer
  | WomanFarmer
  | ManCook
  | WomanCook
  | ManMechanic
  | WomanMechanic
  | ManFactoryWorker
  | WomanFactoryWorker
  | ManOfficeWorker
  | WomanOfficeWorker
  | ManScientist
  | WomanScientist
  | ManTechnologist
  | WomanTechnologist
  | ManSinger
  | WomanSinger
  | ManArtist
  | WomanArtist
  | ManPilot
  | WomanPilot
  | ManAstronaut
  | WomanAstronaut
  | ManFirefighter
  | WomanFirefighter
  | PoliceOfficer
  | ManPoliceOfficer
  | WomanPoliceOfficer
  | Detective
  | ManDetective
  | WomanDetective
  | Guard
  | ManGuard
  | WomanGuard
  | ConstructionWorker
  | ManConstructionWorker
  | WomanConstructionWorker
  | Prince
  | Princess
  | PersonWearingTurban
  | ManWearingTurban
  | WomanWearingTurban
  | ManWithChineseCap
  | WomanWithHeadscarf
  | BeardedPerson
  | BlondHairedPerson
  | BlondHairedMan
  | BlondHairedWoman
  | ManRedHaired
  | WomanRedHaired
  | ManCurlyHaired
  | WomanCurlyHaired
  | ManBald
  | WomanBald
  | ManWhiteHaired
  | WomanWhiteHaired
  | ManInTuxedo
  | BrideWithVeil
  | PregnantWoman
  | BreastFeeding
  | BabyAngel
  | SantaClaus
  | MrsClaus
  | Superhero
  | WomanSuperhero
  | ManSuperhero
  | Supervillain
  | WomanSupervillain
  | ManSupervillain
  | Mage
  | WomanMage
  | ManMage
  | Fairy
  | WomanFairy
  | ManFairy
  | Vampire
  | WomanVampire
  | ManVampire
  | Merperson
  | Mermaid
  | Merman
  | Elf
  | WomanElf
  | ManElf
  | Genie
  | WomanGenie
  | ManGenie
  | Zombie
  | WomanZombie
  | ManZombie
  | PersonFrowning
  | ManFrowning
  | WomanFrowning
  | PersonPouting
  | ManPouting
  | WomanPouting
  | PersonGesturingNO
  | ManGesturingNO
  | WomanGesturingNO
  | PersonGesturingOK
  | ManGesturingOK
  | WomanGesturingOK
  | PersonTippingHand
  | ManTippingHand
  | WomanTippingHand
  | PersonRaisingHand
  | ManRaisingHand
  | WomanRaisingHand
  | PersonBowing
  | ManBowing
  | WomanBowing
  | PersonFacepalming
  | ManFacepalming
  | WomanFacepalming
  | PersonShrugging
  | ManShrugging
  | WomanShrugging
  | PersonGettingMassage
  | ManGettingMassage
  | WomanGettingMassage
  | PersonGettingHaircut
  | ManGettingHaircut
  | WomanGettingHaircut
  | PersonWalking
  | ManWalking
  | WomanWalking
  | PersonRunning
  | ManRunning
  | WomanRunning
  | WomanDancing
  | ManDancing
  | PeopleWithBunnyEars
  | MenWithBunnyEars
  | WomenWithBunnyEars
  | PersonInSteamyRoom
  | WomanInSteamyRoom
  | ManInSteamyRoom
  | PersonClimbing
  | WomanClimbing
  | ManClimbing
  | PersonInLotusPosition
  | WomanInLotusPosition
  | ManInLotusPosition
  | PersonTakingBath
  | PersonInBed
  | ManInSuitLevitating
  | SpeakingHead
  | BustInSilhouette
  | BustsInSilhouette
  | PersonFencing
  | HorseRacing
  | Skier
  | Snowboarder
  | PersonGolfing
  | ManGolfing
  | WomanGolfing
  | PersonSurfing
  | ManSurfing
  | WomanSurfing
  | PersonRowingBoat
  | ManRowingBoat
  | WomanRowingBoat
  | PersonSwimming
  | ManSwimming
  | WomanSwimming
  | PersonBouncingBall
  | ManBouncingBall
  | WomanBouncingBall
  | PersonLiftingWeights
  | ManLiftingWeights
  | WomanLiftingWeights
  | PersonBiking
  | ManBiking
  | WomanBiking
  | PersonMountainBiking
  | ManMountainBiking
  | WomanMountainBiking
  | RacingCar
  | Motorcycle
  | PersonCartwheeling
  | ManCartwheeling
  | WomanCartwheeling
  | PeopleWrestling
  | MenWrestling
  | WomenWrestling
  | PersonPlayingWaterPolo
  | ManPlayingWaterPolo
  | WomanPlayingWaterPolo
  | PersonPlayingHandball
  | ManPlayingHandball
  | WomanPlayingHandball
  | PersonJuggling
  | ManJuggling
  | WomanJuggling
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
  | FlexedBiceps
  | Leg
  | Foot
  | BackhandIndexPointingLeft
  | BackhandIndexPointingRight
  | IndexPointingUp
  | BackhandIndexPointingUp
  | MiddleFinger
  | BackhandIndexPointingDown
  | VictoryHand
  | CrossedFingers
  | VulcanSalute
  | SignOfTheHorns
  | CallMeHand
  | HandWithFingersSplayed
  | RaisedHand
  | OKHand
  | ThumbsUp
  | ThumbsDown
  | RaisedFist
  | OncomingFist
  | LeftFacingFist
  | RightFacingFist
  | RaisedBackOfHand
  | WavingHand
  | LoveYouGesture
  | WritingHand
  | ClappingHands
  | OpenHands
  | RaisingHands
  | PalmsUpTogether
  | FoldedHands
  | Handshake
  | NailPolish
  | Ear
  | Nose
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
  show Child = "🧒"
  show Boy = "👦"
  show Girl = "👧"
  show Adult = "🧑"
  show Man = "👨"
  show Woman = "👩"
  show OlderAdult = "🧓"
  show OldMan = "👴"
  show OldWoman = "👵"
  -- subgroup: person-role
  show ManHealthWorker = "👨‍⚕️"
  show WomanHealthWorker = "👩‍⚕️"
  show ManStudent = "👨‍🎓"
  show WomanStudent = "👩‍🎓"
  show ManTeacher = "👨‍🏫"
  show WomanTeacher = "👩‍🏫"
  show ManJudge = "👨‍⚖️"
  show WomanJudge = "👩‍⚖️"
  show ManFarmer = "👨‍🌾"
  show WomanFarmer = "👩‍🌾"
  show ManCook = "👨‍🍳"
  show WomanCook = "👩‍🍳"
  show ManMechanic = "👨‍🔧"
  show WomanMechanic = "👩‍🔧"
  show ManFactoryWorker = "👨‍🏭"
  show WomanFactoryWorker = "👩‍🏭"
  show ManOfficeWorker = "👨‍💼"
  show WomanOfficeWorker = "👩‍💼"
  show ManScientist = "👨‍🔬"
  show WomanScientist = "👩‍🔬"
  show ManTechnologist = "👨‍💻"
  show WomanTechnologist = "👩‍💻"
  show ManSinger = "👨‍🎤"
  show WomanSinger = "👩‍🎤"
  show ManArtist = "👨‍🎨"
  show WomanArtist = "👩‍🎨"
  show ManPilot = "👨‍✈️"
  show WomanPilot = "👩‍✈️"
  show ManAstronaut = "👨‍🚀"
  show WomanAstronaut = "👩‍🚀"
  show ManFirefighter = "👨‍🚒"
  show WomanFirefighter = "👩‍🚒"
  show PoliceOfficer = "👮"
  show ManPoliceOfficer = "👮‍♂️"
  show WomanPoliceOfficer = "👮‍♀️"
  show Detective = "🕵️"
  show ManDetective = "🕵️‍♂️"
  show WomanDetective = "🕵️‍♀️"
  show Guard = "💂"
  show ManGuard = "💂‍♂️"
  show WomanGuard = "💂‍♀️"
  show ConstructionWorker = "👷"
  show ManConstructionWorker = "👷‍♂️"
  show WomanConstructionWorker = "👷‍♀️"
  show Prince = "🤴"
  show Princess = "👸"
  show PersonWearingTurban = "👳"
  show ManWearingTurban = "👳‍♂️"
  show WomanWearingTurban = "👳‍♀️"
  show ManWithChineseCap = "👲"
  show WomanWithHeadscarf = "🧕"
  show BeardedPerson = "🧔"
  show BlondHairedPerson = "👱"
  show BlondHairedMan = "👱‍♂️"
  show BlondHairedWoman = "👱‍♀️"
  show ManRedHaired = "👨‍🦰"
  show WomanRedHaired = "👩‍🦰"
  show ManCurlyHaired = "👨‍🦱"
  show WomanCurlyHaired = "👩‍🦱"
  show ManBald = "👨‍🦲"
  show WomanBald = "👩‍🦲"
  show ManWhiteHaired = "👨‍🦳"
  show WomanWhiteHaired = "👩‍🦳"
  show ManInTuxedo = "🤵"
  show BrideWithVeil = "👰"
  show PregnantWoman = "🤰"
  show BreastFeeding = "🤱"
  -- subgroup: person-fantasy
  show BabyAngel = "👼"
  show SantaClaus = "🎅"
  show MrsClaus = "🤶"
  show Superhero = "🦸"
  show WomanSuperhero = "🦸‍♀️"
  show ManSuperhero = "🦸‍♂️"
  show Supervillain = "🦹"
  show WomanSupervillain = "🦹‍♀️"
  show ManSupervillain = "🦹‍♂️"
  show Mage = "🧙"
  show WomanMage = "🧙‍♀️"
  show ManMage = "🧙‍♂️"
  show Fairy = "🧚"
  show WomanFairy = "🧚‍♀️"
  show ManFairy = "🧚‍♂️"
  show Vampire = "🧛"
  show WomanVampire = "🧛‍♀️"
  show ManVampire = "🧛‍♂️"
  show Merperson = "🧜"
  show Mermaid = "🧜‍♀️"
  show Merman = "🧜‍♂️"
  show Elf = "🧝"
  show WomanElf = "🧝‍♀️"
  show ManElf = "🧝‍♂️"
  show Genie = "🧞"
  show WomanGenie = "🧞‍♀️"
  show ManGenie = "🧞‍♂️"
  show Zombie = "🧟"
  show WomanZombie = "🧟‍♀️"
  show ManZombie = "🧟‍♂️"
  -- subgroup: person-gesture
  show PersonFrowning = "🙍"
  show ManFrowning = "🙍‍♂️"
  show WomanFrowning = "🙍‍♀️"
  show PersonPouting = "🙎"
  show ManPouting = "🙎‍♂️"
  show WomanPouting = "🙎‍♀️"
  show PersonGesturingNO = "🙅"
  show ManGesturingNO = "🙅‍♂️"
  show WomanGesturingNO = "🙅‍♀️"
  show PersonGesturingOK = "🙆"
  show ManGesturingOK = "🙆‍♂️"
  show WomanGesturingOK = "🙆‍♀️"
  show PersonTippingHand = "💁"
  show ManTippingHand = "💁‍♂️"
  show WomanTippingHand = "💁‍♀️"
  show PersonRaisingHand = "🙋"
  show ManRaisingHand = "🙋‍♂️"
  show WomanRaisingHand = "🙋‍♀️"
  show PersonBowing = "🙇"
  show ManBowing = "🙇‍♂️"
  show WomanBowing = "🙇‍♀️"
  show PersonFacepalming = "🤦"
  show ManFacepalming = "🤦‍♂️"
  show WomanFacepalming = "🤦‍♀️"
  show PersonShrugging = "🤷"
  show ManShrugging = "🤷‍♂️"
  show WomanShrugging = "🤷‍♀️"
  -- subgroup: person-activity
  show PersonGettingMassage = "💆"
  show ManGettingMassage = "💆‍♂️"
  show WomanGettingMassage = "💆‍♀️"
  show PersonGettingHaircut = "💇"
  show ManGettingHaircut = "💇‍♂️"
  show WomanGettingHaircut = "💇‍♀️"
  show PersonWalking = "🚶"
  show ManWalking = "🚶‍♂️"
  show WomanWalking = "🚶‍♀️"
  show PersonRunning = "🏃"
  show ManRunning = "🏃‍♂️"
  show WomanRunning = "🏃‍♀️"
  show WomanDancing = "💃"
  show ManDancing = "🕺"
  show PeopleWithBunnyEars = "👯"
  show MenWithBunnyEars = "👯‍♂️"
  show WomenWithBunnyEars = "👯‍♀️"
  show PersonInSteamyRoom = "🧖"
  show WomanInSteamyRoom = "🧖‍♀️"
  show ManInSteamyRoom = "🧖‍♂️"
  show PersonClimbing = "🧗"
  show WomanClimbing = "🧗‍♀️"
  show ManClimbing = "🧗‍♂️"
  show PersonInLotusPosition = "🧘"
  show WomanInLotusPosition = "🧘‍♀️"
  show ManInLotusPosition = "🧘‍♂️"
  show PersonTakingBath = "🛀"
  show PersonInBed = "🛌"
  show ManInSuitLevitating = "🕴️"
  show SpeakingHead = "🗣️"
  show BustInSilhouette = "👤"
  show BustsInSilhouette = "👥"
  -- subgroup: person-sport
  show PersonFencing = "🤺"
  show HorseRacing = "🏇"
  show Skier = "⛷️"
  show Snowboarder = "🏂"
  show PersonGolfing = "🏌️"
  show ManGolfing = "🏌️‍♂️"
  show WomanGolfing = "🏌️‍♀️"
  show PersonSurfing = "🏄"
  show ManSurfing = "🏄‍♂️"
  show WomanSurfing = "🏄‍♀️"
  show PersonRowingBoat = "🚣"
  show ManRowingBoat = "🚣‍♂️"
  show WomanRowingBoat = "🚣‍♀️"
  show PersonSwimming = "🏊"
  show ManSwimming = "🏊‍♂️"
  show WomanSwimming = "🏊‍♀️"
  show PersonBouncingBall = "⛹️"
  show ManBouncingBall = "⛹️‍♂️"
  show WomanBouncingBall = "⛹️‍♀️"
  show PersonLiftingWeights = "🏋️"
  show ManLiftingWeights = "🏋️‍♂️"
  show WomanLiftingWeights = "🏋️‍♀️"
  show PersonBiking = "🚴"
  show ManBiking = "🚴‍♂️"
  show WomanBiking = "🚴‍♀️"
  show PersonMountainBiking = "🚵"
  show ManMountainBiking = "🚵‍♂️"
  show WomanMountainBiking = "🚵‍♀️"
  show RacingCar = "🏎️"
  show Motorcycle = "🏍️"
  show PersonCartwheeling = "🤸"
  show ManCartwheeling = "🤸‍♂️"
  show WomanCartwheeling = "🤸‍♀️"
  show PeopleWrestling = "🤼"
  show MenWrestling = "🤼‍♂️"
  show WomenWrestling = "🤼‍♀️"
  show PersonPlayingWaterPolo = "🤽"
  show ManPlayingWaterPolo = "🤽‍♂️"
  show WomanPlayingWaterPolo = "🤽‍♀️"
  show PersonPlayingHandball = "🤾"
  show ManPlayingHandball = "🤾‍♂️"
  show WomanPlayingHandball = "🤾‍♀️"
  show PersonJuggling = "🤹"
  show ManJuggling = "🤹‍♂️"
  show WomanJuggling = "🤹‍♀️"
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
  show FlexedBiceps = "💪"
  show Leg = "🦵"
  show Foot = "🦶"
  show BackhandIndexPointingLeft = "👈"
  show BackhandIndexPointingRight = "👉"
  show IndexPointingUp = "☝️"
  show BackhandIndexPointingUp = "👆"
  show MiddleFinger = "🖕"
  show BackhandIndexPointingDown = "👇"
  show VictoryHand = "✌️"
  show CrossedFingers = "🤞"
  show VulcanSalute = "🖖"
  show SignOfTheHorns = "🤘"
  show CallMeHand = "🤙"
  show HandWithFingersSplayed = "🖐️"
  show RaisedHand = "✋"
  show OKHand = "👌"
  show ThumbsUp = "👍"
  show ThumbsDown = "👎"
  show RaisedFist = "✊"
  show OncomingFist = "👊"
  show LeftFacingFist = "🤛"
  show RightFacingFist = "🤜"
  show RaisedBackOfHand = "🤚"
  show WavingHand = "👋"
  show LoveYouGesture = "🤟"
  show WritingHand = "✍️"
  show ClappingHands = "👏"
  show OpenHands = "👐"
  show RaisingHands = "🙌"
  show PalmsUpTogether = "🤲"
  show FoldedHands = "🙏"
  show Handshake = "🤝"
  show NailPolish = "💅"
  show Ear = "👂"
  show Nose = "👃"
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

instance readEmoji :: Show Emoji => Read Emoji where
  read "😀" = Right GrinningFace
  read "😁" = Right BeamingFaceWithSmilingEyes
  read "😂" = Right FaceWithTearsOfJoy
  read "🤣" = Right RollingOnTheFloorLaughing
  read "😃" = Right GrinningFaceWithBigEyes
  read "😄" = Right GrinningFaceWithSmilingEyes
  read "😅" = Right GrinningFaceWithSweat
  read "😆" = Right GrinningSquintingFace
  read "😉" = Right WinkingFace
  read "😊" = Right SmilingFaceWithSmilingEyes
  read "😋" = Right FaceSavoringFood
  read "😎" = Right SmilingFaceWithSunglasses
  read "😍" = Right SmilingFaceWithHeartEyes
  read "😘" = Right FaceBlowingAKiss
  read "🥰" = Right SmilingFaceWith3Hearts
  read "😗" = Right KissingFace
  read "😙" = Right KissingFaceWithSmilingEyes
  read "😚" = Right KissingFaceWithClosedEyes
  read "☺️" = Right SmilingFace
  read "🙂" = Right SlightlySmilingFace
  read "🤗" = Right HuggingFace
  read "🤩" = Right StarStruck
  read "🤔" = Right ThinkingFace
  read "🤨" = Right FaceWithRaisedEyebrow
  read "😐" = Right NeutralFace
  read "😑" = Right ExpressionlessFace
  read "😶" = Right FaceWithoutMouth
  read "🙄" = Right FaceWithRollingEyes
  read "😏" = Right SmirkingFace
  read "😣" = Right PerseveringFace
  read "😥" = Right SadButRelievedFace
  read "😮" = Right FaceWithOpenMouth
  read "🤐" = Right ZipperMouthFace
  read "😯" = Right HushedFace
  read "😪" = Right SleepyFace
  read "😫" = Right TiredFace
  read "😴" = Right SleepingFace
  read "😌" = Right RelievedFace
  read "😛" = Right FaceWithTongue
  read "😜" = Right WinkingFaceWithTongue
  read "😝" = Right SquintingFaceWithTongue
  read "🤤" = Right DroolingFace
  read "😒" = Right UnamusedFace
  read "😓" = Right DowncastFaceWithSweat
  read "😔" = Right PensiveFace
  read "😕" = Right ConfusedFace
  read "🙃" = Right UpsideDownFace
  read "🤑" = Right MoneyMouthFace
  read "😲" = Right AstonishedFace
  read "☹️" = Right FrowningFace
  read "🙁" = Right SlightlyFrowningFace
  read "😖" = Right ConfoundedFace
  read "😞" = Right DisappointedFace
  read "😟" = Right WorriedFace
  read "😤" = Right FaceWithSteamFromNose
  read "😢" = Right CryingFace
  read "😭" = Right LoudlyCryingFace
  read "😦" = Right FrowningFaceWithOpenMouth
  read "😧" = Right AnguishedFace
  read "😨" = Right FearfulFace
  read "😩" = Right WearyFace
  read "🤯" = Right ExplodingHead
  read "😬" = Right GrimacingFace
  read "😰" = Right AnxiousFaceWithSweat
  read "😱" = Right FaceScreamingInFear
  read "🥵" = Right HotFace
  read "🥶" = Right ColdFace
  read "😳" = Right FlushedFace
  read "🤪" = Right ZanyFace
  read "😵" = Right DizzyFace
  read "😡" = Right PoutingFace
  read "😠" = Right AngryFace
  read "🤬" = Right FaceWithSymbolsOnMouth
  read "😷" = Right FaceWithMedicalMask
  read "🤒" = Right FaceWithThermometer
  read "🤕" = Right FaceWithHeadBandage
  read "🤢" = Right NauseatedFace
  read "🤮" = Right FaceVomiting
  read "🤧" = Right SneezingFace
  read "😇" = Right SmilingFaceWithHalo
  read "🤠" = Right CowboyHatFace
  read "🥳" = Right PartyingFace
  read "🥴" = Right WoozyFace
  read "🥺" = Right PleadingFace
  read "🤥" = Right LyingFace
  read "🤫" = Right ShushingFace
  read "🤭" = Right FaceWithHandOverMouth
  read "🧐" = Right FaceWithMonocle
  read "🤓" = Right NerdFace
  read "😈" = Right SmilingFaceWithHorns
  read "👿" = Right AngryFaceWithHorns
  read "🤡" = Right ClownFace
  read "👹" = Right Ogre
  read "👺" = Right Goblin
  read "💀" = Right Skull
  read "☠️" = Right SkullAndCrossbones
  read "👻" = Right Ghost
  read "👽" = Right Alien
  read "👾" = Right AlienMonster
  read "🤖" = Right RobotFace
  read "💩" = Right PileOfPoo
  read "😺" = Right GrinningCatFace
  read "😸" = Right GrinningCatFaceWithSmilingEyes
  read "😹" = Right CatFaceWithTearsOfJoy
  read "😻" = Right SmilingCatFaceWithHeartEyes
  read "😼" = Right CatFaceWithWrySmile
  read "😽" = Right KissingCatFace
  read "🙀" = Right WearyCatFace
  read "😿" = Right CryingCatFace
  read "😾" = Right PoutingCatFace
  read "🙈" = Right SeeNoEvilMonkey
  read "🙉" = Right HearNoEvilMonkey
  read "🙊" = Right SpeakNoEvilMonkey
  read "🏻" = Right LightSkinTone
  read "🏼" = Right MediumLightSkinTone
  read "🏽" = Right MediumSkinTone
  read "🏾" = Right MediumDarkSkinTone
  read "🏿" = Right DarkSkinTone
  read "👶" = Right Baby
  read "🧒" = Right Child
  read "👦" = Right Boy
  read "👧" = Right Girl
  read "🧑" = Right Adult
  read "👨" = Right Man
  read "👩" = Right Woman
  read "🧓" = Right OlderAdult
  read "👴" = Right OldMan
  read "👵" = Right OldWoman
  read "👨‍⚕️" = Right ManHealthWorker
  read "👩‍⚕️" = Right WomanHealthWorker
  read "👨‍🎓" = Right ManStudent
  read "👩‍🎓" = Right WomanStudent
  read "👨‍🏫" = Right ManTeacher
  read "👩‍🏫" = Right WomanTeacher
  read "👨‍⚖️" = Right ManJudge
  read "👩‍⚖️" = Right WomanJudge
  read "👨‍🌾" = Right ManFarmer
  read "👩‍🌾" = Right WomanFarmer
  read "👨‍🍳" = Right ManCook
  read "👩‍🍳" = Right WomanCook
  read "👨‍🔧" = Right ManMechanic
  read "👩‍🔧" = Right WomanMechanic
  read "👨‍🏭" = Right ManFactoryWorker
  read "👩‍🏭" = Right WomanFactoryWorker
  read "👨‍💼" = Right ManOfficeWorker
  read "👩‍💼" = Right WomanOfficeWorker
  read "👨‍🔬" = Right ManScientist
  read "👩‍🔬" = Right WomanScientist
  read "👨‍💻" = Right ManTechnologist
  read "👩‍💻" = Right WomanTechnologist
  read "👨‍🎤" = Right ManSinger
  read "👩‍🎤" = Right WomanSinger
  read "👨‍🎨" = Right ManArtist
  read "👩‍🎨" = Right WomanArtist
  read "👨‍✈️" = Right ManPilot
  read "👩‍✈️" = Right WomanPilot
  read "👨‍🚀" = Right ManAstronaut
  read "👩‍🚀" = Right WomanAstronaut
  read "👨‍🚒" = Right ManFirefighter
  read "👩‍🚒" = Right WomanFirefighter
  read "👮" = Right PoliceOfficer
  read "👮‍♂️" = Right ManPoliceOfficer
  read "👮‍♀️" = Right WomanPoliceOfficer
  read "🕵️" = Right Detective
  read "🕵️‍♂️" = Right ManDetective
  read "🕵️‍♀️" = Right WomanDetective
  read "💂" = Right Guard
  read "💂‍♂️" = Right ManGuard
  read "💂‍♀️" = Right WomanGuard
  read "👷" = Right ConstructionWorker
  read "👷‍♂️" = Right ManConstructionWorker
  read "👷‍♀️" = Right WomanConstructionWorker
  read "🤴" = Right Prince
  read "👸" = Right Princess
  read "👳" = Right PersonWearingTurban
  read "👳‍♂️" = Right ManWearingTurban
  read "👳‍♀️" = Right WomanWearingTurban
  read "👲" = Right ManWithChineseCap
  read "🧕" = Right WomanWithHeadscarf
  read "🧔" = Right BeardedPerson
  read "👱" = Right BlondHairedPerson
  read "👱‍♂️" = Right BlondHairedMan
  read "👱‍♀️" = Right BlondHairedWoman
  read "👨‍🦰" = Right ManRedHaired
  read "👩‍🦰" = Right WomanRedHaired
  read "👨‍🦱" = Right ManCurlyHaired
  read "👩‍🦱" = Right WomanCurlyHaired
  read "👨‍🦲" = Right ManBald
  read "👩‍🦲" = Right WomanBald
  read "👨‍🦳" = Right ManWhiteHaired
  read "👩‍🦳" = Right WomanWhiteHaired
  read "🤵" = Right ManInTuxedo
  read "👰" = Right BrideWithVeil
  read "🤰" = Right PregnantWoman
  read "🤱" = Right BreastFeeding
  read "👼" = Right BabyAngel
  read "🎅" = Right SantaClaus
  read "🤶" = Right MrsClaus
  read "🦸" = Right Superhero
  read "🦸‍♀️" = Right WomanSuperhero
  read "🦸‍♂️" = Right ManSuperhero
  read "🦹" = Right Supervillain
  read "🦹‍♀️" = Right WomanSupervillain
  read "🦹‍♂️" = Right ManSupervillain
  read "🧙" = Right Mage
  read "🧙‍♀️" = Right WomanMage
  read "🧙‍♂️" = Right ManMage
  read "🧚" = Right Fairy
  read "🧚‍♀️" = Right WomanFairy
  read "🧚‍♂️" = Right ManFairy
  read "🧛" = Right Vampire
  read "🧛‍♀️" = Right WomanVampire
  read "🧛‍♂️" = Right ManVampire
  read "🧜" = Right Merperson
  read "🧜‍♀️" = Right Mermaid
  read "🧜‍♂️" = Right Merman
  read "🧝" = Right Elf
  read "🧝‍♀️" = Right WomanElf
  read "🧝‍♂️" = Right ManElf
  read "🧞" = Right Genie
  read "🧞‍♀️" = Right WomanGenie
  read "🧞‍♂️" = Right ManGenie
  read "🧟" = Right Zombie
  read "🧟‍♀️" = Right WomanZombie
  read "🧟‍♂️" = Right ManZombie
  read "🙍" = Right PersonFrowning
  read "🙍‍♂️" = Right ManFrowning
  read "🙍‍♀️" = Right WomanFrowning
  read "🙎" = Right PersonPouting
  read "🙎‍♂️" = Right ManPouting
  read "🙎‍♀️" = Right WomanPouting
  read "🙅" = Right PersonGesturingNO
  read "🙅‍♂️" = Right ManGesturingNO
  read "🙅‍♀️" = Right WomanGesturingNO
  read "🙆" = Right PersonGesturingOK
  read "🙆‍♂️" = Right ManGesturingOK
  read "🙆‍♀️" = Right WomanGesturingOK
  read "💁" = Right PersonTippingHand
  read "💁‍♂️" = Right ManTippingHand
  read "💁‍♀️" = Right WomanTippingHand
  read "🙋" = Right PersonRaisingHand
  read "🙋‍♂️" = Right ManRaisingHand
  read "🙋‍♀️" = Right WomanRaisingHand
  read "🙇" = Right PersonBowing
  read "🙇‍♂️" = Right ManBowing
  read "🙇‍♀️" = Right WomanBowing
  read "🤦" = Right PersonFacepalming
  read "🤦‍♂️" = Right ManFacepalming
  read "🤦‍♀️" = Right WomanFacepalming
  read "🤷" = Right PersonShrugging
  read "🤷‍♂️" = Right ManShrugging
  read "🤷‍♀️" = Right WomanShrugging
  read "💆" = Right PersonGettingMassage
  read "💆‍♂️" = Right ManGettingMassage
  read "💆‍♀️" = Right WomanGettingMassage
  read "💇" = Right PersonGettingHaircut
  read "💇‍♂️" = Right ManGettingHaircut
  read "💇‍♀️" = Right WomanGettingHaircut
  read "🚶" = Right PersonWalking
  read "🚶‍♂️" = Right ManWalking
  read "🚶‍♀️" = Right WomanWalking
  read "🏃" = Right PersonRunning
  read "🏃‍♂️" = Right ManRunning
  read "🏃‍♀️" = Right WomanRunning
  read "💃" = Right WomanDancing
  read "🕺" = Right ManDancing
  read "👯" = Right PeopleWithBunnyEars
  read "👯‍♂️" = Right MenWithBunnyEars
  read "👯‍♀️" = Right WomenWithBunnyEars
  read "🧖" = Right PersonInSteamyRoom
  read "🧖‍♀️" = Right WomanInSteamyRoom
  read "🧖‍♂️" = Right ManInSteamyRoom
  read "🧗" = Right PersonClimbing
  read "🧗‍♀️" = Right WomanClimbing
  read "🧗‍♂️" = Right ManClimbing
  read "🧘" = Right PersonInLotusPosition
  read "🧘‍♀️" = Right WomanInLotusPosition
  read "🧘‍♂️" = Right ManInLotusPosition
  read "🛀" = Right PersonTakingBath
  read "🛌" = Right PersonInBed
  read "🕴️" = Right ManInSuitLevitating
  read "🗣️" = Right SpeakingHead
  read "👤" = Right BustInSilhouette
  read "👥" = Right BustsInSilhouette
  read "🤺" = Right PersonFencing
  read "🏇" = Right HorseRacing
  read "⛷️" = Right Skier
  read "🏂" = Right Snowboarder
  read "🏌️" = Right PersonGolfing
  read "🏌️‍♂️" = Right ManGolfing
  read "🏌️‍♀️" = Right WomanGolfing
  read "🏄" = Right PersonSurfing
  read "🏄‍♂️" = Right ManSurfing
  read "🏄‍♀️" = Right WomanSurfing
  read "🚣" = Right PersonRowingBoat
  read "🚣‍♂️" = Right ManRowingBoat
  read "🚣‍♀️" = Right WomanRowingBoat
  read "🏊" = Right PersonSwimming
  read "🏊‍♂️" = Right ManSwimming
  read "🏊‍♀️" = Right WomanSwimming
  read "⛹️" = Right PersonBouncingBall
  read "⛹️‍♂️" = Right ManBouncingBall
  read "⛹️‍♀️" = Right WomanBouncingBall
  read "🏋️" = Right PersonLiftingWeights
  read "🏋️‍♂️" = Right ManLiftingWeights
  read "🏋️‍♀️" = Right WomanLiftingWeights
  read "🚴" = Right PersonBiking
  read "🚴‍♂️" = Right ManBiking
  read "🚴‍♀️" = Right WomanBiking
  read "🚵" = Right PersonMountainBiking
  read "🚵‍♂️" = Right ManMountainBiking
  read "🚵‍♀️" = Right WomanMountainBiking
  read "🏎️" = Right RacingCar
  read "🏍️" = Right Motorcycle
  read "🤸" = Right PersonCartwheeling
  read "🤸‍♂️" = Right ManCartwheeling
  read "🤸‍♀️" = Right WomanCartwheeling
  read "🤼" = Right PeopleWrestling
  read "🤼‍♂️" = Right MenWrestling
  read "🤼‍♀️" = Right WomenWrestling
  read "🤽" = Right PersonPlayingWaterPolo
  read "🤽‍♂️" = Right ManPlayingWaterPolo
  read "🤽‍♀️" = Right WomanPlayingWaterPolo
  read "🤾" = Right PersonPlayingHandball
  read "🤾‍♂️" = Right ManPlayingHandball
  read "🤾‍♀️" = Right WomanPlayingHandball
  read "🤹" = Right PersonJuggling
  read "🤹‍♂️" = Right ManJuggling
  read "🤹‍♀️" = Right WomanJuggling
  read "👫" = Right ManAndWomanHoldingHands
  read "👬" = Right TwoMenHoldingHands
  read "👭" = Right TwoWomenHoldingHands
  read "💏" = Right Kiss
  read "👩‍❤️‍💋‍👨" = Right KissWomanMan
  read "👨‍❤️‍💋‍👨" = Right KissManMan
  read "👩‍❤️‍💋‍👩" = Right KissWomanWoman
  read "💑" = Right CoupleWithHeart
  read "👩‍❤️‍👨" = Right CoupleWithHeartWomanMan
  read "👨‍❤️‍👨" = Right CoupleWithHeartManMan
  read "👩‍❤️‍👩" = Right CoupleWithHeartWomanWoman
  read "👪" = Right Family
  read "👨‍👩‍👦" = Right FamilyManWomanBoy
  read "👨‍👩‍👧" = Right FamilyManWomanGirl
  read "👨‍👩‍👧‍👦" = Right FamilyManWomanGirlBoy
  read "👨‍👩‍👦‍👦" = Right FamilyManWomanBoyBoy
  read "👨‍👩‍👧‍👧" = Right FamilyManWomanGirlGirl
  read "👨‍👨‍👦" = Right FamilyManManBoy
  read "👨‍👨‍👧" = Right FamilyManManGirl
  read "👨‍👨‍👧‍👦" = Right FamilyManManGirlBoy
  read "👨‍👨‍👦‍👦" = Right FamilyManManBoyBoy
  read "👨‍👨‍👧‍👧" = Right FamilyManManGirlGirl
  read "👩‍👩‍👦" = Right FamilyWomanWomanBoy
  read "👩‍👩‍👧" = Right FamilyWomanWomanGirl
  read "👩‍👩‍👧‍👦" = Right FamilyWomanWomanGirlBoy
  read "👩‍👩‍👦‍👦" = Right FamilyWomanWomanBoyBoy
  read "👩‍👩‍👧‍👧" = Right FamilyWomanWomanGirlGirl
  read "👨‍👦" = Right FamilyManBoy
  read "👨‍👦‍👦" = Right FamilyManBoyBoy
  read "👨‍👧" = Right FamilyManGirl
  read "👨‍👧‍👦" = Right FamilyManGirlBoy
  read "👨‍👧‍👧" = Right FamilyManGirlGirl
  read "👩‍👦" = Right FamilyWomanBoy
  read "👩‍👦‍👦" = Right FamilyWomanBoyBoy
  read "👩‍👧" = Right FamilyWomanGirl
  read "👩‍👧‍👦" = Right FamilyWomanGirlBoy
  read "👩‍👧‍👧" = Right FamilyWomanGirlGirl
  read "🤳" = Right Selfie
  read "💪" = Right FlexedBiceps
  read "🦵" = Right Leg
  read "🦶" = Right Foot
  read "👈" = Right BackhandIndexPointingLeft
  read "👉" = Right BackhandIndexPointingRight
  read "☝️" = Right IndexPointingUp
  read "👆" = Right BackhandIndexPointingUp
  read "🖕" = Right MiddleFinger
  read "👇" = Right BackhandIndexPointingDown
  read "✌️" = Right VictoryHand
  read "🤞" = Right CrossedFingers
  read "🖖" = Right VulcanSalute
  read "🤘" = Right SignOfTheHorns
  read "🤙" = Right CallMeHand
  read "🖐️" = Right HandWithFingersSplayed
  read "✋" = Right RaisedHand
  read "👌" = Right OKHand
  read "👍" = Right ThumbsUp
  read "👎" = Right ThumbsDown
  read "✊" = Right RaisedFist
  read "👊" = Right OncomingFist
  read "🤛" = Right LeftFacingFist
  read "🤜" = Right RightFacingFist
  read "🤚" = Right RaisedBackOfHand
  read "👋" = Right WavingHand
  read "🤟" = Right LoveYouGesture
  read "✍️" = Right WritingHand
  read "👏" = Right ClappingHands
  read "👐" = Right OpenHands
  read "🙌" = Right RaisingHands
  read "🤲" = Right PalmsUpTogether
  read "🙏" = Right FoldedHands
  read "🤝" = Right Handshake
  read "💅" = Right NailPolish
  read "👂" = Right Ear
  read "👃" = Right Nose
  read "🦰" = Right RedHaired
  read "🦱" = Right CurlyHaired
  read "🦲" = Right Bald
  read "🦳" = Right WhiteHaired
  read "👣" = Right Footprints
  read "👀" = Right Eyes
  read "👁️" = Right Eye
  read "👁️‍🗨️" = Right EyeInSpeechBubble
  read "🧠" = Right Brain
  read "🦴" = Right Bone
  read "🦷" = Right Tooth
  read "👅" = Right Tongue
  read "👄" = Right Mouth
  read "💋" = Right KissMark
  read "💘" = Right HeartWithArrow
  read "❤️" = Right RedHeart
  read "💓" = Right BeatingHeart
  read "💔" = Right BrokenHeart
  read "💕" = Right TwoHearts
  read "💖" = Right SparklingHeart
  read "💗" = Right GrowingHeart
  read "💙" = Right BlueHeart
  read "💚" = Right GreenHeart
  read "💛" = Right YellowHeart
  read "🧡" = Right OrangeHeart
  read "💜" = Right PurpleHeart
  read "🖤" = Right BlackHeart
  read "💝" = Right HeartWithRibbon
  read "💞" = Right RevolvingHearts
  read "💟" = Right HeartDecoration
  read "❣️" = Right HeavyHeartExclamation
  read "💌" = Right LoveLetter
  read "💤" = Right Zzz
  read "💢" = Right AngerSymbol
  read "💣" = Right Bomb
  read "💥" = Right Collision
  read "💦" = Right SweatDroplets
  read "💨" = Right DashingAway
  read "💫" = Right Dizzy
  read "💬" = Right SpeechBalloon
  read "🗨️" = Right LeftSpeechBubble
  read "🗯️" = Right RightAngerBubble
  read "💭" = Right ThoughtBalloon
  read "🕳️" = Right Hole
  read "👓" = Right Glasses
  read "🕶️" = Right Sunglasses
  read "🥽" = Right Goggles
  read "🥼" = Right LabCoat
  read "👔" = Right Necktie
  read "👕" = Right TShirt
  read "👖" = Right Jeans
  read "🧣" = Right Scarf
  read "🧤" = Right Gloves
  read "🧥" = Right Coat
  read "🧦" = Right Socks
  read "👗" = Right Dress
  read "👘" = Right Kimono
  read "👙" = Right Bikini
  read "👚" = Right WomansClothes
  read "👛" = Right Purse
  read "👜" = Right Handbag
  read "👝" = Right ClutchBag
  read "🛍️" = Right ShoppingBags
  read "🎒" = Right SchoolBackpack
  read "👞" = Right MansShoe
  read "👟" = Right RunningShoe
  read "🥾" = Right HikingBoot
  read "🥿" = Right WomansFlatShoe
  read "👠" = Right HighHeeledShoe
  read "👡" = Right WomansSandal
  read "👢" = Right WomansBoot
  read "👑" = Right Crown
  read "👒" = Right WomansHat
  read "🎩" = Right TopHat
  read "🎓" = Right GraduationCap
  read "🧢" = Right BilledCap
  read "⛑️" = Right RescueWorkersHelmet
  read "📿" = Right PrayerBeads
  read "💄" = Right Lipstick
  read "💍" = Right Ring
  read "💎" = Right GemStone
  read "🐵" = Right MonkeyFace
  read "🐒" = Right Monkey
  read "🦍" = Right Gorilla
  read "🐶" = Right DogFace
  read "🐕" = Right Dog
  read "🐩" = Right Poodle
  read "🐺" = Right WolfFace
  read "🦊" = Right FoxFace
  read "🦝" = Right Raccoon
  read "🐱" = Right CatFace
  read "🐈" = Right Cat
  read "🦁" = Right LionFace
  read "🐯" = Right TigerFace
  read "🐅" = Right Tiger
  read "🐆" = Right Leopard
  read "🐴" = Right HorseFace
  read "🐎" = Right Horse
  read "🦄" = Right UnicornFace
  read "🦓" = Right Zebra
  read "🦌" = Right Deer
  read "🐮" = Right CowFace
  read "🐂" = Right Ox
  read "🐃" = Right WaterBuffalo
  read "🐄" = Right Cow
  read "🐷" = Right PigFace
  read "🐖" = Right Pig
  read "🐗" = Right Boar
  read "🐽" = Right PigNose
  read "🐏" = Right Ram
  read "🐑" = Right Ewe
  read "🐐" = Right Goat
  read "🐪" = Right Camel
  read "🐫" = Right TwoHumpCamel
  read "🦙" = Right Llama
  read "🦒" = Right Giraffe
  read "🐘" = Right Elephant
  read "🦏" = Right Rhinoceros
  read "🦛" = Right Hippopotamus
  read "🐭" = Right MouseFace
  read "🐁" = Right Mouse
  read "🐀" = Right Rat
  read "🐹" = Right HamsterFace
  read "🐰" = Right RabbitFace
  read "🐇" = Right Rabbit
  read "🐿️" = Right Chipmunk
  read "🦔" = Right Hedgehog
  read "🦇" = Right Bat
  read "🐻" = Right BearFace
  read "🐨" = Right Koala
  read "🐼" = Right PandaFace
  read "🦘" = Right Kangaroo
  read "🦡" = Right Badger
  read "🐾" = Right PawPrints
  read "🦃" = Right Turkey
  read "🐔" = Right Chicken
  read "🐓" = Right Rooster
  read "🐣" = Right HatchingChick
  read "🐤" = Right BabyChick
  read "🐥" = Right FrontFacingBabyChick
  read "🐦" = Right Bird
  read "🐧" = Right Penguin
  read "🕊️" = Right Dove
  read "🦅" = Right Eagle
  read "🦆" = Right Duck
  read "🦢" = Right Swan
  read "🦉" = Right Owl
  read "🦚" = Right Peacock
  read "🦜" = Right Parrot
  read "🐸" = Right FrogFace
  read "🐊" = Right Crocodile
  read "🐢" = Right Turtle
  read "🦎" = Right Lizard
  read "🐍" = Right Snake
  read "🐲" = Right DragonFace
  read "🐉" = Right Dragon
  read "🦕" = Right Sauropod
  read "🦖" = Right TRex
  read "🐳" = Right SpoutingWhale
  read "🐋" = Right Whale
  read "🐬" = Right Dolphin
  read "🐟" = Right Fish
  read "🐠" = Right TropicalFish
  read "🐡" = Right Blowfish
  read "🦈" = Right Shark
  read "🐙" = Right Octopus
  read "🐚" = Right SpiralShell
  read "🦀" = Right Crab
  read "🦞" = Right Lobster
  read "🦐" = Right Shrimp
  read "🦑" = Right Squid
  read "🐌" = Right Snail
  read "🦋" = Right Butterfly
  read "🐛" = Right Bug
  read "🐜" = Right Ant
  read "🐝" = Right Honeybee
  read "🐞" = Right LadyBeetle
  read "🦗" = Right Cricket
  read "🕷️" = Right Spider
  read "🕸️" = Right SpiderWeb
  read "🦂" = Right Scorpion
  read "🦟" = Right Mosquito
  read "🦠" = Right Microbe
  read "💐" = Right Bouquet
  read "🌸" = Right CherryBlossom
  read "💮" = Right WhiteFlower
  read "🏵️" = Right Rosette
  read "🌹" = Right Rose
  read "🥀" = Right WiltedFlower
  read "🌺" = Right Hibiscus
  read "🌻" = Right Sunflower
  read "🌼" = Right Blossom
  read "🌷" = Right Tulip
  read "🌱" = Right Seedling
  read "🌲" = Right EvergreenTree
  read "🌳" = Right DeciduousTree
  read "🌴" = Right PalmTree
  read "🌵" = Right Cactus
  read "🌾" = Right SheafOfRice
  read "🌿" = Right Herb
  read "☘️" = Right Shamrock
  read "🍀" = Right FourLeafClover
  read "🍁" = Right MapleLeaf
  read "🍂" = Right FallenLeaf
  read "🍃" = Right LeafFlutteringInWind
  read "🍇" = Right Grapes
  read "🍈" = Right Melon
  read "🍉" = Right Watermelon
  read "🍊" = Right Tangerine
  read "🍋" = Right Lemon
  read "🍌" = Right Banana
  read "🍍" = Right Pineapple
  read "🥭" = Right Mango
  read "🍎" = Right RedApple
  read "🍏" = Right GreenApple
  read "🍐" = Right Pear
  read "🍑" = Right Peach
  read "🍒" = Right Cherries
  read "🍓" = Right Strawberry
  read "🥝" = Right KiwiFruit
  read "🍅" = Right Tomato
  read "🥥" = Right Coconut
  read "🥑" = Right Avocado
  read "🍆" = Right Eggplant
  read "🥔" = Right Potato
  read "🥕" = Right Carrot
  read "🌽" = Right EarOfCorn
  read "🌶️" = Right HotPepper
  read "🥒" = Right Cucumber
  read "🥬" = Right LeafyGreen
  read "🥦" = Right Broccoli
  read "🍄" = Right Mushroom
  read "🥜" = Right Peanuts
  read "🌰" = Right Chestnut
  read "🍞" = Right Bread
  read "🥐" = Right Croissant
  read "🥖" = Right BaguetteBread
  read "🥨" = Right Pretzel
  read "🥯" = Right Bagel
  read "🥞" = Right Pancakes
  read "🧀" = Right CheeseWedge
  read "🍖" = Right MeatOnBone
  read "🍗" = Right PoultryLeg
  read "🥩" = Right CutOfMeat
  read "🥓" = Right Bacon
  read "🍔" = Right Hamburger
  read "🍟" = Right FrenchFries
  read "🍕" = Right Pizza
  read "🌭" = Right HotDog
  read "🥪" = Right Sandwich
  read "🌮" = Right Taco
  read "🌯" = Right Burrito
  read "🥙" = Right StuffedFlatbread
  read "🥚" = Right Egg
  read "🍳" = Right Cooking
  read "🥘" = Right ShallowPanOfFood
  read "🍲" = Right PotOfFood
  read "🥣" = Right BowlWithSpoon
  read "🥗" = Right GreenSalad
  read "🍿" = Right Popcorn
  read "🧂" = Right Salt
  read "🥫" = Right CannedFood
  read "🍱" = Right BentoBox
  read "🍘" = Right RiceCracker
  read "🍙" = Right RiceBall
  read "🍚" = Right CookedRice
  read "🍛" = Right CurryRice
  read "🍜" = Right SteamingBowl
  read "🍝" = Right Spaghetti
  read "🍠" = Right RoastedSweetPotato
  read "🍢" = Right Oden
  read "🍣" = Right Sushi
  read "🍤" = Right FriedShrimp
  read "🍥" = Right FishCakeWithSwirl
  read "🥮" = Right MoonCake
  read "🍡" = Right Dango
  read "🥟" = Right Dumpling
  read "🥠" = Right FortuneCookie
  read "🥡" = Right TakeoutBox
  read "🍦" = Right SoftIceCream
  read "🍧" = Right ShavedIce
  read "🍨" = Right IceCream
  read "🍩" = Right Doughnut
  read "🍪" = Right Cookie
  read "🎂" = Right BirthdayCake
  read "🍰" = Right Shortcake
  read "🧁" = Right Cupcake
  read "🥧" = Right Pie
  read "🍫" = Right ChocolateBar
  read "🍬" = Right Candy
  read "🍭" = Right Lollipop
  read "🍮" = Right Custard
  read "🍯" = Right HoneyPot
  read "🍼" = Right BabyBottle
  read "🥛" = Right GlassOfMilk
  read "☕" = Right HotBeverage
  read "🍵" = Right TeacupWithoutHandle
  read "🍶" = Right Sake
  read "🍾" = Right BottleWithPoppingCork
  read "🍷" = Right WineGlass
  read "🍸" = Right CocktailGlass
  read "🍹" = Right TropicalDrink
  read "🍺" = Right BeerMug
  read "🍻" = Right ClinkingBeerMugs
  read "🥂" = Right ClinkingGlasses
  read "🥃" = Right TumblerGlass
  read "🥤" = Right CupWithStraw
  read "🥢" = Right Chopsticks
  read "🍽️" = Right ForkAndKnifeWithPlate
  read "🍴" = Right ForkAndKnife
  read "🥄" = Right Spoon
  read "🔪" = Right KitchenKnife
  read "🏺" = Right Amphora
  read "🌍" = Right GlobeShowingEuropeAfrica
  read "🌎" = Right GlobeShowingAmericas
  read "🌏" = Right GlobeShowingAsiaAustralia
  read "🌐" = Right GlobeWithMeridians
  read "🗺️" = Right WorldMap
  read "🗾" = Right MapOfJapan
  read "🧭" = Right Compass
  read "🏔️" = Right SnowCappedMountain
  read "⛰️" = Right Mountain
  read "🌋" = Right Volcano
  read "🗻" = Right MountFuji
  read "🏕️" = Right Camping
  read "🏖️" = Right BeachWithUmbrella
  read "🏜️" = Right Desert
  read "🏝️" = Right DesertIsland
  read "🏞️" = Right NationalPark
  read "🏟️" = Right Stadium
  read "🏛️" = Right ClassicalBuilding
  read "🏗️" = Right BuildingConstruction
  read "🧱" = Right Bricks
  read "🏘️" = Right Houses
  read "🏚️" = Right DerelictHouse
  read "🏠" = Right House
  read "🏡" = Right HouseWithGarden
  read "🏢" = Right OfficeBuilding
  read "🏣" = Right JapanesePostOffice
  read "🏤" = Right PostOffice
  read "🏥" = Right Hospital
  read "🏦" = Right Bank
  read "🏨" = Right Hotel
  read "🏩" = Right LoveHotel
  read "🏪" = Right ConvenienceStore
  read "🏫" = Right School
  read "🏬" = Right DepartmentStore
  read "🏭" = Right Factory
  read "🏯" = Right JapaneseCastle
  read "🏰" = Right Castle
  read "💒" = Right Wedding
  read "🗼" = Right TokyoTower
  read "🗽" = Right StatueOfLiberty
  read "⛪" = Right Church
  read "🕌" = Right Mosque
  read "🕍" = Right Synagogue
  read "⛩️" = Right ShintoShrine
  read "🕋" = Right Kaaba
  read "⛲" = Right Fountain
  read "⛺" = Right Tent
  read "🌁" = Right Foggy
  read "🌃" = Right NightWithStars
  read "🏙️" = Right Cityscape
  read "🌄" = Right SunriseOverMountains
  read "🌅" = Right Sunrise
  read "🌆" = Right CityscapeAtDusk
  read "🌇" = Right Sunset
  read "🌉" = Right BridgeAtNight
  read "♨️" = Right HotSprings
  read "🌌" = Right MilkyWay
  read "🎠" = Right CarouselHorse
  read "🎡" = Right FerrisWheel
  read "🎢" = Right RollerCoaster
  read "💈" = Right BarberPole
  read "🎪" = Right CircusTent
  read "🚂" = Right Locomotive
  read "🚃" = Right RailwayCar
  read "🚄" = Right HighSpeedTrain
  read "🚅" = Right BulletTrain
  read "🚆" = Right Train
  read "🚇" = Right Metro
  read "🚈" = Right LightRail
  read "🚉" = Right Station
  read "🚊" = Right Tram
  read "🚝" = Right Monorail
  read "🚞" = Right MountainRailway
  read "🚋" = Right TramCar
  read "🚌" = Right Bus
  read "🚍" = Right OncomingBus
  read "🚎" = Right Trolleybus
  read "🚐" = Right Minibus
  read "🚑" = Right Ambulance
  read "🚒" = Right FireEngine
  read "🚓" = Right PoliceCar
  read "🚔" = Right OncomingPoliceCar
  read "🚕" = Right Taxi
  read "🚖" = Right OncomingTaxi
  read "🚗" = Right Automobile
  read "🚘" = Right OncomingAutomobile
  read "🚙" = Right SportUtilityVehicle
  read "🚚" = Right DeliveryTruck
  read "🚛" = Right ArticulatedLorry
  read "🚜" = Right Tractor
  read "🚲" = Right Bicycle
  read "🛴" = Right KickScooter
  read "🛹" = Right Skateboard
  read "🛵" = Right MotorScooter
  read "🚏" = Right BusStop
  read "🛣️" = Right Motorway
  read "🛤️" = Right RailwayTrack
  read "🛢️" = Right OilDrum
  read "⛽" = Right FuelPump
  read "🚨" = Right PoliceCarLight
  read "🚥" = Right HorizontalTrafficLight
  read "🚦" = Right VerticalTrafficLight
  read "🛑" = Right StopSign
  read "🚧" = Right Construction
  read "⚓" = Right Anchor
  read "⛵" = Right Sailboat
  read "🛶" = Right Canoe
  read "🚤" = Right Speedboat
  read "🛳️" = Right PassengerShip
  read "⛴️" = Right Ferry
  read "🛥️" = Right MotorBoat
  read "🚢" = Right Ship
  read "✈️" = Right Airplane
  read "🛩️" = Right SmallAirplane
  read "🛫" = Right AirplaneDeparture
  read "🛬" = Right AirplaneArrival
  read "💺" = Right Seat
  read "🚁" = Right Helicopter
  read "🚟" = Right SuspensionRailway
  read "🚠" = Right MountainCableway
  read "🚡" = Right AerialTramway
  read "🛰️" = Right Satellite
  read "🚀" = Right Rocket
  read "🛸" = Right FlyingSaucer
  read "🛎️" = Right BellhopBell
  read "🧳" = Right Luggage
  read "⌛" = Right HourglassDone
  read "⏳" = Right HourglassNotDone
  read "⌚" = Right Watch
  read "⏰" = Right AlarmClock
  read "⏱️" = Right Stopwatch
  read "⏲️" = Right TimerClock
  read "🕰️" = Right MantelpieceClock
  read "🕛" = Right TwelveOclock
  read "🕧" = Right TwelveThirty
  read "🕐" = Right OneOclock
  read "🕜" = Right OneThirty
  read "🕑" = Right TwoOclock
  read "🕝" = Right TwoThirty
  read "🕒" = Right ThreeOclock
  read "🕞" = Right ThreeThirty
  read "🕓" = Right FourOclock
  read "🕟" = Right FourThirty
  read "🕔" = Right FiveOclock
  read "🕠" = Right FiveThirty
  read "🕕" = Right SixOclock
  read "🕡" = Right SixThirty
  read "🕖" = Right SevenOclock
  read "🕢" = Right SevenThirty
  read "🕗" = Right EightOclock
  read "🕣" = Right EightThirty
  read "🕘" = Right NineOclock
  read "🕤" = Right NineThirty
  read "🕙" = Right TenOclock
  read "🕥" = Right TenThirty
  read "🕚" = Right ElevenOclock
  read "🕦" = Right ElevenThirty
  read "🌑" = Right NewMoon
  read "🌒" = Right WaxingCrescentMoon
  read "🌓" = Right FirstQuarterMoon
  read "🌔" = Right WaxingGibbousMoon
  read "🌕" = Right FullMoon
  read "🌖" = Right WaningGibbousMoon
  read "🌗" = Right LastQuarterMoon
  read "🌘" = Right WaningCrescentMoon
  read "🌙" = Right CrescentMoon
  read "🌚" = Right NewMoonFace
  read "🌛" = Right FirstQuarterMoonFace
  read "🌜" = Right LastQuarterMoonFace
  read "🌡️" = Right Thermometer
  read "☀️" = Right Sun
  read "🌝" = Right FullMoonFace
  read "🌞" = Right SunWithFace
  read "⭐" = Right Star
  read "🌟" = Right GlowingStar
  read "🌠" = Right ShootingStar
  read "☁️" = Right Cloud
  read "⛅" = Right SunBehindCloud
  read "⛈️" = Right CloudWithLightningAndRain
  read "🌤️" = Right SunBehindSmallCloud
  read "🌥️" = Right SunBehindLargeCloud
  read "🌦️" = Right SunBehindRainCloud
  read "🌧️" = Right CloudWithRain
  read "🌨️" = Right CloudWithSnow
  read "🌩️" = Right CloudWithLightning
  read "🌪️" = Right Tornado
  read "🌫️" = Right Fog
  read "🌬️" = Right WindFace
  read "🌀" = Right Cyclone
  read "🌈" = Right Rainbow
  read "🌂" = Right ClosedUmbrella
  read "☂️" = Right Umbrella
  read "☔" = Right UmbrellaWithRainDrops
  read "⛱️" = Right UmbrellaOnGround
  read "⚡" = Right HighVoltage
  read "❄️" = Right Snowflake
  read "☃️" = Right Snowman
  read "⛄" = Right SnowmanWithoutSnow
  read "☄️" = Right Comet
  read "🔥" = Right Fire
  read "💧" = Right Droplet
  read "🌊" = Right WaterWave
  read "🎃" = Right JackOLantern
  read "🎄" = Right ChristmasTree
  read "🎆" = Right Fireworks
  read "🎇" = Right Sparkler
  read "🧨" = Right Firecracker
  read "✨" = Right Sparkles
  read "🎈" = Right Balloon
  read "🎉" = Right PartyPopper
  read "🎊" = Right ConfettiBall
  read "🎋" = Right TanabataTree
  read "🎍" = Right PineDecoration
  read "🎎" = Right JapaneseDolls
  read "🎏" = Right CarpStreamer
  read "🎐" = Right WindChime
  read "🎑" = Right MoonViewingCeremony
  read "🧧" = Right RedEnvelope
  read "🎀" = Right Ribbon
  read "🎁" = Right WrappedGift
  read "🎗️" = Right ReminderRibbon
  read "🎟️" = Right AdmissionTickets
  read "🎫" = Right Ticket
  read "🎖️" = Right MilitaryMedal
  read "🏆" = Right Trophy
  read "🏅" = Right SportsMedal
  read "🥇" = Right FirstPlaceMedal
  read "🥈" = Right SecondPlaceMedal
  read "🥉" = Right ThirdPlaceMedal
  read "⚽" = Right SoccerBall
  read "⚾" = Right Baseball
  read "🥎" = Right Softball
  read "🏀" = Right Basketball
  read "🏐" = Right Volleyball
  read "🏈" = Right AmericanFootball
  read "🏉" = Right RugbyFootball
  read "🎾" = Right Tennis
  read "🥏" = Right FlyingDisc
  read "🎳" = Right Bowling
  read "🏏" = Right CricketGame
  read "🏑" = Right FieldHockey
  read "🏒" = Right IceHockey
  read "🥍" = Right Lacrosse
  read "🏓" = Right PingPong
  read "🏸" = Right Badminton
  read "🥊" = Right BoxingGlove
  read "🥋" = Right MartialArtsUniform
  read "🥅" = Right GoalNet
  read "⛳" = Right FlagInHole
  read "⛸️" = Right IceSkate
  read "🎣" = Right FishingPole
  read "🎽" = Right RunningShirt
  read "🎿" = Right Skis
  read "🛷" = Right Sled
  read "🥌" = Right CurlingStone
  read "🎯" = Right DirectHit
  read "🎱" = Right Pool8Ball
  read "🔮" = Right CrystalBall
  read "🧿" = Right NazarAmulet
  read "🎮" = Right VideoGame
  read "🕹️" = Right Joystick
  read "🎰" = Right SlotMachine
  read "🎲" = Right GameDie
  read "🧩" = Right Jigsaw
  read "🧸" = Right TeddyBear
  read "♠️" = Right SpadeSuit
  read "♥️" = Right HeartSuit
  read "♦️" = Right DiamondSuit
  read "♣️" = Right ClubSuit
  read "♟️" = Right ChessPawn
  read "🃏" = Right Joker
  read "🀄" = Right MahjongRedDragon
  read "🎴" = Right FlowerPlayingCards
  read "🎭" = Right PerformingArts
  read "🖼️" = Right FramedPicture
  read "🎨" = Right ArtistPalette
  read "🧵" = Right Thread
  read "🧶" = Right Yarn
  read "🔇" = Right MutedSpeaker
  read "🔈" = Right SpeakerLowVolume
  read "🔉" = Right SpeakerMediumVolume
  read "🔊" = Right SpeakerHighVolume
  read "📢" = Right Loudspeaker
  read "📣" = Right Megaphone
  read "📯" = Right PostalHorn
  read "🔔" = Right Bell
  read "🔕" = Right BellWithSlash
  read "🎼" = Right MusicalScore
  read "🎵" = Right MusicalNote
  read "🎶" = Right MusicalNotes
  read "🎙️" = Right StudioMicrophone
  read "🎚️" = Right LevelSlider
  read "🎛️" = Right ControlKnobs
  read "🎤" = Right Microphone
  read "🎧" = Right Headphone
  read "📻" = Right Radio
  read "🎷" = Right Saxophone
  read "🎸" = Right Guitar
  read "🎹" = Right MusicalKeyboard
  read "🎺" = Right Trumpet
  read "🎻" = Right Violin
  read "🥁" = Right Drum
  read "📱" = Right MobilePhone
  read "📲" = Right MobilePhoneWithArrow
  read "☎️" = Right Telephone
  read "📞" = Right TelephoneReceiver
  read "📟" = Right Pager
  read "📠" = Right FaxMachine
  read "🔋" = Right Battery
  read "🔌" = Right ElectricPlug
  read "💻" = Right LaptopComputer
  read "🖥️" = Right DesktopComputer
  read "🖨️" = Right Printer
  read "⌨️" = Right Keyboard
  read "🖱️" = Right ComputerMouse
  read "🖲️" = Right Trackball
  read "💽" = Right ComputerDisk
  read "💾" = Right FloppyDisk
  read "💿" = Right OpticalDisk
  read "📀" = Right Dvd
  read "🧮" = Right Abacus
  read "🎥" = Right MovieCamera
  read "🎞️" = Right FilmFrames
  read "📽️" = Right FilmProjector
  read "🎬" = Right ClapperBoard
  read "📺" = Right Television
  read "📷" = Right Camera
  read "📸" = Right CameraWithFlash
  read "📹" = Right VideoCamera
  read "📼" = Right Videocassette
  read "🔍" = Right MagnifyingGlassTiltedLeft
  read "🔎" = Right MagnifyingGlassTiltedRight
  read "🕯️" = Right Candle
  read "💡" = Right LightBulb
  read "🔦" = Right Flashlight
  read "🏮" = Right RedPaperLantern
  read "📔" = Right NotebookWithDecorativeCover
  read "📕" = Right ClosedBook
  read "📖" = Right OpenBook
  read "📗" = Right GreenBook
  read "📘" = Right BlueBook
  read "📙" = Right OrangeBook
  read "📚" = Right Books
  read "📓" = Right Notebook
  read "📒" = Right Ledger
  read "📃" = Right PageWithCurl
  read "📜" = Right Scroll
  read "📄" = Right PageFacingUp
  read "📰" = Right Newspaper
  read "🗞️" = Right RolledUpNewspaper
  read "📑" = Right BookmarkTabs
  read "🔖" = Right Bookmark
  read "🏷️" = Right Label
  read "💰" = Right MoneyBag
  read "💴" = Right YenBanknote
  read "💵" = Right DollarBanknote
  read "💶" = Right EuroBanknote
  read "💷" = Right PoundBanknote
  read "💸" = Right MoneyWithWings
  read "💳" = Right CreditCard
  read "🧾" = Right Receipt
  read "💹" = Right ChartIncreasingWithYen
  read "💱" = Right CurrencyExchange
  read "💲" = Right HeavyDollarSign
  read "✉️" = Right Envelope
  read "📧" = Right EMail
  read "📨" = Right IncomingEnvelope
  read "📩" = Right EnvelopeWithArrow
  read "📤" = Right OutboxTray
  read "📥" = Right InboxTray
  read "📦" = Right Package
  read "📫" = Right ClosedMailboxWithRaisedFlag
  read "📪" = Right ClosedMailboxWithLoweredFlag
  read "📬" = Right OpenMailboxWithRaisedFlag
  read "📭" = Right OpenMailboxWithLoweredFlag
  read "📮" = Right Postbox
  read "🗳️" = Right BallotBoxWithBallot
  read "✏️" = Right Pencil
  read "✒️" = Right BlackNib
  read "🖋️" = Right FountainPen
  read "🖊️" = Right Pen
  read "🖌️" = Right Paintbrush
  read "🖍️" = Right Crayon
  read "📝" = Right Memo
  read "💼" = Right Briefcase
  read "📁" = Right FileFolder
  read "📂" = Right OpenFileFolder
  read "🗂️" = Right CardIndexDividers
  read "📅" = Right Calendar
  read "📆" = Right TearOffCalendar
  read "🗒️" = Right SpiralNotepad
  read "🗓️" = Right SpiralCalendar
  read "📇" = Right CardIndex
  read "📈" = Right ChartIncreasing
  read "📉" = Right ChartDecreasing
  read "📊" = Right BarChart
  read "📋" = Right Clipboard
  read "📌" = Right Pushpin
  read "📍" = Right RoundPushpin
  read "📎" = Right Paperclip
  read "🖇️" = Right LinkedPaperclips
  read "📏" = Right StraightRuler
  read "📐" = Right TriangularRuler
  read "✂️" = Right Scissors
  read "🗃️" = Right CardFileBox
  read "🗄️" = Right FileCabinet
  read "🗑️" = Right Wastebasket
  read "🔒" = Right Locked
  read "🔓" = Right Unlocked
  read "🔏" = Right LockedWithPen
  read "🔐" = Right LockedWithKey
  read "🔑" = Right Key
  read "🗝️" = Right OldKey
  read "🔨" = Right Hammer
  read "⛏️" = Right Pick
  read "⚒️" = Right HammerAndPick
  read "🛠️" = Right HammerAndWrench
  read "🗡️" = Right Dagger
  read "⚔️" = Right CrossedSwords
  read "🔫" = Right Pistol
  read "🏹" = Right BowAndArrow
  read "🛡️" = Right Shield
  read "🔧" = Right Wrench
  read "🔩" = Right NutAndBolt
  read "⚙️" = Right Gear
  read "🗜️" = Right Clamp
  read "⚖️" = Right BalanceScale
  read "🔗" = Right Link
  read "⛓️" = Right Chains
  read "🧰" = Right Toolbox
  read "🧲" = Right Magnet
  read "⚗️" = Right Alembic
  read "🧪" = Right TestTube
  read "🧫" = Right PetriDish
  read "🧬" = Right Dna
  read "🔬" = Right Microscope
  read "🔭" = Right Telescope
  read "📡" = Right SatelliteAntenna
  read "💉" = Right Syringe
  read "💊" = Right Pill
  read "🚪" = Right Door
  read "🛏️" = Right Bed
  read "🛋️" = Right CouchAndLamp
  read "🚽" = Right Toilet
  read "🚿" = Right Shower
  read "🛁" = Right Bathtub
  read "🧴" = Right LotionBottle
  read "🧷" = Right SafetyPin
  read "🧹" = Right Broom
  read "🧺" = Right Basket
  read "🧻" = Right RollOfPaper
  read "🧼" = Right Soap
  read "🧽" = Right Sponge
  read "🧯" = Right FireExtinguisher
  read "🛒" = Right ShoppingCart
  read "🚬" = Right Cigarette
  read "⚰️" = Right Coffin
  read "⚱️" = Right FuneralUrn
  read "🗿" = Right Moai
  read "🏧" = Right ATMSign
  read "🚮" = Right LitterInBinSign
  read "🚰" = Right PotableWater
  read "♿" = Right WheelchairSymbol
  read "🚹" = Right MensRoom
  read "🚺" = Right WomensRoom
  read "🚻" = Right Restroom
  read "🚼" = Right BabySymbol
  read "🚾" = Right WaterCloset
  read "🛂" = Right PassportControl
  read "🛃" = Right Customs
  read "🛄" = Right BaggageClaim
  read "🛅" = Right LeftLuggage
  read "⚠️" = Right Warning
  read "🚸" = Right ChildrenCrossing
  read "⛔" = Right NoEntry
  read "🚫" = Right Prohibited
  read "🚳" = Right NoBicycles
  read "🚭" = Right NoSmoking
  read "🚯" = Right NoLittering
  read "🚱" = Right NonPotableWater
  read "🚷" = Right NoPedestrians
  read "📵" = Right NoMobilePhones
  read "🔞" = Right NoOneUnderEighteen
  read "☢️" = Right Radioactive
  read "☣️" = Right Biohazard
  read "⬆️" = Right UpArrow
  read "↗️" = Right UpRightArrow
  read "➡️" = Right RightArrow
  read "↘️" = Right DownRightArrow
  read "⬇️" = Right DownArrow
  read "↙️" = Right DownLeftArrow
  read "⬅️" = Right LeftArrow
  read "↖️" = Right UpLeftArrow
  read "↕️" = Right UpDownArrow
  read "↔️" = Right LeftRightArrow
  read "↩️" = Right RightArrowCurvingLeft
  read "↪️" = Right LeftArrowCurvingRight
  read "⤴️" = Right RightArrowCurvingUp
  read "⤵️" = Right RightArrowCurvingDown
  read "🔃" = Right ClockwiseVerticalArrows
  read "🔄" = Right CounterclockwiseArrowsButton
  read "🔙" = Right BACKArrow
  read "🔚" = Right ENDArrow
  read "🔛" = Right ONArrow
  read "🔜" = Right SOONArrow
  read "🔝" = Right TOPArrow
  read "🛐" = Right PlaceOfWorship
  read "⚛️" = Right AtomSymbol
  read "🕉️" = Right Om
  read "✡️" = Right StarOfDavid
  read "☸️" = Right WheelOfDharma
  read "☯️" = Right YinYang
  read "✝️" = Right LatinCross
  read "☦️" = Right OrthodoxCross
  read "☪️" = Right StarAndCrescent
  read "☮️" = Right PeaceSymbol
  read "🕎" = Right Menorah
  read "🔯" = Right DottedSixPointedStar
  read "♈" = Right Aries
  read "♉" = Right Taurus
  read "♊" = Right Gemini
  read "♋" = Right Cancer
  read "♌" = Right Leo
  read "♍" = Right Virgo
  read "♎" = Right Libra
  read "♏" = Right Scorpio
  read "♐" = Right Sagittarius
  read "♑" = Right Capricorn
  read "♒" = Right Aquarius
  read "♓" = Right Pisces
  read "⛎" = Right Ophiuchus
  read "🔀" = Right ShuffleTracksButton
  read "🔁" = Right RepeatButton
  read "🔂" = Right RepeatSingleButton
  read "▶️" = Right PlayButton
  read "⏩" = Right FastForwardButton
  read "⏭️" = Right NextTrackButton
  read "⏯️" = Right PlayOrPauseButton
  read "◀️" = Right ReverseButton
  read "⏪" = Right FastReverseButton
  read "⏮️" = Right LastTrackButton
  read "🔼" = Right UpwardsButton
  read "⏫" = Right FastUpButton
  read "🔽" = Right DownwardsButton
  read "⏬" = Right FastDownButton
  read "⏸️" = Right PauseButton
  read "⏹️" = Right StopButton
  read "⏺️" = Right RecordButton
  read "⏏️" = Right EjectButton
  read "🎦" = Right Cinema
  read "🔅" = Right DimButton
  read "🔆" = Right BrightButton
  read "📶" = Right AntennaBars
  read "📳" = Right VibrationMode
  read "📴" = Right MobilePhoneOff
  read "♀️" = Right FemaleSign
  read "♂️" = Right MaleSign
  read "⚕️" = Right MedicalSymbol
  read "♾️" = Right Infinity
  read "♻️" = Right RecyclingSymbol
  read "⚜️" = Right FleurDeLis
  read "🔱" = Right TridentEmblem
  read "📛" = Right NameBadge
  read "🔰" = Right JapaneseSymbolForBeginner
  read "⭕" = Right HeavyLargeCircle
  read "✅" = Right WhiteHeavyCheckMark
  read "☑️" = Right BallotBoxWithCheck
  read "✔️" = Right HeavyCheckMark
  read "✖️" = Right HeavyMultiplicationX
  read "❌" = Right CrossMark
  read "❎" = Right CrossMarkButton
  read "➕" = Right HeavyPlusSign
  read "➖" = Right HeavyMinusSign
  read "➗" = Right HeavyDivisionSign
  read "➰" = Right CurlyLoop
  read "➿" = Right DoubleCurlyLoop
  read "〽️" = Right PartAlternationMark
  read "✳️" = Right EightSpokedAsterisk
  read "✴️" = Right EightPointedStar
  read "❇️" = Right Sparkle
  read "‼️" = Right DoubleExclamationMark
  read "⁉️" = Right ExclamationQuestionMark
  read "❓" = Right QuestionMark
  read "❔" = Right WhiteQuestionMark
  read "❕" = Right WhiteExclamationMark
  read "❗" = Right ExclamationMark
  read "〰️" = Right WavyDash
  read "©️" = Right Copyright
  read "®️" = Right Registered
  read "™️" = Right TradeMark
  read "#️⃣" = Right KeycapSharp
  read "*️⃣" = Right KeycapAsterisk
  read "0️⃣" = Right Keycap0
  read "1️⃣" = Right Keycap1
  read "2️⃣" = Right Keycap2
  read "3️⃣" = Right Keycap3
  read "4️⃣" = Right Keycap4
  read "5️⃣" = Right Keycap5
  read "6️⃣" = Right Keycap6
  read "7️⃣" = Right Keycap7
  read "8️⃣" = Right Keycap8
  read "9️⃣" = Right Keycap9
  read "🔟" = Right Keycap10
  read "💯" = Right HundredPoints
  read "🔠" = Right InputLatinUppercase
  read "🔡" = Right InputLatinLowercase
  read "🔢" = Right InputNumbers
  read "🔣" = Right InputSymbols
  read "🔤" = Right InputLatinLetters
  read "🅰️" = Right AButtonBloodType
  read "🆎" = Right ABButtonBloodType
  read "🅱️" = Right BButtonBloodType
  read "🆑" = Right CLButton
  read "🆒" = Right COOLButton
  read "🆓" = Right FREEButton
  read "ℹ️" = Right Information
  read "🆔" = Right IDButton
  read "Ⓜ️" = Right CircledM
  read "🆕" = Right NEWButton
  read "🆖" = Right NGButton
  read "🅾️" = Right OButtonBloodType
  read "🆗" = Right OKButton
  read "🅿️" = Right PButton
  read "🆘" = Right SOSButton
  read "🆙" = Right UPButton
  read "🆚" = Right VSButton
  read "🈁" = Right JapaneseHereButton
  read "🈂️" = Right JapaneseServiceChargeButton
  read "🈷️" = Right JapaneseMonthlyAmountButton
  read "🈶" = Right JapaneseNotFreeOfChargeButton
  read "🈯" = Right JapaneseReservedButton
  read "🉐" = Right JapaneseBargainButton
  read "🈹" = Right JapaneseDiscountButton
  read "🈚" = Right JapaneseFreeOfChargeButton
  read "🈲" = Right JapaneseProhibitedButton
  read "🉑" = Right JapaneseAcceptableButton
  read "🈸" = Right JapaneseApplicationButton
  read "🈴" = Right JapanesePassingGradeButton
  read "🈳" = Right JapaneseVacancyButton
  read "㊗️" = Right JapaneseCongratulationsButton
  read "㊙️" = Right JapaneseSecretButton
  read "🈺" = Right JapaneseOpenForBusinessButton
  read "🈵" = Right JapaneseNoVacancyButton
  read "▪️" = Right BlackSmallSquare
  read "▫️" = Right WhiteSmallSquare
  read "◻️" = Right WhiteMediumSquare
  read "◼️" = Right BlackMediumSquare
  read "◽" = Right WhiteMediumSmallSquare
  read "◾" = Right BlackMediumSmallSquare
  read "⬛" = Right BlackLargeSquare
  read "⬜" = Right WhiteLargeSquare
  read "🔶" = Right LargeOrangeDiamond
  read "🔷" = Right LargeBlueDiamond
  read "🔸" = Right SmallOrangeDiamond
  read "🔹" = Right SmallBlueDiamond
  read "🔺" = Right RedTrianglePointedUp
  read "🔻" = Right RedTrianglePointedDown
  read "💠" = Right DiamondWithADot
  read "🔘" = Right RadioButton
  read "🔲" = Right BlackSquareButton
  read "🔳" = Right WhiteSquareButton
  read "⚪" = Right WhiteCircle
  read "⚫" = Right BlackCircle
  read "🔴" = Right RedCircle
  read "🔵" = Right BlueCircle
  read "🏁" = Right ChequeredFlag
  read "🚩" = Right TriangularFlag
  read "🎌" = Right CrossedFlags
  read "🏴" = Right BlackFlag
  read "🏳️" = Right WhiteFlag
  read "🏳️‍🌈" = Right RainbowFlag
  read "🏴‍☠️" = Right PirateFlag
  read s = Left $ joinWith " " ["Sorry.", s, "is not supported."]

instance eqEmoji :: Eq Emoji where
  eq a b = emojiToNum a == emojiToNum b

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
emojiToNum Child = 125
emojiToNum Boy = 131
emojiToNum Girl = 137
emojiToNum Adult = 143
emojiToNum Man = 149
emojiToNum Woman = 155
emojiToNum OlderAdult = 161
emojiToNum OldMan = 167
emojiToNum OldWoman = 173
emojiToNum ManHealthWorker = 179
emojiToNum WomanHealthWorker = 185
emojiToNum ManStudent = 191
emojiToNum WomanStudent = 197
emojiToNum ManTeacher = 203
emojiToNum WomanTeacher = 209
emojiToNum ManJudge = 215
emojiToNum WomanJudge = 221
emojiToNum ManFarmer = 227
emojiToNum WomanFarmer = 233
emojiToNum ManCook = 239
emojiToNum WomanCook = 245
emojiToNum ManMechanic = 251
emojiToNum WomanMechanic = 257
emojiToNum ManFactoryWorker = 263
emojiToNum WomanFactoryWorker = 269
emojiToNum ManOfficeWorker = 275
emojiToNum WomanOfficeWorker = 281
emojiToNum ManScientist = 287
emojiToNum WomanScientist = 293
emojiToNum ManTechnologist = 299
emojiToNum WomanTechnologist = 305
emojiToNum ManSinger = 311
emojiToNum WomanSinger = 317
emojiToNum ManArtist = 323
emojiToNum WomanArtist = 329
emojiToNum ManPilot = 335
emojiToNum WomanPilot = 341
emojiToNum ManAstronaut = 347
emojiToNum WomanAstronaut = 353
emojiToNum ManFirefighter = 359
emojiToNum WomanFirefighter = 365
emojiToNum PoliceOfficer = 371
emojiToNum ManPoliceOfficer = 377
emojiToNum WomanPoliceOfficer = 383
emojiToNum Detective = 389
emojiToNum ManDetective = 395
emojiToNum WomanDetective = 401
emojiToNum Guard = 407
emojiToNum ManGuard = 413
emojiToNum WomanGuard = 419
emojiToNum ConstructionWorker = 425
emojiToNum ManConstructionWorker = 431
emojiToNum WomanConstructionWorker = 437
emojiToNum Prince = 443
emojiToNum Princess = 449
emojiToNum PersonWearingTurban = 455
emojiToNum ManWearingTurban = 461
emojiToNum WomanWearingTurban = 467
emojiToNum ManWithChineseCap = 473
emojiToNum WomanWithHeadscarf = 479
emojiToNum BeardedPerson = 485
emojiToNum BlondHairedPerson = 491
emojiToNum BlondHairedMan = 497
emojiToNum BlondHairedWoman = 503
emojiToNum ManRedHaired = 509
emojiToNum WomanRedHaired = 515
emojiToNum ManCurlyHaired = 521
emojiToNum WomanCurlyHaired = 527
emojiToNum ManBald = 533
emojiToNum WomanBald = 539
emojiToNum ManWhiteHaired = 545
emojiToNum WomanWhiteHaired = 551
emojiToNum ManInTuxedo = 557
emojiToNum BrideWithVeil = 563
emojiToNum PregnantWoman = 569
emojiToNum BreastFeeding = 575
emojiToNum BabyAngel = 581
emojiToNum SantaClaus = 587
emojiToNum MrsClaus = 593
emojiToNum Superhero = 599
emojiToNum WomanSuperhero = 605
emojiToNum ManSuperhero = 611
emojiToNum Supervillain = 617
emojiToNum WomanSupervillain = 623
emojiToNum ManSupervillain = 629
emojiToNum Mage = 635
emojiToNum WomanMage = 641
emojiToNum ManMage = 647
emojiToNum Fairy = 653
emojiToNum WomanFairy = 659
emojiToNum ManFairy = 665
emojiToNum Vampire = 671
emojiToNum WomanVampire = 677
emojiToNum ManVampire = 683
emojiToNum Merperson = 689
emojiToNum Mermaid = 695
emojiToNum Merman = 701
emojiToNum Elf = 707
emojiToNum WomanElf = 713
emojiToNum ManElf = 719
emojiToNum Genie = 725
emojiToNum WomanGenie = 726
emojiToNum ManGenie = 727
emojiToNum Zombie = 728
emojiToNum WomanZombie = 729
emojiToNum ManZombie = 730
emojiToNum PersonFrowning = 731
emojiToNum ManFrowning = 737
emojiToNum WomanFrowning = 743
emojiToNum PersonPouting = 749
emojiToNum ManPouting = 755
emojiToNum WomanPouting = 761
emojiToNum PersonGesturingNO = 767
emojiToNum ManGesturingNO = 773
emojiToNum WomanGesturingNO = 779
emojiToNum PersonGesturingOK = 785
emojiToNum ManGesturingOK = 791
emojiToNum WomanGesturingOK = 797
emojiToNum PersonTippingHand = 803
emojiToNum ManTippingHand = 809
emojiToNum WomanTippingHand = 815
emojiToNum PersonRaisingHand = 821
emojiToNum ManRaisingHand = 827
emojiToNum WomanRaisingHand = 833
emojiToNum PersonBowing = 839
emojiToNum ManBowing = 845
emojiToNum WomanBowing = 851
emojiToNum PersonFacepalming = 857
emojiToNum ManFacepalming = 863
emojiToNum WomanFacepalming = 869
emojiToNum PersonShrugging = 875
emojiToNum ManShrugging = 881
emojiToNum WomanShrugging = 887
emojiToNum PersonGettingMassage = 893
emojiToNum ManGettingMassage = 899
emojiToNum WomanGettingMassage = 905
emojiToNum PersonGettingHaircut = 911
emojiToNum ManGettingHaircut = 917
emojiToNum WomanGettingHaircut = 923
emojiToNum PersonWalking = 929
emojiToNum ManWalking = 935
emojiToNum WomanWalking = 941
emojiToNum PersonRunning = 947
emojiToNum ManRunning = 953
emojiToNum WomanRunning = 959
emojiToNum WomanDancing = 965
emojiToNum ManDancing = 971
emojiToNum PeopleWithBunnyEars = 977
emojiToNum MenWithBunnyEars = 978
emojiToNum WomenWithBunnyEars = 979
emojiToNum PersonInSteamyRoom = 980
emojiToNum WomanInSteamyRoom = 986
emojiToNum ManInSteamyRoom = 992
emojiToNum PersonClimbing = 998
emojiToNum WomanClimbing = 1004
emojiToNum ManClimbing = 1010
emojiToNum PersonInLotusPosition = 1016
emojiToNum WomanInLotusPosition = 1022
emojiToNum ManInLotusPosition = 1028
emojiToNum PersonTakingBath = 1034
emojiToNum PersonInBed = 1040
emojiToNum ManInSuitLevitating = 1046
emojiToNum SpeakingHead = 1052
emojiToNum BustInSilhouette = 1053
emojiToNum BustsInSilhouette = 1054
emojiToNum PersonFencing = 1055
emojiToNum HorseRacing = 1056
emojiToNum Skier = 1062
emojiToNum Snowboarder = 1063
emojiToNum PersonGolfing = 1069
emojiToNum ManGolfing = 1075
emojiToNum WomanGolfing = 1081
emojiToNum PersonSurfing = 1087
emojiToNum ManSurfing = 1093
emojiToNum WomanSurfing = 1099
emojiToNum PersonRowingBoat = 1105
emojiToNum ManRowingBoat = 1111
emojiToNum WomanRowingBoat = 1117
emojiToNum PersonSwimming = 1123
emojiToNum ManSwimming = 1129
emojiToNum WomanSwimming = 1135
emojiToNum PersonBouncingBall = 1141
emojiToNum ManBouncingBall = 1147
emojiToNum WomanBouncingBall = 1153
emojiToNum PersonLiftingWeights = 1159
emojiToNum ManLiftingWeights = 1165
emojiToNum WomanLiftingWeights = 1171
emojiToNum PersonBiking = 1177
emojiToNum ManBiking = 1183
emojiToNum WomanBiking = 1189
emojiToNum PersonMountainBiking = 1195
emojiToNum ManMountainBiking = 1201
emojiToNum WomanMountainBiking = 1207
emojiToNum RacingCar = 1213
emojiToNum Motorcycle = 1214
emojiToNum PersonCartwheeling = 1215
emojiToNum ManCartwheeling = 1221
emojiToNum WomanCartwheeling = 1227
emojiToNum PeopleWrestling = 1233
emojiToNum MenWrestling = 1234
emojiToNum WomenWrestling = 1235
emojiToNum PersonPlayingWaterPolo = 1236
emojiToNum ManPlayingWaterPolo = 1242
emojiToNum WomanPlayingWaterPolo = 1248
emojiToNum PersonPlayingHandball = 1254
emojiToNum ManPlayingHandball = 1260
emojiToNum WomanPlayingHandball = 1266
emojiToNum PersonJuggling = 1272
emojiToNum ManJuggling = 1278
emojiToNum WomanJuggling = 1284
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
emojiToNum FlexedBiceps = 1333
emojiToNum Leg = 1339
emojiToNum Foot = 1345
emojiToNum BackhandIndexPointingLeft = 1351
emojiToNum BackhandIndexPointingRight = 1357
emojiToNum IndexPointingUp = 1363
emojiToNum BackhandIndexPointingUp = 1369
emojiToNum MiddleFinger = 1375
emojiToNum BackhandIndexPointingDown = 1381
emojiToNum VictoryHand = 1387
emojiToNum CrossedFingers = 1393
emojiToNum VulcanSalute = 1399
emojiToNum SignOfTheHorns = 1405
emojiToNum CallMeHand = 1411
emojiToNum HandWithFingersSplayed = 1417
emojiToNum RaisedHand = 1423
emojiToNum OKHand = 1429
emojiToNum ThumbsUp = 1435
emojiToNum ThumbsDown = 1441
emojiToNum RaisedFist = 1447
emojiToNum OncomingFist = 1453
emojiToNum LeftFacingFist = 1459
emojiToNum RightFacingFist = 1465
emojiToNum RaisedBackOfHand = 1471
emojiToNum WavingHand = 1477
emojiToNum LoveYouGesture = 1483
emojiToNum WritingHand = 1489
emojiToNum ClappingHands = 1495
emojiToNum OpenHands = 1501
emojiToNum RaisingHands = 1507
emojiToNum PalmsUpTogether = 1513
emojiToNum FoldedHands = 1519
emojiToNum Handshake = 1525
emojiToNum NailPolish = 1526
emojiToNum Ear = 1532
emojiToNum Nose = 1538
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
