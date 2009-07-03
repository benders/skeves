require 'delegate'

module Skeves
  class Skill < SimpleDelegator
    def initialize(reve_skill)
      @reve_skill = reve_skill
      self.__setobj__(@reve_skill)      
      @left = (@reve_skill.end_time - Time.now).to_i
    end

    def name
      Skeves.skill_tree[@reve_skill.type_id]
    end

    def days_left
      (@left / (24 * 60 * 60)).to_i
    end

    def hours_left
      (@left / (60 * 60)) % 24
    end

    def minutes_left
      (@left / 60) % 60
    end

    def seconds_left
      @left % 60
    end
  end
  
  def self.skill_tree
    {
      30652=>"Gallente Strategic Cruiser",
      12093=>"Covert Ops",
      28374=>"Capital Industrial Ships",
      3450=>"Afterburner",
      3316=>"Controlled Bursts",
      21071=>"Rapid Launch",
      30552=>"Caldari Propulsion Systems",
      28609=>"Heavy Interdictors",
      16549=>"Military Connections",
      3551=>"Survey",
      3417=>"Energy Systems Operation",
      22043=>"Tactical Weapon Reconfiguration",
      28073=>"Bomb Deployment",
      12194=>"Spodumain Processing",
      3350=>"Siege Warfare",
      16281=>"Ice Harvesting",
      30653=>"Minmatar Strategic Cruiser",
      23618=>"Drone Durability",
      3451=>"Fuel Conservation",
      27906=>"Tactical Logistics Reconfiguration",
      3317=>"Trajectory Analysis",
      30553=>"Gallente Propulsion Systems",
      16550=>"Labor Connections",
      3418=>"Energy Management",
      19766=>"Signal Suppression",
      12195=>"Veldspar Processing",
      3351=>"Siege Warfare Specialist",
      25863=>"Salvaging",
      12095=>"Assault Ships",
      30788=>"Propulsion Subsystem Technology",
      24624=>"Advanced Laboratory Operation",
      3452=>"Acceleration Control",
      3318=>"Weapon Upgrades",
      3385=>"Refining",
      30554=>"Minmatar Propulsion Systems",
      16551=>"Trade Connections",
      3419=>"Shield Management",
      19767=>"Turret Destabilization",
      18025=>"Ice Processing",
      12196=>"Scrapmetal Processing",
      3352=>"Information Warfare Specialist",
      28879=>"Nanite Operation",
      12096=>"Logistics",
      21610=>"Jump Fuel Conservation",
      3453=>"Evasive Maneuvering",
      3319=>"Missile Launcher Operation",
      24625=>"Advanced Mass Production",
      3386=>"Mining",
      16552=>"High Tech Connections",
      25530=>"Neurotoxin Recovery",
      3420=>"Tactical Shield Manipulation",
      28880=>"Nanite Interfacing",
      12097=>"Destroyers",
      21611=>"Jump Drive Calibration",
      3454=>"High Speed Maneuvering",
      3320=>"Rockets",
      12365=>"EM Shield Compensation",
      3387=>"Mass Production",
      3421=>"Energy Pulse Weapons",
      3354=>"Warfare Link Specialist",
      12098=>"Interdictors",
      3455=>"Warp Drive Operation",
      3321=>"Standard Missiles",
      12366=>"Kinetic Shield Compensation",
      3388=>"Production Efficiency",
      3355=>"Social",
      11529=>"Molecular Engineering",
      11395=>"Deep Core Mining",
      3422=>"Shield Emission Systems",
      22551=>"Exhumers",
      12099=>"Battlecruisers",
      23087=>"Amarr Encryption Methods",
      3456=>"Jump Drive Operation",
      27911=>"Projected Electronic Counter Measures",
      3322=>"FoF Missiles",
      12367=>"Explosive Shield Compensation",
      3389=>"Refinery Efficiency",
      16622=>"Accounting",
      28615=>"Electronic Attack Ships",
      3356=>"Negotiation",
      23121=>"Gallente Encryption Methods",
      3423=>"Energy Emission Systems",
      24562=>"Jump Portal Generation",
      30324=>"Defensive Subsystem Technology",
      3323=>"Defender Missiles",
      22552=>"Mining Director",
      3357=>"Diplomacy",
      12201=>"Small Artillery Specialization",
      3424=>"Energy Grid Upgrades",
      25233=>"Corporation Contracting",
      20342=>"Advanced Spaceship Command",
      30325=>"Engineering Subsystem Technology",
      24563=>"Doomsday Operation",
      3324=>"Heavy Missiles",
      24764=>"Fleet Command",
      3358=>"Fast Talk",
      23123=>"Takmahl Technology",
      12202=>"Medium Artillery Specialization",
      3425=>"Shield Upgrades",
      16591=>"Heavy Assault Ships",
      30326=>"Electronic Subsystem Technology",
      3325=>"Torpedoes",
      20209=>"Rocket Specialization",
      3392=>"Mechanic",
      11566=>"Thermic Shield Compensation",
      3359=>"Connections",
      23124=>"Yan Jung Technology",
      12203=>"Large Artillery Specialization",
      3426=>"Electronics",
      25235=>"Contracting",
      30327=>"Offensive Subsystem Technology",
      11433=>"High Energy Physics",
      3326=>"Cruise Missiles",
      20210=>"Standard Missile Specialization",
      3393=>"Repair Systems",
      28585=>"Industrial Reconfiguration",
      21718=>"Hacking",
      12204=>"Medium Beam Laser Specialization",
      23594=>"Sentry Drone Interfacing",
      3427=>"Electronic Warfare",
      3327=>"Spaceship Command",
      20211=>"Heavy Missile Specialization",
      3394=>"Hull Upgrades",
      12305=>"Drone Navigation",
      3361=>"Criminal Connections",
      25538=>"Nanite Control",
      25739=>"Astrometric Rangefinding",
      20312=>"Guided Missile Precision",
      12205=>"Large Beam Laser Specialization",
      3428=>"Long Range Targeting",
      16594=>"Procurement",
      3328=>"Gallente Frigate",
      20212=>"Cruise Missile Specialization",
      3395=>"Frigate Construction",
      11569=>"Armored Warfare Specialist",
      3362=>"DED Connections",
      13278=>"Archaeology",
      12206=>"Medium Railgun Specialization",
      3429=>"Targeting",
      16595=>"Daytrading",
      3329=>"Minmatar Frigate",
      3731=>"Megacorp Management",
      20213=>"Torpedo Specialization",
      3396=>"Industrial Construction",
      12441=>"Missile Bombardment",
      24568=>"Capital Remote Armor Repair Systems",
      12207=>"Large Railgun Specialization",
      3363=>"Corporation Management",
      3430=>"Multitasking",
      20314=>"Target Navigation Prediction",
      16596=>"Wholesale",
      30532=>"Amarr Defensive Systems",
      3330=>"Caldari Frigate",
      28656=>"Black Ops",
      3732=>"Empire Control",
      12241=>"Sovereignty",
      3397=>"Cruiser Construction",
      12442=>"Missile Projection",
      21789=>"Sleeper Technology",
      12208=>"Medium Autocannon Specialization",
      24268=>"Supply Chain Management",
      3431=>"Signature Analysis",
      20315=>"Warhead Upgrades",
      16597=>"Margin Trading",
      22761=>"Recon Ships",
      3331=>"Amarr Frigate",
      3398=>"Battleship Construction",
      11572=>"Skirmish Warfare Specialist",
      12376=>"Logic",
      21790=>"Caldari Encryption Methods",
      25810=>"Astrometric Pinpointing",
      12209=>"Large Autocannon Specialization",
      3432=>"Electronics Upgrades",
      16598=>"Marketing",
      3332=>"Gallente Cruiser",
      23566=>"Electronic Warfare Drone Interfacing",
      24571=>"Capital Shield Emission Systems",
      24270=>"Scientific Networking",
      21791=>"Minmatar Encryption Methods",
      25811=>"Astrometric Acquisition",
      3433=>"Sensor Linking",
      12210=>"Small Blaster Specialization",
      3333=>"Minmatar Cruiser",
      3400=>"Outpost Construction",
      11574=>"Wing Command",
      24572=>"Capital Energy Emission Systems",
      24606=>"Cloning Facility Operation",
      25544=>"Gas Cloud Harvesting",
      3434=>"Weapon Disruption",
      3300=>"Gunnery",
      12211=>"Medium Blaster Specialization",
      30536=>"Amarr Electronic Systems",
      17940=>"Mining Barge",
      3334=>"Caldari Cruiser",
      11441=>"Plasma Physics",
      29029=>"Jump Freighters",
      11207=>"Advanced Weapon Upgrades",
      3435=>"Propulsion Jamming",
      3301=>"Small Hybrid Turret",
      12212=>"Large Blaster Specialization",
      3368=>"Ethnic Relations",
      30537=>"Amarr Offensive Systems",
      3335=>"Amarr Cruiser",
      3402=>"Science",
      12179=>"Research Project Management",
      11442=>"Nanite Engineering",
      3436=>"Drones",
      3302=>"Small Projectile Turret",
      12213=>"Small Pulse Laser Specialization",
      30538=>"Amarr Propulsion Systems",
      3336=>"Gallente Battleship",
      3403=>"Research",
      11443=>"Hydromagnetic Physics",
      12180=>"Arkonor Processing",
      3437=>"Scout Drone Operation",
      3303=>"Small Energy Turret",
      12214=>"Medium Pulse Laser Specialization",
      30539=>"Amarr Engineering Systems",
      3337=>"Minmatar Battleship",
      11444=>"Amarrian Starship Engineering",
      12181=>"Bistot Processing",
      24241=>"Combat Drone Operation",
      18580=>"Tycoon",
      19719=>"Transport Ships",
      3438=>"Mining Drone Operation",
      3304=>"Medium Hybrid Turret",
      21059=>"Shield Compensation",
      12215=>"Large Pulse Laser Specialization",
      23069=>"Fighters",
      30540=>"Gallente Defensive Systems",
      3338=>"Caldari Battleship",
      11445=>"Minmatar Starship Engineering",
      24242=>"Infomorph Psychology",
      3405=>"Biology",
      11579=>"Cloaking",
      12182=>"Crokite Processing",
      12383=>"Presence",
      26252=>"Jury Rigging",
      20524=>"Amarr Freighter",
      3439=>"Repair Drone Operation",
      19921=>"Target Painting",
      12484=>"Amarr Drone Specialization",
      3305=>"Medium Projectile Turret",
      23606=>"Drone Sharpshooting",
      30541=>"Gallente Electronic Systems",
      3339=>"Amarr Battleship",
      3406=>"Laboratory Operation",
      11446=>"Graviton Physics",
      16069=>"Remote Armor Repair Systems",
      12183=>"Dark Ochre Processing",
      26253=>"Armor Rigging",
      29637=>"Industrial Command Ships",
      20525=>"Amarr Dreadnought",
      19922=>"Signature Focusing",
      12485=>"Minmatar Drone Specialization",
      3306=>"Medium Energy Turret",
      3373=>"Starbase Defense Management",
      30542=>"Caldari Electronic Systems",
      3340=>"Gallente Industrial",
      24311=>"Amarr Carrier",
      11447=>"Laser Physics",
      12184=>"Gneiss Processing",
      12385=>"Eidetic Memory",
      25718=>"Heavy Assault Missile Specialization",
      26254=>"Astronautics Rigging",
      20526=>"Caldari Freighter",
      28164=>"Thermodynamics",
      12486=>"Gallente Drone Specialization",
      3307=>"Large Hybrid Turret",
      24613=>"Advanced Drone Interfacing",
      3374=>"Learning",
      22536=>"Mining Foreman",
      3441=>"Heavy Drone Operation",
      30543=>"Minmatar Electronic Systems",
      3341=>"Minmatar Industrial",
      28667=>"Marauders",
      24312=>"Caldari Carrier",
      3408=>"Reverse Engineering",
      11448=>"Electromagnetic Physics",
      12185=>"Hedbergite Processing",
      12386=>"Focus",
      25719=>"Heavy Assault Missiles",
      26255=>"Drones Rigging",
      20527=>"Gallente Freighter",
      3308=>"Large Projectile Turret",
      3375=>"Iron Will",
      21666=>"Capital Hybrid Turret",
      3442=>"Drone Interfacing",
      12487=>"Caldari Drone Specialization",
      30544=>"Caldari Defensive Systems",
      24313=>"Gallente Carrier",
      3342=>"Caldari Industrial",
      11449=>"Rocket Science",
      3409=>"Metallurgy",
      20494=>"Armored Warfare",
      12186=>"Hemorphite Processing",
      12387=>"Clarity",
      26256=>"Electronic Superiority Rigging",
      3443=>"Trade",
      20528=>"Minmatar Freighter",
      3309=>"Large Energy Turret",
      20327=>"Capital Energy Turret",
      22806=>"EM Armor Compensation",
      3376=>"Empathy",
      21667=>"Capital Projectile Turret",
      30545=>"Minmatar Defensive Systems",
      24314=>"Minmatar Carrier",
      3343=>"Amarr Industrial",
      11450=>"Gallentean Starship Engineering",
      3410=>"Astrogeology",
      20495=>"Information Warfare",
      12187=>"Jaspet Processing",
      26257=>"Projectile Weapon Rigging",
      11584=>"Anchoring",
      3444=>"Retail",
      3310=>"Rapid Firing",
      22807=>"Explosive Armor Compensation",
      3377=>"Analytical Mind",
      26224=>"Drug Manufacturing",
      21802=>"Capital Shield Operation",
      21668=>"Citadel Torpedoes",
      11082=>"Small Railgun Specialization",
      30546=>"Gallente Engineering Systems",
      3344=>"Gallente Titan",
      11451=>"Nuclear Physics",
      3411=>"Cybernetics",
      12188=>"Kernite Processing",
      26258=>"Energy Weapon Rigging",
      19759=>"Long Distance Jamming",
      20530=>"Caldari Dreadnought",
      22808=>"Kinetic Armor Compensation",
      3378=>"Instant Recall",
      21803=>"Capital Repair Systems",
      11083=>"Small Beam Laser Specialization",
      3311=>"Sharpshooter",
      30547=>"Minmatar Engineering Systems",
      3345=>"Minmatar Titan",
      11452=>"Mechanical Engineering",
      3412=>"Astrometrics",
      12189=>"Mercoxit Processing",
      26259=>"Hybrid Weapon Rigging",
      19760=>"Frequency Modulation",
      3446=>"Broker Relations",
      20531=>"Gallente Dreadnought",
      22809=>"Thermic Armor Compensation",
      21603=>"Cynosural Field Theory",
      3379=>"Spatial Awareness",
      11084=>"Small Autocannon Specialization",
      3312=>"Motion Prediction",
      30548=>"Caldari Engineering Systems",
      3346=>"Caldari Titan",
      11453=>"Electronic Engineering",
      12190=>"Omber Processing",
      3413=>"Engineering",
      26260=>"Launcher Rigging",
      19761=>"Signal Dispersion",
      3447=>"Visibility",
      20532=>"Minmatar Dreadnought",
      11487=>"Astronautic Engineering",
      3380=>"Industry",
      27902=>"Remote Hull Repair Systems",
      30549=>"Caldari Offensive Systems",
      3347=>"Amarr Titan",
      16546=>"Bureaucratic Connections",
      11454=>"Caldari Starship Engineering",
      26261=>"Shield Rigging",
      27936=>"Capital Remote Hull Repair Systems",
      12191=>"Plagioclase Processing",
      23950=>"Command Ships",
      20533=>"Capital Ships",
      30650=>"Amarr Strategic Cruiser",
      30550=>"Gallente Offensive Systems",
      16547=>"Financial Connections",
      20433=>"Talocan Technology",
      11455=>"Quantum Physics",
      22242=>"Capital Ship Construction",
      12192=>"Pyroxeres Processing",
      3348=>"Leadership",
      12092=>"Interceptors",
      30651=>"Caldari Strategic Cruiser",
      3449=>"Navigation",
      3315=>"Surgical Strike",
      30551=>"Minmatar Offensive Systems",
      16548=>"Political Connections",
      3416=>"Shield Operation",
      22578=>"Mining Upgrades",
      12193=>"Scordite Processing",
      3349=>"Skirmish Warfare"
    }
  end
end