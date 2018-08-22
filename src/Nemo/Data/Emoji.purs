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
  | SmilingFaceWithHearts
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
  | Baby
  | Child
  | Boy
  | Girl
  | Person
  | PersonBlondHair
  | Man
  | ManBeard
  | Woman
  | OlderPerson
  | OldMan
  | OldWoman
  | PoliceOfficer
  | Detective
  | Guard
  | ConstructionWorker
  | Prince
  | Princess
  | PersonWearingTurban
  | ManWithChineseCap
  | WomanWithHeadscarf
  | ManInTuxedo
  | BrideWithVeil
  | PregnantWoman
  | BreastFeeding
  | BabyAngel
  | SantaClaus
  | MrsClaus
  | Superhero
  | Supervillain
  | Mage
  | Fairy
  | Vampire
  | Merperson
  | Elf
  | Genie
  | Zombie
  | PersonFrowning
  | PersonPouting
  | PersonGesturingNo
  | PersonGesturingOk
  | PersonTippingHand
  | PersonRaisingHand
  | PersonBowing
  | PersonFacepalming
  | PersonShrugging
  | PersonGettingMassage
  | PersonGettingHaircut
  | PersonWalking
  | PersonRunning
  | WomanDancing
  | ManDancing
  | PeopleWithBunnyEars
  | PersonInSteamyRoom
  | PersonClimbing
  | PersonInLotusPosition
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
  | PersonSurfing
  | PersonRowingBoat
  | PersonSwimming
  | PersonBouncingBall
  | PersonLiftingWeights
  | PersonBiking
  | PersonMountainBiking
  | RacingCar
  | Motorcycle
  | PersonCartwheeling
  | PeopleWrestling
  | PersonPlayingWaterPolo
  | PersonPlayingHandball
  | PersonJuggling
  | ManAndWomanHoldingHands
  | TwoMenHoldingHands
  | TwoWomenHoldingHands
  | Kiss
  | CoupleWithHeart
  | Family
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
  | OkHand
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
  | Footprints
  | Eyes
  | Eye
  | Brain
  | Bone
  | Tooth
  | Tongue
  | Mouth
  | KissMark
  | HeartWithArrow
  | HeartWithRibbon
  | SparklingHeart
  | GrowingHeart
  | BeatingHeart
  | RevolvingHearts
  | TwoHearts
  | LoveLetter
  | HeavyHeartExclamation
  | BrokenHeart
  | RedHeart
  | OrangeHeart
  | YellowHeart
  | GreenHeart
  | BlueHeart
  | PurpleHeart
  | BlackHeart
  | HeartDecoration
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
  | WomanSClothes
  | Purse
  | Handbag
  | ClutchBag
  | ShoppingBags
  | Backpack
  | ManSShoe
  | RunningShoe
  | HikingBoot
  | FlatShoe
  | HighHeeledShoe
  | WomanSSandal
  | WomanSBoot
  | Crown
  | WomanSHat
  | TopHat
  | GraduationCap
  | BilledCap
  | RescueWorkerSHelmet
  | PrayerBeads
  | Lipstick
  | Ring
  | GemStone
  | RedHair
  | CurlyHair
  | WhiteHair
  | Bald
  | FemaleSign
  | MaleSign
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
  | Crab
  | Lobster
  | Shrimp
  | Squid
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
  | Brick
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
  | FlyingSaucer
  | BellhopBell
  | Luggage
  | HourglassDone
  | HourglassNotDone
  | Watch
  | AlarmClock
  | Stopwatch
  | TimerClock
  | MantelpieceClock
  | TwelveOClock
  | TwelveThirty
  | OneOClock
  | OneThirty
  | TwoOClock
  | TwoThirty
  | ThreeOClock
  | ThreeThirty
  | FourOClock
  | FourThirty
  | FiveOClock
  | FiveThirty
  | SixOClock
  | SixThirty
  | SevenOClock
  | SevenThirty
  | EightOClock
  | EightThirty
  | NineOClock
  | NineThirty
  | TenOClock
  | TenThirty
  | ElevenOClock
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
  | StPlaceMedal
  | NdPlaceMedal
  | RdPlaceMedal
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
  | PoolBall
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
  | AtmSign
  | LitterInBinSign
  | PotableWater
  | WheelchairSymbol
  | MenSRoom
  | WomenSRoom
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
  | BackArrow
  | EndArrow
  | OnArrow
  | SoonArrow
  | TopArrow
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
  | Keycap
  | HundredPoints
  | InputLatinUppercase
  | InputLatinLowercase
  | InputNumbers
  | InputSymbols
  | InputLatinLetters
  | AButtonBloodType
  | AbButtonBloodType
  | BButtonBloodType
  | ClButton
  | CoolButton
  | FreeButton
  | Information
  | IdButton
  | CircledM
  | NewButton
  | NgButton
  | OButtonBloodType
  | OkButton
  | PButton
  | SosButton
  | UpButton
  | VsButton
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
  | RedCircle
  | BlueCircle
  | WhiteCircle
  | BlackCircle
  | WhiteLargeSquare
  | BlackLargeSquare
  | BlackMediumSquare
  | WhiteMediumSquare
  | WhiteMediumSmallSquare
  | BlackMediumSmallSquare
  | WhiteSmallSquare
  | BlackSmallSquare
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
  | ChequeredFlag
  | TriangularFlag
  | CrossedFlags
  | BlackFlag
  | WhiteFlag


instance showEmoji :: Show Emoji where
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
  show SmilingFaceWithHearts = "🥰"
  show KissingFace = "😗"
  show KissingFaceWithSmilingEyes = "😙"
  show KissingFaceWithClosedEyes = "😚"
  show SmilingFace = "☺"
  show SlightlySmilingFace = "🙂"
  show HuggingFace = "🤗"
  show StarStruck = "🤩"
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
  show FrowningFace = "☹"
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
  show FaceWithMedicalMask = "😷"
  show FaceWithThermometer = "🤒"
  show FaceWithHeadBandage = "🤕"
  show NauseatedFace = "🤢"
  show FaceVomiting = "🤮"
  show SneezingFace = "🤧"
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
  show SmilingFaceWithHorns = "😈"
  show AngryFaceWithHorns = "👿"
  show ClownFace = "🤡"
  show Ogre = "👹"
  show Goblin = "👺"
  show Skull = "💀"
  show SkullAndCrossbones = "☠"
  show Ghost = "👻"
  show Alien = "👽"
  show AlienMonster = "👾"
  show RobotFace = "🤖"
  show PileOfPoo = "💩"
  show GrinningCatFace = "😺"
  show GrinningCatFaceWithSmilingEyes = "😸"
  show CatFaceWithTearsOfJoy = "😹"
  show SmilingCatFaceWithHeartEyes = "😻"
  show CatFaceWithWrySmile = "😼"
  show KissingCatFace = "😽"
  show WearyCatFace = "🙀"
  show CryingCatFace = "😿"
  show PoutingCatFace = "😾"
  show SeeNoEvilMonkey = "🙈"
  show HearNoEvilMonkey = "🙉"
  show SpeakNoEvilMonkey = "🙊"
  show Baby = "👶"
  show Child = "🧒"
  show Boy = "👦"
  show Girl = "👧"
  show Person = "🧑"
  show PersonBlondHair = "👱"
  show Man = "👨"
  show ManBeard = "🧔"
  show Woman = "👩"
  show OlderPerson = "🧓"
  show OldMan = "👴"
  show OldWoman = "👵"
  show PoliceOfficer = "👮"
  show Detective = "🕵"
  show Guard = "💂"
  show ConstructionWorker = "👷"
  show Prince = "🤴"
  show Princess = "👸"
  show PersonWearingTurban = "👳"
  show ManWithChineseCap = "👲"
  show WomanWithHeadscarf = "🧕"
  show ManInTuxedo = "🤵"
  show BrideWithVeil = "👰"
  show PregnantWoman = "🤰"
  show BreastFeeding = "🤱"
  show BabyAngel = "👼"
  show SantaClaus = "🎅"
  show MrsClaus = "🤶"
  show Superhero = "🦸"
  show Supervillain = "🦹"
  show Mage = "🧙"
  show Fairy = "🧚"
  show Vampire = "🧛"
  show Merperson = "🧜"
  show Elf = "🧝"
  show Genie = "🧞"
  show Zombie = "🧟"
  show PersonFrowning = "🙍"
  show PersonPouting = "🙎"
  show PersonGesturingNo = "🙅"
  show PersonGesturingOk = "🙆"
  show PersonTippingHand = "💁"
  show PersonRaisingHand = "🙋"
  show PersonBowing = "🙇"
  show PersonFacepalming = "🤦"
  show PersonShrugging = "🤷"
  show PersonGettingMassage = "💆"
  show PersonGettingHaircut = "💇"
  show PersonWalking = "🚶"
  show PersonRunning = "🏃"
  show WomanDancing = "💃"
  show ManDancing = "🕺"
  show PeopleWithBunnyEars = "👯"
  show PersonInSteamyRoom = "🧖"
  show PersonClimbing = "🧗"
  show PersonInLotusPosition = "🧘"
  show PersonTakingBath = "🛀"
  show PersonInBed = "🛌"
  show ManInSuitLevitating = "🕴"
  show SpeakingHead = "🗣"
  show BustInSilhouette = "👤"
  show BustsInSilhouette = "👥"
  show PersonFencing = "🤺"
  show HorseRacing = "🏇"
  show Skier = "⛷"
  show Snowboarder = "🏂"
  show PersonGolfing = "🏌"
  show PersonSurfing = "🏄"
  show PersonRowingBoat = "🚣"
  show PersonSwimming = "🏊"
  show PersonBouncingBall = "⛹"
  show PersonLiftingWeights = "🏋"
  show PersonBiking = "🚴"
  show PersonMountainBiking = "🚵"
  show RacingCar = "🏎"
  show Motorcycle = "🏍"
  show PersonCartwheeling = "🤸"
  show PeopleWrestling = "🤼"
  show PersonPlayingWaterPolo = "🤽"
  show PersonPlayingHandball = "🤾"
  show PersonJuggling = "🤹"
  show ManAndWomanHoldingHands = "👫"
  show TwoMenHoldingHands = "👬"
  show TwoWomenHoldingHands = "👭"
  show Kiss = "💏"
  show CoupleWithHeart = "💑"
  show Family = "👪"
  show Selfie = "🤳"
  show FlexedBiceps = "💪"
  show Leg = "🦵"
  show Foot = "🦶"
  show BackhandIndexPointingLeft = "👈"
  show BackhandIndexPointingRight = "👉"
  show IndexPointingUp = "☝"
  show BackhandIndexPointingUp = "👆"
  show MiddleFinger = "🖕"
  show BackhandIndexPointingDown = "👇"
  show VictoryHand = "✌"
  show CrossedFingers = "🤞"
  show VulcanSalute = "🖖"
  show SignOfTheHorns = "🤘"
  show CallMeHand = "🤙"
  show HandWithFingersSplayed = "🖐"
  show RaisedHand = "✋"
  show OkHand = "👌"
  show ThumbsUp = "👍"
  show ThumbsDown = "👎"
  show RaisedFist = "✊"
  show OncomingFist = "👊"
  show LeftFacingFist = "🤛"
  show RightFacingFist = "🤜"
  show RaisedBackOfHand = "🤚"
  show WavingHand = "👋"
  show LoveYouGesture = "🤟"
  show WritingHand = "✍"
  show ClappingHands = "👏"
  show OpenHands = "👐"
  show RaisingHands = "🙌"
  show PalmsUpTogether = "🤲"
  show FoldedHands = "🙏"
  show Handshake = "🤝"
  show NailPolish = "💅"
  show Ear = "👂"
  show Nose = "👃"
  show Footprints = "👣"
  show Eyes = "👀"
  show Eye = "👁"
  show Brain = "🧠"
  show Bone = "🦴"
  show Tooth = "🦷"
  show Tongue = "👅"
  show Mouth = "👄"
  show KissMark = "💋"
  show HeartWithArrow = "💘"
  show HeartWithRibbon = "💝"
  show SparklingHeart = "💖"
  show GrowingHeart = "💗"
  show BeatingHeart = "💓"
  show RevolvingHearts = "💞"
  show TwoHearts = "💕"
  show LoveLetter = "💌"
  show HeavyHeartExclamation = "❣"
  show BrokenHeart = "💔"
  show RedHeart = "❤"
  show OrangeHeart = "🧡"
  show YellowHeart = "💛"
  show GreenHeart = "💚"
  show BlueHeart = "💙"
  show PurpleHeart = "💜"
  show BlackHeart = "🖤"
  show HeartDecoration = "💟"
  show Zzz = "💤"
  show AngerSymbol = "💢"
  show Bomb = "💣"
  show Collision = "💥"
  show SweatDroplets = "💦"
  show DashingAway = "💨"
  show Dizzy = "💫"
  show SpeechBalloon = "💬"
  show LeftSpeechBubble = "🗨"
  show RightAngerBubble = "🗯"
  show ThoughtBalloon = "💭"
  show Hole = "🕳"
  show Glasses = "👓"
  show Sunglasses = "🕶"
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
  show WomanSClothes = "👚"
  show Purse = "👛"
  show Handbag = "👜"
  show ClutchBag = "👝"
  show ShoppingBags = "🛍"
  show Backpack = "🎒"
  show ManSShoe = "👞"
  show RunningShoe = "👟"
  show HikingBoot = "🥾"
  show FlatShoe = "🥿"
  show HighHeeledShoe = "👠"
  show WomanSSandal = "👡"
  show WomanSBoot = "👢"
  show Crown = "👑"
  show WomanSHat = "👒"
  show TopHat = "🎩"
  show GraduationCap = "🎓"
  show BilledCap = "🧢"
  show RescueWorkerSHelmet = "⛑"
  show PrayerBeads = "📿"
  show Lipstick = "💄"
  show Ring = "💍"
  show GemStone = "💎"
  show RedHair = "🦰"
  show CurlyHair = "🦱"
  show WhiteHair = "🦳"
  show Bald = "🦲"
  show FemaleSign = "♀"
  show MaleSign = "♂"
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
  show Chipmunk = "🐿"
  show Hedgehog = "🦔"
  show Bat = "🦇"
  show BearFace = "🐻"
  show Koala = "🐨"
  show PandaFace = "🐼"
  show Kangaroo = "🦘"
  show Badger = "🦡"
  show PawPrints = "🐾"
  show Turkey = "🦃"
  show Chicken = "🐔"
  show Rooster = "🐓"
  show HatchingChick = "🐣"
  show BabyChick = "🐤"
  show FrontFacingBabyChick = "🐥"
  show Bird = "🐦"
  show Penguin = "🐧"
  show Dove = "🕊"
  show Eagle = "🦅"
  show Duck = "🦆"
  show Swan = "🦢"
  show Owl = "🦉"
  show Peacock = "🦚"
  show Parrot = "🦜"
  show FrogFace = "🐸"
  show Crocodile = "🐊"
  show Turtle = "🐢"
  show Lizard = "🦎"
  show Snake = "🐍"
  show DragonFace = "🐲"
  show Dragon = "🐉"
  show Sauropod = "🦕"
  show TRex = "🦖"
  show SpoutingWhale = "🐳"
  show Whale = "🐋"
  show Dolphin = "🐬"
  show Fish = "🐟"
  show TropicalFish = "🐠"
  show Blowfish = "🐡"
  show Shark = "🦈"
  show Octopus = "🐙"
  show SpiralShell = "🐚"
  show Snail = "🐌"
  show Butterfly = "🦋"
  show Bug = "🐛"
  show Ant = "🐜"
  show Honeybee = "🐝"
  show LadyBeetle = "🐞"
  show Cricket = "🦗"
  show Spider = "🕷"
  show SpiderWeb = "🕸"
  show Scorpion = "🦂"
  show Mosquito = "🦟"
  show Microbe = "🦠"
  show Bouquet = "💐"
  show CherryBlossom = "🌸"
  show WhiteFlower = "💮"
  show Rosette = "🏵"
  show Rose = "🌹"
  show WiltedFlower = "🥀"
  show Hibiscus = "🌺"
  show Sunflower = "🌻"
  show Blossom = "🌼"
  show Tulip = "🌷"
  show Seedling = "🌱"
  show EvergreenTree = "🌲"
  show DeciduousTree = "🌳"
  show PalmTree = "🌴"
  show Cactus = "🌵"
  show SheafOfRice = "🌾"
  show Herb = "🌿"
  show Shamrock = "☘"
  show FourLeafClover = "🍀"
  show MapleLeaf = "🍁"
  show FallenLeaf = "🍂"
  show LeafFlutteringInWind = "🍃"
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
  show Avocado = "🥑"
  show Eggplant = "🍆"
  show Potato = "🥔"
  show Carrot = "🥕"
  show EarOfCorn = "🌽"
  show HotPepper = "🌶"
  show Cucumber = "🥒"
  show LeafyGreen = "🥬"
  show Broccoli = "🥦"
  show Mushroom = "🍄"
  show Peanuts = "🥜"
  show Chestnut = "🌰"
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
  show Crab = "🦀"
  show Lobster = "🦞"
  show Shrimp = "🦐"
  show Squid = "🦑"
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
  show Chopsticks = "🥢"
  show ForkAndKnifeWithPlate = "🍽"
  show ForkAndKnife = "🍴"
  show Spoon = "🥄"
  show KitchenKnife = "🔪"
  show Amphora = "🏺"
  show GlobeShowingEuropeAfrica = "🌍"
  show GlobeShowingAmericas = "🌎"
  show GlobeShowingAsiaAustralia = "🌏"
  show GlobeWithMeridians = "🌐"
  show WorldMap = "🗺"
  show MapOfJapan = "🗾"
  show Compass = "🧭"
  show SnowCappedMountain = "🏔"
  show Mountain = "⛰"
  show Volcano = "🌋"
  show MountFuji = "🗻"
  show Camping = "🏕"
  show BeachWithUmbrella = "🏖"
  show Desert = "🏜"
  show DesertIsland = "🏝"
  show NationalPark = "🏞"
  show Stadium = "🏟"
  show ClassicalBuilding = "🏛"
  show BuildingConstruction = "🏗"
  show Brick = "🧱"
  show Houses = "🏘"
  show DerelictHouse = "🏚"
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
  show Church = "⛪"
  show Mosque = "🕌"
  show Synagogue = "🕍"
  show ShintoShrine = "⛩"
  show Kaaba = "🕋"
  show Fountain = "⛲"
  show Tent = "⛺"
  show Foggy = "🌁"
  show NightWithStars = "🌃"
  show Cityscape = "🏙"
  show SunriseOverMountains = "🌄"
  show Sunrise = "🌅"
  show CityscapeAtDusk = "🌆"
  show Sunset = "🌇"
  show BridgeAtNight = "🌉"
  show HotSprings = "♨"
  show MilkyWay = "🌌"
  show CarouselHorse = "🎠"
  show FerrisWheel = "🎡"
  show RollerCoaster = "🎢"
  show BarberPole = "💈"
  show CircusTent = "🎪"
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
  show Motorway = "🛣"
  show RailwayTrack = "🛤"
  show OilDrum = "🛢"
  show FuelPump = "⛽"
  show PoliceCarLight = "🚨"
  show HorizontalTrafficLight = "🚥"
  show VerticalTrafficLight = "🚦"
  show StopSign = "🛑"
  show Construction = "🚧"
  show Anchor = "⚓"
  show Sailboat = "⛵"
  show Canoe = "🛶"
  show Speedboat = "🚤"
  show PassengerShip = "🛳"
  show Ferry = "⛴"
  show MotorBoat = "🛥"
  show Ship = "🚢"
  show Airplane = "✈"
  show SmallAirplane = "🛩"
  show AirplaneDeparture = "🛫"
  show AirplaneArrival = "🛬"
  show Seat = "💺"
  show Helicopter = "🚁"
  show SuspensionRailway = "🚟"
  show MountainCableway = "🚠"
  show AerialTramway = "🚡"
  show Satellite = "🛰"
  show Rocket = "🚀"
  show FlyingSaucer = "🛸"
  show BellhopBell = "🛎"
  show Luggage = "🧳"
  show HourglassDone = "⌛"
  show HourglassNotDone = "⏳"
  show Watch = "⌚"
  show AlarmClock = "⏰"
  show Stopwatch = "⏱"
  show TimerClock = "⏲"
  show MantelpieceClock = "🕰"
  show TwelveOClock = "🕛"
  show TwelveThirty = "🕧"
  show OneOClock = "🕐"
  show OneThirty = "🕜"
  show TwoOClock = "🕑"
  show TwoThirty = "🕝"
  show ThreeOClock = "🕒"
  show ThreeThirty = "🕞"
  show FourOClock = "🕓"
  show FourThirty = "🕟"
  show FiveOClock = "🕔"
  show FiveThirty = "🕠"
  show SixOClock = "🕕"
  show SixThirty = "🕡"
  show SevenOClock = "🕖"
  show SevenThirty = "🕢"
  show EightOClock = "🕗"
  show EightThirty = "🕣"
  show NineOClock = "🕘"
  show NineThirty = "🕤"
  show TenOClock = "🕙"
  show TenThirty = "🕥"
  show ElevenOClock = "🕚"
  show ElevenThirty = "🕦"
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
  show Thermometer = "🌡"
  show Sun = "☀"
  show FullMoonFace = "🌝"
  show SunWithFace = "🌞"
  show Star = "⭐"
  show GlowingStar = "🌟"
  show ShootingStar = "🌠"
  show Cloud = "☁"
  show SunBehindCloud = "⛅"
  show CloudWithLightningAndRain = "⛈"
  show SunBehindSmallCloud = "🌤"
  show SunBehindLargeCloud = "🌥"
  show SunBehindRainCloud = "🌦"
  show CloudWithRain = "🌧"
  show CloudWithSnow = "🌨"
  show CloudWithLightning = "🌩"
  show Tornado = "🌪"
  show Fog = "🌫"
  show WindFace = "🌬"
  show Cyclone = "🌀"
  show Rainbow = "🌈"
  show ClosedUmbrella = "🌂"
  show Umbrella = "☂"
  show UmbrellaWithRainDrops = "☔"
  show UmbrellaOnGround = "⛱"
  show HighVoltage = "⚡"
  show Snowflake = "❄"
  show Snowman = "☃"
  show SnowmanWithoutSnow = "⛄"
  show Comet = "☄"
  show Fire = "🔥"
  show Droplet = "💧"
  show WaterWave = "🌊"
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
  show ReminderRibbon = "🎗"
  show AdmissionTickets = "🎟"
  show Ticket = "🎫"
  show MilitaryMedal = "🎖"
  show Trophy = "🏆"
  show SportsMedal = "🏅"
  show StPlaceMedal = "🥇"
  show NdPlaceMedal = "🥈"
  show RdPlaceMedal = "🥉"
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
  show IceSkate = "⛸"
  show FishingPole = "🎣"
  show RunningShirt = "🎽"
  show Skis = "🎿"
  show Sled = "🛷"
  show CurlingStone = "🥌"
  show DirectHit = "🎯"
  show PoolBall = "🎱"
  show CrystalBall = "🔮"
  show NazarAmulet = "🧿"
  show VideoGame = "🎮"
  show Joystick = "🕹"
  show SlotMachine = "🎰"
  show GameDie = "🎲"
  show Jigsaw = "🧩"
  show TeddyBear = "🧸"
  show SpadeSuit = "♠"
  show HeartSuit = "♥"
  show DiamondSuit = "♦"
  show ClubSuit = "♣"
  show ChessPawn = "♟"
  show Joker = "🃏"
  show MahjongRedDragon = "🀄"
  show FlowerPlayingCards = "🎴"
  show PerformingArts = "🎭"
  show FramedPicture = "🖼"
  show ArtistPalette = "🎨"
  show Thread = "🧵"
  show Yarn = "🧶"
  show MutedSpeaker = "🔇"
  show SpeakerLowVolume = "🔈"
  show SpeakerMediumVolume = "🔉"
  show SpeakerHighVolume = "🔊"
  show Loudspeaker = "📢"
  show Megaphone = "📣"
  show PostalHorn = "📯"
  show Bell = "🔔"
  show BellWithSlash = "🔕"
  show MusicalScore = "🎼"
  show MusicalNote = "🎵"
  show MusicalNotes = "🎶"
  show StudioMicrophone = "🎙"
  show LevelSlider = "🎚"
  show ControlKnobs = "🎛"
  show Microphone = "🎤"
  show Headphone = "🎧"
  show Radio = "📻"
  show Saxophone = "🎷"
  show Guitar = "🎸"
  show MusicalKeyboard = "🎹"
  show Trumpet = "🎺"
  show Violin = "🎻"
  show Drum = "🥁"
  show MobilePhone = "📱"
  show MobilePhoneWithArrow = "📲"
  show Telephone = "☎"
  show TelephoneReceiver = "📞"
  show Pager = "📟"
  show FaxMachine = "📠"
  show Battery = "🔋"
  show ElectricPlug = "🔌"
  show LaptopComputer = "💻"
  show DesktopComputer = "🖥"
  show Printer = "🖨"
  show Keyboard = "⌨"
  show ComputerMouse = "🖱"
  show Trackball = "🖲"
  show ComputerDisk = "💽"
  show FloppyDisk = "💾"
  show OpticalDisk = "💿"
  show Dvd = "📀"
  show Abacus = "🧮"
  show MovieCamera = "🎥"
  show FilmFrames = "🎞"
  show FilmProjector = "📽"
  show ClapperBoard = "🎬"
  show Television = "📺"
  show Camera = "📷"
  show CameraWithFlash = "📸"
  show VideoCamera = "📹"
  show Videocassette = "📼"
  show MagnifyingGlassTiltedLeft = "🔍"
  show MagnifyingGlassTiltedRight = "🔎"
  show Candle = "🕯"
  show LightBulb = "💡"
  show Flashlight = "🔦"
  show RedPaperLantern = "🏮"
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
  show RolledUpNewspaper = "🗞"
  show BookmarkTabs = "📑"
  show Bookmark = "🔖"
  show Label = "🏷"
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
  show Envelope = "✉"
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
  show BallotBoxWithBallot = "🗳"
  show Pencil = "✏"
  show BlackNib = "✒"
  show FountainPen = "🖋"
  show Pen = "🖊"
  show Paintbrush = "🖌"
  show Crayon = "🖍"
  show Memo = "📝"
  show Briefcase = "💼"
  show FileFolder = "📁"
  show OpenFileFolder = "📂"
  show CardIndexDividers = "🗂"
  show Calendar = "📅"
  show TearOffCalendar = "📆"
  show SpiralNotepad = "🗒"
  show SpiralCalendar = "🗓"
  show CardIndex = "📇"
  show ChartIncreasing = "📈"
  show ChartDecreasing = "📉"
  show BarChart = "📊"
  show Clipboard = "📋"
  show Pushpin = "📌"
  show RoundPushpin = "📍"
  show Paperclip = "📎"
  show LinkedPaperclips = "🖇"
  show StraightRuler = "📏"
  show TriangularRuler = "📐"
  show Scissors = "✂"
  show CardFileBox = "🗃"
  show FileCabinet = "🗄"
  show Wastebasket = "🗑"
  show Locked = "🔒"
  show Unlocked = "🔓"
  show LockedWithPen = "🔏"
  show LockedWithKey = "🔐"
  show Key = "🔑"
  show OldKey = "🗝"
  show Hammer = "🔨"
  show Pick = "⛏"
  show HammerAndPick = "⚒"
  show HammerAndWrench = "🛠"
  show Dagger = "🗡"
  show CrossedSwords = "⚔"
  show Pistol = "🔫"
  show BowAndArrow = "🏹"
  show Shield = "🛡"
  show Wrench = "🔧"
  show NutAndBolt = "🔩"
  show Gear = "⚙"
  show Clamp = "🗜"
  show BalanceScale = "⚖"
  show Link = "🔗"
  show Chains = "⛓"
  show Toolbox = "🧰"
  show Magnet = "🧲"
  show Alembic = "⚗"
  show TestTube = "🧪"
  show PetriDish = "🧫"
  show Dna = "🧬"
  show Microscope = "🔬"
  show Telescope = "🔭"
  show SatelliteAntenna = "📡"
  show Syringe = "💉"
  show Pill = "💊"
  show Door = "🚪"
  show Bed = "🛏"
  show CouchAndLamp = "🛋"
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
  show Cigarette = "🚬"
  show Coffin = "⚰"
  show FuneralUrn = "⚱"
  show Moai = "🗿"
  show AtmSign = "🏧"
  show LitterInBinSign = "🚮"
  show PotableWater = "🚰"
  show WheelchairSymbol = "♿"
  show MenSRoom = "🚹"
  show WomenSRoom = "🚺"
  show Restroom = "🚻"
  show BabySymbol = "🚼"
  show WaterCloset = "🚾"
  show PassportControl = "🛂"
  show Customs = "🛃"
  show BaggageClaim = "🛄"
  show LeftLuggage = "🛅"
  show Warning = "⚠"
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
  show Radioactive = "☢"
  show Biohazard = "☣"
  show UpArrow = "⬆"
  show UpRightArrow = "↗"
  show RightArrow = "➡"
  show DownRightArrow = "↘"
  show DownArrow = "⬇"
  show DownLeftArrow = "↙"
  show LeftArrow = "⬅"
  show UpLeftArrow = "↖"
  show UpDownArrow = "↕"
  show LeftRightArrow = "↔"
  show RightArrowCurvingLeft = "↩"
  show LeftArrowCurvingRight = "↪"
  show RightArrowCurvingUp = "⤴"
  show RightArrowCurvingDown = "⤵"
  show ClockwiseVerticalArrows = "🔃"
  show CounterclockwiseArrowsButton = "🔄"
  show BackArrow = "🔙"
  show EndArrow = "🔚"
  show OnArrow = "🔛"
  show SoonArrow = "🔜"
  show TopArrow = "🔝"
  show PlaceOfWorship = "🛐"
  show AtomSymbol = "⚛"
  show Om = "🕉"
  show StarOfDavid = "✡"
  show WheelOfDharma = "☸"
  show YinYang = "☯"
  show LatinCross = "✝"
  show OrthodoxCross = "☦"
  show StarAndCrescent = "☪"
  show PeaceSymbol = "☮"
  show Menorah = "🕎"
  show DottedSixPointedStar = "🔯"
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
  show ShuffleTracksButton = "🔀"
  show RepeatButton = "🔁"
  show RepeatSingleButton = "🔂"
  show PlayButton = "▶"
  show FastForwardButton = "⏩"
  show NextTrackButton = "⏭"
  show PlayOrPauseButton = "⏯"
  show ReverseButton = "◀"
  show FastReverseButton = "⏪"
  show LastTrackButton = "⏮"
  show UpwardsButton = "🔼"
  show FastUpButton = "⏫"
  show DownwardsButton = "🔽"
  show FastDownButton = "⏬"
  show PauseButton = "⏸"
  show StopButton = "⏹"
  show RecordButton = "⏺"
  show EjectButton = "⏏"
  show Cinema = "🎦"
  show DimButton = "🔅"
  show BrightButton = "🔆"
  show AntennaBars = "📶"
  show VibrationMode = "📳"
  show MobilePhoneOff = "📴"
  show MedicalSymbol = "⚕"
  show Infinity = "♾"
  show RecyclingSymbol = "♻"
  show FleurDeLis = "⚜"
  show TridentEmblem = "🔱"
  show NameBadge = "📛"
  show JapaneseSymbolForBeginner = "🔰"
  show HeavyLargeCircle = "⭕"
  show WhiteHeavyCheckMark = "✅"
  show BallotBoxWithCheck = "☑"
  show HeavyCheckMark = "✔"
  show HeavyMultiplicationX = "✖"
  show CrossMark = "❌"
  show CrossMarkButton = "❎"
  show HeavyPlusSign = "➕"
  show HeavyMinusSign = "➖"
  show HeavyDivisionSign = "➗"
  show CurlyLoop = "➰"
  show DoubleCurlyLoop = "➿"
  show PartAlternationMark = "〽"
  show EightSpokedAsterisk = "✳"
  show EightPointedStar = "✴"
  show Sparkle = "❇"
  show DoubleExclamationMark = "‼"
  show ExclamationQuestionMark = "⁉"
  show QuestionMark = "❓"
  show WhiteQuestionMark = "❔"
  show WhiteExclamationMark = "❕"
  show ExclamationMark = "❗"
  show WavyDash = "〰"
  show Copyright = "©"
  show Registered = "®"
  show TradeMark = "™"
  show Keycap = "🔟"
  show HundredPoints = "💯"
  show InputLatinUppercase = "🔠"
  show InputLatinLowercase = "🔡"
  show InputNumbers = "🔢"
  show InputSymbols = "🔣"
  show InputLatinLetters = "🔤"
  show AButtonBloodType = "🅰"
  show AbButtonBloodType = "🆎"
  show BButtonBloodType = "🅱"
  show ClButton = "🆑"
  show CoolButton = "🆒"
  show FreeButton = "🆓"
  show Information = "ℹ"
  show IdButton = "🆔"
  show CircledM = "Ⓜ"
  show NewButton = "🆕"
  show NgButton = "🆖"
  show OButtonBloodType = "🅾"
  show OkButton = "🆗"
  show PButton = "🅿"
  show SosButton = "🆘"
  show UpButton = "🆙"
  show VsButton = "🆚"
  show JapaneseHereButton = "🈁"
  show JapaneseServiceChargeButton = "🈂"
  show JapaneseMonthlyAmountButton = "🈷"
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
  show JapaneseCongratulationsButton = "㊗"
  show JapaneseSecretButton = "㊙"
  show JapaneseOpenForBusinessButton = "🈺"
  show JapaneseNoVacancyButton = "🈵"
  show RedCircle = "🔴"
  show BlueCircle = "🔵"
  show WhiteCircle = "⚪"
  show BlackCircle = "⚫"
  show WhiteLargeSquare = "⬜"
  show BlackLargeSquare = "⬛"
  show BlackMediumSquare = "◼"
  show WhiteMediumSquare = "◻"
  show WhiteMediumSmallSquare = "◽"
  show BlackMediumSmallSquare = "◾"
  show WhiteSmallSquare = "▫"
  show BlackSmallSquare = "▪"
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
  show ChequeredFlag = "🏁"
  show TriangularFlag = "🚩"
  show CrossedFlags = "🎌"
  show BlackFlag = "🏴"
  show WhiteFlag = "🏳"

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
    "🥰" -> Right SmilingFaceWithHearts
    "😗" -> Right KissingFace
    "😙" -> Right KissingFaceWithSmilingEyes
    "😚" -> Right KissingFaceWithClosedEyes
    "☺" -> Right SmilingFace
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
    "☹" -> Right FrowningFace
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
    "☠" -> Right SkullAndCrossbones
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
    "👶" -> Right Baby
    "🧒" -> Right Child
    "👦" -> Right Boy
    "👧" -> Right Girl
    "🧑" -> Right Person
    "👱" -> Right PersonBlondHair
    "👨" -> Right Man
    "🧔" -> Right ManBeard
    "👩" -> Right Woman
    "🧓" -> Right OlderPerson
    "👴" -> Right OldMan
    "👵" -> Right OldWoman
    "👮" -> Right PoliceOfficer
    "🕵" -> Right Detective
    "💂" -> Right Guard
    "👷" -> Right ConstructionWorker
    "🤴" -> Right Prince
    "👸" -> Right Princess
    "👳" -> Right PersonWearingTurban
    "👲" -> Right ManWithChineseCap
    "🧕" -> Right WomanWithHeadscarf
    "🤵" -> Right ManInTuxedo
    "👰" -> Right BrideWithVeil
    "🤰" -> Right PregnantWoman
    "🤱" -> Right BreastFeeding
    "👼" -> Right BabyAngel
    "🎅" -> Right SantaClaus
    "🤶" -> Right MrsClaus
    "🦸" -> Right Superhero
    "🦹" -> Right Supervillain
    "🧙" -> Right Mage
    "🧚" -> Right Fairy
    "🧛" -> Right Vampire
    "🧜" -> Right Merperson
    "🧝" -> Right Elf
    "🧞" -> Right Genie
    "🧟" -> Right Zombie
    "🙍" -> Right PersonFrowning
    "🙎" -> Right PersonPouting
    "🙅" -> Right PersonGesturingNo
    "🙆" -> Right PersonGesturingOk
    "💁" -> Right PersonTippingHand
    "🙋" -> Right PersonRaisingHand
    "🙇" -> Right PersonBowing
    "🤦" -> Right PersonFacepalming
    "🤷" -> Right PersonShrugging
    "💆" -> Right PersonGettingMassage
    "💇" -> Right PersonGettingHaircut
    "🚶" -> Right PersonWalking
    "🏃" -> Right PersonRunning
    "💃" -> Right WomanDancing
    "🕺" -> Right ManDancing
    "👯" -> Right PeopleWithBunnyEars
    "🧖" -> Right PersonInSteamyRoom
    "🧗" -> Right PersonClimbing
    "🧘" -> Right PersonInLotusPosition
    "🛀" -> Right PersonTakingBath
    "🛌" -> Right PersonInBed
    "🕴" -> Right ManInSuitLevitating
    "🗣" -> Right SpeakingHead
    "👤" -> Right BustInSilhouette
    "👥" -> Right BustsInSilhouette
    "🤺" -> Right PersonFencing
    "🏇" -> Right HorseRacing
    "⛷" -> Right Skier
    "🏂" -> Right Snowboarder
    "🏌" -> Right PersonGolfing
    "🏄" -> Right PersonSurfing
    "🚣" -> Right PersonRowingBoat
    "🏊" -> Right PersonSwimming
    "⛹" -> Right PersonBouncingBall
    "🏋" -> Right PersonLiftingWeights
    "🚴" -> Right PersonBiking
    "🚵" -> Right PersonMountainBiking
    "🏎" -> Right RacingCar
    "🏍" -> Right Motorcycle
    "🤸" -> Right PersonCartwheeling
    "🤼" -> Right PeopleWrestling
    "🤽" -> Right PersonPlayingWaterPolo
    "🤾" -> Right PersonPlayingHandball
    "🤹" -> Right PersonJuggling
    "👫" -> Right ManAndWomanHoldingHands
    "👬" -> Right TwoMenHoldingHands
    "👭" -> Right TwoWomenHoldingHands
    "💏" -> Right Kiss
    "💑" -> Right CoupleWithHeart
    "👪" -> Right Family
    "🤳" -> Right Selfie
    "💪" -> Right FlexedBiceps
    "🦵" -> Right Leg
    "🦶" -> Right Foot
    "👈" -> Right BackhandIndexPointingLeft
    "👉" -> Right BackhandIndexPointingRight
    "☝" -> Right IndexPointingUp
    "👆" -> Right BackhandIndexPointingUp
    "🖕" -> Right MiddleFinger
    "👇" -> Right BackhandIndexPointingDown
    "✌" -> Right VictoryHand
    "🤞" -> Right CrossedFingers
    "🖖" -> Right VulcanSalute
    "🤘" -> Right SignOfTheHorns
    "🤙" -> Right CallMeHand
    "🖐" -> Right HandWithFingersSplayed
    "✋" -> Right RaisedHand
    "👌" -> Right OkHand
    "👍" -> Right ThumbsUp
    "👎" -> Right ThumbsDown
    "✊" -> Right RaisedFist
    "👊" -> Right OncomingFist
    "🤛" -> Right LeftFacingFist
    "🤜" -> Right RightFacingFist
    "🤚" -> Right RaisedBackOfHand
    "👋" -> Right WavingHand
    "🤟" -> Right LoveYouGesture
    "✍" -> Right WritingHand
    "👏" -> Right ClappingHands
    "👐" -> Right OpenHands
    "🙌" -> Right RaisingHands
    "🤲" -> Right PalmsUpTogether
    "🙏" -> Right FoldedHands
    "🤝" -> Right Handshake
    "💅" -> Right NailPolish
    "👂" -> Right Ear
    "👃" -> Right Nose
    "👣" -> Right Footprints
    "👀" -> Right Eyes
    "👁" -> Right Eye
    "🧠" -> Right Brain
    "🦴" -> Right Bone
    "🦷" -> Right Tooth
    "👅" -> Right Tongue
    "👄" -> Right Mouth
    "💋" -> Right KissMark
    "💘" -> Right HeartWithArrow
    "💝" -> Right HeartWithRibbon
    "💖" -> Right SparklingHeart
    "💗" -> Right GrowingHeart
    "💓" -> Right BeatingHeart
    "💞" -> Right RevolvingHearts
    "💕" -> Right TwoHearts
    "💌" -> Right LoveLetter
    "❣" -> Right HeavyHeartExclamation
    "💔" -> Right BrokenHeart
    "❤" -> Right RedHeart
    "🧡" -> Right OrangeHeart
    "💛" -> Right YellowHeart
    "💚" -> Right GreenHeart
    "💙" -> Right BlueHeart
    "💜" -> Right PurpleHeart
    "🖤" -> Right BlackHeart
    "💟" -> Right HeartDecoration
    "💤" -> Right Zzz
    "💢" -> Right AngerSymbol
    "💣" -> Right Bomb
    "💥" -> Right Collision
    "💦" -> Right SweatDroplets
    "💨" -> Right DashingAway
    "💫" -> Right Dizzy
    "💬" -> Right SpeechBalloon
    "🗨" -> Right LeftSpeechBubble
    "🗯" -> Right RightAngerBubble
    "💭" -> Right ThoughtBalloon
    "🕳" -> Right Hole
    "👓" -> Right Glasses
    "🕶" -> Right Sunglasses
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
    "👚" -> Right WomanSClothes
    "👛" -> Right Purse
    "👜" -> Right Handbag
    "👝" -> Right ClutchBag
    "🛍" -> Right ShoppingBags
    "🎒" -> Right Backpack
    "👞" -> Right ManSShoe
    "👟" -> Right RunningShoe
    "🥾" -> Right HikingBoot
    "🥿" -> Right FlatShoe
    "👠" -> Right HighHeeledShoe
    "👡" -> Right WomanSSandal
    "👢" -> Right WomanSBoot
    "👑" -> Right Crown
    "👒" -> Right WomanSHat
    "🎩" -> Right TopHat
    "🎓" -> Right GraduationCap
    "🧢" -> Right BilledCap
    "⛑" -> Right RescueWorkerSHelmet
    "📿" -> Right PrayerBeads
    "💄" -> Right Lipstick
    "💍" -> Right Ring
    "💎" -> Right GemStone
    "🦰" -> Right RedHair
    "🦱" -> Right CurlyHair
    "🦳" -> Right WhiteHair
    "🦲" -> Right Bald
    "♀" -> Right FemaleSign
    "♂" -> Right MaleSign
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
    "🐿" -> Right Chipmunk
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
    "🕊" -> Right Dove
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
    "🐌" -> Right Snail
    "🦋" -> Right Butterfly
    "🐛" -> Right Bug
    "🐜" -> Right Ant
    "🐝" -> Right Honeybee
    "🐞" -> Right LadyBeetle
    "🦗" -> Right Cricket
    "🕷" -> Right Spider
    "🕸" -> Right SpiderWeb
    "🦂" -> Right Scorpion
    "🦟" -> Right Mosquito
    "🦠" -> Right Microbe
    "💐" -> Right Bouquet
    "🌸" -> Right CherryBlossom
    "💮" -> Right WhiteFlower
    "🏵" -> Right Rosette
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
    "☘" -> Right Shamrock
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
    "🌶" -> Right HotPepper
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
    "🦀" -> Right Crab
    "🦞" -> Right Lobster
    "🦐" -> Right Shrimp
    "🦑" -> Right Squid
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
    "🍽" -> Right ForkAndKnifeWithPlate
    "🍴" -> Right ForkAndKnife
    "🥄" -> Right Spoon
    "🔪" -> Right KitchenKnife
    "🏺" -> Right Amphora
    "🌍" -> Right GlobeShowingEuropeAfrica
    "🌎" -> Right GlobeShowingAmericas
    "🌏" -> Right GlobeShowingAsiaAustralia
    "🌐" -> Right GlobeWithMeridians
    "🗺" -> Right WorldMap
    "🗾" -> Right MapOfJapan
    "🧭" -> Right Compass
    "🏔" -> Right SnowCappedMountain
    "⛰" -> Right Mountain
    "🌋" -> Right Volcano
    "🗻" -> Right MountFuji
    "🏕" -> Right Camping
    "🏖" -> Right BeachWithUmbrella
    "🏜" -> Right Desert
    "🏝" -> Right DesertIsland
    "🏞" -> Right NationalPark
    "🏟" -> Right Stadium
    "🏛" -> Right ClassicalBuilding
    "🏗" -> Right BuildingConstruction
    "🧱" -> Right Brick
    "🏘" -> Right Houses
    "🏚" -> Right DerelictHouse
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
    "⛩" -> Right ShintoShrine
    "🕋" -> Right Kaaba
    "⛲" -> Right Fountain
    "⛺" -> Right Tent
    "🌁" -> Right Foggy
    "🌃" -> Right NightWithStars
    "🏙" -> Right Cityscape
    "🌄" -> Right SunriseOverMountains
    "🌅" -> Right Sunrise
    "🌆" -> Right CityscapeAtDusk
    "🌇" -> Right Sunset
    "🌉" -> Right BridgeAtNight
    "♨" -> Right HotSprings
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
    "🛣" -> Right Motorway
    "🛤" -> Right RailwayTrack
    "🛢" -> Right OilDrum
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
    "🛳" -> Right PassengerShip
    "⛴" -> Right Ferry
    "🛥" -> Right MotorBoat
    "🚢" -> Right Ship
    "✈" -> Right Airplane
    "🛩" -> Right SmallAirplane
    "🛫" -> Right AirplaneDeparture
    "🛬" -> Right AirplaneArrival
    "💺" -> Right Seat
    "🚁" -> Right Helicopter
    "🚟" -> Right SuspensionRailway
    "🚠" -> Right MountainCableway
    "🚡" -> Right AerialTramway
    "🛰" -> Right Satellite
    "🚀" -> Right Rocket
    "🛸" -> Right FlyingSaucer
    "🛎" -> Right BellhopBell
    "🧳" -> Right Luggage
    "⌛" -> Right HourglassDone
    "⏳" -> Right HourglassNotDone
    "⌚" -> Right Watch
    "⏰" -> Right AlarmClock
    "⏱" -> Right Stopwatch
    "⏲" -> Right TimerClock
    "🕰" -> Right MantelpieceClock
    "🕛" -> Right TwelveOClock
    "🕧" -> Right TwelveThirty
    "🕐" -> Right OneOClock
    "🕜" -> Right OneThirty
    "🕑" -> Right TwoOClock
    "🕝" -> Right TwoThirty
    "🕒" -> Right ThreeOClock
    "🕞" -> Right ThreeThirty
    "🕓" -> Right FourOClock
    "🕟" -> Right FourThirty
    "🕔" -> Right FiveOClock
    "🕠" -> Right FiveThirty
    "🕕" -> Right SixOClock
    "🕡" -> Right SixThirty
    "🕖" -> Right SevenOClock
    "🕢" -> Right SevenThirty
    "🕗" -> Right EightOClock
    "🕣" -> Right EightThirty
    "🕘" -> Right NineOClock
    "🕤" -> Right NineThirty
    "🕙" -> Right TenOClock
    "🕥" -> Right TenThirty
    "🕚" -> Right ElevenOClock
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
    "🌡" -> Right Thermometer
    "☀" -> Right Sun
    "🌝" -> Right FullMoonFace
    "🌞" -> Right SunWithFace
    "⭐" -> Right Star
    "🌟" -> Right GlowingStar
    "🌠" -> Right ShootingStar
    "☁" -> Right Cloud
    "⛅" -> Right SunBehindCloud
    "⛈" -> Right CloudWithLightningAndRain
    "🌤" -> Right SunBehindSmallCloud
    "🌥" -> Right SunBehindLargeCloud
    "🌦" -> Right SunBehindRainCloud
    "🌧" -> Right CloudWithRain
    "🌨" -> Right CloudWithSnow
    "🌩" -> Right CloudWithLightning
    "🌪" -> Right Tornado
    "🌫" -> Right Fog
    "🌬" -> Right WindFace
    "🌀" -> Right Cyclone
    "🌈" -> Right Rainbow
    "🌂" -> Right ClosedUmbrella
    "☂" -> Right Umbrella
    "☔" -> Right UmbrellaWithRainDrops
    "⛱" -> Right UmbrellaOnGround
    "⚡" -> Right HighVoltage
    "❄" -> Right Snowflake
    "☃" -> Right Snowman
    "⛄" -> Right SnowmanWithoutSnow
    "☄" -> Right Comet
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
    "🎗" -> Right ReminderRibbon
    "🎟" -> Right AdmissionTickets
    "🎫" -> Right Ticket
    "🎖" -> Right MilitaryMedal
    "🏆" -> Right Trophy
    "🏅" -> Right SportsMedal
    "🥇" -> Right StPlaceMedal
    "🥈" -> Right NdPlaceMedal
    "🥉" -> Right RdPlaceMedal
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
    "⛸" -> Right IceSkate
    "🎣" -> Right FishingPole
    "🎽" -> Right RunningShirt
    "🎿" -> Right Skis
    "🛷" -> Right Sled
    "🥌" -> Right CurlingStone
    "🎯" -> Right DirectHit
    "🎱" -> Right PoolBall
    "🔮" -> Right CrystalBall
    "🧿" -> Right NazarAmulet
    "🎮" -> Right VideoGame
    "🕹" -> Right Joystick
    "🎰" -> Right SlotMachine
    "🎲" -> Right GameDie
    "🧩" -> Right Jigsaw
    "🧸" -> Right TeddyBear
    "♠" -> Right SpadeSuit
    "♥" -> Right HeartSuit
    "♦" -> Right DiamondSuit
    "♣" -> Right ClubSuit
    "♟" -> Right ChessPawn
    "🃏" -> Right Joker
    "🀄" -> Right MahjongRedDragon
    "🎴" -> Right FlowerPlayingCards
    "🎭" -> Right PerformingArts
    "🖼" -> Right FramedPicture
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
    "🎙" -> Right StudioMicrophone
    "🎚" -> Right LevelSlider
    "🎛" -> Right ControlKnobs
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
    "☎" -> Right Telephone
    "📞" -> Right TelephoneReceiver
    "📟" -> Right Pager
    "📠" -> Right FaxMachine
    "🔋" -> Right Battery
    "🔌" -> Right ElectricPlug
    "💻" -> Right LaptopComputer
    "🖥" -> Right DesktopComputer
    "🖨" -> Right Printer
    "⌨" -> Right Keyboard
    "🖱" -> Right ComputerMouse
    "🖲" -> Right Trackball
    "💽" -> Right ComputerDisk
    "💾" -> Right FloppyDisk
    "💿" -> Right OpticalDisk
    "📀" -> Right Dvd
    "🧮" -> Right Abacus
    "🎥" -> Right MovieCamera
    "🎞" -> Right FilmFrames
    "📽" -> Right FilmProjector
    "🎬" -> Right ClapperBoard
    "📺" -> Right Television
    "📷" -> Right Camera
    "📸" -> Right CameraWithFlash
    "📹" -> Right VideoCamera
    "📼" -> Right Videocassette
    "🔍" -> Right MagnifyingGlassTiltedLeft
    "🔎" -> Right MagnifyingGlassTiltedRight
    "🕯" -> Right Candle
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
    "🗞" -> Right RolledUpNewspaper
    "📑" -> Right BookmarkTabs
    "🔖" -> Right Bookmark
    "🏷" -> Right Label
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
    "✉" -> Right Envelope
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
    "🗳" -> Right BallotBoxWithBallot
    "✏" -> Right Pencil
    "✒" -> Right BlackNib
    "🖋" -> Right FountainPen
    "🖊" -> Right Pen
    "🖌" -> Right Paintbrush
    "🖍" -> Right Crayon
    "📝" -> Right Memo
    "💼" -> Right Briefcase
    "📁" -> Right FileFolder
    "📂" -> Right OpenFileFolder
    "🗂" -> Right CardIndexDividers
    "📅" -> Right Calendar
    "📆" -> Right TearOffCalendar
    "🗒" -> Right SpiralNotepad
    "🗓" -> Right SpiralCalendar
    "📇" -> Right CardIndex
    "📈" -> Right ChartIncreasing
    "📉" -> Right ChartDecreasing
    "📊" -> Right BarChart
    "📋" -> Right Clipboard
    "📌" -> Right Pushpin
    "📍" -> Right RoundPushpin
    "📎" -> Right Paperclip
    "🖇" -> Right LinkedPaperclips
    "📏" -> Right StraightRuler
    "📐" -> Right TriangularRuler
    "✂" -> Right Scissors
    "🗃" -> Right CardFileBox
    "🗄" -> Right FileCabinet
    "🗑" -> Right Wastebasket
    "🔒" -> Right Locked
    "🔓" -> Right Unlocked
    "🔏" -> Right LockedWithPen
    "🔐" -> Right LockedWithKey
    "🔑" -> Right Key
    "🗝" -> Right OldKey
    "🔨" -> Right Hammer
    "⛏" -> Right Pick
    "⚒" -> Right HammerAndPick
    "🛠" -> Right HammerAndWrench
    "🗡" -> Right Dagger
    "⚔" -> Right CrossedSwords
    "🔫" -> Right Pistol
    "🏹" -> Right BowAndArrow
    "🛡" -> Right Shield
    "🔧" -> Right Wrench
    "🔩" -> Right NutAndBolt
    "⚙" -> Right Gear
    "🗜" -> Right Clamp
    "⚖" -> Right BalanceScale
    "🔗" -> Right Link
    "⛓" -> Right Chains
    "🧰" -> Right Toolbox
    "🧲" -> Right Magnet
    "⚗" -> Right Alembic
    "🧪" -> Right TestTube
    "🧫" -> Right PetriDish
    "🧬" -> Right Dna
    "🔬" -> Right Microscope
    "🔭" -> Right Telescope
    "📡" -> Right SatelliteAntenna
    "💉" -> Right Syringe
    "💊" -> Right Pill
    "🚪" -> Right Door
    "🛏" -> Right Bed
    "🛋" -> Right CouchAndLamp
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
    "⚰" -> Right Coffin
    "⚱" -> Right FuneralUrn
    "🗿" -> Right Moai
    "🏧" -> Right AtmSign
    "🚮" -> Right LitterInBinSign
    "🚰" -> Right PotableWater
    "♿" -> Right WheelchairSymbol
    "🚹" -> Right MenSRoom
    "🚺" -> Right WomenSRoom
    "🚻" -> Right Restroom
    "🚼" -> Right BabySymbol
    "🚾" -> Right WaterCloset
    "🛂" -> Right PassportControl
    "🛃" -> Right Customs
    "🛄" -> Right BaggageClaim
    "🛅" -> Right LeftLuggage
    "⚠" -> Right Warning
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
    "☢" -> Right Radioactive
    "☣" -> Right Biohazard
    "⬆" -> Right UpArrow
    "↗" -> Right UpRightArrow
    "➡" -> Right RightArrow
    "↘" -> Right DownRightArrow
    "⬇" -> Right DownArrow
    "↙" -> Right DownLeftArrow
    "⬅" -> Right LeftArrow
    "↖" -> Right UpLeftArrow
    "↕" -> Right UpDownArrow
    "↔" -> Right LeftRightArrow
    "↩" -> Right RightArrowCurvingLeft
    "↪" -> Right LeftArrowCurvingRight
    "⤴" -> Right RightArrowCurvingUp
    "⤵" -> Right RightArrowCurvingDown
    "🔃" -> Right ClockwiseVerticalArrows
    "🔄" -> Right CounterclockwiseArrowsButton
    "🔙" -> Right BackArrow
    "🔚" -> Right EndArrow
    "🔛" -> Right OnArrow
    "🔜" -> Right SoonArrow
    "🔝" -> Right TopArrow
    "🛐" -> Right PlaceOfWorship
    "⚛" -> Right AtomSymbol
    "🕉" -> Right Om
    "✡" -> Right StarOfDavid
    "☸" -> Right WheelOfDharma
    "☯" -> Right YinYang
    "✝" -> Right LatinCross
    "☦" -> Right OrthodoxCross
    "☪" -> Right StarAndCrescent
    "☮" -> Right PeaceSymbol
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
    "▶" -> Right PlayButton
    "⏩" -> Right FastForwardButton
    "⏭" -> Right NextTrackButton
    "⏯" -> Right PlayOrPauseButton
    "◀" -> Right ReverseButton
    "⏪" -> Right FastReverseButton
    "⏮" -> Right LastTrackButton
    "🔼" -> Right UpwardsButton
    "⏫" -> Right FastUpButton
    "🔽" -> Right DownwardsButton
    "⏬" -> Right FastDownButton
    "⏸" -> Right PauseButton
    "⏹" -> Right StopButton
    "⏺" -> Right RecordButton
    "⏏" -> Right EjectButton
    "🎦" -> Right Cinema
    "🔅" -> Right DimButton
    "🔆" -> Right BrightButton
    "📶" -> Right AntennaBars
    "📳" -> Right VibrationMode
    "📴" -> Right MobilePhoneOff
    "⚕" -> Right MedicalSymbol
    "♾" -> Right Infinity
    "♻" -> Right RecyclingSymbol
    "⚜" -> Right FleurDeLis
    "🔱" -> Right TridentEmblem
    "📛" -> Right NameBadge
    "🔰" -> Right JapaneseSymbolForBeginner
    "⭕" -> Right HeavyLargeCircle
    "✅" -> Right WhiteHeavyCheckMark
    "☑" -> Right BallotBoxWithCheck
    "✔" -> Right HeavyCheckMark
    "✖" -> Right HeavyMultiplicationX
    "❌" -> Right CrossMark
    "❎" -> Right CrossMarkButton
    "➕" -> Right HeavyPlusSign
    "➖" -> Right HeavyMinusSign
    "➗" -> Right HeavyDivisionSign
    "➰" -> Right CurlyLoop
    "➿" -> Right DoubleCurlyLoop
    "〽" -> Right PartAlternationMark
    "✳" -> Right EightSpokedAsterisk
    "✴" -> Right EightPointedStar
    "❇" -> Right Sparkle
    "‼" -> Right DoubleExclamationMark
    "⁉" -> Right ExclamationQuestionMark
    "❓" -> Right QuestionMark
    "❔" -> Right WhiteQuestionMark
    "❕" -> Right WhiteExclamationMark
    "❗" -> Right ExclamationMark
    "〰" -> Right WavyDash
    "©" -> Right Copyright
    "®" -> Right Registered
    "™" -> Right TradeMark
    "🔟" -> Right Keycap
    "💯" -> Right HundredPoints
    "🔠" -> Right InputLatinUppercase
    "🔡" -> Right InputLatinLowercase
    "🔢" -> Right InputNumbers
    "🔣" -> Right InputSymbols
    "🔤" -> Right InputLatinLetters
    "🅰" -> Right AButtonBloodType
    "🆎" -> Right AbButtonBloodType
    "🅱" -> Right BButtonBloodType
    "🆑" -> Right ClButton
    "🆒" -> Right CoolButton
    "🆓" -> Right FreeButton
    "ℹ" -> Right Information
    "🆔" -> Right IdButton
    "Ⓜ" -> Right CircledM
    "🆕" -> Right NewButton
    "🆖" -> Right NgButton
    "🅾" -> Right OButtonBloodType
    "🆗" -> Right OkButton
    "🅿" -> Right PButton
    "🆘" -> Right SosButton
    "🆙" -> Right UpButton
    "🆚" -> Right VsButton
    "🈁" -> Right JapaneseHereButton
    "🈂" -> Right JapaneseServiceChargeButton
    "🈷" -> Right JapaneseMonthlyAmountButton
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
    "㊗" -> Right JapaneseCongratulationsButton
    "㊙" -> Right JapaneseSecretButton
    "🈺" -> Right JapaneseOpenForBusinessButton
    "🈵" -> Right JapaneseNoVacancyButton
    "🔴" -> Right RedCircle
    "🔵" -> Right BlueCircle
    "⚪" -> Right WhiteCircle
    "⚫" -> Right BlackCircle
    "⬜" -> Right WhiteLargeSquare
    "⬛" -> Right BlackLargeSquare
    "◼" -> Right BlackMediumSquare
    "◻" -> Right WhiteMediumSquare
    "◽" -> Right WhiteMediumSmallSquare
    "◾" -> Right BlackMediumSmallSquare
    "▫" -> Right WhiteSmallSquare
    "▪" -> Right BlackSmallSquare
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
    "🏁" -> Right ChequeredFlag
    "🚩" -> Right TriangularFlag
    "🎌" -> Right CrossedFlags
    "🏴" -> Right BlackFlag
    "🏳" -> Right WhiteFlag
    s -> Left $ joinWith " " ["Sorry.", s, "is not supported."]


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
emojiToNum SmilingFaceWithHearts = 15
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
emojiToNum Baby = 114
emojiToNum Child = 115
emojiToNum Boy = 116
emojiToNum Girl = 117
emojiToNum Person = 118
emojiToNum PersonBlondHair = 119
emojiToNum Man = 120
emojiToNum ManBeard = 126
emojiToNum Woman = 127
emojiToNum OlderPerson = 133
emojiToNum OldMan = 134
emojiToNum OldWoman = 135
emojiToNum PoliceOfficer = 168
emojiToNum Detective = 171
emojiToNum Guard = 174
emojiToNum ConstructionWorker = 177
emojiToNum Prince = 180
emojiToNum Princess = 181
emojiToNum PersonWearingTurban = 182
emojiToNum ManWithChineseCap = 185
emojiToNum WomanWithHeadscarf = 186
emojiToNum ManInTuxedo = 187
emojiToNum BrideWithVeil = 188
emojiToNum PregnantWoman = 189
emojiToNum BreastFeeding = 190
emojiToNum BabyAngel = 191
emojiToNum SantaClaus = 192
emojiToNum MrsClaus = 193
emojiToNum Superhero = 194
emojiToNum Supervillain = 197
emojiToNum Mage = 200
emojiToNum Fairy = 203
emojiToNum Vampire = 206
emojiToNum Merperson = 209
emojiToNum Elf = 212
emojiToNum Genie = 215
emojiToNum Zombie = 218
emojiToNum PersonFrowning = 221
emojiToNum PersonPouting = 224
emojiToNum PersonGesturingNo = 227
emojiToNum PersonGesturingOk = 230
emojiToNum PersonTippingHand = 233
emojiToNum PersonRaisingHand = 236
emojiToNum PersonBowing = 239
emojiToNum PersonFacepalming = 242
emojiToNum PersonShrugging = 245
emojiToNum PersonGettingMassage = 248
emojiToNum PersonGettingHaircut = 251
emojiToNum PersonWalking = 254
emojiToNum PersonRunning = 257
emojiToNum WomanDancing = 260
emojiToNum ManDancing = 261
emojiToNum PeopleWithBunnyEars = 262
emojiToNum PersonInSteamyRoom = 265
emojiToNum PersonClimbing = 268
emojiToNum PersonInLotusPosition = 271
emojiToNum PersonTakingBath = 274
emojiToNum PersonInBed = 275
emojiToNum ManInSuitLevitating = 276
emojiToNum SpeakingHead = 277
emojiToNum BustInSilhouette = 278
emojiToNum BustsInSilhouette = 279
emojiToNum PersonFencing = 280
emojiToNum HorseRacing = 281
emojiToNum Skier = 282
emojiToNum Snowboarder = 283
emojiToNum PersonGolfing = 284
emojiToNum PersonSurfing = 287
emojiToNum PersonRowingBoat = 290
emojiToNum PersonSwimming = 293
emojiToNum PersonBouncingBall = 296
emojiToNum PersonLiftingWeights = 299
emojiToNum PersonBiking = 302
emojiToNum PersonMountainBiking = 305
emojiToNum RacingCar = 308
emojiToNum Motorcycle = 309
emojiToNum PersonCartwheeling = 310
emojiToNum PeopleWrestling = 313
emojiToNum PersonPlayingWaterPolo = 316
emojiToNum PersonPlayingHandball = 319
emojiToNum PersonJuggling = 322
emojiToNum ManAndWomanHoldingHands = 325
emojiToNum TwoMenHoldingHands = 326
emojiToNum TwoWomenHoldingHands = 327
emojiToNum Kiss = 328
emojiToNum CoupleWithHeart = 332
emojiToNum Family = 336
emojiToNum Selfie = 362
emojiToNum FlexedBiceps = 363
emojiToNum Leg = 364
emojiToNum Foot = 365
emojiToNum BackhandIndexPointingLeft = 366
emojiToNum BackhandIndexPointingRight = 367
emojiToNum IndexPointingUp = 368
emojiToNum BackhandIndexPointingUp = 369
emojiToNum MiddleFinger = 370
emojiToNum BackhandIndexPointingDown = 371
emojiToNum VictoryHand = 372
emojiToNum CrossedFingers = 373
emojiToNum VulcanSalute = 374
emojiToNum SignOfTheHorns = 375
emojiToNum CallMeHand = 376
emojiToNum HandWithFingersSplayed = 377
emojiToNum RaisedHand = 378
emojiToNum OkHand = 379
emojiToNum ThumbsUp = 380
emojiToNum ThumbsDown = 381
emojiToNum RaisedFist = 382
emojiToNum OncomingFist = 383
emojiToNum LeftFacingFist = 384
emojiToNum RightFacingFist = 385
emojiToNum RaisedBackOfHand = 386
emojiToNum WavingHand = 387
emojiToNum LoveYouGesture = 388
emojiToNum WritingHand = 389
emojiToNum ClappingHands = 390
emojiToNum OpenHands = 391
emojiToNum RaisingHands = 392
emojiToNum PalmsUpTogether = 393
emojiToNum FoldedHands = 394
emojiToNum Handshake = 395
emojiToNum NailPolish = 396
emojiToNum Ear = 397
emojiToNum Nose = 398
emojiToNum Footprints = 399
emojiToNum Eyes = 400
emojiToNum Eye = 401
emojiToNum Brain = 403
emojiToNum Bone = 404
emojiToNum Tooth = 405
emojiToNum Tongue = 406
emojiToNum Mouth = 407
emojiToNum KissMark = 408
emojiToNum HeartWithArrow = 409
emojiToNum HeartWithRibbon = 410
emojiToNum SparklingHeart = 411
emojiToNum GrowingHeart = 412
emojiToNum BeatingHeart = 413
emojiToNum RevolvingHearts = 414
emojiToNum TwoHearts = 415
emojiToNum LoveLetter = 416
emojiToNum HeavyHeartExclamation = 417
emojiToNum BrokenHeart = 418
emojiToNum RedHeart = 419
emojiToNum OrangeHeart = 420
emojiToNum YellowHeart = 421
emojiToNum GreenHeart = 422
emojiToNum BlueHeart = 423
emojiToNum PurpleHeart = 424
emojiToNum BlackHeart = 425
emojiToNum HeartDecoration = 426
emojiToNum Zzz = 427
emojiToNum AngerSymbol = 428
emojiToNum Bomb = 429
emojiToNum Collision = 430
emojiToNum SweatDroplets = 431
emojiToNum DashingAway = 432
emojiToNum Dizzy = 433
emojiToNum SpeechBalloon = 434
emojiToNum LeftSpeechBubble = 435
emojiToNum RightAngerBubble = 436
emojiToNum ThoughtBalloon = 437
emojiToNum Hole = 438
emojiToNum Glasses = 439
emojiToNum Sunglasses = 440
emojiToNum Goggles = 441
emojiToNum LabCoat = 442
emojiToNum Necktie = 443
emojiToNum TShirt = 444
emojiToNum Jeans = 445
emojiToNum Scarf = 446
emojiToNum Gloves = 447
emojiToNum Coat = 448
emojiToNum Socks = 449
emojiToNum Dress = 450
emojiToNum Kimono = 451
emojiToNum Bikini = 452
emojiToNum WomanSClothes = 453
emojiToNum Purse = 454
emojiToNum Handbag = 455
emojiToNum ClutchBag = 456
emojiToNum ShoppingBags = 457
emojiToNum Backpack = 458
emojiToNum ManSShoe = 459
emojiToNum RunningShoe = 460
emojiToNum HikingBoot = 461
emojiToNum FlatShoe = 462
emojiToNum HighHeeledShoe = 463
emojiToNum WomanSSandal = 464
emojiToNum WomanSBoot = 465
emojiToNum Crown = 466
emojiToNum WomanSHat = 467
emojiToNum TopHat = 468
emojiToNum GraduationCap = 469
emojiToNum BilledCap = 470
emojiToNum RescueWorkerSHelmet = 471
emojiToNum PrayerBeads = 472
emojiToNum Lipstick = 473
emojiToNum Ring = 474
emojiToNum GemStone = 475
emojiToNum RedHair = 476
emojiToNum CurlyHair = 477
emojiToNum WhiteHair = 478
emojiToNum Bald = 479
emojiToNum FemaleSign = 480
emojiToNum MaleSign = 481
emojiToNum MonkeyFace = 482
emojiToNum Monkey = 483
emojiToNum Gorilla = 484
emojiToNum DogFace = 485
emojiToNum Dog = 486
emojiToNum Poodle = 487
emojiToNum WolfFace = 488
emojiToNum FoxFace = 489
emojiToNum Raccoon = 490
emojiToNum CatFace = 491
emojiToNum Cat = 492
emojiToNum LionFace = 493
emojiToNum TigerFace = 494
emojiToNum Tiger = 495
emojiToNum Leopard = 496
emojiToNum HorseFace = 497
emojiToNum Horse = 498
emojiToNum UnicornFace = 499
emojiToNum Zebra = 500
emojiToNum Deer = 501
emojiToNum CowFace = 502
emojiToNum Ox = 503
emojiToNum WaterBuffalo = 504
emojiToNum Cow = 505
emojiToNum PigFace = 506
emojiToNum Pig = 507
emojiToNum Boar = 508
emojiToNum PigNose = 509
emojiToNum Ram = 510
emojiToNum Ewe = 511
emojiToNum Goat = 512
emojiToNum Camel = 513
emojiToNum TwoHumpCamel = 514
emojiToNum Llama = 515
emojiToNum Giraffe = 516
emojiToNum Elephant = 517
emojiToNum Rhinoceros = 518
emojiToNum Hippopotamus = 519
emojiToNum MouseFace = 520
emojiToNum Mouse = 521
emojiToNum Rat = 522
emojiToNum HamsterFace = 523
emojiToNum RabbitFace = 524
emojiToNum Rabbit = 525
emojiToNum Chipmunk = 526
emojiToNum Hedgehog = 527
emojiToNum Bat = 528
emojiToNum BearFace = 529
emojiToNum Koala = 530
emojiToNum PandaFace = 531
emojiToNum Kangaroo = 532
emojiToNum Badger = 533
emojiToNum PawPrints = 534
emojiToNum Turkey = 535
emojiToNum Chicken = 536
emojiToNum Rooster = 537
emojiToNum HatchingChick = 538
emojiToNum BabyChick = 539
emojiToNum FrontFacingBabyChick = 540
emojiToNum Bird = 541
emojiToNum Penguin = 542
emojiToNum Dove = 543
emojiToNum Eagle = 544
emojiToNum Duck = 545
emojiToNum Swan = 546
emojiToNum Owl = 547
emojiToNum Peacock = 548
emojiToNum Parrot = 549
emojiToNum FrogFace = 550
emojiToNum Crocodile = 551
emojiToNum Turtle = 552
emojiToNum Lizard = 553
emojiToNum Snake = 554
emojiToNum DragonFace = 555
emojiToNum Dragon = 556
emojiToNum Sauropod = 557
emojiToNum TRex = 558
emojiToNum SpoutingWhale = 559
emojiToNum Whale = 560
emojiToNum Dolphin = 561
emojiToNum Fish = 562
emojiToNum TropicalFish = 563
emojiToNum Blowfish = 564
emojiToNum Shark = 565
emojiToNum Octopus = 566
emojiToNum SpiralShell = 567
emojiToNum Snail = 568
emojiToNum Butterfly = 569
emojiToNum Bug = 570
emojiToNum Ant = 571
emojiToNum Honeybee = 572
emojiToNum LadyBeetle = 573
emojiToNum Cricket = 574
emojiToNum Spider = 575
emojiToNum SpiderWeb = 576
emojiToNum Scorpion = 577
emojiToNum Mosquito = 578
emojiToNum Microbe = 579
emojiToNum Bouquet = 580
emojiToNum CherryBlossom = 581
emojiToNum WhiteFlower = 582
emojiToNum Rosette = 583
emojiToNum Rose = 584
emojiToNum WiltedFlower = 585
emojiToNum Hibiscus = 586
emojiToNum Sunflower = 587
emojiToNum Blossom = 588
emojiToNum Tulip = 589
emojiToNum Seedling = 590
emojiToNum EvergreenTree = 591
emojiToNum DeciduousTree = 592
emojiToNum PalmTree = 593
emojiToNum Cactus = 594
emojiToNum SheafOfRice = 595
emojiToNum Herb = 596
emojiToNum Shamrock = 597
emojiToNum FourLeafClover = 598
emojiToNum MapleLeaf = 599
emojiToNum FallenLeaf = 600
emojiToNum LeafFlutteringInWind = 601
emojiToNum Grapes = 602
emojiToNum Melon = 603
emojiToNum Watermelon = 604
emojiToNum Tangerine = 605
emojiToNum Lemon = 606
emojiToNum Banana = 607
emojiToNum Pineapple = 608
emojiToNum Mango = 609
emojiToNum RedApple = 610
emojiToNum GreenApple = 611
emojiToNum Pear = 612
emojiToNum Peach = 613
emojiToNum Cherries = 614
emojiToNum Strawberry = 615
emojiToNum KiwiFruit = 616
emojiToNum Tomato = 617
emojiToNum Coconut = 618
emojiToNum Avocado = 619
emojiToNum Eggplant = 620
emojiToNum Potato = 621
emojiToNum Carrot = 622
emojiToNum EarOfCorn = 623
emojiToNum HotPepper = 624
emojiToNum Cucumber = 625
emojiToNum LeafyGreen = 626
emojiToNum Broccoli = 627
emojiToNum Mushroom = 628
emojiToNum Peanuts = 629
emojiToNum Chestnut = 630
emojiToNum Bread = 631
emojiToNum Croissant = 632
emojiToNum BaguetteBread = 633
emojiToNum Pretzel = 634
emojiToNum Bagel = 635
emojiToNum Pancakes = 636
emojiToNum CheeseWedge = 637
emojiToNum MeatOnBone = 638
emojiToNum PoultryLeg = 639
emojiToNum CutOfMeat = 640
emojiToNum Bacon = 641
emojiToNum Hamburger = 642
emojiToNum FrenchFries = 643
emojiToNum Pizza = 644
emojiToNum HotDog = 645
emojiToNum Sandwich = 646
emojiToNum Taco = 647
emojiToNum Burrito = 648
emojiToNum StuffedFlatbread = 649
emojiToNum Egg = 650
emojiToNum Cooking = 651
emojiToNum ShallowPanOfFood = 652
emojiToNum PotOfFood = 653
emojiToNum BowlWithSpoon = 654
emojiToNum GreenSalad = 655
emojiToNum Popcorn = 656
emojiToNum Salt = 657
emojiToNum CannedFood = 658
emojiToNum BentoBox = 659
emojiToNum RiceCracker = 660
emojiToNum RiceBall = 661
emojiToNum CookedRice = 662
emojiToNum CurryRice = 663
emojiToNum SteamingBowl = 664
emojiToNum Spaghetti = 665
emojiToNum RoastedSweetPotato = 666
emojiToNum Oden = 667
emojiToNum Sushi = 668
emojiToNum FriedShrimp = 669
emojiToNum FishCakeWithSwirl = 670
emojiToNum MoonCake = 671
emojiToNum Dango = 672
emojiToNum Dumpling = 673
emojiToNum FortuneCookie = 674
emojiToNum TakeoutBox = 675
emojiToNum Crab = 676
emojiToNum Lobster = 677
emojiToNum Shrimp = 678
emojiToNum Squid = 679
emojiToNum SoftIceCream = 680
emojiToNum ShavedIce = 681
emojiToNum IceCream = 682
emojiToNum Doughnut = 683
emojiToNum Cookie = 684
emojiToNum BirthdayCake = 685
emojiToNum Shortcake = 686
emojiToNum Cupcake = 687
emojiToNum Pie = 688
emojiToNum ChocolateBar = 689
emojiToNum Candy = 690
emojiToNum Lollipop = 691
emojiToNum Custard = 692
emojiToNum HoneyPot = 693
emojiToNum BabyBottle = 694
emojiToNum GlassOfMilk = 695
emojiToNum HotBeverage = 696
emojiToNum TeacupWithoutHandle = 697
emojiToNum Sake = 698
emojiToNum BottleWithPoppingCork = 699
emojiToNum WineGlass = 700
emojiToNum CocktailGlass = 701
emojiToNum TropicalDrink = 702
emojiToNum BeerMug = 703
emojiToNum ClinkingBeerMugs = 704
emojiToNum ClinkingGlasses = 705
emojiToNum TumblerGlass = 706
emojiToNum CupWithStraw = 707
emojiToNum Chopsticks = 708
emojiToNum ForkAndKnifeWithPlate = 709
emojiToNum ForkAndKnife = 710
emojiToNum Spoon = 711
emojiToNum KitchenKnife = 712
emojiToNum Amphora = 713
emojiToNum GlobeShowingEuropeAfrica = 714
emojiToNum GlobeShowingAmericas = 715
emojiToNum GlobeShowingAsiaAustralia = 716
emojiToNum GlobeWithMeridians = 717
emojiToNum WorldMap = 718
emojiToNum MapOfJapan = 719
emojiToNum Compass = 720
emojiToNum SnowCappedMountain = 721
emojiToNum Mountain = 722
emojiToNum Volcano = 723
emojiToNum MountFuji = 724
emojiToNum Camping = 725
emojiToNum BeachWithUmbrella = 726
emojiToNum Desert = 727
emojiToNum DesertIsland = 728
emojiToNum NationalPark = 729
emojiToNum Stadium = 730
emojiToNum ClassicalBuilding = 731
emojiToNum BuildingConstruction = 732
emojiToNum Brick = 733
emojiToNum Houses = 734
emojiToNum DerelictHouse = 735
emojiToNum House = 736
emojiToNum HouseWithGarden = 737
emojiToNum OfficeBuilding = 738
emojiToNum JapanesePostOffice = 739
emojiToNum PostOffice = 740
emojiToNum Hospital = 741
emojiToNum Bank = 742
emojiToNum Hotel = 743
emojiToNum LoveHotel = 744
emojiToNum ConvenienceStore = 745
emojiToNum School = 746
emojiToNum DepartmentStore = 747
emojiToNum Factory = 748
emojiToNum JapaneseCastle = 749
emojiToNum Castle = 750
emojiToNum Wedding = 751
emojiToNum TokyoTower = 752
emojiToNum StatueOfLiberty = 753
emojiToNum Church = 754
emojiToNum Mosque = 755
emojiToNum Synagogue = 756
emojiToNum ShintoShrine = 757
emojiToNum Kaaba = 758
emojiToNum Fountain = 759
emojiToNum Tent = 760
emojiToNum Foggy = 761
emojiToNum NightWithStars = 762
emojiToNum Cityscape = 763
emojiToNum SunriseOverMountains = 764
emojiToNum Sunrise = 765
emojiToNum CityscapeAtDusk = 766
emojiToNum Sunset = 767
emojiToNum BridgeAtNight = 768
emojiToNum HotSprings = 769
emojiToNum MilkyWay = 770
emojiToNum CarouselHorse = 771
emojiToNum FerrisWheel = 772
emojiToNum RollerCoaster = 773
emojiToNum BarberPole = 774
emojiToNum CircusTent = 775
emojiToNum Locomotive = 776
emojiToNum RailwayCar = 777
emojiToNum HighSpeedTrain = 778
emojiToNum BulletTrain = 779
emojiToNum Train = 780
emojiToNum Metro = 781
emojiToNum LightRail = 782
emojiToNum Station = 783
emojiToNum Tram = 784
emojiToNum Monorail = 785
emojiToNum MountainRailway = 786
emojiToNum TramCar = 787
emojiToNum Bus = 788
emojiToNum OncomingBus = 789
emojiToNum Trolleybus = 790
emojiToNum Minibus = 791
emojiToNum Ambulance = 792
emojiToNum FireEngine = 793
emojiToNum PoliceCar = 794
emojiToNum OncomingPoliceCar = 795
emojiToNum Taxi = 796
emojiToNum OncomingTaxi = 797
emojiToNum Automobile = 798
emojiToNum OncomingAutomobile = 799
emojiToNum SportUtilityVehicle = 800
emojiToNum DeliveryTruck = 801
emojiToNum ArticulatedLorry = 802
emojiToNum Tractor = 803
emojiToNum Bicycle = 804
emojiToNum KickScooter = 805
emojiToNum Skateboard = 806
emojiToNum MotorScooter = 807
emojiToNum BusStop = 808
emojiToNum Motorway = 809
emojiToNum RailwayTrack = 810
emojiToNum OilDrum = 811
emojiToNum FuelPump = 812
emojiToNum PoliceCarLight = 813
emojiToNum HorizontalTrafficLight = 814
emojiToNum VerticalTrafficLight = 815
emojiToNum StopSign = 816
emojiToNum Construction = 817
emojiToNum Anchor = 818
emojiToNum Sailboat = 819
emojiToNum Canoe = 820
emojiToNum Speedboat = 821
emojiToNum PassengerShip = 822
emojiToNum Ferry = 823
emojiToNum MotorBoat = 824
emojiToNum Ship = 825
emojiToNum Airplane = 826
emojiToNum SmallAirplane = 827
emojiToNum AirplaneDeparture = 828
emojiToNum AirplaneArrival = 829
emojiToNum Seat = 830
emojiToNum Helicopter = 831
emojiToNum SuspensionRailway = 832
emojiToNum MountainCableway = 833
emojiToNum AerialTramway = 834
emojiToNum Satellite = 835
emojiToNum Rocket = 836
emojiToNum FlyingSaucer = 837
emojiToNum BellhopBell = 838
emojiToNum Luggage = 839
emojiToNum HourglassDone = 840
emojiToNum HourglassNotDone = 841
emojiToNum Watch = 842
emojiToNum AlarmClock = 843
emojiToNum Stopwatch = 844
emojiToNum TimerClock = 845
emojiToNum MantelpieceClock = 846
emojiToNum TwelveOClock = 847
emojiToNum TwelveThirty = 848
emojiToNum OneOClock = 849
emojiToNum OneThirty = 850
emojiToNum TwoOClock = 851
emojiToNum TwoThirty = 852
emojiToNum ThreeOClock = 853
emojiToNum ThreeThirty = 854
emojiToNum FourOClock = 855
emojiToNum FourThirty = 856
emojiToNum FiveOClock = 857
emojiToNum FiveThirty = 858
emojiToNum SixOClock = 859
emojiToNum SixThirty = 860
emojiToNum SevenOClock = 861
emojiToNum SevenThirty = 862
emojiToNum EightOClock = 863
emojiToNum EightThirty = 864
emojiToNum NineOClock = 865
emojiToNum NineThirty = 866
emojiToNum TenOClock = 867
emojiToNum TenThirty = 868
emojiToNum ElevenOClock = 869
emojiToNum ElevenThirty = 870
emojiToNum NewMoon = 871
emojiToNum WaxingCrescentMoon = 872
emojiToNum FirstQuarterMoon = 873
emojiToNum WaxingGibbousMoon = 874
emojiToNum FullMoon = 875
emojiToNum WaningGibbousMoon = 876
emojiToNum LastQuarterMoon = 877
emojiToNum WaningCrescentMoon = 878
emojiToNum CrescentMoon = 879
emojiToNum NewMoonFace = 880
emojiToNum FirstQuarterMoonFace = 881
emojiToNum LastQuarterMoonFace = 882
emojiToNum Thermometer = 883
emojiToNum Sun = 884
emojiToNum FullMoonFace = 885
emojiToNum SunWithFace = 886
emojiToNum Star = 887
emojiToNum GlowingStar = 888
emojiToNum ShootingStar = 889
emojiToNum Cloud = 890
emojiToNum SunBehindCloud = 891
emojiToNum CloudWithLightningAndRain = 892
emojiToNum SunBehindSmallCloud = 893
emojiToNum SunBehindLargeCloud = 894
emojiToNum SunBehindRainCloud = 895
emojiToNum CloudWithRain = 896
emojiToNum CloudWithSnow = 897
emojiToNum CloudWithLightning = 898
emojiToNum Tornado = 899
emojiToNum Fog = 900
emojiToNum WindFace = 901
emojiToNum Cyclone = 902
emojiToNum Rainbow = 903
emojiToNum ClosedUmbrella = 904
emojiToNum Umbrella = 905
emojiToNum UmbrellaWithRainDrops = 906
emojiToNum UmbrellaOnGround = 907
emojiToNum HighVoltage = 908
emojiToNum Snowflake = 909
emojiToNum Snowman = 910
emojiToNum SnowmanWithoutSnow = 911
emojiToNum Comet = 912
emojiToNum Fire = 913
emojiToNum Droplet = 914
emojiToNum WaterWave = 915
emojiToNum JackOLantern = 916
emojiToNum ChristmasTree = 917
emojiToNum Fireworks = 918
emojiToNum Sparkler = 919
emojiToNum Firecracker = 920
emojiToNum Sparkles = 921
emojiToNum Balloon = 922
emojiToNum PartyPopper = 923
emojiToNum ConfettiBall = 924
emojiToNum TanabataTree = 925
emojiToNum PineDecoration = 926
emojiToNum JapaneseDolls = 927
emojiToNum CarpStreamer = 928
emojiToNum WindChime = 929
emojiToNum MoonViewingCeremony = 930
emojiToNum RedEnvelope = 931
emojiToNum Ribbon = 932
emojiToNum WrappedGift = 933
emojiToNum ReminderRibbon = 934
emojiToNum AdmissionTickets = 935
emojiToNum Ticket = 936
emojiToNum MilitaryMedal = 937
emojiToNum Trophy = 938
emojiToNum SportsMedal = 939
emojiToNum StPlaceMedal = 940
emojiToNum NdPlaceMedal = 941
emojiToNum RdPlaceMedal = 942
emojiToNum SoccerBall = 943
emojiToNum Baseball = 944
emojiToNum Softball = 945
emojiToNum Basketball = 946
emojiToNum Volleyball = 947
emojiToNum AmericanFootball = 948
emojiToNum RugbyFootball = 949
emojiToNum Tennis = 950
emojiToNum FlyingDisc = 951
emojiToNum Bowling = 952
emojiToNum CricketGame = 953
emojiToNum FieldHockey = 954
emojiToNum IceHockey = 955
emojiToNum Lacrosse = 956
emojiToNum PingPong = 957
emojiToNum Badminton = 958
emojiToNum BoxingGlove = 959
emojiToNum MartialArtsUniform = 960
emojiToNum GoalNet = 961
emojiToNum FlagInHole = 962
emojiToNum IceSkate = 963
emojiToNum FishingPole = 964
emojiToNum RunningShirt = 965
emojiToNum Skis = 966
emojiToNum Sled = 967
emojiToNum CurlingStone = 968
emojiToNum DirectHit = 969
emojiToNum PoolBall = 970
emojiToNum CrystalBall = 971
emojiToNum NazarAmulet = 972
emojiToNum VideoGame = 973
emojiToNum Joystick = 974
emojiToNum SlotMachine = 975
emojiToNum GameDie = 976
emojiToNum Jigsaw = 977
emojiToNum TeddyBear = 978
emojiToNum SpadeSuit = 979
emojiToNum HeartSuit = 980
emojiToNum DiamondSuit = 981
emojiToNum ClubSuit = 982
emojiToNum ChessPawn = 983
emojiToNum Joker = 984
emojiToNum MahjongRedDragon = 985
emojiToNum FlowerPlayingCards = 986
emojiToNum PerformingArts = 987
emojiToNum FramedPicture = 988
emojiToNum ArtistPalette = 989
emojiToNum Thread = 990
emojiToNum Yarn = 991
emojiToNum MutedSpeaker = 992
emojiToNum SpeakerLowVolume = 993
emojiToNum SpeakerMediumVolume = 994
emojiToNum SpeakerHighVolume = 995
emojiToNum Loudspeaker = 996
emojiToNum Megaphone = 997
emojiToNum PostalHorn = 998
emojiToNum Bell = 999
emojiToNum BellWithSlash = 1000
emojiToNum MusicalScore = 1001
emojiToNum MusicalNote = 1002
emojiToNum MusicalNotes = 1003
emojiToNum StudioMicrophone = 1004
emojiToNum LevelSlider = 1005
emojiToNum ControlKnobs = 1006
emojiToNum Microphone = 1007
emojiToNum Headphone = 1008
emojiToNum Radio = 1009
emojiToNum Saxophone = 1010
emojiToNum Guitar = 1011
emojiToNum MusicalKeyboard = 1012
emojiToNum Trumpet = 1013
emojiToNum Violin = 1014
emojiToNum Drum = 1015
emojiToNum MobilePhone = 1016
emojiToNum MobilePhoneWithArrow = 1017
emojiToNum Telephone = 1018
emojiToNum TelephoneReceiver = 1019
emojiToNum Pager = 1020
emojiToNum FaxMachine = 1021
emojiToNum Battery = 1022
emojiToNum ElectricPlug = 1023
emojiToNum LaptopComputer = 1024
emojiToNum DesktopComputer = 1025
emojiToNum Printer = 1026
emojiToNum Keyboard = 1027
emojiToNum ComputerMouse = 1028
emojiToNum Trackball = 1029
emojiToNum ComputerDisk = 1030
emojiToNum FloppyDisk = 1031
emojiToNum OpticalDisk = 1032
emojiToNum Dvd = 1033
emojiToNum Abacus = 1034
emojiToNum MovieCamera = 1035
emojiToNum FilmFrames = 1036
emojiToNum FilmProjector = 1037
emojiToNum ClapperBoard = 1038
emojiToNum Television = 1039
emojiToNum Camera = 1040
emojiToNum CameraWithFlash = 1041
emojiToNum VideoCamera = 1042
emojiToNum Videocassette = 1043
emojiToNum MagnifyingGlassTiltedLeft = 1044
emojiToNum MagnifyingGlassTiltedRight = 1045
emojiToNum Candle = 1046
emojiToNum LightBulb = 1047
emojiToNum Flashlight = 1048
emojiToNum RedPaperLantern = 1049
emojiToNum NotebookWithDecorativeCover = 1050
emojiToNum ClosedBook = 1051
emojiToNum OpenBook = 1052
emojiToNum GreenBook = 1053
emojiToNum BlueBook = 1054
emojiToNum OrangeBook = 1055
emojiToNum Books = 1056
emojiToNum Notebook = 1057
emojiToNum Ledger = 1058
emojiToNum PageWithCurl = 1059
emojiToNum Scroll = 1060
emojiToNum PageFacingUp = 1061
emojiToNum Newspaper = 1062
emojiToNum RolledUpNewspaper = 1063
emojiToNum BookmarkTabs = 1064
emojiToNum Bookmark = 1065
emojiToNum Label = 1066
emojiToNum MoneyBag = 1067
emojiToNum YenBanknote = 1068
emojiToNum DollarBanknote = 1069
emojiToNum EuroBanknote = 1070
emojiToNum PoundBanknote = 1071
emojiToNum MoneyWithWings = 1072
emojiToNum CreditCard = 1073
emojiToNum Receipt = 1074
emojiToNum ChartIncreasingWithYen = 1075
emojiToNum CurrencyExchange = 1076
emojiToNum HeavyDollarSign = 1077
emojiToNum Envelope = 1078
emojiToNum EMail = 1079
emojiToNum IncomingEnvelope = 1080
emojiToNum EnvelopeWithArrow = 1081
emojiToNum OutboxTray = 1082
emojiToNum InboxTray = 1083
emojiToNum Package = 1084
emojiToNum ClosedMailboxWithRaisedFlag = 1085
emojiToNum ClosedMailboxWithLoweredFlag = 1086
emojiToNum OpenMailboxWithRaisedFlag = 1087
emojiToNum OpenMailboxWithLoweredFlag = 1088
emojiToNum Postbox = 1089
emojiToNum BallotBoxWithBallot = 1090
emojiToNum Pencil = 1091
emojiToNum BlackNib = 1092
emojiToNum FountainPen = 1093
emojiToNum Pen = 1094
emojiToNum Paintbrush = 1095
emojiToNum Crayon = 1096
emojiToNum Memo = 1097
emojiToNum Briefcase = 1098
emojiToNum FileFolder = 1099
emojiToNum OpenFileFolder = 1100
emojiToNum CardIndexDividers = 1101
emojiToNum Calendar = 1102
emojiToNum TearOffCalendar = 1103
emojiToNum SpiralNotepad = 1104
emojiToNum SpiralCalendar = 1105
emojiToNum CardIndex = 1106
emojiToNum ChartIncreasing = 1107
emojiToNum ChartDecreasing = 1108
emojiToNum BarChart = 1109
emojiToNum Clipboard = 1110
emojiToNum Pushpin = 1111
emojiToNum RoundPushpin = 1112
emojiToNum Paperclip = 1113
emojiToNum LinkedPaperclips = 1114
emojiToNum StraightRuler = 1115
emojiToNum TriangularRuler = 1116
emojiToNum Scissors = 1117
emojiToNum CardFileBox = 1118
emojiToNum FileCabinet = 1119
emojiToNum Wastebasket = 1120
emojiToNum Locked = 1121
emojiToNum Unlocked = 1122
emojiToNum LockedWithPen = 1123
emojiToNum LockedWithKey = 1124
emojiToNum Key = 1125
emojiToNum OldKey = 1126
emojiToNum Hammer = 1127
emojiToNum Pick = 1128
emojiToNum HammerAndPick = 1129
emojiToNum HammerAndWrench = 1130
emojiToNum Dagger = 1131
emojiToNum CrossedSwords = 1132
emojiToNum Pistol = 1133
emojiToNum BowAndArrow = 1134
emojiToNum Shield = 1135
emojiToNum Wrench = 1136
emojiToNum NutAndBolt = 1137
emojiToNum Gear = 1138
emojiToNum Clamp = 1139
emojiToNum BalanceScale = 1140
emojiToNum Link = 1141
emojiToNum Chains = 1142
emojiToNum Toolbox = 1143
emojiToNum Magnet = 1144
emojiToNum Alembic = 1145
emojiToNum TestTube = 1146
emojiToNum PetriDish = 1147
emojiToNum Dna = 1148
emojiToNum Microscope = 1149
emojiToNum Telescope = 1150
emojiToNum SatelliteAntenna = 1151
emojiToNum Syringe = 1152
emojiToNum Pill = 1153
emojiToNum Door = 1154
emojiToNum Bed = 1155
emojiToNum CouchAndLamp = 1156
emojiToNum Toilet = 1157
emojiToNum Shower = 1158
emojiToNum Bathtub = 1159
emojiToNum LotionBottle = 1160
emojiToNum SafetyPin = 1161
emojiToNum Broom = 1162
emojiToNum Basket = 1163
emojiToNum RollOfPaper = 1164
emojiToNum Soap = 1165
emojiToNum Sponge = 1166
emojiToNum FireExtinguisher = 1167
emojiToNum ShoppingCart = 1168
emojiToNum Cigarette = 1169
emojiToNum Coffin = 1170
emojiToNum FuneralUrn = 1171
emojiToNum Moai = 1172
emojiToNum AtmSign = 1173
emojiToNum LitterInBinSign = 1174
emojiToNum PotableWater = 1175
emojiToNum WheelchairSymbol = 1176
emojiToNum MenSRoom = 1177
emojiToNum WomenSRoom = 1178
emojiToNum Restroom = 1179
emojiToNum BabySymbol = 1180
emojiToNum WaterCloset = 1181
emojiToNum PassportControl = 1182
emojiToNum Customs = 1183
emojiToNum BaggageClaim = 1184
emojiToNum LeftLuggage = 1185
emojiToNum Warning = 1186
emojiToNum ChildrenCrossing = 1187
emojiToNum NoEntry = 1188
emojiToNum Prohibited = 1189
emojiToNum NoBicycles = 1190
emojiToNum NoSmoking = 1191
emojiToNum NoLittering = 1192
emojiToNum NonPotableWater = 1193
emojiToNum NoPedestrians = 1194
emojiToNum NoMobilePhones = 1195
emojiToNum NoOneUnderEighteen = 1196
emojiToNum Radioactive = 1197
emojiToNum Biohazard = 1198
emojiToNum UpArrow = 1199
emojiToNum UpRightArrow = 1200
emojiToNum RightArrow = 1201
emojiToNum DownRightArrow = 1202
emojiToNum DownArrow = 1203
emojiToNum DownLeftArrow = 1204
emojiToNum LeftArrow = 1205
emojiToNum UpLeftArrow = 1206
emojiToNum UpDownArrow = 1207
emojiToNum LeftRightArrow = 1208
emojiToNum RightArrowCurvingLeft = 1209
emojiToNum LeftArrowCurvingRight = 1210
emojiToNum RightArrowCurvingUp = 1211
emojiToNum RightArrowCurvingDown = 1212
emojiToNum ClockwiseVerticalArrows = 1213
emojiToNum CounterclockwiseArrowsButton = 1214
emojiToNum BackArrow = 1215
emojiToNum EndArrow = 1216
emojiToNum OnArrow = 1217
emojiToNum SoonArrow = 1218
emojiToNum TopArrow = 1219
emojiToNum PlaceOfWorship = 1220
emojiToNum AtomSymbol = 1221
emojiToNum Om = 1222
emojiToNum StarOfDavid = 1223
emojiToNum WheelOfDharma = 1224
emojiToNum YinYang = 1225
emojiToNum LatinCross = 1226
emojiToNum OrthodoxCross = 1227
emojiToNum StarAndCrescent = 1228
emojiToNum PeaceSymbol = 1229
emojiToNum Menorah = 1230
emojiToNum DottedSixPointedStar = 1231
emojiToNum Aries = 1232
emojiToNum Taurus = 1233
emojiToNum Gemini = 1234
emojiToNum Cancer = 1235
emojiToNum Leo = 1236
emojiToNum Virgo = 1237
emojiToNum Libra = 1238
emojiToNum Scorpio = 1239
emojiToNum Sagittarius = 1240
emojiToNum Capricorn = 1241
emojiToNum Aquarius = 1242
emojiToNum Pisces = 1243
emojiToNum Ophiuchus = 1244
emojiToNum ShuffleTracksButton = 1245
emojiToNum RepeatButton = 1246
emojiToNum RepeatSingleButton = 1247
emojiToNum PlayButton = 1248
emojiToNum FastForwardButton = 1249
emojiToNum NextTrackButton = 1250
emojiToNum PlayOrPauseButton = 1251
emojiToNum ReverseButton = 1252
emojiToNum FastReverseButton = 1253
emojiToNum LastTrackButton = 1254
emojiToNum UpwardsButton = 1255
emojiToNum FastUpButton = 1256
emojiToNum DownwardsButton = 1257
emojiToNum FastDownButton = 1258
emojiToNum PauseButton = 1259
emojiToNum StopButton = 1260
emojiToNum RecordButton = 1261
emojiToNum EjectButton = 1262
emojiToNum Cinema = 1263
emojiToNum DimButton = 1264
emojiToNum BrightButton = 1265
emojiToNum AntennaBars = 1266
emojiToNum VibrationMode = 1267
emojiToNum MobilePhoneOff = 1268
emojiToNum MedicalSymbol = 1269
emojiToNum Infinity = 1270
emojiToNum RecyclingSymbol = 1271
emojiToNum FleurDeLis = 1272
emojiToNum TridentEmblem = 1273
emojiToNum NameBadge = 1274
emojiToNum JapaneseSymbolForBeginner = 1275
emojiToNum HeavyLargeCircle = 1276
emojiToNum WhiteHeavyCheckMark = 1277
emojiToNum BallotBoxWithCheck = 1278
emojiToNum HeavyCheckMark = 1279
emojiToNum HeavyMultiplicationX = 1280
emojiToNum CrossMark = 1281
emojiToNum CrossMarkButton = 1282
emojiToNum HeavyPlusSign = 1283
emojiToNum HeavyMinusSign = 1284
emojiToNum HeavyDivisionSign = 1285
emojiToNum CurlyLoop = 1286
emojiToNum DoubleCurlyLoop = 1287
emojiToNum PartAlternationMark = 1288
emojiToNum EightSpokedAsterisk = 1289
emojiToNum EightPointedStar = 1290
emojiToNum Sparkle = 1291
emojiToNum DoubleExclamationMark = 1292
emojiToNum ExclamationQuestionMark = 1293
emojiToNum QuestionMark = 1294
emojiToNum WhiteQuestionMark = 1295
emojiToNum WhiteExclamationMark = 1296
emojiToNum ExclamationMark = 1297
emojiToNum WavyDash = 1298
emojiToNum Copyright = 1299
emojiToNum Registered = 1300
emojiToNum TradeMark = 1301
emojiToNum Keycap = 1314
emojiToNum HundredPoints = 1315
emojiToNum InputLatinUppercase = 1316
emojiToNum InputLatinLowercase = 1317
emojiToNum InputNumbers = 1318
emojiToNum InputSymbols = 1319
emojiToNum InputLatinLetters = 1320
emojiToNum AButtonBloodType = 1321
emojiToNum AbButtonBloodType = 1322
emojiToNum BButtonBloodType = 1323
emojiToNum ClButton = 1324
emojiToNum CoolButton = 1325
emojiToNum FreeButton = 1326
emojiToNum Information = 1327
emojiToNum IdButton = 1328
emojiToNum CircledM = 1329
emojiToNum NewButton = 1330
emojiToNum NgButton = 1331
emojiToNum OButtonBloodType = 1332
emojiToNum OkButton = 1333
emojiToNum PButton = 1334
emojiToNum SosButton = 1335
emojiToNum UpButton = 1336
emojiToNum VsButton = 1337
emojiToNum JapaneseHereButton = 1338
emojiToNum JapaneseServiceChargeButton = 1339
emojiToNum JapaneseMonthlyAmountButton = 1340
emojiToNum JapaneseNotFreeOfChargeButton = 1341
emojiToNum JapaneseReservedButton = 1342
emojiToNum JapaneseBargainButton = 1343
emojiToNum JapaneseDiscountButton = 1344
emojiToNum JapaneseFreeOfChargeButton = 1345
emojiToNum JapaneseProhibitedButton = 1346
emojiToNum JapaneseAcceptableButton = 1347
emojiToNum JapaneseApplicationButton = 1348
emojiToNum JapanesePassingGradeButton = 1349
emojiToNum JapaneseVacancyButton = 1350
emojiToNum JapaneseCongratulationsButton = 1351
emojiToNum JapaneseSecretButton = 1352
emojiToNum JapaneseOpenForBusinessButton = 1353
emojiToNum JapaneseNoVacancyButton = 1354
emojiToNum RedCircle = 1355
emojiToNum BlueCircle = 1356
emojiToNum WhiteCircle = 1357
emojiToNum BlackCircle = 1358
emojiToNum WhiteLargeSquare = 1359
emojiToNum BlackLargeSquare = 1360
emojiToNum BlackMediumSquare = 1361
emojiToNum WhiteMediumSquare = 1362
emojiToNum WhiteMediumSmallSquare = 1363
emojiToNum BlackMediumSmallSquare = 1364
emojiToNum WhiteSmallSquare = 1365
emojiToNum BlackSmallSquare = 1366
emojiToNum LargeOrangeDiamond = 1367
emojiToNum LargeBlueDiamond = 1368
emojiToNum SmallOrangeDiamond = 1369
emojiToNum SmallBlueDiamond = 1370
emojiToNum RedTrianglePointedUp = 1371
emojiToNum RedTrianglePointedDown = 1372
emojiToNum DiamondWithADot = 1373
emojiToNum RadioButton = 1374
emojiToNum BlackSquareButton = 1375
emojiToNum WhiteSquareButton = 1376
emojiToNum ChequeredFlag = 1377
emojiToNum TriangularFlag = 1378
emojiToNum CrossedFlags = 1379
emojiToNum BlackFlag = 1380
emojiToNum WhiteFlag = 1381