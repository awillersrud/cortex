CREATE TABLE wtc2019_team (
    id serial NOT NULL PRIMARY KEY,
    name text not null,
    team json NOT NULL
);
CREATE TABLE wtc2019_player (
    id serial NOT NULL PRIMARY KEY,
    team_id integer not null,
    name text ,
    faction text ,
    cccode text,
    list1 json,
    list2 json
);
CREATE TABLE wtc2019_list (
    id serial NOT NULL PRIMARY KEY,
    player_id integer not null,
    theme text NOT NULL,
    caster text,
    list json NOT NULL
);
CREATE TABLE wtc2019_eval (
	id serial NOT NULL PRIMARY key,
	player_id integer NOT NULL,
	opposing_player_id integer NOT NULL,
	evaluation integer NOT NULL
);		

drop table wtc2019_team;
drop table wtc2019_player;
drop table wtc2019_list;
drop table wtc2019_eval;

-- import data
insert into wtc2019_import (info) values (
                 '[
                   {
                     "name": "Austria 1 - Wolfgang Omodamos Mozart",
                     "players": [
                       {
                         "name": "Andreas \"Pagan\" Höng",
                         "faction": "Convergence of Cyriss",
                         "cccode": "cc101b_-1-lIdndndndBd9dbdCdCdCdedfdfdfdz___-1-djdBd4d5d5d5d5d5d5d5d5d5d5d5d5d5dddCdCdCoRdzdzdF",
                         "list1": {
                           "theme": "Destruction Initiative",
                           "list": [
                             "Locke 1",
                             "Conservator",
                             "Conservator",
                             "Conservator",
                             "Corollary",
                             "Inverter",
                             "Prime Axiom",
                             "Algorithmic Dispersion Optifex",
                             "Algorithmic Dispersion Optifex",
                             "Algorithmic Dispersion Optifex",
                             "Attunement Servitors",
                             "Elimination Servitors",
                             "Elimination Servitors",
                             "Elimination Servitors",
                             "Optifex Directive"
                           ]
                         },
                         "list2": {
                           "theme": "Destruction Initiative",
                           "list": [
                             "Lucant 1",
                             "Corollary",
                             "Diffuser",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Accretion Servitors",
                             "Algorithmic Dispersion Optifex",
                             "Algorithmic Dispersion Optifex",
                             "Algorithmic Dispersion Optifex",
                             "Hermit of Henge Hold",
                             "Optifex Directive",
                             "Optifex Directive",
                             "Transfinite Emergence Projector"
                           ]
                         }
                       },
                       {
                         "name": "Daniel \"Just_dan\" Maierl",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1odU1ghIms3y3y3y3J0w4141oR4Lmm2Hmp___-1nnAmkjsjseP9v3y3y3y4141oRf2hOmpmp",
                         "list1": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Issyria 1",
                             "Chimera",
                             "Hemera",
                             "Imperatus",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Dawnguard Sentinel Scyir",
                             "Hydra",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "House Shyeel Artificer",
                             "Dawnguard Invictors (max)",
                             "Dawnguard Invictor Officer & Standard",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Garryth 2",
                             "Daemon",
                             "Harpy",
                             "Harpy",
                             "Moros",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "House Vyre Electromancers",
                             "Ryssovass Defenders (max)",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "Daniel \"Snot\" Pawelka",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1Xb-432w2w2w2w2w2w0v3y3y3y4khMhMmp___-1n18jsjseP9v3y3y4141dP4J35363uhOhTmp",
                         "list1": {
                           "theme": "Forges of War",
                           "list": [
                             "Vyros 2",
                             "Discordia",
                             "Griffon",
                             "Griffon",
                             "Griffon",
                             "Griffon",
                             "Griffon",
                             "Griffon",
                             "Manticore",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Lanyssa Ryssyl, Nyss Sorceress",
                             "House Shyeel Arcanists",
                             "House Shyeel Arcanists",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Garryth 1",
                             "Harpy",
                             "Harpy",
                             "Moros",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Houseguard Thane",
                             "Heavy Rifle Team",
                             "Houseguard Halberdiers (max)",
                             "Houseguard Halberdier Officer & Standard",
                             "Soulless Escort (1)",
                             "Ryssovass Defenders (max)",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "Matthias \"Phoenix\" Kostwein",
                         "faction": "Skorne",
                         "cccode": "c9101b_-2cfk6r6S4C4C6u6un2n26vncoRn3n3n8n9n1n9n1mB___-1s6I6r6r4xm_fIoR7yjD5U5VhVhV",
                         "list1": {
                           "theme": "The Exalted",
                           "list": [
                             "Zaal 2",
                             "Agonizer",
                             "Cyclops Raider",
                             "Cyclops Shaman",
                             "Cyclops Shaman",
                             "Ancestral Guardian",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Extoller Soulward",
                             "Hakaar the Destroyer",
                             "Hermit of Henge Hold",
                             "Immortal Vessel",
                             "Immortal Vessel",
                             "Immortals (min)",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian"
                           ]
                         },
                         "list2": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Rasheth 1",
                             "Agonizer",
                             "Agonizer",
                             "Basilisk Krea",
                             "Desert Hydra",
                             "Bog Trog Mist Speaker",
                             "Hermit of Henge Hold",
                             "Orin Midwinter, Rogue Inquisitor",
                             "Farrow Valkyries",
                             "Paingiver Beast Handlers (min)",
                             "Paingiver Beast Handlers (max)",
                             "Siege Animantarax",
                             "Siege Animantarax"
                           ]
                         }
                       },
                       {
                         "name": "Michael \"Mischachen\" Mendlik",
                         "faction": "Crucible Guard",
                         "cccode": "cf101b_-1ul9lslulclF7jlHlH7kfClElElElElxlylklk___-1ul8ltlslblF7koRfClElElElElklkiBlDldld",
                         "list1": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Gearhart 1",
                             "Retaliator",
                             "Toro",
                             "Vulcan",
                             "Aurum Ominus Alyce Marc",
                             "Anastasia di Bray",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Gorman di Wulfe, Rogue Alchemist",
                             "Hutchuk, Ogrun Bounty Hunter",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Crucible Guard Infantry (max)",
                             "Crucible Guard Infantry Officer & Standard",
                             "Dragon''s Breath Rocket",
                             "Dragon''s Breath Rocket"
                           ]
                         },
                         "list2": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Syvestro 1",
                             "Liberator",
                             "Retaliator",
                             "Suppressor",
                             "Aurum Ominus Alyce Marc",
                             "Gorman di Wulfe, Rogue Alchemist",
                             "Hermit of Henge Hold",
                             "Hutchuk, Ogrun Bounty Hunter",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Dragon''s Breath Rocket",
                             "Dragon''s Breath Rocket",
                             "Steelhead Halberdiers (max)",
                             "Doctor Alejandro Mosby",
                             "Railless Interceptor",
                             "Railless Interceptor"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Austria 2 - Rock Me Omodamos",
                     "players": [
                       {
                         "name": "Alexander \"DCM\" Grob",
                         "faction": "Khador",
                         "cccode": "c3101b_-1Pk_7skTkTkTnjl5l4l4l3l34i7QgdkQ___-1Shz7p7pnjpbno8h8hnf89nf89nfnfnnnnch",
                         "list1": {
                           "theme": "Armored Korps",
                           "list": [
                             "Sorscha 3",
                             "Kodiak",
                             "Marauder",
                             "Marauder",
                             "Marauder",
                             "Greylord Adjunct",
                             "Man-O-War Kovnik",
                             "Man-O-War Strike Tanker",
                             "Man-O-War Strike Tanker",
                             "Man-O-War Suppression Tanker",
                             "Man-O-War Suppression Tanker",
                             "Saxon Orrik",
                             "Man-O-War Shocktroopers (max)",
                             "Man-O-War Shocktrooper Officer",
                             "Man-O-War Siege Chariot"
                           ]
                         },
                         "list2": {
                           "theme": "Wolves of Winter",
                           "list": [
                             "Old Witch 2",
                             "Destroyer",
                             "Destroyer",
                             "Greylord Adjunct",
                             "Alexia, Mistress of the Witchfire",
                             "Fenris",
                             "Koldun Lord",
                             "Koldun Lord",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Doom Reaver Swordsmen",
                             "Greylord Ternion",
                             "Greylord Ternion",
                             "Kayazy Eliminators"
                           ]
                         }
                       },
                       {
                         "name": "Daniel \"Ikit\" Woschitz",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2amPmOmRmVmVoRmI54jXmSmj5wmj5wmT___-2a5vmK4ImVmVmVoRmI54jX4_mQmj5wmj5wmT",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Iona 1",
                             "Storm Raptor",
                             "Tharn Blood Shaman",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Tharn Ravager Shaman",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Wurmwood 1",
                             "Ghetorix",
                             "Gnarlhorn Satyr",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Tharn Ravager Shaman",
                             "Boil Master & Spirit Cauldron",
                             "Tharn Bloodweavers",
                             "Tharn Bloodweaver Haruspex",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Jan \"Simsalabim\" Saladajczyk",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khsh2nlnlnlnlh4h3nFhmhmhmhmoRhr___-2khth2nlnlh4h6h6h7h3h3hmhmhmhmhr",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Child 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Hermit of Henge Hold",
                             "Death Knell"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Gorehound",
                             "Rattler",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "Martin \"Piper\" Bräundle",
                         "faction": "Convergence of Cyriss",
                         "cccode": "cc101b_-1-jBdBdododog5dddddCdCdCdfdfdfoRdzdF___-1ZdjdBd4d5d5d5d5d5d5d5d5d5d5d5d5d5d5d5d5d5d5dCdCnaoRdz",
                         "list1": {
                           "theme": "Destruction Initiative",
                           "list": [
                             "Orion 1",
                             "Corollary",
                             "Modulator",
                             "Modulator",
                             "Modulator",
                             "Prime Conflux",
                             "Accretion Servitors",
                             "Accretion Servitors",
                             "Algorithmic Dispersion Optifex",
                             "Algorithmic Dispersion Optifex",
                             "Algorithmic Dispersion Optifex",
                             "Elimination Servitors",
                             "Elimination Servitors",
                             "Elimination Servitors",
                             "Hermit of Henge Hold",
                             "Optifex Directive",
                             "Transfinite Emergence Projector"
                           ]
                         },
                         "list2": {
                           "theme": "Clockwork Legions",
                           "list": [
                             "Lucant 1",
                             "Corollary",
                             "Diffuser",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Galvanizer",
                             "Algorithmic Dispersion Optifex",
                             "Algorithmic Dispersion Optifex",
                             "Frustum Locus",
                             "Hermit of Henge Hold",
                             "Optifex Directive"
                           ]
                         }
                       },
                       {
                         "name": "Thomas \"dommai\" Mendlik",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1nnA4G1gjsjsePjtjt9v3y3y3y4141oRf2mpmp___-1odU1g1gms3y3y3A4141oR4L0wf3mo313vmp",
                         "list1": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Garryth 2",
                             "Aspis",
                             "Chimera",
                             "Harpy",
                             "Harpy",
                             "Moros",
                             "Siren",
                             "Siren",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "House Vyre Electromancers",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Issyria 1",
                             "Chimera",
                             "Chimera",
                             "Imperatus",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Dawnguard Destor Thane",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "House Shyeel Artificer",
                             "Hydra",
                             "Soulless Voidtracer",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Soulless Escort (2)",
                             "Dawnguard Trident"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Belgium 2",
                     "players": [
                       {
                         "name": "Axel D''Haeyere",
                         "faction": "Khador",
                         "cccode": "c3101b_-1ShzkTnm7inonf89nf89nf89nf89nf89nnnn___-1mdI7q7qkTnmkUnjdHhFlO7qchch",
                         "list1": {
                           "theme": "Wolves of Winter",
                           "list": [
                             "Old Witch 2",
                             "Marauder",
                             "Ruin",
                             "Reinholdt, Gobber Speculator",
                             "Fenris",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Greylord Ternion",
                             "Greylord Ternion"
                           ]
                         },
                         "list2": {
                           "theme": "Jaws of the Wolf",
                           "list": [
                             "Butcher 3",
                             "Devastator",
                             "Devastator",
                             "Marauder",
                             "Ruin",
                             "Spriggan",
                             "Greylord Adjunct",
                             "Gobber Tinker",
                             "Greylord Forge Seer",
                             "Kovnik Apprentice Kratikoff",
                             "Devastator",
                             "Kayazy Eliminators",
                             "Kayazy Eliminators"
                           ]
                         }
                       },
                       {
                         "name": "Christophe Klopfert",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1T371w19193a0thC2BbF73i01KdQ___-1T0F1h1h1h1he2kwhC2oi01KdQi01KdQbBbB",
                         "list1": {
                           "theme": "Black Industries",
                           "list": [
                             "Scaverous 1",
                             "Deathjack",
                             "Deathripper",
                             "Deathripper",
                             "Erebus",
                             "The Withershadow Combine",
                             "Hellslinger Phantom",
                             "Warwitch Siren",
                             "Wrong Eye",
                             "Croe''s Cutthroats (max)",
                             "Mechanithralls (min)",
                             "Brute Thrall (3)",
                             "Skarlock Commander"
                           ]
                         },
                         "list2": {
                           "theme": "Black Industries",
                           "list": [
                             "Skarre 1",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Aiakos, Scourge of the Meredius",
                             "Kharybdis",
                             "Hellslinger Phantom",
                             "Scrap Thrall (3)",
                             "Mechanithralls (min)",
                             "Brute Thrall (3)",
                             "Skarlock Commander",
                             "Mechanithralls (min)",
                             "Brute Thrall (3)",
                             "Skarlock Commander",
                             "Wraith Engine",
                             "Wraith Engine"
                           ]
                         }
                       },
                       {
                         "name": "Jean Paul Decker",
                         "faction": "Crucible Guard",
                         "cccode": "cf101b_-1vlrlblulolHlnlclClkld___-1ul8lblululFfilElElElElClelglilkiBlDld",
                         "list1": {
                           "theme": "Prima Materia",
                           "list": [
                             "Mackay 1",
                             "Suppressor",
                             "Toro",
                             "Vanguard",
                             "Crucible Guard Mechanik",
                             "Prospero",
                             "Vulcan",
                             "Combat Alchemists",
                             "Dragon''s Breath Rocket",
                             "Railless Interceptor"
                           ]
                         },
                         "list2": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Syvestro 1",
                             "Suppressor",
                             "Toro",
                             "Toro",
                             "Aurum Ominus Alyce Marc",
                             "Sergeant Nicolas Verendrye",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Combat Alchemists",
                             "Crucible Guard Rocketmen (min)",
                             "Crucible Guard Rocketman Captain",
                             "Rocketman Gunner (2)",
                             "Dragon''s Breath Rocket",
                             "Steelhead Halberdiers (max)",
                             "Doctor Alejandro Mosby",
                             "Railless Interceptor"
                           ]
                         }
                       },
                       {
                         "name": "Niels De Vlieger",
                         "faction": "Legion of Everblight",
                         "cccode": "ca101b_-2ifdkKaOeKbebefxfxoRbdbdjDfTfTb3b4___-2hbskKeJeJkBoRcob5kLkGkGkJfTfT2N",
                         "list1": {
                           "theme": "Ravens of War",
                           "list": [
                             "Twins 2",
                             "Golab",
                             "Seraph",
                             "Zuriel",
                             "Blighted Nyss Sorceress & Hellion",
                             "Blighted Nyss Sorceress & Hellion",
                             "Grotesque Assassin",
                             "Grotesque Assassin",
                             "Hermit of Henge Hold",
                             "Strider Deathstalker",
                             "Strider Deathstalker",
                             "Farrow Valkyries",
                             "Hellmouth",
                             "Hellmouth",
                             "Strider Scouts",
                             "Strider Scout Officer & Musician"
                           ]
                         },
                         "list2": {
                           "theme": "Primal Terrors",
                           "list": [
                             "Kallus 1",
                             "Golab",
                             "Neraph",
                             "Neraph",
                             "Ammok the Truthbearer",
                             "Hermit of Henge Hold",
                             "Spell Martyr",
                             "Blighted Ogrun Warmongers (min)",
                             "Gorag Rotteneye",
                             "Blighted Rotwings (max)",
                             "Blighted Rotwings (max)",
                             "Chosen of Everblight (max)",
                             "Hellmouth",
                             "Hellmouth",
                             "Swamp Gobber Bellows Crew"
                           ]
                         }
                       },
                       {
                         "name": "Xavier Adriaens",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1odUhIms3y3y3J4141oR4L4Lmo313umpmp___-1nnAjsjseP9v3y3y3W3L4141f2f2hO3umpmp",
                         "list1": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Issyria 1",
                             "Hemera",
                             "Imperatus",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Dawnguard Sentinel Scyir",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "House Shyeel Artificer",
                             "House Shyeel Artificer",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Soulless Escort (1)",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Garryth 2",
                             "Harpy",
                             "Harpy",
                             "Moros",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Eiryss, Mage Hunter of Ios",
                             "Fane Knight Skeryth Issyen",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "House Vyre Electromancers",
                             "House Vyre Electromancers",
                             "Ryssovass Defenders (max)",
                             "Soulless Escort (1)",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Belgium 3",
                     "players": [
                       {
                         "name": "Brett Pandolfi",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1pm1lVme3k3kjCjClR7z3C2_3F3H3F3Hnini___-1r0Am33Ul-mfk9m07z3tlZlS2mbQ2jfV2jfV",
                         "list1": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Judicator",
                             "Hierophant",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Hand of Silence",
                             "Rhupert Carvolo, Piper of Ord",
                             "The Covenant of Menoth",
                             "Choir of Menoth (min)",
                             "Idrian Skirmishers (min)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Idrian Skirmishers (min)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         },
                         "list2": {
                           "theme": "Exemplar Interdiction",
                           "list": [
                             "Kreoss 2",
                             "Fire of Salvation",
                             "Sanctifier",
                             "Exemplar Bastion Seneschal",
                             "Exemplar Errant Seneschal",
                             "Exemplar Warder Elias Gade",
                             "High Exemplar Gravus",
                             "Rhupert Carvolo, Piper of Ord",
                             "Vassal Mechanik",
                             "Exemplar Cinerators (max)",
                             "Exemplar Cinerator Officer",
                             "Exemplar Errants (max)",
                             "Exemplar Errant Officer & Standard",
                             "Knights Exemplar",
                             "Knights Exemplar Officer",
                             "Knights Exemplar",
                             "Knights Exemplar Officer"
                           ]
                         }
                       },
                       {
                         "name": "Davy Smets",
                         "faction": "Cygnar",
                         "cccode": "c1101b_-1MiO9B9B9BakanaglNf5oI9K9L9Caeae___-1NfNc0akaj9c7zoJaeaeada5a6bz",
                         "list1": {
                           "theme": "Sons of the Tempest",
                           "list": [
                             "Kraye 1",
                             "Centurion",
                             "Centurion",
                             "Centurion",
                             "Squire",
                             "Captain Arlan Strangewayes",
                             "Gun Mage Captain Adept",
                             "Journeyman Lieutenant Allister Caine",
                             "Ace",
                             "Ragman",
                             "Arcane Tempest Gun Mages",
                             "Arcane Tempest Gun Mage Officer",
                             "Cyclone",
                             "Field Mechaniks (min)",
                             "Field Mechaniks (min)"
                           ]
                         },
                         "list2": {
                           "theme": "Storm Division",
                           "list": [
                             "Maddox 1",
                             "Stormwall",
                             "Squire",
                             "Journeyman Warcaster",
                             "Firefly",
                             "Rhupert Carvolo, Piper of Ord",
                             "Savio Montero Acosta",
                             "Field Mechaniks (min)",
                             "Field Mechaniks (min)",
                             "Storm Lances (max)",
                             "Stormblade Infantry",
                             "Stormblade Infantry Officer & Standard",
                             "Storm Strider"
                           ]
                         }
                       },
                       {
                         "name": "François Dupont",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1peU1rl_l_2e3k3kjCjClR3E3s3z3z2_jI2i___-1r0JlVl-m0lM1q3t2_lXlX2jfV2jfV",
                         "list1": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Durst 1",
                             "Devout",
                             "Indictor",
                             "Indictor",
                             "Avatar of Menoth",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Hand of Silence",
                             "High Paladin Dartan Vilmon",
                             "Reclaimer Gatekeeper",
                             "Vassal of Menoth",
                             "Vassal of Menoth",
                             "Choir of Menoth (min)",
                             "Holy Zealots (max)",
                             "Monolith Bearer"
                           ]
                         },
                         "list2": {
                           "theme": "Exemplar Interdiction",
                           "list": [
                             "High Reclaimer 1",
                             "Judicator",
                             "Exemplar Bastion Seneschal",
                             "High Exemplar Gravus",
                             "Scrutator Potentate Severius",
                             "Dervish",
                             "Vassal Mechanik",
                             "Choir of Menoth (min)",
                             "Exemplar Bastions (max)",
                             "Exemplar Bastions (max)",
                             "Knights Exemplar",
                             "Knights Exemplar Officer",
                             "Knights Exemplar",
                             "Knights Exemplar Officer"
                           ]
                         }
                       },
                       {
                         "name": "Joran Degens",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-1xg1eemW4zmI5k4S5s4S5s5ocp4U4W___-294m4QjEcn4H4H4Hg4g4g45g5e5e5fmY5f",
                         "list1": {
                           "theme": "The Wild Hunt",
                           "list": [
                             "Tanith 1",
                             "Argus Moonhound",
                             "Loki",
                             "Wild Argus",
                             "Lord of the Feast",
                             "Wolf Lord Morraig",
                             "Reeves of Orboros (max)",
                             "Reeve of Orboros Chieftain & Standard",
                             "Reeves of Orboros (max)",
                             "Reeve of Orboros Chieftain & Standard",
                             "Warpborn Skinwalkers (max)",
                             "Warpborn Skinwalker Alpha",
                             "Wolves of Orboros (max)",
                             "Wolves of Orboros Chieftain & Standard"
                           ]
                         },
                         "list2": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Baldur 1",
                             "Megalith",
                             "Woldwatcher",
                             "Woldwrath",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Blackclad Wayfarer",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Stone Keeper",
                             "Shifting Stones"
                           ]
                         }
                       },
                       {
                         "name": "Tomas Mennes",
                         "faction": "Khador",
                         "cccode": "c3101b_-1Shzf8njnodH8h8hnfnfnfnfnfnnnn___-1mdI8F7q7qnmnjdHlOkV8ychch8e",
                         "list1": {
                           "theme": "Wolves of Winter",
                           "list": [
                             "Old Witch 2",
                             "Victor",
                             "Greylord Adjunct",
                             "Fenris",
                             "Gobber Tinker",
                             "Koldun Lord",
                             "Koldun Lord",
                             "Doom Reaver Swordsmen",
                             "Doom Reaver Swordsmen",
                             "Doom Reaver Swordsmen",
                             "Doom Reaver Swordsmen",
                             "Doom Reaver Swordsmen",
                             "Greylord Ternion",
                             "Greylord Ternion"
                           ]
                         },
                         "list2": {
                           "theme": "Jaws of the Wolf",
                           "list": [
                             "Butcher 3",
                             "Demolisher",
                             "Devastator",
                             "Devastator",
                             "Ruin",
                             "Greylord Adjunct",
                             "Gobber Tinker",
                             "Kovnik Apprentice Kratikoff",
                             "Beast 09",
                             "Yuri the Axe",
                             "Kayazy Eliminators",
                             "Kayazy Eliminators",
                             "Widowmaker Scouts"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Belgium Van Eyck",
                     "players": [
                       {
                         "name": "Benoit Van Lee",
                         "faction": "Skorne",
                         "cccode": "c9101b_-1snb6r6U4x4y4y5J6z5G6N5V5ShV___-2c6I6r4xm-mZ6un2n2ncoRn9n1n9n1mBmB",
                         "list1": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Makeda 3",
                             "Agonizer",
                             "Archidon",
                             "Basilisk Krea",
                             "Cyclops Brute",
                             "Cyclops Brute",
                             "Molik Karn",
                             "Razor Worm",
                             "Titan Gladiator",
                             "Aptimus Marketh",
                             "Paingiver Beast Handlers (max)",
                             "Paingiver Bloodrunners",
                             "Siege Animantarax"
                           ]
                         },
                         "list2": {
                           "theme": "The Exalted",
                           "list": [
                             "Rasheth 1",
                             "Agonizer",
                             "Basilisk Krea",
                             "Bronzeback Titan",
                             "Abidan the Keeper",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Hermit of Henge Hold",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian",
                             "Supreme Guardian"
                           ]
                         }
                       },
                       {
                         "name": "Laurens Tanguy",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1ndU1gmxhQ3yoRdP343635363umpmp___-1nnA1gjsjseP9v3y3y4141oRf2f2hTmpmp",
                         "list1": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Issyria 1",
                             "Chimera",
                             "Hyperion",
                             "Fane Knight Guardian",
                             "Arcanist Mechanik",
                             "Hermit of Henge Hold",
                             "Houseguard Thane",
                             "Houseguard Halberdiers (min)",
                             "Houseguard Halberdier Officer & Standard",
                             "Houseguard Halberdiers (max)",
                             "Houseguard Halberdier Officer & Standard",
                             "Soulless Escort (1)",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Garryth 2",
                             "Chimera",
                             "Harpy",
                             "Harpy",
                             "Moros",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "House Vyre Electromancers",
                             "House Vyre Electromancers",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "Steven De Canck",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1r0Am33UmflUk9m07mlZlS2mbQ2jfV2jfV___-1pm11rlVme3k3kjCjClR3E303G3Hnini",
                         "list1": {
                           "theme": "Exemplar Interdiction",
                           "list": [
                             "Kreoss 2",
                             "Fire of Salvation",
                             "Sanctifier",
                             "Exemplar Errant Seneschal",
                             "Exemplar Warder",
                             "Exemplar Warder Elias Gade",
                             "High Exemplar Gravus",
                             "Kell Bailoch",
                             "Exemplar Cinerators (max)",
                             "Exemplar Cinerator Officer",
                             "Exemplar Errants (max)",
                             "Exemplar Errant Officer & Standard",
                             "Knights Exemplar",
                             "Knights Exemplar Officer",
                             "Knights Exemplar",
                             "Knights Exemplar Officer"
                           ]
                         },
                         "list2": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Devout",
                             "Judicator",
                             "Hierophant",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Hand of Silence",
                             "High Paladin Dartan Vilmon",
                             "Choir of Menoth (max)",
                             "Idrian Skirmishers (max)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         }
                       },
                       {
                         "name": "Tim Bossuyt",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1U0F1h1h1h1hi22E2oi5nki5nkbBbB___-1Wktc3kpkr2IkqoI2Bkjkg1_kk1Q1Tko",
                         "list1": {
                           "theme": "Dark Host",
                           "list": [
                             "Skarre 1",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Bane Lord Tartarus",
                             "Darragh Wrathe",
                             "Scrap Thrall (3)",
                             "Bane Knights (max)",
                             "Bane Knight Officer",
                             "Bane Knights (max)",
                             "Bane Knight Officer",
                             "Wraith Engine",
                             "Wraith Engine"
                           ]
                         },
                         "list2": {
                           "theme": "Scourge of the Broken Coast",
                           "list": [
                             "Skarre 3",
                             "Kraken",
                             "Satyxis Blood Priestess",
                             "Axiara Wraithblade",
                             "General Gerlak Slaughterborn",
                             "Misery Cage",
                             "Ragman",
                             "Warwitch Siren",
                             "Black Ogrun Ironmongers",
                             "Blighted Trollkin Marauders (max)",
                             "Bloodgorgers (max)",
                             "Jussika Bloodtongue",
                             "Satyxis Blood Witches (min)",
                             "Satyxis Blood Hag",
                             "Scharde Dirge Seers"
                           ]
                         }
                       },
                       {
                         "name": "Wout Maerschalck",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2a4mmOmRmImUjXmSeE5fmF5qmj5wmT___-2a5vmDmKmVmVmVoRmI54jXmS5f5fmi5wmj5wmT",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Storm Raptor",
                             "Tharn Blood Shaman",
                             "Lord of the Feast",
                             "Tharn Wolf Rider Champion",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Death Wolves",
                             "Shifting Stones",
                             "Tharn Bloodtrackers (max)",
                             "Nuala the Huntress",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Wurmwood 1",
                             "Feral Warpwolf",
                             "Ghetorix",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Tharn Ravager Shaman",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Tharn Ravagers (min)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Canada Goose",
                     "players": [
                       {
                         "name": "Chris Orr",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khsh2nlnlnlh4h3h3nFhmhmhmhmhnhr___-2jhxnlnlnlnlnFnGoRhohphphinEnEhdnChenC",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Child 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         },
                         "list2": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Old Witch 3",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Baron Tonguelick, Lord of Warts",
                             "Grave Ghoul",
                             "Hermit of Henge Hold",
                             "Lord Longfellow",
                             "Trapperkin",
                             "Trapperkin",
                             "Mad Caps",
                             "Malady Man",
                             "Malady Man",
                             "Neigh Slayers (min)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse"
                           ]
                         }
                       },
                       {
                         "name": "David Beauchamp",
                         "faction": "Skorne",
                         "cccode": "c9101b_-1snb6U6U4xji5Jea4x5G5UhVhV___-2c3Z6U4xn0mZ6un2ncn3f4n9n1n9n1mBmB",
                         "list1": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Makeda 3",
                             "Archidon",
                             "Archidon",
                             "Basilisk Krea",
                             "Battle Boar",
                             "Molik Karn",
                             "Tyrant Zaadesh",
                             "Basilisk Krea",
                             "Titan Gladiator",
                             "Paingiver Beast Handlers (min)",
                             "Siege Animantarax",
                             "Siege Animantarax"
                           ]
                         },
                         "list2": {
                           "theme": "The Exalted",
                           "list": [
                             "Morghoul 2",
                             "Archidon",
                             "Basilisk Krea",
                             "Despoiler",
                             "Abidan the Keeper",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Immortal Vessel",
                             "Swamp Gobber River Raider",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian",
                             "Supreme Guardian"
                           ]
                         }
                       },
                       {
                         "name": "John Henry",
                         "faction": "Trollbloods",
                         "cccode": "c7101b_-28fnjn9DiRjp0hjq6RjD0k0miZ___-265a9DiRjqpk6G6OjD0k0mc8iTbK0b0c",
                         "list1": {
                           "theme": "Storm of the North",
                           "list": [
                             "Doomshaper 3",
                             "Dire Troll Brawler",
                             "Dire Troll Mauler",
                             "Earthborn Dire Troll",
                             "Mulg the Ancient",
                             "Troll Axer",
                             "Trollkin Runebearer",
                             "Troll Whelps",
                             "Farrow Valkyries",
                             "Krielstone Bearer & Stone Scribes (min)",
                             "Stone Scribe Elder",
                             "Northkin Bear Handlers & Battle Bears"
                           ]
                         },
                         "list2": {
                           "theme": "Band of Heroes",
                           "list": [
                             "Calandra 1",
                             "Dire Troll Mauler",
                             "Earthborn Dire Troll",
                             "Trollkin Runebearer",
                             "Boomhowler, Solo Artist",
                             "Fell Caller Hero",
                             "Trollkin Champion Hero",
                             "Farrow Valkyries",
                             "Krielstone Bearer & Stone Scribes (min)",
                             "Stone Scribe Elder",
                             "Sons of Bragg",
                             "Trollkin Champions (max)",
                             "Skaldi Bonehammer",
                             "Trollkin Fennblades (max)",
                             "Trollkin Fennblade Officer & Drummer"
                           ]
                         }
                       },
                       {
                         "name": "Jon Fairs",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1nnAjsjseP9v3y3y3W3L4141f2f2hTmpmp___-1o46jsjsmr3y3y4141oR4L742zmpmp",
                         "list1": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Garryth 2",
                             "Harpy",
                             "Harpy",
                             "Moros",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Eiryss, Mage Hunter of Ios",
                             "Fane Knight Skeryth Issyen",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "House Vyre Electromancers",
                             "House Vyre Electromancers",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Ossyan 1",
                             "Harpy",
                             "Harpy",
                             "Hypnos",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "House Shyeel Artificer",
                             "Cylena Raefyll & Nyss Hunters (min)",
                             "Dawnguard Destors (max)",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "Marc-Andre LeBlanc",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-294a4QjGjFjF4Hg4g45gmVmVmVoR5e5e5f5fmT___-2amPmOmVmVoRmIjXmS4_mj5wmj5wmT",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Krueger 2",
                             "Megalith",
                             "Wold Guardian",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Blackclad Wayfarer",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Iona 1",
                             "Storm Raptor",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Tharn Bloodweavers",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Canada Moose ",
                     "players": [
                       {
                         "name": "Aaron Smith",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-295v4QjFjFjF4Hg4g4mVmVoR0V5e5e5f5fmT___-2amPmOmVmVoRmIjXmS4_mj5wmj5wmT",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Wurmwood 1",
                             "Megalith",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Farrow Bone Grinders (max)",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Iona 1",
                             "Storm Raptor",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Tharn Bloodweavers",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Andrew Jacobs",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1Wktkw1skpkr2If4kf1_kk1_321Q1Tko___-1TbYkA1k19kw331v1v1vhC2n2n2nf4i01K",
                         "list1": {
                           "theme": "Scourge of the Broken Coast",
                           "list": [
                             "Skarre 3",
                             "Kharybdis",
                             "Leviathan",
                             "Satyxis Blood Priestess",
                             "Axiara Wraithblade",
                             "General Gerlak Slaughterborn",
                             "Swamp Gobber River Raider",
                             "Blighted Trollkin Marauders (min)",
                             "Bloodgorgers (max)",
                             "Jussika Bloodtongue",
                             "Bloodgorgers (max)",
                             "Cephalyx Overlords",
                             "Satyxis Blood Witches (min)",
                             "Satyxis Blood Hag",
                             "Scharde Dirge Seers"
                           ]
                         },
                         "list2": {
                           "theme": "Black Industries",
                           "list": [
                             "Asphyxious 3",
                             "Barathrum",
                             "Cankerworm",
                             "Deathripper",
                             "Kharybdis",
                             "Malice",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Hellslinger Phantom",
                             "Necrotech",
                             "Necrotech",
                             "Necrotech",
                             "Swamp Gobber River Raider",
                             "Mechanithralls (min)",
                             "Brute Thrall (3)"
                           ]
                         }
                       },
                       {
                         "name": "Brant Cullen",
                         "faction": "Skorne",
                         "cccode": "c9101b_-2e6I6rn4n26v6v5U5U6J6JhVhVmB___-2c3Z6r6U4x4y6uj6n2n2ncn3n3n9n1n9n1mBmB",
                         "list1": {
                           "theme": "Winds of Death",
                           "list": [
                             "Rasheth 1",
                             "Agonizer",
                             "Mammoth",
                             "Extoller Novitiate",
                             "Extoller Soulward",
                             "Extoller Soulward",
                             "Paingiver Beast Handlers (min)",
                             "Paingiver Beast Handlers (min)",
                             "Venator Flayer Cannon Crew",
                             "Venator Flayer Cannon Crew",
                             "Siege Animantarax",
                             "Siege Animantarax",
                             "Supreme Guardian"
                           ]
                         },
                         "list2": {
                           "theme": "The Exalted",
                           "list": [
                             "Morghoul 2",
                             "Agonizer",
                             "Archidon",
                             "Basilisk Krea",
                             "Cyclops Brute",
                             "Ancestral Guardian",
                             "Eilish Garrity, the Occultist",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Immortal Vessel",
                             "Immortal Vessel",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian",
                             "Supreme Guardian"
                           ]
                         }
                       },
                       {
                         "name": "Gregory Schadt",
                         "faction": "Skorne",
                         "cccode": "c9101b_-2cfk6r4xn06un2n2n2ncoRn3n9n1n9n12NmBmB___-1snb6U6U6U6U6U6U6U4xjif4ea6r5G5V",
                         "list1": {
                           "theme": "The Exalted",
                           "list": [
                             "Zaal 2",
                             "Agonizer",
                             "Basilisk Krea",
                             "Despoiler",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Hermit of Henge Hold",
                             "Immortal Vessel",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Swamp Gobber Bellows Crew",
                             "Supreme Guardian",
                             "Supreme Guardian"
                           ]
                         },
                         "list2": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Makeda 3",
                             "Archidon",
                             "Archidon",
                             "Archidon",
                             "Archidon",
                             "Archidon",
                             "Archidon",
                             "Archidon",
                             "Basilisk Krea",
                             "Battle Boar",
                             "Swamp Gobber River Raider",
                             "Tyrant Zaadesh",
                             "Agonizer",
                             "Titan Gladiator",
                             "Paingiver Beast Handlers (max)"
                           ]
                         }
                       },
                       {
                         "name": "Mat Goldfarb",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khsh2nlnlnlh4h3h3nFhmhmhmhmhnhr___-2jhvnlnlnlnlnFhohihinEnEhenChenChh",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Child 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         },
                         "list2": {
                           "theme": "Bump in the Night",
                           "list": [
                             "King of Nothing 1",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Baron Tonguelick, Lord of Warts",
                             "Lord Longfellow",
                             "Mad Caps",
                             "Mad Caps",
                             "Malady Man",
                             "Malady Man",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Twilight Sisters"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Canada Polar Bear",
                     "players": [
                       {
                         "name": "Charles  Soong",
                         "faction": "Mercenaries",
                         "cccode": "c6101b_-24b_9o9o94949494929292pbpkplfinvnxnsiB___-24oHnV9vpb2T7jplfi7AnvnxnsiBiB62",
                         "list1": {
                           "theme": "Soldiers of Fortune",
                           "list": [
                             "Ossrum 1",
                             "Ghordson Basher",
                             "Ghordson Basher",
                             "Ghordson Driller",
                             "Ghordson Driller",
                             "Ghordson Driller",
                             "Ghordson Driller",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Alexia, Mistress of the Witchfire",
                             "Boomhowler, Solo Artist",
                             "Dez",
                             "Sergeant Nicolas Verendrye",
                             "Steelhead Arcanist",
                             "Steelhead Ironhead",
                             "Steelhead Cannon Crew",
                             "Steelhead Halberdiers (max)"
                           ]
                         },
                         "list2": {
                           "theme": "Soldiers of Fortune",
                           "list": [
                             "Fiona 1",
                             "Blockader",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Alexia, Mistress of the Witchfire",
                             "Alten Ashley",
                             "Anastasia di Bray",
                             "Dez",
                             "Sergeant Nicolas Verendrye",
                             "Stannis Brocker",
                             "Steelhead Arcanist",
                             "Steelhead Ironhead",
                             "Steelhead Cannon Crew",
                             "Steelhead Halberdiers (max)",
                             "Steelhead Halberdiers (max)",
                             "Steelhead Heavy Cavalry (max)"
                           ]
                         }
                       },
                       {
                         "name": "Chris Dalton",
                         "faction": "Skorne",
                         "cccode": "c9101b_-1snb6U6U6U6U6U6U4xji6N2QfFf4ea6r5G5U5U___-2e6I6rn74x6Nn26v6v2QcvjD5U6WhVhVmB",
                         "list1": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Makeda 3",
                             "Archidon",
                             "Archidon",
                             "Archidon",
                             "Archidon",
                             "Archidon",
                             "Archidon",
                             "Basilisk Krea",
                             "Battle Boar",
                             "Aptimus Marketh",
                             "Feralgeist",
                             "Swamp Gobber Chef",
                             "Swamp Gobber River Raider",
                             "Tyrant Zaadesh",
                             "Agonizer",
                             "Titan Gladiator",
                             "Paingiver Beast Handlers (min)",
                             "Paingiver Beast Handlers (min)"
                           ]
                         },
                         "list2": {
                           "theme": "Winds of Death",
                           "list": [
                             "Rasheth 1",
                             "Agonizer",
                             "Aradus Sentinel",
                             "Basilisk Krea",
                             "Aptimus Marketh",
                             "Extoller Novitiate",
                             "Extoller Soulward",
                             "Extoller Soulward",
                             "Feralgeist",
                             "Mortitheurge Willbreaker",
                             "Farrow Valkyries",
                             "Paingiver Beast Handlers (min)",
                             "Venator Slingers (min)",
                             "Siege Animantarax",
                             "Siege Animantarax",
                             "Supreme Guardian"
                           ]
                         }
                       },
                       {
                         "name": "Chris Dancocks",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khth2h2nlnlh4h6h3h3hmhmhmhmhr___-2jhxnlnlnlnlnlnlh4nFnGoRhohphphihi",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Death Knell"
                           ]
                         },
                         "list2": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Old Witch 3",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Baron Tonguelick, Lord of Warts",
                             "Grave Ghoul",
                             "Hermit of Henge Hold",
                             "Lord Longfellow",
                             "Trapperkin",
                             "Trapperkin",
                             "Mad Caps",
                             "Mad Caps"
                           ]
                         }
                       },
                       {
                         "name": "Cory Doyle",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1pm11U1r3Ume3kjCjClR3EoL3r3C2_3F3Hninini___-1rbVlVme2TlUm0lM1G3t3B3B2_lZlS2v",
                         "list1": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Crusader",
                             "Devout",
                             "Sanctifier",
                             "Hierophant",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Hand of Silence",
                             "High Paladin Dartan Vilmon",
                             "Menite Archon",
                             "Paladin of the Order of the Wall",
                             "The Covenant of Menoth",
                             "Choir of Menoth (min)",
                             "Idrian Skirmishers (min)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         },
                         "list2": {
                           "theme": "Exemplar Interdiction",
                           "list": [
                             "Kreoss 3",
                             "Judicator",
                             "Hierophant",
                             "Alten Ashley",
                             "Exemplar Warder",
                             "High Exemplar Gravus",
                             "Scrutator Potentate Severius",
                             "Redeemer",
                             "Vassal Mechanik",
                             "Wrack",
                             "Wrack",
                             "Choir of Menoth (min)",
                             "Exemplar Cinerators (max)",
                             "Exemplar Cinerator Officer",
                             "Exemplar Vengers (max)"
                           ]
                         }
                       },
                       {
                         "name": "Matt McWatters",
                         "faction": "Infernals",
                         "cccode": "cg101b_-1yo8oeo9o9j6oSoqoqoqorororopofoyogovohou___-1yo7oaoaoaoaj6oSoqoqoqororopofoyofovou",
                         "list1": {
                           "theme": "Dark Legacy",
                           "list": [
                             "Zaateroth 1",
                             "Foreboder",
                             "Soul Stalker",
                             "Soul Stalker",
                             "Eilish Garrity, the Occultist",
                             "Hermit of Henge Hold",
                             "The Wretch",
                             "The Wretch",
                             "The Wretch",
                             "Umbral Guardian",
                             "Umbral Guardian",
                             "Umbral Guardian",
                             "Valin Hauke, The Fallen Knight",
                             "Cultist Band (min)",
                             "Dark Sentinel (3)",
                             "Cultist Band (max)",
                             "Master Preceptor Orin Midwinter",
                             "Griever Swarm (min)",
                             "Infernal Gate"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Legacy",
                           "list": [
                             "Omodamos 1",
                             "Tormentor",
                             "Tormentor",
                             "Tormentor",
                             "Tormentor",
                             "Eilish Garrity, the Occultist",
                             "Hermit of Henge Hold",
                             "The Wretch",
                             "The Wretch",
                             "The Wretch",
                             "Umbral Guardian",
                             "Umbral Guardian",
                             "Valin Hauke, The Fallen Knight",
                             "Cultist Band (min)",
                             "Dark Sentinel (3)",
                             "Cultist Band (min)",
                             "Master Preceptor Orin Midwinter",
                             "Infernal Gate"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "China BaiZhan",
                     "players": [
                       {
                         "name": "LaoWU",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khth2h2nlnlh4h6h3h3hmhmhnhr___-2jhxnlnlhbhjhihinEnEhenChgnDhhhr",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         },
                         "list2": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Old Witch 3",
                             "Clockatrice",
                             "Clockatrice",
                             "Hollowmen (max)",
                             "Lantern Man",
                             "Mad Caps",
                             "Mad Caps",
                             "Malady Man",
                             "Malady Man",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Piggybacks (max)",
                             "Piggyback Officer",
                             "Twilight Sisters",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "Nero",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1U0F1h1h1h1h2Ai22E2odVhZh_32bBbB___-1Wkt1s1skpkroIkskg1_kk1Nkekoo0",
                         "list1": {
                           "theme": "Dark Host",
                           "list": [
                             "Skarre 1",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Skarlock Thrall",
                             "Bane Lord Tartarus",
                             "Darragh Wrathe",
                             "Scrap Thrall (3)",
                             "Bane Riders (min)",
                             "Bane Warriors (min)",
                             "Bane Warrior Officer & Standard",
                             "Cephalyx Overlords",
                             "Wraith Engine",
                             "Wraith Engine"
                           ]
                         },
                         "list2": {
                           "theme": "Scourge of the Broken Coast",
                           "list": [
                             "Skarre 3",
                             "Leviathan",
                             "Leviathan",
                             "Satyxis Blood Priestess",
                             "Axiara Wraithblade",
                             "Ragman",
                             "Severa Blacktide",
                             "Blighted Trollkin Marauders (max)",
                             "Bloodgorgers (max)",
                             "Jussika Bloodtongue",
                             "Satyxis Raiders (max)",
                             "Satyxis Raider Sea Witch",
                             "Scharde Dirge Seers",
                             "The Devil''s Shadow Mutineers"
                           ]
                         }
                       },
                       {
                         "name": "XiaoGao",
                         "faction": "Khador",
                         "cccode": "c3101b_-1R76kTkTkTkT8tgc6i7Z7-7-7X7W7X7W7X7W___-1m7a7qkWkW7skYkTkTnjhFhFlOkZchch",
                         "list1": {
                           "theme": "Winter Guard Kommand",
                           "list": [
                             "Vladimir 1",
                             "Marauder",
                             "Marauder",
                             "Marauder",
                             "Marauder",
                             "Kovnik Jozef Grigorovich",
                             "Winter Guard Artillery Kapitan",
                             "Alexia Ciannor & the Risen",
                             "Winter Guard Field Gun Crew",
                             "Winter Guard Mortar Crew",
                             "Winter Guard Mortar Crew",
                             "Winter Guard Rifle Corps (min)",
                             "Winter Guard Rocketeer (3)",
                             "Winter Guard Rifle Corps (min)",
                             "Winter Guard Rocketeer (3)",
                             "Winter Guard Rifle Corps (min)",
                             "Winter Guard Rocketeer (3)"
                           ]
                         },
                         "list2": {
                           "theme": "Jaws of the Wolf",
                           "list": [
                             "Karchev 1",
                             "Devastator",
                             "Juggernaut",
                             "Juggernaut",
                             "Kodiak",
                             "Mad Dog",
                             "Marauder",
                             "Marauder",
                             "Greylord Adjunct",
                             "Greylord Forge Seer",
                             "Greylord Forge Seer",
                             "Kovnik Apprentice Kratikoff",
                             "Rager",
                             "Kayazy Eliminators",
                             "Kayazy Eliminators"
                           ]
                         }
                       },
                       {
                         "name": "Yang",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1onAjsjsePhQ3y3y3J2w3W41414L2w4LfWmo313ump___-1ndUhImv3W4141dPfWfW35363uhTmpmp",
                         "list1": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Garryth 2",
                             "Harpy",
                             "Harpy",
                             "Moros",
                             "Fane Knight Guardian",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Dawnguard Sentinel Scyir",
                             "Griffon",
                             "Eiryss, Mage Hunter of Ios",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "House Shyeel Artificer",
                             "Griffon",
                             "House Shyeel Artificer",
                             "Lys Healer",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Soulless Escort (1)",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Issyria 1",
                             "Hemera",
                             "Phoenix",
                             "Eiryss, Mage Hunter of Ios",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Houseguard Thane",
                             "Lys Healer",
                             "Lys Healer",
                             "Houseguard Halberdiers (max)",
                             "Houseguard Halberdier Officer & Standard",
                             "Soulless Escort (1)",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "ZiQin",
                         "faction": "Convergence of Cyriss",
                         "cccode": "cc101b_-1ZdjdndndBd4d4d5d5dCdCdEdEdEdEnaoRdqdqdu___-1-jBdmdmdBdbdfdfdfdgdgdgdF",
                         "list1": {
                           "theme": "Clockwork Legions",
                           "list": [
                             "Lucant 1",
                             "Conservator",
                             "Conservator",
                             "Corollary",
                             "Diffuser",
                             "Diffuser",
                             "Galvanizer",
                             "Galvanizer",
                             "Algorithmic Dispersion Optifex",
                             "Algorithmic Dispersion Optifex",
                             "Enigma Foundry",
                             "Enigma Foundry",
                             "Enigma Foundry",
                             "Enigma Foundry",
                             "Frustum Locus",
                             "Hermit of Henge Hold",
                             "Obstructors (max)",
                             "Obstructors (max)",
                             "Reciprocators (max)"
                           ]
                         },
                         "list2": {
                           "theme": "Destruction Initiative",
                           "list": [
                             "Orion 1",
                             "Assimilator",
                             "Assimilator",
                             "Corollary",
                             "Prime Axiom",
                             "Elimination Servitors",
                             "Elimination Servitors",
                             "Elimination Servitors",
                             "Reflex Servitors",
                             "Reflex Servitors",
                             "Reflex Servitors",
                             "Transfinite Emergence Projector"
                           ]
                         }
                       },
                       {
                         "name": "Alternate"
                       }
                     ]
                   },
                   {
                     "name": "China Pigeon",
                     "players": [
                       {
                         "name": "ilias Liu",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khsh2nlnlnlh4h3h3nFhmhmhmhmhnhr___-2khth2nlnlh4h7h7h3h3hmhmhmhmhnhr",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Child 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Rattler",
                             "Rattler",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "Lang Miao",
                         "faction": "Mercenaries",
                         "cccode": "c6101b_-25nTnVnVnRnM8Q8SnPnPnPf4f4kokmkn___-25oHnVnM8PnR8QnN8SnPnPnPf4f48MnKkmkncao0",
                         "list1": {
                           "theme": "Talion Charter",
                           "list": [
                             "Rahera 1",
                             "Blockader",
                             "Blockader",
                             "Scallywag",
                             "Bosun Grogspar",
                             "Doc Killingsworth",
                             "Lord Rockbottom",
                             "Powder Monkey",
                             "Powder Monkey",
                             "Powder Monkey",
                             "Swamp Gobber River Raider",
                             "Swamp Gobber River Raider",
                             "Scharde Dirge Seers",
                             "Scharde Pirates (max)",
                             "Scharde Pirate Officer"
                           ]
                         },
                         "list2": {
                           "theme": "Talion Charter",
                           "list": [
                             "Fiona 1",
                             "Blockader",
                             "Bosun Grogspar",
                             "Dirty Meg",
                             "Scallywag",
                             "Doc Killingsworth",
                             "First Mate Hawk",
                             "Lord Rockbottom",
                             "Powder Monkey",
                             "Powder Monkey",
                             "Powder Monkey",
                             "Swamp Gobber River Raider",
                             "Swamp Gobber River Raider",
                             "Lady Aiyana & Master Holt",
                             "Press Gangers (min)",
                             "Scharde Pirates (max)",
                             "Scharde Pirate Officer",
                             "The Commodore Cannon & Crew",
                             "The Devil''s Shadow Mutineers"
                           ]
                         }
                       },
                       {
                         "name": "LeeWings",
                         "faction": "Legion of Everblight",
                         "cccode": "ca101b_-2hfdkEkKaKaOoRcokPkJfTfT___-2hbskEaMkBcokGkGkJkJfTfT",
                         "list1": {
                           "theme": "Primal Terrors",
                           "list": [
                             "Twins 2",
                             "Blightbringer",
                             "Golab",
                             "Nephilim Protector",
                             "Seraph",
                             "Hermit of Henge Hold",
                             "Spell Martyr",
                             "Warmonger War Chief",
                             "Chosen of Everblight (max)",
                             "Hellmouth",
                             "Hellmouth"
                           ]
                         },
                         "list2": {
                           "theme": "Primal Terrors",
                           "list": [
                             "Kallus 1",
                             "Blightbringer",
                             "Raek",
                             "Ammok the Truthbearer",
                             "Spell Martyr",
                             "Blighted Rotwings (max)",
                             "Blighted Rotwings (max)",
                             "Chosen of Everblight (max)",
                             "Chosen of Everblight (max)",
                             "Hellmouth",
                             "Hellmouth"
                           ]
                         }
                       },
                       {
                         "name": "lxiang",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1onAhIms3y3y3y4141oR4L0wfW2ympmp___-1odU1gmx3y3y3y4141oR4L4L0wmn31mo313u",
                         "list1": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Garryth 2",
                             "Hemera",
                             "Imperatus",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "House Shyeel Artificer",
                             "Hydra",
                             "Lys Healer",
                             "Dawnguard Destors (min)",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Issyria 1",
                             "Chimera",
                             "Hyperion",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "House Shyeel Artificer",
                             "House Shyeel Artificer",
                             "Hydra",
                             "Dawnguard Sentinels (min)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Soulless Escort (1)"
                           ]
                         }
                       },
                       {
                         "name": "Shao Bing",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1pm1lVmejCjClRoR3EoL3C2_3F3Hninini___-1plT1qlVme3k3koRoLoL3z3z3B2_3G3Hninini",
                         "list1": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Judicator",
                             "Hierophant",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Hand of Silence",
                             "Hermit of Henge Hold",
                             "High Paladin Dartan Vilmon",
                             "Menite Archon",
                             "The Covenant of Menoth",
                             "Choir of Menoth (min)",
                             "Idrian Skirmishers (min)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         },
                         "list2": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Cyrenia 1",
                             "Dervish",
                             "Judicator",
                             "Hierophant",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Hermit of Henge Hold",
                             "Menite Archon",
                             "Menite Archon",
                             "Vassal of Menoth",
                             "Vassal of Menoth",
                             "Wrack",
                             "Choir of Menoth (min)",
                             "Idrian Skirmishers (max)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Czech Eagles",
                     "players": [
                       {
                         "name": "Holger Lischke",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2jhunlnlh4nFnGhihinEnEhgnDhgnDhhhr___-2khth2nlnlnlnlh4h6h3hmhmhmhnhr",
                         "list1": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Heretic 1",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Baron Tonguelick, Lord of Warts",
                             "Grave Ghoul",
                             "Mad Caps",
                             "Mad Caps",
                             "Malady Man",
                             "Malady Man",
                             "Piggybacks (max)",
                             "Piggyback Officer",
                             "Piggybacks (max)",
                             "Piggyback Officer",
                             "Twilight Sisters",
                             "Death Knell"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Skin & Moans",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "Michal Kunrt",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1nnA4EjsePhJ3y3y3y3W41414Jf2hOhTmp___-1odUhI1gms3y3y3y4141oR4Lmo31mpmp",
                         "list1": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Garryth 2",
                             "Banshee",
                             "Harpy",
                             "Moros",
                             "Aelyth Vyr, Blade of Nyssor",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Eiryss, Mage Hunter of Ios",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Heavy Rifle Team",
                             "House Vyre Electromancers",
                             "Ryssovass Defenders (max)",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Issyria 1",
                             "Hemera",
                             "Chimera",
                             "Imperatus",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "House Shyeel Artificer",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "Mirko Nyvlt",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2a4mmKmOmRmVmVmVmIjXmSeE5fmj5wmT___-294a4QjGjFjF4H4Hg4g4oR5e5e5f5fmT",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Ghetorix",
                             "Storm Raptor",
                             "Tharn Blood Shaman",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Death Wolves",
                             "Shifting Stones",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Krueger 2",
                             "Megalith",
                             "Wold Guardian",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Hermit of Henge Hold",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Olda Vondracek",
                         "faction": "Skorne",
                         "cccode": "c9101b_-1s3V6r4xm_m_6N7y6L6LfFfF0S0S5U___-1sey4xjijfjfjffI7y6L6Lea6r5G0S0S5U",
                         "list1": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Morghoul 1",
                             "Agonizer",
                             "Basilisk Krea",
                             "Desert Hydra",
                             "Desert Hydra",
                             "Aptimus Marketh",
                             "Orin Midwinter, Rogue Inquisitor",
                             "Paingiver Task Master",
                             "Paingiver Task Master",
                             "Swamp Gobber Chef",
                             "Swamp Gobber Chef",
                             "Farrow Slaughterhousers",
                             "Farrow Slaughterhousers",
                             "Paingiver Beast Handlers (min)"
                           ]
                         },
                         "list2": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Xerxis 2",
                             "Basilisk Krea",
                             "Battle Boar",
                             "Swamp Horror",
                             "Swamp Horror",
                             "Swamp Horror",
                             "Bog Trog Mist Speaker",
                             "Orin Midwinter, Rogue Inquisitor",
                             "Paingiver Task Master",
                             "Paingiver Task Master",
                             "Tyrant Zaadesh",
                             "Agonizer",
                             "Titan Gladiator",
                             "Farrow Slaughterhousers",
                             "Farrow Slaughterhousers",
                             "Paingiver Beast Handlers (min)"
                           ]
                         }
                       },
                       {
                         "name": "Vasek Pouchly",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1pm11U1U1U1Ume3k3klRoRjCjCoL3C2_3Fninini___-1p171U1U1U1q1q1q1q1r3UlR3t3z3z3B2_2_ninini",
                         "list1": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Crusader",
                             "Crusader",
                             "Crusader",
                             "Crusader",
                             "Hierophant",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Hand of Silence",
                             "Hermit of Henge Hold",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Menite Archon",
                             "The Covenant of Menoth",
                             "Choir of Menoth (min)",
                             "Idrian Skirmishers (min)",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         },
                         "list2": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Amon 1",
                             "Crusader",
                             "Crusader",
                             "Crusader",
                             "Dervish",
                             "Dervish",
                             "Dervish",
                             "Dervish",
                             "Devout",
                             "Sanctifier",
                             "Hand of Silence",
                             "Vassal Mechanik",
                             "Vassal of Menoth",
                             "Vassal of Menoth",
                             "Wrack",
                             "Choir of Menoth (min)",
                             "Choir of Menoth (min)",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Czech Lions",
                     "players": [
                       {
                         "name": "David ''Zulk'' Kluz",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1Wkv19191h1h1hkrkskfkkkf1Q1Tkx1Mke1Mke___-1W0F1h1h1h1he2kw1hkr2Ikq1Q1T1Mke1Mkeko",
                         "list1": {
                           "theme": "Scourge of the Broken Coast",
                           "list": [
                             "Deneghra 1",
                             "Deathripper",
                             "Deathripper",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Axiara Wraithblade",
                             "Severa Blacktide",
                             "Blighted Trollkin Marauders (min)",
                             "Jussika Bloodtongue",
                             "Blighted Trollkin Marauders (min)",
                             "Satyxis Blood Witches (min)",
                             "Satyxis Blood Hag",
                             "Satyxis Gunslingers",
                             "Satyxis Raiders (min)",
                             "Satyxis Raider Sea Witch",
                             "Satyxis Raiders (min)",
                             "Satyxis Raider Sea Witch"
                           ]
                         },
                         "list2": {
                           "theme": "Scourge of the Broken Coast",
                           "list": [
                             "Skarre 1",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Aiakos, Scourge of the Meredius",
                             "Kharybdis",
                             "Stalker",
                             "Axiara Wraithblade",
                             "General Gerlak Slaughterborn",
                             "Misery Cage",
                             "Satyxis Blood Witches (min)",
                             "Satyxis Blood Hag",
                             "Satyxis Raiders (min)",
                             "Satyxis Raider Sea Witch",
                             "Satyxis Raiders (min)",
                             "Satyxis Raider Sea Witch",
                             "Scharde Dirge Seers"
                           ]
                         }
                       },
                       {
                         "name": "Jiri ''Mrzout'' Kares",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-294a4QjFjF4H4H4Hg4g4mVoRjX5e5e5f5fmT___-2a4m4McImRoRmIjXeEmF5q4_mQmj5wmT",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Krueger 2",
                             "Megalith",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Boil Master & Spirit Cauldron",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Pureblood Warpwolf",
                             "Rip Horn Satyr",
                             "Tharn Blood Shaman",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Boil Master & Spirit Cauldron",
                             "Death Wolves",
                             "Tharn Bloodtrackers (max)",
                             "Nuala the Huntress",
                             "Tharn Bloodweavers",
                             "Tharn Bloodweaver Haruspex",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Ludek ''Rhox'' Cerny",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khsh2nlnlnlnlh4h3h3nFhmhmhmhmhn___-2khth2h2nlnlh4h6h3h3hmhmhmhmhr",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Child 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "Tomas ''Andor'' Sedlon",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1pm11U1U1Ume3k3kjCjClRe4l_3C2_3F3Hninini___-1r0JlVlUm0lM1q2_lZlS2v3G3H",
                         "list1": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Crusader",
                             "Crusader",
                             "Crusader",
                             "Hierophant",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Hand of Silence",
                             "Initiate Tristan Durant",
                             "Indictor",
                             "The Covenant of Menoth",
                             "Choir of Menoth (min)",
                             "Idrian Skirmishers (min)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         },
                         "list2": {
                           "theme": "Exemplar Interdiction",
                           "list": [
                             "High Reclaimer 1",
                             "Judicator",
                             "Exemplar Warder",
                             "High Exemplar Gravus",
                             "Scrutator Potentate Severius",
                             "Dervish",
                             "Choir of Menoth (min)",
                             "Exemplar Cinerators (max)",
                             "Exemplar Cinerator Officer",
                             "Exemplar Vengers (max)",
                             "Idrian Skirmishers (max)",
                             "Idrian Skirmisher Chieftain & Guide"
                           ]
                         }
                       },
                       {
                         "name": "Vojtech ''Sirkar'' Medonos",
                         "faction": "Skorne",
                         "cccode": "c9101b_-1s6I6r6r4x6S4Cm_2QoR5U5UhVhV___-2dnb5J5G6voRcvcv6y5U67676h6h",
                         "list1": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Rasheth 1",
                             "Agonizer",
                             "Agonizer",
                             "Basilisk Krea",
                             "Cyclops Raider",
                             "Cyclops Shaman",
                             "Desert Hydra",
                             "Feralgeist",
                             "Hermit of Henge Hold",
                             "Paingiver Beast Handlers (min)",
                             "Paingiver Beast Handlers (min)",
                             "Siege Animantarax",
                             "Siege Animantarax"
                           ]
                         },
                         "list2": {
                           "theme": "Masters of War",
                           "list": [
                             "Makeda 3",
                             "Molik Karn",
                             "Titan Gladiator",
                             "Extoller Soulward",
                             "Hermit of Henge Hold",
                             "Mortitheurge Willbreaker",
                             "Mortitheurge Willbreaker",
                             "Tyrant Rhadeim",
                             "Paingiver Beast Handlers (min)",
                             "Praetorian Ferox (max)",
                             "Praetorian Ferox (max)",
                             "Tyrant Commander & Standard Bearer",
                             "Tyrant Commander & Standard Bearer"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Denmark Ugly Ducklings",
                     "players": [
                       {
                         "name": "Kasper B. Larsen",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1odUhImvhQ3y3y4141oR4L752ympmp___-1Xk-1g43mv9v3y3y3yoR4L4Lmgmgmpmp",
                         "list1": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Issyria 1",
                             "Hemera",
                             "Phoenix",
                             "Fane Knight Guardian",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "House Shyeel Artificer",
                             "Cylena Raefyll & Nyss Hunters (max)",
                             "Dawnguard Destors (min)",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Forges of War",
                           "list": [
                             "Rahn 1",
                             "Chimera",
                             "Discordia",
                             "Phoenix",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Hermit of Henge Hold",
                             "House Shyeel Artificer",
                             "House Shyeel Artificer",
                             "House Shyeel Battle Mages",
                             "House Shyeel Battle Mages",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "Mikkel Mandal",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2jhxnlnlnlnlnFhkhknGhihinEnEhchdnChenC___-2khsh2nlnlnlnlh6h3nFhmhmhmhmhnhr",
                         "list1": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Old Witch 3",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Baron Tonguelick, Lord of Warts",
                             "Cask Imp (2)",
                             "Cask Imp (2)",
                             "Grave Ghoul",
                             "Mad Caps",
                             "Mad Caps",
                             "Malady Man",
                             "Malady Man",
                             "Murder Crows",
                             "Neigh Slayers (min)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Child 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Gorehound",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "PCDP",
                         "faction": "Cygnar",
                         "cccode": "c1101b_-1N8Uax9AakandHaj9be59Hadbz___-1N7Cf6akanaj9cpqadadbz",
                         "list1": {
                           "theme": "Storm Division",
                           "list": [
                             "Haley 2",
                             "Avenger",
                             "Thorn",
                             "Squire",
                             "Captain Arlan Strangewayes",
                             "Gobber Tinker",
                             "Journeyman Warcaster",
                             "Charger",
                             "Lieutenant Allison Jakes",
                             "Stormclad",
                             "Storm Lances (max)",
                             "Storm Strider"
                           ]
                         },
                         "list2": {
                           "theme": "Storm Division",
                           "list": [
                             "Stryker 1",
                             "Hurricane",
                             "Squire",
                             "Captain Arlan Strangewayes",
                             "Journeyman Warcaster",
                             "Firefly",
                             "Sir Dreyfus the Storm Knight",
                             "Storm Lances (max)",
                             "Storm Lances (max)",
                             "Storm Strider"
                           ]
                         }
                       },
                       {
                         "name": "Rasmus Mølbak",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1W0C19191h1h1hkpkroRkqks1Q1Tkxkx1Mke1Nke___-1W0F1h1h1h1he21h1h1hkr2If4kjkfkk1Q1T1Mke",
                         "list1": {
                           "theme": "Scourge of the Broken Coast",
                           "list": [
                             "Asphyxious 1",
                             "Deathripper",
                             "Deathripper",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Satyxis Blood Priestess",
                             "Axiara Wraithblade",
                             "Hermit of Henge Hold",
                             "Misery Cage",
                             "Severa Blacktide",
                             "Satyxis Blood Witches (min)",
                             "Satyxis Blood Hag",
                             "Satyxis Gunslingers",
                             "Satyxis Gunslingers",
                             "Satyxis Raiders (min)",
                             "Satyxis Raider Sea Witch",
                             "Satyxis Raiders (max)",
                             "Satyxis Raider Sea Witch"
                           ]
                         },
                         "list2": {
                           "theme": "Scourge of the Broken Coast",
                           "list": [
                             "Skarre 1",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Aiakos, Scourge of the Meredius",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Axiara Wraithblade",
                             "General Gerlak Slaughterborn",
                             "Swamp Gobber River Raider",
                             "Black Ogrun Ironmongers",
                             "Blighted Trollkin Marauders (min)",
                             "Jussika Bloodtongue",
                             "Satyxis Blood Witches (min)",
                             "Satyxis Blood Hag",
                             "Satyxis Raiders (min)",
                             "Satyxis Raider Sea Witch"
                           ]
                         }
                       },
                       {
                         "name": "Thor Madsen",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2agMmOmOfImImUmUjXmSmj5w___-2a4weeeemDmJmVmVmVoRmImUmMmM4_mQmT",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Una 2",
                             "Storm Raptor",
                             "Storm Raptor",
                             "Bog Trog Mist Speaker",
                             "Lord of the Feast",
                             "Tharn Wolf Rider Champion",
                             "Tharn Wolf Rider Champion",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Mohsar 1",
                             "Argus Moonhound",
                             "Argus Moonhound",
                             "Feral Warpwolf",
                             "Warpwolf Stalker",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Tharn Wolf Rider Champion",
                             "Tharn Blood Pack (max)",
                             "Tharn Blood Pack (max)",
                             "Tharn Bloodweavers",
                             "Tharn Bloodweaver Haruspex",
                             "Well of Orboros"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Denmark: The Brave Tin Soldiers",
                     "players": [
                       {
                         "name": "Gil",
                         "faction": "Khador",
                         "cccode": "c3101b_-1P76f8njl5l4l4l3l3ch7Ml0kQkQ___-1Shz7p7pnjpbno8h8h86nf89nf89nf89nnnnnnch",
                         "list1": {
                           "theme": "Armored Korps",
                           "list": [
                             "Vladimir 1",
                             "Victor",
                             "Greylord Adjunct",
                             "Man-O-War Kovnik",
                             "Man-O-War Strike Tanker",
                             "Man-O-War Strike Tanker",
                             "Man-O-War Suppression Tanker",
                             "Man-O-War Suppression Tanker",
                             "Kayazy Eliminators",
                             "Man-O-War Bombardiers (max)",
                             "Man-O-War Bombardier Officer",
                             "Man-O-War Siege Chariot",
                             "Man-O-War Siege Chariot"
                           ]
                         },
                         "list2": {
                           "theme": "Wolves of Winter",
                           "list": [
                             "Old Witch 2",
                             "Destroyer",
                             "Destroyer",
                             "Greylord Adjunct",
                             "Alexia, Mistress of the Witchfire",
                             "Fenris",
                             "Koldun Lord",
                             "Koldun Lord",
                             "Battle Mechaniks (min)",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Greylord Ternion",
                             "Greylord Ternion",
                             "Greylord Ternion",
                             "Kayazy Eliminators"
                           ]
                         }
                       },
                       {
                         "name": "Henrik",
                         "faction": "Skorne",
                         "cccode": "c9101b_-2cfk6r6r4x5zmZ6un2n2n2ncn3fFn9n1n9n1mBmB___-1snb6r6U4xjg4y4y5J5G6w5V5ShV",
                         "list1": {
                           "theme": "The Exalted",
                           "list": [
                             "Zaal 2",
                             "Agonizer",
                             "Agonizer",
                             "Basilisk Krea",
                             "Rhinodon",
                             "Abidan the Keeper",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Immortal Vessel",
                             "Swamp Gobber Chef",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian",
                             "Supreme Guardian"
                           ]
                         },
                         "list2": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Makeda 3",
                             "Agonizer",
                             "Archidon",
                             "Basilisk Krea",
                             "Boneswarm",
                             "Cyclops Brute",
                             "Cyclops Brute",
                             "Molik Karn",
                             "Titan Gladiator",
                             "Paingiver Bloodrunner Master Tormentor",
                             "Paingiver Beast Handlers (max)",
                             "Paingiver Bloodrunners",
                             "Siege Animantarax"
                           ]
                         }
                       },
                       {
                         "name": "Peter",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2b4ajFjF4H4Hg4g4fImVmVmVoRfFecmO5fmT___-2a4mmKmOoRmUmUmS5fmE5qmj5wmT",
                         "list1": {
                           "theme": "Secret Masters",
                           "list": [
                             "Krueger 2",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Bog Trog Mist Speaker",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Swamp Gobber Chef",
                             "Una the Falconer",
                             "Storm Raptor",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Ghetorix",
                             "Storm Raptor",
                             "Hermit of Henge Hold",
                             "Tharn Wolf Rider Champion",
                             "Tharn Wolf Rider Champion",
                             "Bríghid & Caul",
                             "Shifting Stones",
                             "Tharn Bloodtrackers (min)",
                             "Nuala the Huntress",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Sebastian",
                         "faction": "Legion of Everblight",
                         "cccode": "ca101b_-2hewkHkHkKbvbwaOkBcob9b9fTfT___-2hbskE28kB2-cokGkGkJkJfTfT",
                         "list1": {
                           "theme": "Primal Terrors",
                           "list": [
                             "Absylonia 2",
                             "Carnivean",
                             "Carnivean",
                             "Golab",
                             "Naga Nightlurker",
                             "Proteus",
                             "Seraph",
                             "Ammok the Truthbearer",
                             "Spell Martyr",
                             "The Forsaken",
                             "The Forsaken",
                             "Hellmouth",
                             "Hellmouth"
                           ]
                         },
                         "list2": {
                           "theme": "Primal Terrors",
                           "list": [
                             "Kallus 1",
                             "Blightbringer",
                             "Harrier",
                             "Ammok the Truthbearer",
                             "Gudrun the Wanderer",
                             "Spell Martyr",
                             "Blighted Rotwings (max)",
                             "Blighted Rotwings (max)",
                             "Chosen of Everblight (max)",
                             "Chosen of Everblight (max)",
                             "Hellmouth",
                             "Hellmouth"
                           ]
                         }
                       },
                       {
                         "name": "Søren",
                         "faction": "Crucible Guard",
                         "cccode": "cf101b_-1ulqltlblululvlFlHlHlHlnlblElElElClClk___-1ul9lclF7jlHlmlelglilklkldld",
                         "list1": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Locke 1",
                             "Liberator",
                             "Suppressor",
                             "Toro",
                             "Toro",
                             "Vindicator",
                             "Aurum Ominus Alyce Marc",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Prospero",
                             "Suppressor",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Combat Alchemists",
                             "Combat Alchemists",
                             "Dragon''s Breath Rocket"
                           ]
                         },
                         "list2": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Gearhart 1",
                             "Vulcan",
                             "Aurum Ominus Alyce Marc",
                             "Anastasia di Bray",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Assault Troopers (max)",
                             "Crucible Guard Rocketmen (min)",
                             "Crucible Guard Rocketman Captain",
                             "Rocketman Gunner (2)",
                             "Dragon''s Breath Rocket",
                             "Dragon''s Breath Rocket",
                             "Railless Interceptor",
                             "Railless Interceptor"
                           ]
                         }
                       },
                       {
                         "name": "Michael",
                         "faction": "Convergence of Cyriss",
                         "cccode": "cc101b_-1-d8dndndndndBd4d5d5d9dededzdF___-1Zd2dndndndBd4dEdEdEdEnanHdydqdqdq",
                         "list1": {
                           "theme": "Destruction Initiative",
                           "list": [
                             "Axis 1",
                             "Conservator",
                             "Conservator",
                             "Conservator",
                             "Conservator",
                             "Corollary",
                             "Diffuser",
                             "Galvanizer",
                             "Galvanizer",
                             "Inverter",
                             "Attunement Servitors",
                             "Attunement Servitors",
                             "Optifex Directive",
                             "Transfinite Emergence Projector"
                           ]
                         },
                         "list2": {
                           "theme": "Clockwork Legions",
                           "list": [
                             "Aurora 1",
                             "Conservator",
                             "Conservator",
                             "Conservator",
                             "Corollary",
                             "Diffuser",
                             "Enigma Foundry",
                             "Enigma Foundry",
                             "Enigma Foundry",
                             "Enigma Foundry",
                             "Frustum Locus",
                             "J.A.I.M.s",
                             "Eradicators (max)",
                             "Obstructors (max)",
                             "Obstructors (max)",
                             "Obstructors (max)"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "England Knights",
                     "players": [
                       {
                         "name": "Ben Hampshire",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2jhvnlnlnlnlnFnGhohphinEnEhchdnChenC___-2khth2nlnlnlnlh4h6h3hmhmhmhnhr",
                         "list1": {
                           "theme": "Bump in the Night",
                           "list": [
                             "King of Nothing 1",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Baron Tonguelick, Lord of Warts",
                             "Grave Ghoul",
                             "Lord Longfellow",
                             "Trapperkin",
                             "Mad Caps",
                             "Malady Man",
                             "Malady Man",
                             "Murder Crows",
                             "Neigh Slayers (min)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Skin & Moans",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "Jake Wilstrop",
                         "faction": "Skorne",
                         "cccode": "c9101b_-1snb6r4y4y4y4y5J6NhmoRea4x5G5UhV___-2cfk6rn4mZ6uj6n2n26vncn3n9n1n9n1mB",
                         "list1": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Makeda 3",
                             "Agonizer",
                             "Cyclops Brute",
                             "Cyclops Brute",
                             "Cyclops Brute",
                             "Cyclops Brute",
                             "Molik Karn",
                             "Aptimus Marketh",
                             "Gremlin Swarm",
                             "Hermit of Henge Hold",
                             "Tyrant Zaadesh",
                             "Basilisk Krea",
                             "Titan Gladiator",
                             "Paingiver Beast Handlers (min)",
                             "Siege Animantarax"
                           ]
                         },
                         "list2": {
                           "theme": "The Exalted",
                           "list": [
                             "Zaal 2",
                             "Agonizer",
                             "Mammoth",
                             "Abidan the Keeper",
                             "Ancestral Guardian",
                             "Eilish Garrity, the Occultist",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Extoller Soulward",
                             "Hakaar the Destroyer",
                             "Immortal Vessel",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian"
                           ]
                         }
                       },
                       {
                         "name": "James Sykes",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1pm11qlV3k3kjCjCoLoL3C2_3F3Hninini___-1p0TlVmeoRe4lVoLoL3t2_ninini",
                         "list1": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Dervish",
                             "Judicator",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Menite Archon",
                             "Menite Archon",
                             "The Covenant of Menoth",
                             "Choir of Menoth (min)",
                             "Idrian Skirmishers (min)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         },
                         "list2": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Severius 1",
                             "Judicator",
                             "Hierophant",
                             "Hermit of Henge Hold",
                             "Initiate Tristan Durant",
                             "Judicator",
                             "Menite Archon",
                             "Menite Archon",
                             "Vassal Mechanik",
                             "Choir of Menoth (min)",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         }
                       },
                       {
                         "name": "Mark David",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1XdU1g43mv3yoR4L2w75hMmpmp___-1nnAjsjsjseP9v3y3y3y4141oR4Jf2hTmpmp",
                         "list1": {
                           "theme": "Forges of War",
                           "list": [
                             "Issyria 1",
                             "Chimera",
                             "Discordia",
                             "Phoenix",
                             "Arcanist Mechanik",
                             "Hermit of Henge Hold",
                             "House Shyeel Artificer",
                             "Griffon",
                             "Cylena Raefyll & Nyss Hunters (max)",
                             "House Shyeel Arcanists",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Garryth 2",
                             "Harpy",
                             "Harpy",
                             "Harpy",
                             "Moros",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "Heavy Rifle Team",
                             "House Vyre Electromancers",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "Ryan Longthorne",
                         "faction": "Skorne",
                         "cccode": "c9101b_-2e6I6r4x6S4C6Nn26v6vcvjD5U6WhVhVmB___-2c4r6r6U6UmZ6u6u6un2n2n2ncf4n8n1n9n1n9n1mB",
                         "list1": {
                           "theme": "Winds of Death",
                           "list": [
                             "Rasheth 1",
                             "Agonizer",
                             "Basilisk Krea",
                             "Cyclops Raider",
                             "Cyclops Shaman",
                             "Aptimus Marketh",
                             "Extoller Novitiate",
                             "Extoller Soulward",
                             "Extoller Soulward",
                             "Mortitheurge Willbreaker",
                             "Farrow Valkyries",
                             "Paingiver Beast Handlers (min)",
                             "Venator Slingers (min)",
                             "Siege Animantarax",
                             "Siege Animantarax",
                             "Supreme Guardian"
                           ]
                         },
                         "list2": {
                           "theme": "The Exalted",
                           "list": [
                             "Zaal 1",
                             "Agonizer",
                             "Archidon",
                             "Archidon",
                             "Abidan the Keeper",
                             "Ancestral Guardian",
                             "Ancestral Guardian",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Swamp Gobber River Raider",
                             "Immortals (min)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "England Lions",
                     "players": [
                       {
                         "name": "Brett Wilkie",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-294a4QjGjFjF4H4Hg4g4mVmVmV5e5e5f5fmT___-2a4mmKmO54mUmUjXmS5fmF5qmj5w",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Krueger 2",
                             "Megalith",
                             "Wold Guardian",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Ghetorix",
                             "Storm Raptor",
                             "Tharn Ravager Shaman",
                             "Tharn Wolf Rider Champion",
                             "Tharn Wolf Rider Champion",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Shifting Stones",
                             "Tharn Bloodtrackers (max)",
                             "Nuala the Huntress",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain"
                           ]
                         }
                       },
                       {
                         "name": "Matthew Goligher",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khsh2nlnlnlnlnlh6h3nFhmhmhmhmhn___-2jhvnlnlnlnlnFnGhohphihinEnEhenChenC",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Child 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Gorehound",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose"
                           ]
                         },
                         "list2": {
                           "theme": "Bump in the Night",
                           "list": [
                             "King of Nothing 1",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Baron Tonguelick, Lord of Warts",
                             "Grave Ghoul",
                             "Lord Longfellow",
                             "Trapperkin",
                             "Mad Caps",
                             "Mad Caps",
                             "Malady Man",
                             "Malady Man",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse"
                           ]
                         }
                       },
                       {
                         "name": "Patrick Dunford",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khth2nlnlnlnlh4h6h3hmhmhmhnhr___-2jhxnlnlnlnlnFhknGhphpnEnEhchenChenC",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Skin & Moans",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         },
                         "list2": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Old Witch 3",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Baron Tonguelick, Lord of Warts",
                             "Cask Imp (2)",
                             "Grave Ghoul",
                             "Trapperkin",
                             "Trapperkin",
                             "Malady Man",
                             "Malady Man",
                             "Murder Crows",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse"
                           ]
                         }
                       },
                       {
                         "name": "Paul Watson",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1Fp6lV8fjCjCoR3E8p8poL3z3z3B2_dS___-1pm1lVme3k3kjCjC3EoLoL3C3t3t3B3B2_3F3Hnini",
                         "list1": {
                           "theme": "Warriors of the Old Faith",
                           "list": [
                             "Vladimir 3",
                             "Judicator",
                             "War Dog",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Hermit of Henge Hold",
                             "High Paladin Dartan Vilmon",
                             "Man-O-War Drakhun",
                             "Man-O-War Drakhun",
                             "Menite Archon",
                             "Vassal of Menoth",
                             "Vassal of Menoth",
                             "Wrack",
                             "Choir of Menoth (min)",
                             "Flame Bringers (max)"
                           ]
                         },
                         "list2": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Judicator",
                             "Hierophant",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "High Paladin Dartan Vilmon",
                             "Menite Archon",
                             "Menite Archon",
                             "The Covenant of Menoth",
                             "Vassal Mechanik",
                             "Vassal Mechanik",
                             "Wrack",
                             "Wrack",
                             "Choir of Menoth (min)",
                             "Idrian Skirmishers (min)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         }
                       },
                       {
                         "name": "Simon Battersby",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2amPmD4MmVmI54mUjXmS4_mQmi5wmj5wmT___-2a5vmKmOmVoRmI54jXmSeE5f5fmj5w",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Iona 1",
                             "Feral Warpwolf",
                             "Pureblood Warpwolf",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Tharn Ravager Shaman",
                             "Tharn Wolf Rider Champion",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Tharn Bloodweavers",
                             "Tharn Bloodweaver Haruspex",
                             "Tharn Ravagers (min)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Wurmwood 1",
                             "Ghetorix",
                             "Storm Raptor",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Tharn Ravager Shaman",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Death Wolves",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "England Roses",
                     "players": [
                       {
                         "name": "Andy Garrard",
                         "faction": "Crucible Guard",
                         "cccode": "cf101b_-1ul8ltlululvlvlHlHlHlnlblElElCld___-1ul9lslclFlHlGlElElxlylelglilkld",
                         "list1": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Syvestro 1",
                             "Liberator",
                             "Toro",
                             "Toro",
                             "Vindicator",
                             "Vindicator",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Prospero",
                             "Suppressor",
                             "Trancer",
                             "Trancer",
                             "Combat Alchemists",
                             "Railless Interceptor"
                           ]
                         },
                         "list2": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Gearhart 1",
                             "Retaliator",
                             "Vulcan",
                             "Aurum Ominus Alyce Marc",
                             "Crucible Guard Mechanik",
                             "Rocketman Ace",
                             "Trancer",
                             "Trancer",
                             "Crucible Guard Infantry (max)",
                             "Crucible Guard Infantry Officer & Standard",
                             "Crucible Guard Rocketmen (min)",
                             "Crucible Guard Rocketman Captain",
                             "Rocketman Gunner (2)",
                             "Dragon''s Breath Rocket",
                             "Railless Interceptor"
                           ]
                         }
                       },
                       {
                         "name": "Ben Thomas",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1o0Ggjpmmo313umo313umpmp___-1nnAjsjsmreP9v3y3y4141oRk8hTmpmp",
                         "list1": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Kaelyssa 1",
                             "Helios",
                             "Eiryss, Fortune Hunter of Ios",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Soulless Escort (1)",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Soulless Escort (1)",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Garryth 2",
                             "Harpy",
                             "Harpy",
                             "Hypnos",
                             "Moros",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "Lynus Wesselbaum & Edrea Lloryrr",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "Jacob Graham",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-294qmKjGjG4H4Hg4g45goRjD5e5e5f5fmT___-2a4mmKmOmRmImUjXmS5fmF5qmj5w",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Kromac 1",
                             "Ghetorix",
                             "Wold Guardian",
                             "Wold Guardian",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Blackclad Wayfarer",
                             "Hermit of Henge Hold",
                             "Farrow Valkyries",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Ghetorix",
                             "Storm Raptor",
                             "Tharn Blood Shaman",
                             "Lord of the Feast",
                             "Tharn Wolf Rider Champion",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Shifting Stones",
                             "Tharn Bloodtrackers (max)",
                             "Nuala the Huntress",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain"
                           ]
                         }
                       },
                       {
                         "name": "Jonathan Clarke",
                         "faction": "Khador",
                         "cccode": "c3101b_-1R76kTkTkTnj8t7Z7-7-7X7W7X7Wi6i6___-1SeWkWkTnj8h8hnf89nfnfnhnhnnnn",
                         "list1": {
                           "theme": "Winter Guard Kommand",
                           "list": [
                             "Vladimir 1",
                             "Marauder",
                             "Marauder",
                             "Marauder",
                             "Greylord Adjunct",
                             "Kovnik Jozef Grigorovich",
                             "Winter Guard Field Gun Crew",
                             "Winter Guard Mortar Crew",
                             "Winter Guard Mortar Crew",
                             "Winter Guard Rifle Corps (min)",
                             "Winter Guard Rocketeer (3)",
                             "Winter Guard Rifle Corps (min)",
                             "Winter Guard Rocketeer (3)",
                             "Winter Guard Gun Carriage",
                             "Winter Guard Gun Carriage"
                           ]
                         },
                         "list2": {
                           "theme": "Wolves of Winter",
                           "list": [
                             "Zerkova 2",
                             "Juggernaut",
                             "Marauder",
                             "Greylord Adjunct",
                             "Koldun Lord",
                             "Koldun Lord",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Doom Reaver Swordsmen",
                             "Greylord Outriders (max)",
                             "Greylord Outriders (max)",
                             "Greylord Ternion",
                             "Greylord Ternion"
                           ]
                         }
                       },
                       {
                         "name": "Paul Sheard",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2jhwnlnlnlnlnFhknGoRhohphphinEnEhdnChenC___-2khth2nlnlh4h6h6h7h3h3hmhmhmhmhr",
                         "list1": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Wanderer 1",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Baron Tonguelick, Lord of Warts",
                             "Cask Imp (2)",
                             "Grave Ghoul",
                             "Hermit of Henge Hold",
                             "Lord Longfellow",
                             "Trapperkin",
                             "Trapperkin",
                             "Mad Caps",
                             "Malady Man",
                             "Malady Man",
                             "Neigh Slayers (min)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Gorehound",
                             "Rattler",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "Adam Cort",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-295C4Qcn4H4H4Hg4g4oR5e5e5f5fmT___-2a5vmKmWfrmVfF545ijXmSeE5f5fmMmj5w",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Baldur 2",
                             "Megalith",
                             "Woldwrath",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Hermit of Henge Hold",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Wurmwood 1",
                             "Ghetorix",
                             "Loki",
                             "Bloodweaver Night Witch",
                             "Gallows Grove",
                             "Swamp Gobber Chef",
                             "Tharn Ravager Shaman",
                             "Tharn Ravager White Mane",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Death Wolves",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Tharn Blood Pack (max)",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Finland 1: Sibelius",
                     "players": [
                       {
                         "name": "Antti Jussila",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khsh2nlnlh4h6h6h6h3h3nFhlhlhmhmhmhmhn___-2khth2nlnlh4h6h6h7h3h3hmhmhmhmhr",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Child 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Gorehound",
                             "Gorehound",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Glimmer Imp",
                             "Glimmer Imp",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Gorehound",
                             "Rattler",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "Samu Järvinen",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1r0QlVlUoR2_lZlS2m2v2jfV___-1q0ylV7je4lVlM1U3C3t2_nKm2",
                         "list1": {
                           "theme": "Exemplar Interdiction",
                           "list": [
                             "High Reclaimer 2",
                             "Judicator",
                             "Exemplar Warder",
                             "Hermit of Henge Hold",
                             "Choir of Menoth (min)",
                             "Exemplar Cinerators (max)",
                             "Exemplar Cinerator Officer",
                             "Exemplar Errants (max)",
                             "Exemplar Vengers (max)",
                             "Knights Exemplar",
                             "Knights Exemplar Officer"
                           ]
                         },
                         "list2": {
                           "theme": "The Creator''s Might",
                           "list": [
                             "Kreoss 1",
                             "Judicator",
                             "Anastasia di Bray",
                             "Initiate Tristan Durant",
                             "Judicator",
                             "Scrutator Potentate Severius",
                             "Crusader",
                             "The Covenant of Menoth",
                             "Vassal Mechanik",
                             "Choir of Menoth (min)",
                             "Press Gangers (min)",
                             "Visgoth Juviah Rhoven & Honor Guard"
                           ]
                         }
                       },
                       {
                         "name": "Tatu Purhonen",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-1x404BmCmJmJ5A5goRecmO4T4W___-1x4a4BmCmJmJ5g5goOecmO4T",
                         "list1": {
                           "theme": "The Wild Hunt",
                           "list": [
                             "Krueger 1",
                             "Gorax Rager",
                             "Shadowhorn Satyr",
                             "Warpwolf Stalker",
                             "Warpwolf Stalker",
                             "Druid Wilder",
                             "Blackclad Wayfarer",
                             "Hermit of Henge Hold",
                             "Una the Falconer",
                             "Storm Raptor",
                             "Wolves of Orboros (min)",
                             "Wolves of Orboros Chieftain & Standard"
                           ]
                         },
                         "list2": {
                           "theme": "The Wild Hunt",
                           "list": [
                             "Krueger 2",
                             "Gorax Rager",
                             "Shadowhorn Satyr",
                             "Warpwolf Stalker",
                             "Warpwolf Stalker",
                             "Blackclad Wayfarer",
                             "Blackclad Wayfarer",
                             "Primal Archon",
                             "Una the Falconer",
                             "Storm Raptor",
                             "Wolves of Orboros (min)"
                           ]
                         }
                       },
                       {
                         "name": "Tuomas Toimela",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1T371w19190te2kAhC2n2n2nbF73i01K___-1VeZkA1919jA2DhCoR2k2k2knK203g203g203gbB",
                         "list1": {
                           "theme": "Black Industries",
                           "list": [
                             "Scaverous 1",
                             "Deathjack",
                             "Deathripper",
                             "Deathripper",
                             "The Withershadow Combine",
                             "Aiakos, Scourge of the Meredius",
                             "Barathrum",
                             "Hellslinger Phantom",
                             "Necrotech",
                             "Necrotech",
                             "Necrotech",
                             "Wrong Eye",
                             "Croe''s Cutthroats (max)",
                             "Mechanithralls (min)",
                             "Brute Thrall (3)"
                           ]
                         },
                         "list2": {
                           "theme": "The Ghost Fleet",
                           "list": [
                             "Deneghra 3",
                             "Barathrum",
                             "Deathripper",
                             "Deathripper",
                             "Agrimony, Crone of the Dying Strands",
                             "Captain Rengrave",
                             "Hellslinger Phantom",
                             "Hermit of Henge Hold",
                             "Machine Wraith",
                             "Machine Wraith",
                             "Machine Wraith",
                             "Press Gangers (min)",
                             "Revenant Crew of the Atramentous (min)",
                             "Revenant Crew Rifleman (3)",
                             "Revenant Crew of the Atramentous (min)",
                             "Revenant Crew Rifleman (3)",
                             "Revenant Crew of the Atramentous (min)",
                             "Revenant Crew Rifleman (3)",
                             "Wraith Engine"
                           ]
                         }
                       },
                       {
                         "name": "Ville Jaatinen",
                         "faction": "Skorne",
                         "cccode": "c9101b_-1snb6reF6U6Uji4y5J6N2Qea4x5G5V2N___-2d4r6r6r4x4A6N6u6u6un2n2n2ncoRn3fs666a6hmB",
                         "list1": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Makeda 3",
                             "Agonizer",
                             "Aradus Soldier",
                             "Archidon",
                             "Archidon",
                             "Battle Boar",
                             "Cyclops Brute",
                             "Molik Karn",
                             "Aptimus Marketh",
                             "Feralgeist",
                             "Tyrant Zaadesh",
                             "Basilisk Krea",
                             "Titan Gladiator",
                             "Paingiver Beast Handlers (max)",
                             "Swamp Gobber Bellows Crew"
                           ]
                         },
                         "list2": {
                           "theme": "Masters of War",
                           "list": [
                             "Zaal 1",
                             "Agonizer",
                             "Agonizer",
                             "Basilisk Krea",
                             "Cyclops Savage",
                             "Aptimus Marketh",
                             "Ancestral Guardian",
                             "Ancestral Guardian",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Hermit of Henge Hold",
                             "Immortal Vessel",
                             "Legends of Halaak",
                             "Praetorian Ferox (min)",
                             "Praetorian Karax (max)",
                             "Tyrant Commander & Standard Bearer",
                             "Supreme Guardian"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Finland 2: Lönnrot",
                     "players": [
                       {
                         "name": "Juha Pulkkinen",
                         "faction": "Mercenaries",
                         "cccode": "c6101b_-205pnpnpnpnpnpnS2T7j3W7m7yoIchch8M___-23eneleleleiei2k2k2t2tehehcicjcjnKejnKej",
                         "list1": {
                           "theme": "The Irregulars",
                           "list": [
                             "Magnus 2",
                             "Nomad",
                             "Nomad",
                             "Nomad",
                             "Nomad",
                             "Nomad",
                             "Swabber",
                             "Alten Ashley",
                             "Anastasia di Bray",
                             "Eiryss, Mage Hunter of Ios",
                             "Kell Bailoch",
                             "Orin Midwinter, Rogue Inquisitor",
                             "Ragman",
                             "Kayazy Eliminators",
                             "Kayazy Eliminators",
                             "Lady Aiyana & Master Holt"
                           ]
                         },
                         "list2": {
                           "theme": "Operating Theater",
                           "list": [
                             "Thexus 1",
                             "Warden",
                             "Warden",
                             "Warden",
                             "Cephalyx Agitator",
                             "Cephalyx Agitator",
                             "Machine Wraith",
                             "Machine Wraith",
                             "Pistol Wraith",
                             "Pistol Wraith",
                             "Cephalyx Mind Bender & Drudges (max)",
                             "Cephalyx Mind Bender & Drudges (max)",
                             "Cephalyx Mind Slaver & Drudges (min)",
                             "Cephalyx Mind Slaver & Drudges (max)",
                             "Cephalyx Mind Slaver & Drudges (max)",
                             "Press Gangers (min)",
                             "Cephalyx Dominator",
                             "Press Gangers (min)",
                             "Cephalyx Dominator"
                           ]
                         }
                       },
                       {
                         "name": "Juho Auer",
                         "faction": "Mercenaries",
                         "cccode": "c6101b_-1_8-c79o9o9595bM9i9i9jc7iEiEiE___-20oHnJnJnJnJpb7jbM2-oR4k9j9o708j8M",
                         "list1": {
                           "theme": "Hammer Strike",
                           "list": [
                             "Gorten 1",
                             "Ghordson Avalancher",
                             "Ghordson Basher",
                             "Ghordson Basher",
                             "Wroughthammer Rockram",
                             "Wroughthammer Rockram",
                             "Brun Cragback",
                             "Ogrun Bokur",
                             "Ogrun Bokur",
                             "Thor Steinhammer",
                             "Ghordson Avalancher",
                             "Tactical Arcanist Corps",
                             "Tactical Arcanist Corps",
                             "Tactical Arcanist Corps"
                           ]
                         },
                         "list2": {
                           "theme": "The Irregulars",
                           "list": [
                             "Fiona 1",
                             "Buccaneer",
                             "Buccaneer",
                             "Buccaneer",
                             "Buccaneer",
                             "Alexia, Mistress of the Witchfire",
                             "Anastasia di Bray",
                             "Brun Cragback",
                             "Gudrun the Wanderer",
                             "Hermit of Henge Hold",
                             "Lanyssa Ryssyl, Nyss Sorceress",
                             "Thor Steinhammer",
                             "Ghordson Basher",
                             "Captain Sam MacHorne & the Devil Dogs (max)",
                             "Freebooter",
                             "Lady Aiyana & Master Holt"
                           ]
                         }
                       },
                       {
                         "name": "Pauli Lehtoranta",
                         "faction": "Legion of Everblight",
                         "cccode": "ca101b_-2hkCkEkBkPb6kLb8cskJjDfTfT___-2faEg_aRbqkabraTaUaTaUaY",
                         "list1": {
                           "theme": "Primal Terrors",
                           "list": [
                             "Anamag 1",
                             "Blightbringer",
                             "Ammok the Truthbearer",
                             "Warmonger War Chief",
                             "Blighted Ogrun Warmongers (max)",
                             "Gorag Rotteneye",
                             "Blighted Ogrun Warspears (max)",
                             "Warspear Chieftain",
                             "Chosen of Everblight (max)",
                             "Farrow Valkyries",
                             "Hellmouth",
                             "Hellmouth"
                           ]
                         },
                         "list2": {
                           "theme": "Children of the Dragon",
                           "list": [
                             "Vayl 1",
                             "Azrael",
                             "Typhon",
                             "Annyssa Ryvaal",
                             "Craelix, Fang of Everblight",
                             "Blackfrost Shard",
                             "Blighted Nyss Archers (max)",
                             "Blighted Nyss Archer Officer & Ammo Porter",
                             "Blighted Nyss Archers (max)",
                             "Blighted Nyss Archer Officer & Ammo Porter",
                             "Blighted Nyss Raptors (max)"
                           ]
                         }
                       },
                       {
                         "name": "Pekka Myller",
                         "faction": "Trollbloods",
                         "cccode": "c7101b_-28590r9Djq6Gj20li-iZiZezeziTbKcC___-26j19DiRiRjq6G6G2Q0k0mc80b0c6m",
                         "list1": {
                           "theme": "Storm of the North",
                           "list": [
                             "Grim 1",
                             "Dire Troll Bomber",
                             "Dire Troll Mauler",
                             "Trollkin Runebearer",
                             "Fell Caller Hero",
                             "Valka Curseborn, Chieftain of the North",
                             "Krielstone Bearer & Stone Scribes (max)",
                             "Northkin Elder",
                             "Northkin Bear Handlers & Battle Bears",
                             "Northkin Bear Handlers & Battle Bears",
                             "Northkin Fire Eaters",
                             "Northkin Fire Eaters",
                             "Trollkin Champions (max)",
                             "Skaldi Bonehammer",
                             "Trollkin Sorcerer (1)"
                           ]
                         },
                         "list2": {
                           "theme": "Band of Heroes",
                           "list": [
                             "Kolgrima 1",
                             "Dire Troll Mauler",
                             "Earthborn Dire Troll",
                             "Earthborn Dire Troll",
                             "Trollkin Runebearer",
                             "Fell Caller Hero",
                             "Fell Caller Hero",
                             "Feralgeist",
                             "Krielstone Bearer & Stone Scribes (min)",
                             "Stone Scribe Elder",
                             "Sons of Bragg",
                             "Trollkin Fennblades (max)",
                             "Trollkin Fennblade Officer & Drummer",
                             "Trollkin Long Riders (max)"
                           ]
                         }
                       },
                       {
                         "name": "Tuukka Kallas",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2amPmDmCmI54mUmUjXmS4_mQ4_mQmi5wmj5w___-2a40mDmOmRoRmImSeE2N4_mQ4_mQmT",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Iona 1",
                             "Feral Warpwolf",
                             "Shadowhorn Satyr",
                             "Lord of the Feast",
                             "Tharn Ravager Shaman",
                             "Tharn Wolf Rider Champion",
                             "Tharn Wolf Rider Champion",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Tharn Bloodweavers",
                             "Tharn Bloodweaver Haruspex",
                             "Tharn Bloodweavers",
                             "Tharn Bloodweaver Haruspex",
                             "Tharn Ravagers (min)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Krueger 1",
                             "Feral Warpwolf",
                             "Storm Raptor",
                             "Tharn Blood Shaman",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Bríghid & Caul",
                             "Death Wolves",
                             "Swamp Gobber Bellows Crew",
                             "Tharn Bloodweavers",
                             "Tharn Bloodweaver Haruspex",
                             "Tharn Bloodweavers",
                             "Tharn Bloodweaver Haruspex",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Alternate"
                       }
                     ]
                   },
                   {
                     "name": "France Agecanonix",
                     "players": [
                       {
                         "name": "arc_ange",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1pm1lVme3k3k7jjClRoL3C2_jH2i3F3Hninini___-1re7lVmelUlMm31G1G3t3t3z3z3B2_3F3Hm2",
                         "list1": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Judicator",
                             "Hierophant",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Anastasia di Bray",
                             "Champion of the Order of the Wall",
                             "Hand of Silence",
                             "Menite Archon",
                             "The Covenant of Menoth",
                             "Choir of Menoth (min)",
                             "Holy Zealots (min)",
                             "Monolith Bearer",
                             "Idrian Skirmishers (min)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         },
                         "list2": {
                           "theme": "Exemplar Interdiction",
                           "list": [
                             "Reznik 2",
                             "Judicator",
                             "Hierophant",
                             "Exemplar Warder",
                             "Scrutator Potentate Severius",
                             "Fire of Salvation",
                             "Redeemer",
                             "Redeemer",
                             "Vassal Mechanik",
                             "Vassal Mechanik",
                             "Vassal of Menoth",
                             "Vassal of Menoth",
                             "Wrack",
                             "Choir of Menoth (min)",
                             "Idrian Skirmishers (min)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Visgoth Juviah Rhoven & Honor Guard"
                           ]
                         }
                       },
                       {
                         "name": "JV",
                         "faction": "Skorne",
                         "cccode": "c9101b_-1snb6r4x4y4C5J5G6w5V5ShVhV___-2c4t6r4Cn0mZ6u6un2n2ncn9n1n9n1mBmB",
                         "list1": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Makeda 3",
                             "Agonizer",
                             "Basilisk Krea",
                             "Cyclops Brute",
                             "Cyclops Shaman",
                             "Molik Karn",
                             "Titan Gladiator",
                             "Paingiver Bloodrunner Master Tormentor",
                             "Paingiver Beast Handlers (max)",
                             "Paingiver Bloodrunners",
                             "Siege Animantarax",
                             "Siege Animantarax"
                           ]
                         },
                         "list2": {
                           "theme": "The Exalted",
                           "list": [
                             "Mordikaar 1",
                             "Agonizer",
                             "Cyclops Shaman",
                             "Despoiler",
                             "Abidan the Keeper",
                             "Ancestral Guardian",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian",
                             "Supreme Guardian"
                           ]
                         }
                       },
                       {
                         "name": "Kurogami",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2a4mmKmOmRmVmVmVmIjXmSeE5fmj5wmT___-294a4QjGjFjF4Hg4g45gmVmVmVoR5e5e5f5fmT",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Ghetorix",
                             "Storm Raptor",
                             "Tharn Blood Shaman",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Death Wolves",
                             "Shifting Stones",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Krueger 2",
                             "Megalith",
                             "Wold Guardian",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Blackclad Wayfarer",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Nicoco",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2amPmDmKmVmVmI54jXmS4_mj5wmj5wmT___-2acGeemOmVmVmI54jXeEmMmi5wmj5w",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Iona 1",
                             "Feral Warpwolf",
                             "Ghetorix",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Tharn Ravager Shaman",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Tharn Bloodweavers",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Morvahna 2",
                             "Argus Moonhound",
                             "Storm Raptor",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Tharn Ravager Shaman",
                             "Boil Master & Spirit Cauldron",
                             "Death Wolves",
                             "Tharn Blood Pack (max)",
                             "Tharn Ravagers (min)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain"
                           ]
                         }
                       },
                       {
                         "name": "Shreddinette",
                         "faction": "Legion of Everblight",
                         "cccode": "ca101b_-2igNkKeJeJkNaObekacococob9b9kGb3b4___-2hbskE28kBoRcokGkGkJkJfTfT",
                         "list1": {
                           "theme": "Ravens of War",
                           "list": [
                             "Fyanna 2",
                             "Golab",
                             "Neraph",
                             "Neraph",
                             "Scythean",
                             "Seraph",
                             "Blighted Nyss Sorceress & Hellion",
                             "Craelix, Fang of Everblight",
                             "Spell Martyr",
                             "Spell Martyr",
                             "Spell Martyr",
                             "The Forsaken",
                             "The Forsaken",
                             "Blighted Rotwings (max)",
                             "Strider Scouts",
                             "Strider Scout Officer & Musician"
                           ]
                         },
                         "list2": {
                           "theme": "Primal Terrors",
                           "list": [
                             "Kallus 1",
                             "Blightbringer",
                             "Harrier",
                             "Ammok the Truthbearer",
                             "Hermit of Henge Hold",
                             "Spell Martyr",
                             "Blighted Rotwings (max)",
                             "Blighted Rotwings (max)",
                             "Chosen of Everblight (max)",
                             "Chosen of Everblight (max)",
                             "Hellmouth",
                             "Hellmouth"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "France Obélix",
                     "players": [
                       {
                         "name": "Fabien Cafede",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2jhxh2nlnlnlnFhkhohihinEnEhchdnChenC___-2khth2nlnlnlh4h3h3nFhmhmhmhnhr",
                         "list1": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Old Witch 3",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Baron Tonguelick, Lord of Warts",
                             "Cask Imp (2)",
                             "Lord Longfellow",
                             "Mad Caps",
                             "Mad Caps",
                             "Malady Man",
                             "Malady Man",
                             "Murder Crows",
                             "Neigh Slayers (min)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "Florian Mansuy",
                         "faction": "Skorne",
                         "cccode": "c9101b_-2c4t6r6rn0mZ6un2ncfF6x6xn9n1n9n1mBmB___-1snb6r6r4x4y4y4C5J5GfF5VhVhV",
                         "list1": {
                           "theme": "The Exalted",
                           "list": [
                             "Mordikaar 1",
                             "Agonizer",
                             "Agonizer",
                             "Despoiler",
                             "Abidan the Keeper",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Swamp Gobber Chef",
                             "Void Spirit",
                             "Void Spirit",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian",
                             "Supreme Guardian"
                           ]
                         },
                         "list2": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Makeda 3",
                             "Agonizer",
                             "Agonizer",
                             "Basilisk Krea",
                             "Cyclops Brute",
                             "Cyclops Brute",
                             "Cyclops Shaman",
                             "Molik Karn",
                             "Titan Gladiator",
                             "Swamp Gobber Chef",
                             "Paingiver Beast Handlers (max)",
                             "Siege Animantarax",
                             "Siege Animantarax"
                           ]
                         }
                       },
                       {
                         "name": "Julien Dupoirieux",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1pm1lVme3kjCjClRoL3C3t3t2_3G3Hninini___-1Fp6lVnooR3EoL3t8y2_2ui6i6",
                         "list1": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Judicator",
                             "Hierophant",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Hand of Silence",
                             "Menite Archon",
                             "The Covenant of Menoth",
                             "Vassal Mechanik",
                             "Vassal Mechanik",
                             "Choir of Menoth (min)",
                             "Idrian Skirmishers (max)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         },
                         "list2": {
                           "theme": "Warriors of the Old Faith",
                           "list": [
                             "Vladimir 3",
                             "Judicator",
                             "Fenris",
                             "Hermit of Henge Hold",
                             "High Paladin Dartan Vilmon",
                             "Menite Archon",
                             "Vassal Mechanik",
                             "Yuri the Axe",
                             "Choir of Menoth (min)",
                             "Exemplar Vengers (min)",
                             "Winter Guard Gun Carriage",
                             "Winter Guard Gun Carriage"
                           ]
                         }
                       },
                       {
                         "name": "Kilian Sieutat-Lacaze",
                         "faction": "Crucible Guard",
                         "cccode": "cf101b_-1ul8lblulFoRlElElflglilkiBlDldld___-1ulrlololclF7j7klElElkldld",
                         "list1": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Syvestro 1",
                             "Suppressor",
                             "Toro",
                             "Aurum Ominus Alyce Marc",
                             "Hermit of Henge Hold",
                             "Trancer",
                             "Trancer",
                             "Crucible Guard Rocketmen (max)",
                             "Crucible Guard Rocketman Captain",
                             "Rocketman Gunner (2)",
                             "Dragon''s Breath Rocket",
                             "Steelhead Halberdiers (max)",
                             "Doctor Alejandro Mosby",
                             "Railless Interceptor",
                             "Railless Interceptor"
                           ]
                         },
                         "list2": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Mackay 1",
                             "Vanguard",
                             "Vanguard",
                             "Vulcan",
                             "Aurum Ominus Alyce Marc",
                             "Anastasia di Bray",
                             "Gorman di Wulfe, Rogue Alchemist",
                             "Trancer",
                             "Trancer",
                             "Dragon''s Breath Rocket",
                             "Railless Interceptor",
                             "Railless Interceptor"
                           ]
                         }
                       },
                       {
                         "name": "Thomas Cafede",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-294a4QjGjFjF4H4Hg4g4mVoR5e5e5fmT___-2a4mmKmOmRmVmVmVmIjXmSeE5fmj5wmT",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Krueger 2",
                             "Megalith",
                             "Wold Guardian",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Ghetorix",
                             "Storm Raptor",
                             "Tharn Blood Shaman",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Death Wolves",
                             "Shifting Stones",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "France Panoramix",
                     "players": [
                       {
                         "name": "Tetard",
                         "faction": "Trollbloods",
                         "cccode": "c7101b_-1t59iRc6jqpk6G6Rfg0kj4j3___-28j10rjo04jqpk6G0ki-iZiZezeziTbKcC",
                         "list1": {
                           "theme": "Kriel Company",
                           "list": [
                             "Grim 1",
                             "Earthborn Dire Troll",
                             "Mountain King",
                             "Trollkin Runebearer",
                             "Boomhowler, Solo Artist",
                             "Fell Caller Hero",
                             "Troll Whelps",
                             "Croak Raiders (max)",
                             "Krielstone Bearer & Stone Scribes (min)",
                             "Northkin Raiders (min)",
                             "Hearthgut Hooch Hauler"
                           ]
                         },
                         "list2": {
                           "theme": "Storm of the North",
                           "list": [
                             "Kolgrima 1",
                             "Dire Troll Bomber",
                             "Pyre Troll",
                             "Winter Troll",
                             "Trollkin Runebearer",
                             "Boomhowler, Solo Artist",
                             "Fell Caller Hero",
                             "Krielstone Bearer & Stone Scribes (min)",
                             "Northkin Elder",
                             "Northkin Bear Handlers & Battle Bears",
                             "Northkin Bear Handlers & Battle Bears",
                             "Northkin Fire Eaters",
                             "Northkin Fire Eaters",
                             "Trollkin Champions (max)",
                             "Skaldi Bonehammer",
                             "Trollkin Sorcerer (1)"
                           ]
                         }
                       },
                       {
                         "name": "Trippe",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1Fp6lVnooR3E8poL3t3t8y2_2unii6___-1pm1lVme3kjCjClRoL3C3t3t2_3G3Hninini",
                         "list1": {
                           "theme": "Warriors of the Old Faith",
                           "list": [
                             "Vladimir 3",
                             "Judicator",
                             "Fenris",
                             "Hermit of Henge Hold",
                             "High Paladin Dartan Vilmon",
                             "Man-O-War Drakhun",
                             "Menite Archon",
                             "Vassal Mechanik",
                             "Vassal Mechanik",
                             "Yuri the Axe",
                             "Choir of Menoth (min)",
                             "Exemplar Vengers (min)",
                             "Initiates of the Wall",
                             "Winter Guard Gun Carriage"
                           ]
                         },
                         "list2": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Judicator",
                             "Hierophant",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Hand of Silence",
                             "Menite Archon",
                             "The Covenant of Menoth",
                             "Vassal Mechanik",
                             "Vassal Mechanik",
                             "Choir of Menoth (min)",
                             "Idrian Skirmishers (max)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         }
                       },
                       {
                         "name": "Tza",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khth2h2nlnlh4h6h3h3hmhmhmhmhr___-2jhunlnlnlnFhphph9nEnEhchenChenChh",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Death Knell"
                           ]
                         },
                         "list2": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Heretic 1",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Baron Tonguelick, Lord of Warts",
                             "Trapperkin",
                             "Trapperkin",
                             "Dread Rots (max)",
                             "Malady Man",
                             "Malady Man",
                             "Murder Crows",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Twilight Sisters"
                           ]
                         }
                       },
                       {
                         "name": "Ygemethor",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2a4mmKmOmRmVmVmVmIjXmSeE5fmj5wmT___-294a4QjGjFjF4Hg4g45gmVmVmVoR5e5e5f5fmT",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Ghetorix",
                             "Storm Raptor",
                             "Tharn Blood Shaman",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Death Wolves",
                             "Shifting Stones",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Krueger 2",
                             "Megalith",
                             "Wold Guardian",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Blackclad Wayfarer",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Yvanass",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1ohHhIms3y3y3W41414Lmo313vmo313ump___-1nnA4Ejsjs9v3y3y4141oRf23uf2hTmpmp",
                         "list1": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Goreshade 4",
                             "Hemera",
                             "Imperatus",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Eiryss, Mage Hunter of Ios",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "House Shyeel Artificer",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Soulless Escort (2)",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Soulless Escort (1)",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Garryth 2",
                             "Banshee",
                             "Harpy",
                             "Harpy",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "House Vyre Electromancers",
                             "Soulless Escort (1)",
                             "House Vyre Electromancers",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "Q",
                         "faction": "Skorne",
                         "cccode": "c9101b_-2c3Z6r6Um-6N6un2n26v6vhmncn3n8n9n1n9n1mB___-2enb6r4x4y4y5J6N6v6vn3cv7y5U5UhVhV",
                         "list1": {
                           "theme": "The Exalted",
                           "list": [
                             "Morghoul 2",
                             "Agonizer",
                             "Archidon",
                             "Bronzeback Titan",
                             "Aptimus Marketh",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Extoller Soulward",
                             "Extoller Soulward",
                             "Gremlin Swarm",
                             "Hakaar the Destroyer",
                             "Immortal Vessel",
                             "Immortals (min)",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian"
                           ]
                         },
                         "list2": {
                           "theme": "Winds of Death",
                           "list": [
                             "Makeda 3",
                             "Agonizer",
                             "Basilisk Krea",
                             "Cyclops Brute",
                             "Cyclops Brute",
                             "Molik Karn",
                             "Aptimus Marketh",
                             "Extoller Soulward",
                             "Extoller Soulward",
                             "Immortal Vessel",
                             "Mortitheurge Willbreaker",
                             "Orin Midwinter, Rogue Inquisitor",
                             "Paingiver Beast Handlers (min)",
                             "Paingiver Beast Handlers (min)",
                             "Siege Animantarax",
                             "Siege Animantarax"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Germany Waldkauz",
                     "players": [
                       {
                         "name": "Bernhard Fischer",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-295v4QjGjFjF4H4Hg4g45gmVmVoR5e5e5f5f2N___-2a4wee4M4zmRmVmVmVmIf454mUjXmSeEmMmF5q4_",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Wurmwood 1",
                             "Megalith",
                             "Wold Guardian",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Blackclad Wayfarer",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Swamp Gobber Bellows Crew"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Mohsar 1",
                             "Argus Moonhound",
                             "Pureblood Warpwolf",
                             "Wild Argus",
                             "Tharn Blood Shaman",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Swamp Gobber River Raider",
                             "Tharn Ravager Shaman",
                             "Tharn Wolf Rider Champion",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Death Wolves",
                             "Tharn Blood Pack (max)",
                             "Tharn Bloodtrackers (max)",
                             "Nuala the Huntress",
                             "Tharn Bloodweavers"
                           ]
                         }
                       },
                       {
                         "name": "Christopher Müller",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1pm11U1U3Ume3k3kjCjClRoR3EoL3r3r3C3t2_ninini___-1p171U1U1U1U1U1q1q1q1rme7j3t3t3z3z2_30ninini",
                         "list1": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Crusader",
                             "Crusader",
                             "Sanctifier",
                             "Hierophant",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Hand of Silence",
                             "Hermit of Henge Hold",
                             "High Paladin Dartan Vilmon",
                             "Menite Archon",
                             "Paladin of the Order of the Wall",
                             "Paladin of the Order of the Wall",
                             "The Covenant of Menoth",
                             "Vassal Mechanik",
                             "Choir of Menoth (min)",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         },
                         "list2": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Amon 1",
                             "Crusader",
                             "Crusader",
                             "Crusader",
                             "Crusader",
                             "Crusader",
                             "Dervish",
                             "Dervish",
                             "Dervish",
                             "Devout",
                             "Hierophant",
                             "Anastasia di Bray",
                             "Vassal Mechanik",
                             "Vassal Mechanik",
                             "Vassal of Menoth",
                             "Vassal of Menoth",
                             "Choir of Menoth (min)",
                             "Choir of Menoth (max)",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         }
                       },
                       {
                         "name": "Martin Huf",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2a4mmDmDmRmVmVmVmI54jXeEmF5q4_mj5wmT___-2b4amNmDjFjFg4g4mVmVmVoR575c575c5fmYmT",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Feral Warpwolf",
                             "Feral Warpwolf",
                             "Tharn Blood Shaman",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Tharn Ravager Shaman",
                             "Boil Master & Spirit Cauldron",
                             "Death Wolves",
                             "Tharn Bloodtrackers (max)",
                             "Nuala the Huntress",
                             "Tharn Bloodweavers",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "Secret Masters",
                           "list": [
                             "Krueger 2",
                             "Brennos the Elderhorn",
                             "Feral Warpwolf",
                             "Woldwarden",
                             "Woldwarden",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Druids of Orboros",
                             "Druid of Orboros Overseer",
                             "Druids of Orboros",
                             "Druid of Orboros Overseer",
                             "Shifting Stones",
                             "Stone Keeper",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Michael Groth",
                         "faction": "Skorne",
                         "cccode": "c9101b_-1s6I6r4x6S6S4C4CfIeMeM7y6wfFjD5UhVhV___-2cfk6r4x4y4ymZ6un2ncoRn3n9n1n9n1mBmB",
                         "list1": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Rasheth 1",
                             "Agonizer",
                             "Basilisk Krea",
                             "Cyclops Raider",
                             "Cyclops Raider",
                             "Cyclops Shaman",
                             "Cyclops Shaman",
                             "Bog Trog Mist Speaker",
                             "Efaarit Scouts",
                             "Efaarit Scouts",
                             "Orin Midwinter, Rogue Inquisitor",
                             "Paingiver Bloodrunner Master Tormentor",
                             "Swamp Gobber Chef",
                             "Farrow Valkyries",
                             "Paingiver Beast Handlers (min)",
                             "Siege Animantarax",
                             "Siege Animantarax"
                           ]
                         },
                         "list2": {
                           "theme": "The Exalted",
                           "list": [
                             "Zaal 2",
                             "Agonizer",
                             "Basilisk Krea",
                             "Cyclops Brute",
                             "Cyclops Brute",
                             "Abidan the Keeper",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Hermit of Henge Hold",
                             "Immortal Vessel",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian",
                             "Supreme Guardian"
                           ]
                         }
                       },
                       {
                         "name": "Tobias Matt",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1odUjsjsjsmsmv3y4141oR4Lmo31mp___-1nnA1gjsjsjsjs9v3y3y4141oRf2hTmpmp",
                         "list1": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Issyria 1",
                             "Harpy",
                             "Harpy",
                             "Harpy",
                             "Imperatus",
                             "Phoenix",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "House Shyeel Artificer",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Garryth 2",
                             "Chimera",
                             "Harpy",
                             "Harpy",
                             "Harpy",
                             "Harpy",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "House Vyre Electromancers",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "Alternate"
                       },
                       {
                         "name": "Johannes Brunngräber",
                         "faction": "Infernals",
                         "cccode": "cg101b_-1yo8oboeoaj6oS4ioqoqoqororopofogovogohou___-1z9a9b9b9b9b9biPiPiPiPiPoSororoh",
                         "list1": {
                           "theme": "Dark Legacy",
                           "list": [
                             "Zaateroth 1",
                             "Desolator",
                             "Foreboder",
                             "Tormentor",
                             "Eilish Garrity, the Occultist",
                             "Hermit of Henge Hold",
                             "Saxon Orrik",
                             "The Wretch",
                             "The Wretch",
                             "The Wretch",
                             "Umbral Guardian",
                             "Umbral Guardian",
                             "Valin Hauke, The Fallen Knight",
                             "Cultist Band (min)",
                             "Cultist Band (max)",
                             "Master Preceptor Orin Midwinter",
                             "Cultist Band (max)",
                             "Griever Swarm (min)",
                             "Infernal Gate"
                           ]
                         },
                         "list2": {
                           "theme": "Hearts of Darkness (Cygnar)",
                           "list": [
                             "Sloan 1",
                             "Charger",
                             "Charger",
                             "Charger",
                             "Charger",
                             "Charger",
                             "Hunter",
                             "Hunter",
                             "Hunter",
                             "Hunter",
                             "Hunter",
                             "Hermit of Henge Hold",
                             "Umbral Guardian",
                             "Umbral Guardian",
                             "Griever Swarm (min)"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Germany Waschbär",
                     "players": [
                       {
                         "name": "Ben Beckmann",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1odUhIms3y3y3y3A4141oR4Lmo313umpmp___-1nnA1gjseP9v3y3y3W41414J4Jf2f2hTmpmp",
                         "list1": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Issyria 1",
                             "Hemera",
                             "Imperatus",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Dawnguard Destor Thane",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "House Shyeel Artificer",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Soulless Escort (1)",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Garryth 2",
                             "Chimera",
                             "Harpy",
                             "Moros",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Eiryss, Mage Hunter of Ios",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Heavy Rifle Team",
                             "Heavy Rifle Team",
                             "House Vyre Electromancers",
                             "House Vyre Electromancers",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "Christoph Scholl",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2a5veemOmVoRmI54mUjXmS5f5f4_mi5wmi5w___-294a4QjGjFjF4H4Hg4g4mVmVmV5e5e5f5fmT",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Wurmwood 1",
                             "Argus Moonhound",
                             "Storm Raptor",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Tharn Ravager Shaman",
                             "Tharn Wolf Rider Champion",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Tharn Bloodweavers",
                             "Tharn Ravagers (min)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (min)",
                             "Tharn Ravager Chieftain"
                           ]
                         },
                         "list2": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Krueger 2",
                             "Megalith",
                             "Wold Guardian",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Kevin Ota",
                         "faction": "Cygnar",
                         "cccode": "c1101b_-1Kidawicpbaminieie8May9U9Uioio___-1L91c0icak7jlNf5aj9caenKbz",
                         "list1": {
                           "theme": "Gravediggers",
                           "list": [
                             "Brisbane 2",
                             "Minuteman",
                             "Triumph",
                             "Alexia, Mistress of the Witchfire",
                             "Captain Maxwell Finn",
                             "Commander Anson Hitch",
                             "Trench Buster",
                             "Trench Buster",
                             "Lady Aiyana & Master Holt",
                             "Captain Jonas Murdoch",
                             "Trencher Infantry (max)",
                             "Trencher Infantry (max)",
                             "Trencher Blockhouse",
                             "Trencher Blockhouse"
                           ]
                         },
                         "list2": {
                           "theme": "Heavy Metal",
                           "list": [
                             "Brisbane 1",
                             "Stormwall",
                             "Triumph",
                             "Squire",
                             "Anastasia di Bray",
                             "Journeyman Lieutenant Allister Caine",
                             "Ace",
                             "Journeyman Warcaster",
                             "Firefly",
                             "Field Mechaniks (min)",
                             "Press Gangers (min)",
                             "Storm Strider"
                           ]
                         }
                       },
                       {
                         "name": "Luetzi",
                         "faction": "Skorne",
                         "cccode": "c9101b_-2e6I4x6S4C4C6N6v6vn3n3fFjD5V6p6FhVhV___-2cfk6r4x4y4ymZ6u6vncoRn3n9n1n9n1mBmB",
                         "list1": {
                           "theme": "Winds of Death",
                           "list": [
                             "Rasheth 1",
                             "Basilisk Krea",
                             "Cyclops Raider",
                             "Cyclops Shaman",
                             "Cyclops Shaman",
                             "Aptimus Marketh",
                             "Extoller Soulward",
                             "Extoller Soulward",
                             "Immortal Vessel",
                             "Immortal Vessel",
                             "Swamp Gobber Chef",
                             "Farrow Valkyries",
                             "Paingiver Beast Handlers (max)",
                             "Venator Reivers (max)",
                             "Venator Reiver Officer & Standard",
                             "Siege Animantarax",
                             "Siege Animantarax"
                           ]
                         },
                         "list2": {
                           "theme": "The Exalted",
                           "list": [
                             "Zaal 2",
                             "Agonizer",
                             "Basilisk Krea",
                             "Cyclops Brute",
                             "Cyclops Brute",
                             "Abidan the Keeper",
                             "Ancestral Guardian",
                             "Extoller Soulward",
                             "Hakaar the Destroyer",
                             "Hermit of Henge Hold",
                             "Immortal Vessel",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian",
                             "Supreme Guardian"
                           ]
                         }
                       },
                       {
                         "name": "Sven Dosch",
                         "faction": "Khador",
                         "cccode": "c3101b_-1S77kTnmpb8h8hnf89nf89nf89nfnfnnnnnn___-1m7c7wkWkTkTnjhF7mlOkT8r8y86chch8e",
                         "list1": {
                           "theme": "Wolves of Winter",
                           "list": [
                             "Vladimir 2",
                             "Marauder",
                             "Ruin",
                             "Alexia, Mistress of the Witchfire",
                             "Koldun Lord",
                             "Koldun Lord",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Doom Reaver Swordsmen",
                             "Greylord Ternion",
                             "Greylord Ternion",
                             "Greylord Ternion"
                           ]
                         },
                         "list2": {
                           "theme": "Jaws of the Wolf",
                           "list": [
                             "Strakhov 1",
                             "Behemoth",
                             "Juggernaut",
                             "Marauder",
                             "Marauder",
                             "Greylord Adjunct",
                             "Greylord Forge Seer",
                             "Kell Bailoch",
                             "Kovnik Apprentice Kratikoff",
                             "Marauder",
                             "Widowmaker Marksman",
                             "Yuri the Axe",
                             "Battle Mechaniks (min)",
                             "Kayazy Eliminators",
                             "Kayazy Eliminators",
                             "Widowmaker Scouts"
                           ]
                         }
                       },
                       {
                         "name": "Alternate",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1TbY1v1v1v1v1v1v1v1v2EhC2n2n2noIi01K___-1W0F1h1h1h1he21h1h1hkr2IoI2xks1_kk1Mke",
                         "list1": {
                           "theme": "Black Industries",
                           "list": [
                             "Asphyxious 3",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Darragh Wrathe",
                             "Hellslinger Phantom",
                             "Necrotech",
                             "Necrotech",
                             "Necrotech",
                             "Ragman",
                             "Mechanithralls (min)",
                             "Brute Thrall (3)"
                           ]
                         },
                         "list2": {
                           "theme": "Scourge of the Broken Coast",
                           "list": [
                             "Skarre 1",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Aiakos, Scourge of the Meredius",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Axiara Wraithblade",
                             "General Gerlak Slaughterborn",
                             "Ragman",
                             "Satyxis Raider Captain",
                             "Severa Blacktide",
                             "Bloodgorgers (max)",
                             "Jussika Bloodtongue",
                             "Satyxis Raiders (min)",
                             "Satyxis Raider Sea Witch"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Germany Wildsau",
                     "players": [
                       {
                         "name": "Benjamin Bracht",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2a5vmDmKmVoRmI54mUjXmS5f5f4_mi5wmj5w___-1x5CmDmOjF5AfImVmVmVecmO5f",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Wurmwood 1",
                             "Feral Warpwolf",
                             "Ghetorix",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Tharn Ravager Shaman",
                             "Tharn Wolf Rider Champion",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Tharn Bloodweavers",
                             "Tharn Ravagers (min)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain"
                           ]
                         },
                         "list2": {
                           "theme": "The Wild Hunt",
                           "list": [
                             "Baldur 2",
                             "Feral Warpwolf",
                             "Storm Raptor",
                             "Woldwarden",
                             "Druid Wilder",
                             "Bog Trog Mist Speaker",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Una the Falconer",
                             "Storm Raptor",
                             "Shifting Stones"
                           ]
                         }
                       },
                       {
                         "name": "Florian Platte",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1W0F1h1h1h1he2kw1hkr2InPkfkk1Q1T1Mkeko___-1TbY1v1v1v1v1v1v1v1v2EhC2k2k2n2n2ni01K",
                         "list1": {
                           "theme": "Scourge of the Broken Coast",
                           "list": [
                             "Skarre 1",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Aiakos, Scourge of the Meredius",
                             "Kharybdis",
                             "Stalker",
                             "Axiara Wraithblade",
                             "General Gerlak Slaughterborn",
                             "Powder Monkey",
                             "Blighted Trollkin Marauders (min)",
                             "Jussika Bloodtongue",
                             "Satyxis Blood Witches (min)",
                             "Satyxis Blood Hag",
                             "Satyxis Raiders (min)",
                             "Satyxis Raider Sea Witch",
                             "Scharde Dirge Seers"
                           ]
                         },
                         "list2": {
                           "theme": "Black Industries",
                           "list": [
                             "Asphyxious 3",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Darragh Wrathe",
                             "Hellslinger Phantom",
                             "Machine Wraith",
                             "Machine Wraith",
                             "Necrotech",
                             "Necrotech",
                             "Necrotech",
                             "Mechanithralls (min)",
                             "Brute Thrall (3)"
                           ]
                         }
                       },
                       {
                         "name": "Moritz Riegler",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1XdU43mxmv3y3yoRhM3uhMmpmp___-1nnAjsjsmv9v3y3y3y4141oRf2f2hTmpmp",
                         "list1": {
                           "theme": "Forges of War",
                           "list": [
                             "Issyria 1",
                             "Discordia",
                             "Hyperion",
                             "Phoenix",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Hermit of Henge Hold",
                             "House Shyeel Arcanists",
                             "Soulless Escort (1)",
                             "House Shyeel Arcanists",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Garryth 2",
                             "Harpy",
                             "Harpy",
                             "Phoenix",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "House Vyre Electromancers",
                             "House Vyre Electromancers",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "Robin Maukisch",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2acGmD4MoRmIjXmF5qmj5wmj5wmT___-294a4QjFjF4H4Hg4g4mVmVmV7F5e5e5f5fmT",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Morvahna 2",
                             "Feral Warpwolf",
                             "Pureblood Warpwolf",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Boil Master & Spirit Cauldron",
                             "Tharn Bloodtrackers (max)",
                             "Nuala the Huntress",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Krueger 2",
                             "Megalith",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Rorsh",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Sascha Maisel",
                         "faction": "Skorne",
                         "cccode": "c9101b_-2cfk6r4x4y4ymZ6un2ncoRn3n9n1n9n1mBmB___-2e6I6r4x6S6S4C6v6v7yggjD5U6J6J6WhVhV",
                         "list1": {
                           "theme": "The Exalted",
                           "list": [
                             "Zaal 2",
                             "Agonizer",
                             "Basilisk Krea",
                             "Cyclops Brute",
                             "Cyclops Brute",
                             "Abidan the Keeper",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Hermit of Henge Hold",
                             "Immortal Vessel",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian",
                             "Supreme Guardian"
                           ]
                         },
                         "list2": {
                           "theme": "Winds of Death",
                           "list": [
                             "Rasheth 1",
                             "Agonizer",
                             "Basilisk Krea",
                             "Cyclops Raider",
                             "Cyclops Raider",
                             "Cyclops Shaman",
                             "Extoller Soulward",
                             "Extoller Soulward",
                             "Orin Midwinter, Rogue Inquisitor",
                             "Venator Dakar",
                             "Farrow Valkyries",
                             "Paingiver Beast Handlers (min)",
                             "Venator Flayer Cannon Crew",
                             "Venator Flayer Cannon Crew",
                             "Venator Slingers (min)",
                             "Siege Animantarax",
                             "Siege Animantarax"
                           ]
                         }
                       },
                       {
                         "name": "Alternate",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2jhxnlnlnlh5hknGoRhonEhchenChenChh___-2khth2nlnlh4h6h6h7h3h3hmhmhmhmhr",
                         "list1": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Old Witch 3",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Frightmare",
                             "Cask Imp (2)",
                             "Grave Ghoul",
                             "Hermit of Henge Hold",
                             "Lord Longfellow",
                             "Malady Man",
                             "Murder Crows",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Twilight Sisters"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Gorehound",
                             "Rattler",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "Alternate"
                       }
                     ]
                   },
                   {
                     "name": "Hungary",
                     "players": [
                       {
                         "name": "Dávid Taraszovics",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1U0E1k19191u1hi22Ef0i5nkdWh-h____-1W0I1akwkpkr7k2x2B2Bkj1R1T1Nke1Nke",
                         "list1": {
                           "theme": "Dark Host",
                           "list": [
                             "Asphyxious 2",
                             "Cankerworm",
                             "Deathripper",
                             "Deathripper",
                             "Seether",
                             "Stalker",
                             "Bane Lord Tartarus",
                             "Darragh Wrathe",
                             "Soul Trapper",
                             "Bane Knights (max)",
                             "Bane Knight Officer",
                             "Bane Riders (max)",
                             "Bane Warriors (max)",
                             "Bane Warrior Officer & Standard"
                           ]
                         },
                         "list2": {
                           "theme": "Scourge of the Broken Coast",
                           "list": [
                             "Skarre 2",
                             "Defiler",
                             "Kharybdis",
                             "Satyxis Blood Priestess",
                             "Axiara Wraithblade",
                             "Gorman di Wulfe, Rogue Alchemist",
                             "Satyxis Raider Captain",
                             "Warwitch Siren",
                             "Warwitch Siren",
                             "Black Ogrun Ironmongers",
                             "Satyxis Blood Witches (max)",
                             "Satyxis Blood Hag",
                             "Satyxis Raiders (max)",
                             "Satyxis Raider Sea Witch",
                             "Satyxis Raiders (max)",
                             "Satyxis Raider Sea Witch"
                           ]
                         }
                       },
                       {
                         "name": "Gábor Wolf",
                         "faction": "Khador",
                         "cccode": "c3101b_-1mdI7wkTnmnjhFhFoRlOkV8rch8e___-1S77kXnjh1nohF8hnf89nf89nf89nf89nn",
                         "list1": {
                           "theme": "Jaws of the Wolf",
                           "list": [
                             "Butcher 3",
                             "Behemoth",
                             "Marauder",
                             "Ruin",
                             "Greylord Adjunct",
                             "Greylord Forge Seer",
                             "Greylord Forge Seer",
                             "Hermit of Henge Hold",
                             "Kovnik Apprentice Kratikoff",
                             "Beast 09",
                             "Widowmaker Marksman",
                             "Kayazy Eliminators",
                             "Widowmaker Scouts"
                           ]
                         },
                         "list2": {
                           "theme": "Wolves of Winter",
                           "list": [
                             "Vladimir 2",
                             "Conquest",
                             "Greylord Adjunct",
                             "Colbie Sterling, Captain of the BRI",
                             "Fenris",
                             "Greylord Forge Seer",
                             "Koldun Lord",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Greylord Ternion"
                           ]
                         }
                       },
                       {
                         "name": "Matthew Bunting",
                         "faction": "Skorne",
                         "cccode": "c9101b_-2cnb4y4y4C6NmZ6u6u6un2n2n26vjSncn9n1n9n1mB___-1s3Z6U6U4xjk4C6NfIjSoR7y6L6LjD5VhVhV",
                         "list1": {
                           "theme": "The Exalted",
                           "list": [
                             "Makeda 3",
                             "Cyclops Brute",
                             "Cyclops Brute",
                             "Cyclops Shaman",
                             "Aptimus Marketh",
                             "Abidan the Keeper",
                             "Ancestral Guardian",
                             "Ancestral Guardian",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Extoller Soulward",
                             "Gatorman Husk",
                             "Hakaar the Destroyer",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian"
                           ]
                         },
                         "list2": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Morghoul 2",
                             "Archidon",
                             "Archidon",
                             "Basilisk Krea",
                             "Blind Walker",
                             "Cyclops Shaman",
                             "Aptimus Marketh",
                             "Bog Trog Mist Speaker",
                             "Gatorman Husk",
                             "Hermit of Henge Hold",
                             "Orin Midwinter, Rogue Inquisitor",
                             "Paingiver Task Master",
                             "Paingiver Task Master",
                             "Farrow Valkyries",
                             "Paingiver Beast Handlers (max)",
                             "Siege Animantarax",
                             "Siege Animantarax"
                           ]
                         }
                       },
                       {
                         "name": "Rudolf Edlmayer",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-1x4mee4QjFjEjE4H4H5Ag4g45g5g2QmI5f4TmT___-294qmKjGjG4H4H5Ag4g45g5gmVoR5e5e5fmT",
                         "list1": {
                           "theme": "The Wild Hunt",
                           "list": [
                             "Baldur 1",
                             "Argus Moonhound",
                             "Megalith",
                             "Woldwarden",
                             "Woldwatcher",
                             "Woldwatcher",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Druid Wilder",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Blackclad Wayfarer",
                             "Blackclad Wayfarer",
                             "Feralgeist",
                             "Lord of the Feast",
                             "Shifting Stones",
                             "Wolves of Orboros (min)",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Kromac 1",
                             "Ghetorix",
                             "Wold Guardian",
                             "Wold Guardian",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Druid Wilder",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Blackclad Wayfarer",
                             "Blackclad Wayfarer",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Zoltán Gaál",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2amPmDmJmRfrmI54jXmS4_4_mj5wmj5w___-1x4ajGjF4HmVmVmVoRmIecmOjXeEmT",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Iona 1",
                             "Feral Warpwolf",
                             "Warpwolf Stalker",
                             "Tharn Blood Shaman",
                             "Bloodweaver Night Witch",
                             "Lord of the Feast",
                             "Tharn Ravager Shaman",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Tharn Bloodweavers",
                             "Tharn Bloodweavers",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain"
                           ]
                         },
                         "list2": {
                           "theme": "The Wild Hunt",
                           "list": [
                             "Krueger 2",
                             "Wold Guardian",
                             "Woldwarden",
                             "Woldwyrd",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Una the Falconer",
                             "Storm Raptor",
                             "Boil Master & Spirit Cauldron",
                             "Death Wolves",
                             "Well of Orboros"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Ireland Swift",
                     "players": [
                       {
                         "name": "Charlie Healy",
                         "faction": "Minions",
                         "cccode": "cb101b_-2m0_cwcwcw1d0L0YfC4keN7F0OflhY___-2ncrjNjNjWfIbHbO4k7FfyfFf4f4f4nd4cjX",
                         "list1": {
                           "theme": "The Thornfall Alliance",
                           "list": [
                             "Carver 1",
                             "Razor Boar (2)",
                             "Razor Boar (2)",
                             "Razor Boar (2)",
                             "Road Hog",
                             "War Hog",
                             "Targ",
                             "Hutchuk, Ogrun Bounty Hunter",
                             "Lanyssa Ryssyl, Nyss Sorceress",
                             "Maximus",
                             "Rorsh",
                             "Farrow Brigands (max)",
                             "Farrow Brigand Warlord",
                             "Meat Thresher"
                           ]
                         },
                         "list2": {
                           "theme": "Will Work For Food",
                           "list": [
                             "Rask 1",
                             "Swamp Horror",
                             "Swamp Horror",
                             "Gatorman Soul Slave",
                             "Bog Trog Mist Speaker",
                             "Dahlia Hallyr",
                             "Gatorman Witch Doctor",
                             "Lanyssa Ryssyl, Nyss Sorceress",
                             "Rorsh",
                             "Battle Boar",
                             "Swamp Gobber Chef",
                             "Swamp Gobber River Raider",
                             "Swamp Gobber River Raider",
                             "Swamp Gobber River Raider",
                             "Underchief Mire",
                             "Blackhide Wrastler",
                             "Boil Master & Spirit Cauldron"
                           ]
                         }
                       },
                       {
                         "name": "Ciaran Bolger",
                         "faction": "Skorne",
                         "cccode": "c9101b_-2c4r6r4Cn06N6u6un2n2n2ncn3n9n9n92NmB___-2cfk6r4x6S4C6u6un2n2n2ncoRn9n1n9n1n9n1mB",
                         "list1": {
                           "theme": "The Exalted",
                           "list": [
                             "Zaal 1",
                             "Agonizer",
                             "Cyclops Shaman",
                             "Despoiler",
                             "Aptimus Marketh",
                             "Ancestral Guardian",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Immortal Vessel",
                             "Immortals (max)",
                             "Immortals (max)",
                             "Immortals (max)",
                             "Swamp Gobber Bellows Crew",
                             "Supreme Guardian"
                           ]
                         },
                         "list2": {
                           "theme": "The Exalted",
                           "list": [
                             "Zaal 2",
                             "Agonizer",
                             "Basilisk Krea",
                             "Cyclops Raider",
                             "Cyclops Shaman",
                             "Ancestral Guardian",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Hermit of Henge Hold",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian"
                           ]
                         }
                       },
                       {
                         "name": "Conor Pender",
                         "faction": "Skorne",
                         "cccode": "c9101b_-2d4t6r6U6U4xn0nc6x6x5P6Kfs5UeI6h___-1snb6r6U6U4xji4y5J6z6NfFea5G5U5U5S",
                         "list1": {
                           "theme": "Masters of War",
                           "list": [
                             "Mordikaar 1",
                             "Agonizer",
                             "Archidon",
                             "Archidon",
                             "Basilisk Krea",
                             "Despoiler",
                             "Hakaar the Destroyer",
                             "Void Spirit",
                             "Void Spirit",
                             "Cataphract Cetrati (max)",
                             "Tyrant Vorkesh",
                             "Legends of Halaak",
                             "Paingiver Beast Handlers (min)",
                             "Praetorian Keltarii (max)",
                             "Tyrant Commander & Standard Bearer"
                           ]
                         },
                         "list2": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Makeda 3",
                             "Agonizer",
                             "Archidon",
                             "Archidon",
                             "Basilisk Krea",
                             "Battle Boar",
                             "Cyclops Brute",
                             "Molik Karn",
                             "Razor Worm",
                             "Aptimus Marketh",
                             "Swamp Gobber Chef",
                             "Tyrant Zaadesh",
                             "Titan Gladiator",
                             "Paingiver Beast Handlers (min)",
                             "Paingiver Beast Handlers (min)",
                             "Paingiver Bloodrunners"
                           ]
                         }
                       },
                       {
                         "name": "Jason Jenson",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1T0ZkA191x1v1v1v1vhC2k2kf4i01K1F25___-1W0Fe-1h1h1h1h1h1h1he2kwkrkqkqkqf4ki1Q",
                         "list1": {
                           "theme": "Black Industries",
                           "list": [
                             "Coven 1",
                             "Barathrum",
                             "Deathripper",
                             "Nightmare",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Hellslinger Phantom",
                             "Machine Wraith",
                             "Machine Wraith",
                             "Swamp Gobber River Raider",
                             "Mechanithralls (min)",
                             "Brute Thrall (3)",
                             "Necrosurgeon & Stitch Thralls",
                             "Soulhunters (min)"
                           ]
                         },
                         "list2": {
                           "theme": "Scourge of the Broken Coast",
                           "list": [
                             "Skarre 1",
                             "Shrike",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Aiakos, Scourge of the Meredius",
                             "Kharybdis",
                             "Axiara Wraithblade",
                             "Misery Cage",
                             "Misery Cage",
                             "Misery Cage",
                             "Swamp Gobber River Raider",
                             "Black Ogrun Smog Belchers (max)",
                             "Satyxis Blood Witches (min)"
                           ]
                         }
                       },
                       {
                         "name": "Philip Johnston",
                         "faction": "Mercenaries",
                         "cccode": "c6101b_-205p8j5Xnp5F5I5IlL9l2T7j8Pj64VdHch8Mk8___-225r5X5X9l7jj6e0nSdHpnoI2v2P3RiF",
                         "list1": {
                           "theme": "The Irregulars",
                           "list": [
                             "Magnus 2",
                             "Freebooter",
                             "Mangler",
                             "Nomad",
                             "Renegade",
                             "Talon",
                             "Talon",
                             "Toro",
                             "Madelyn Corbeau, Ordic Courtesan",
                             "Alten Ashley",
                             "Anastasia di Bray",
                             "Dirty Meg",
                             "Eilish Garrity, the Occultist",
                             "Eiryss, Angel of Retribution",
                             "Gobber Tinker",
                             "Kayazy Eliminators",
                             "Lady Aiyana & Master Holt",
                             "Lynus Wesselbaum & Edrea Lloryrr"
                           ]
                         },
                         "list2": {
                           "theme": "Llaelese Resistance",
                           "list": [
                             "Ashlynn 1",
                             "Mangler",
                             "Mangler",
                             "Madelyn Corbeau, Ordic Courtesan",
                             "Anastasia di Bray",
                             "Eilish Garrity, the Occultist",
                             "Gastone Crosse",
                             "Swabber",
                             "Gobber Tinker",
                             "Gorman the Mad",
                             "Ragman",
                             "Exemplar Vengers (max)",
                             "Flameguard Cleansers (max)",
                             "Flameguard Cleanser Officer",
                             "Thorn Gun Mages"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Ireland Wilde",
                     "players": [
                       {
                         "name": "Anthony O’Reilly",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2acG4BmJmJmIfFmUmUjXmSeEmF5qmj5w___-2a4a4BmOmRfImVmVmV54mUmUmF5qmj5wmT",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Morvahna 2",
                             "Gorax Rager",
                             "Warpwolf Stalker",
                             "Warpwolf Stalker",
                             "Lord of the Feast",
                             "Swamp Gobber Chef",
                             "Tharn Wolf Rider Champion",
                             "Tharn Wolf Rider Champion",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Death Wolves",
                             "Tharn Bloodtrackers (max)",
                             "Nuala the Huntress",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Krueger 2",
                             "Gorax Rager",
                             "Storm Raptor",
                             "Tharn Blood Shaman",
                             "Bog Trog Mist Speaker",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Tharn Ravager Shaman",
                             "Tharn Wolf Rider Champion",
                             "Tharn Wolf Rider Champion",
                             "Tharn Bloodtrackers (max)",
                             "Nuala the Huntress",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Cathal Redmond ",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2amP4MmJfrmIfF54mUmUjXmS4_mj5wmj5w___-2a4mmDmKmRmVmVmVmIfFjXmSeE4_mQ4_mj5wmT",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Iona 1",
                             "Pureblood Warpwolf",
                             "Warpwolf Stalker",
                             "Bloodweaver Night Witch",
                             "Lord of the Feast",
                             "Swamp Gobber Chef",
                             "Tharn Ravager Shaman",
                             "Tharn Wolf Rider Champion",
                             "Tharn Wolf Rider Champion",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Tharn Bloodweavers",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Feral Warpwolf",
                             "Ghetorix",
                             "Tharn Blood Shaman",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Swamp Gobber Chef",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Death Wolves",
                             "Tharn Bloodweavers",
                             "Tharn Bloodweaver Haruspex",
                             "Tharn Bloodweavers",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Conor Goulding",
                         "faction": "Crucible Guard",
                         "cccode": "cf101b_-1vlqltlslslululvlFlHlHlHfClnlblElElClC___-1ul8ltlslslulFlHfClElElElElelgljlkiBlDld",
                         "list1": {
                           "theme": "Prima Materia",
                           "list": [
                             "Locke 1",
                             "Liberator",
                             "Retaliator",
                             "Retaliator",
                             "Toro",
                             "Toro",
                             "Vindicator",
                             "Aurum Ominus Alyce Marc",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Hutchuk, Ogrun Bounty Hunter",
                             "Prospero",
                             "Suppressor",
                             "Trancer",
                             "Trancer",
                             "Combat Alchemists",
                             "Combat Alchemists"
                           ]
                         },
                         "list2": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Syvestro 1",
                             "Liberator",
                             "Retaliator",
                             "Retaliator",
                             "Toro",
                             "Aurum Ominus Alyce Marc",
                             "Crucible Guard Mechanik",
                             "Hutchuk, Ogrun Bounty Hunter",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Crucible Guard Rocketmen (min)",
                             "Crucible Guard Rocketman Captain",
                             "Rocketman Gunner (3)",
                             "Dragon''s Breath Rocket",
                             "Steelhead Halberdiers (max)",
                             "Doctor Alejandro Mosby",
                             "Railless Interceptor"
                           ]
                         }
                       },
                       {
                         "name": "Gerry Nolan",
                         "faction": "Khador",
                         "cccode": "c3101b_-1J7bf6oRe5p5oIoJ6ioEoFoEoF___-1R76f8nj8t8rgcgc7R7T7W7S7V7-7X7Wi6",
                         "list1": {
                           "theme": "Flame in the Darkness",
                           "list": [
                             "Zerkova 1",
                             "Hurricane",
                             "Hermit of Henge Hold",
                             "Lieutenant Allison Jakes",
                             "Gallant",
                             "Ragman",
                             "Savio Montero Acosta",
                             "Alexia Ciannor & the Risen",
                             "Precursor Knights (max)",
                             "Precursor Knight Officer & Standard",
                             "Precursor Knights (max)",
                             "Precursor Knight Officer & Standard"
                           ]
                         },
                         "list2": {
                           "theme": "Winter Guard Kommand",
                           "list": [
                             "Vladimir 1",
                             "Victor",
                             "Greylord Adjunct",
                             "Kovnik Jozef Grigorovich",
                             "Widowmaker Marksman",
                             "Winter Guard Artillery Kapitan",
                             "Winter Guard Artillery Kapitan",
                             "Winter Guard Infantry (min)",
                             "Winter Guard Infantry Officer & Standard",
                             "Winter Guard Rocketeer (3)",
                             "Winter Guard Infantry (max)",
                             "Winter Guard Rocketeer (2)",
                             "Winter Guard Mortar Crew",
                             "Winter Guard Rifle Corps (min)",
                             "Winter Guard Rocketeer (3)",
                             "Winter Guard Gun Carriage"
                           ]
                         }
                       },
                       {
                         "name": "Martin Kenny",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khxnlnlh3h3h3nFhmhmhmhmh9nEhr___-2khth2h2nlh4h3h3h3nFhmhmhmhmhr",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Old Witch 3",
                             "Clockatrice",
                             "Clockatrice",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Dread Rots (max)",
                             "Malady Man",
                             "Death Knell"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Cage Rager",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "Alternate",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1ndUmxmxhQ3y3y3y3W4141hTmp___-1ohH1gmshQ3y3y3y3J3J4141mm2Hmo313umo313u",
                         "list1": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Issyria 1",
                             "Hyperion",
                             "Hyperion",
                             "Fane Knight Guardian",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Eiryss, Mage Hunter of Ios",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Goreshade 4",
                             "Chimera",
                             "Imperatus",
                             "Fane Knight Guardian",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Dawnguard Sentinel Scyir",
                             "Dawnguard Sentinel Scyir",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Dawnguard Invictors (max)",
                             "Dawnguard Invictor Officer & Standard",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Soulless Escort (1)",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Soulless Escort (1)"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Italy Luigi",
                     "players": [
                       {
                         "name": "Andrea Cesana",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2a4qmKmJmRoRmI54jXmSmj5wmj5wmT___-295v4QjGjFjF4H4Hg4g45gmVmVoR5e5e5f5f2N",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Kromac 1",
                             "Ghetorix",
                             "Warpwolf Stalker",
                             "Tharn Blood Shaman",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Tharn Ravager Shaman",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Wurmwood 1",
                             "Megalith",
                             "Wold Guardian",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Blackclad Wayfarer",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Swamp Gobber Bellows Crew"
                           ]
                         }
                       },
                       {
                         "name": "Davide Insinna",
                         "faction": "Trollbloods",
                         "cccode": "c7101b_-264X9DiRjq6GcF2Q0k0miTbKcC0b0c0b0c___-28j19DiRjqpk6G6Gj20ki-iZiZezeziTbK",
                         "list1": {
                           "theme": "Band of Heroes",
                           "list": [
                             "Madrak 2",
                             "Dire Troll Mauler",
                             "Earthborn Dire Troll",
                             "Trollkin Runebearer",
                             "Fell Caller Hero",
                             "Fennblade Kithkar",
                             "Feralgeist",
                             "Krielstone Bearer & Stone Scribes (min)",
                             "Stone Scribe Elder",
                             "Trollkin Champions (max)",
                             "Skaldi Bonehammer",
                             "Trollkin Sorcerer (1)",
                             "Trollkin Fennblades (max)",
                             "Trollkin Fennblade Officer & Drummer",
                             "Trollkin Fennblades (max)",
                             "Trollkin Fennblade Officer & Drummer"
                           ]
                         },
                         "list2": {
                           "theme": "Storm of the North",
                           "list": [
                             "Kolgrima 1",
                             "Dire Troll Mauler",
                             "Earthborn Dire Troll",
                             "Trollkin Runebearer",
                             "Boomhowler, Solo Artist",
                             "Fell Caller Hero",
                             "Fell Caller Hero",
                             "Valka Curseborn, Chieftain of the North",
                             "Krielstone Bearer & Stone Scribes (min)",
                             "Northkin Elder",
                             "Northkin Bear Handlers & Battle Bears",
                             "Northkin Bear Handlers & Battle Bears",
                             "Northkin Fire Eaters",
                             "Northkin Fire Eaters",
                             "Trollkin Champions (max)",
                             "Skaldi Bonehammer"
                           ]
                         }
                       },
                       {
                         "name": "Emanuele Lavilla",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2jhxnlnlnlnlnlnFoRnEnEhenChenC___-2khth2h2nlnlh4h6h3h3hmhmhmhmhr",
                         "list1": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Old Witch 3",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Baron Tonguelick, Lord of Warts",
                             "Hermit of Henge Hold",
                             "Malady Man",
                             "Malady Man",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "Samuele Del Borrello",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1Xg01g0v0v0v0v9v3y3yoRhMhMmpmp___-1nnAjsjseP9v3y3y4141oR4J4Jf2f2hTmpmp",
                         "list1": {
                           "theme": "Forges of War",
                           "list": [
                             "Helynna 1",
                             "Chimera",
                             "Manticore",
                             "Manticore",
                             "Manticore",
                             "Manticore",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Hermit of Henge Hold",
                             "House Shyeel Arcanists",
                             "House Shyeel Arcanists",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Garryth 2",
                             "Harpy",
                             "Harpy",
                             "Moros",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "Heavy Rifle Team",
                             "Heavy Rifle Team",
                             "House Vyre Electromancers",
                             "House Vyre Electromancers",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "Vincenzo Rotondo (C)",
                         "faction": "Crucible Guard",
                         "cccode": "cf101b_-1ulpltltlululFlHoRfClElElAlAlklkk8lD___-1ul8lululolFlHoRfClnlclElElkiBlD",
                         "list1": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Lukas 1",
                             "Liberator",
                             "Liberator",
                             "Toro",
                             "Toro",
                             "Aurum Ominus Alyce Marc",
                             "Crucible Guard Mechanik",
                             "Hermit of Henge Hold",
                             "Hutchuk, Ogrun Bounty Hunter",
                             "Trancer",
                             "Trancer",
                             "Crucible Guard Storm Troopers (max)",
                             "Crucible Guard Storm Troopers (max)",
                             "Dragon''s Breath Rocket",
                             "Dragon''s Breath Rocket",
                             "Lynus Wesselbaum & Edrea Lloryrr",
                             "Doctor Alejandro Mosby"
                           ]
                         },
                         "list2": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Syvestro 1",
                             "Toro",
                             "Toro",
                             "Vanguard",
                             "Aurum Ominus Alyce Marc",
                             "Crucible Guard Mechanik",
                             "Hermit of Henge Hold",
                             "Hutchuk, Ogrun Bounty Hunter",
                             "Prospero",
                             "Vulcan",
                             "Trancer",
                             "Trancer",
                             "Dragon''s Breath Rocket",
                             "Steelhead Halberdiers (max)",
                             "Doctor Alejandro Mosby"
                           ]
                         }
                       },
                       {
                         "name": "Giovanni Arrigoni",
                         "faction": "Khador",
                         "cccode": "c3101b_-1GbW1UlVjCjCnooR3E3t3B8y2_2vni___-1S47kS7qnjpbno8h8hnf89nf89nf89nf89nnnn",
                         "list1": {
                           "theme": "Warriors of the Old Faith",
                           "list": [
                             "Vladimir 3",
                             "Crusader",
                             "Judicator",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Fenris",
                             "Hermit of Henge Hold",
                             "High Paladin Dartan Vilmon",
                             "Vassal Mechanik",
                             "Wrack",
                             "Yuri the Axe",
                             "Choir of Menoth (min)",
                             "Exemplar Vengers (max)",
                             "Initiates of the Wall"
                           ]
                         },
                         "list2": {
                           "theme": "Wolves of Winter",
                           "list": [
                             "Sorscha 1",
                             "Decimator",
                             "Devastator",
                             "Greylord Adjunct",
                             "Alexia, Mistress of the Witchfire",
                             "Fenris",
                             "Koldun Lord",
                             "Koldun Lord",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Greylord Ternion",
                             "Greylord Ternion"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Italy Mario",
                     "players": [
                       {
                         "name": "Daniele \"Mirmidone\" Diaspro",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2jhxnlnlnlnlnFj6honEnEhchenChenC___-2khth2nlnlnlnlh4h6h3hmhmhmhnhr",
                         "list1": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Old Witch 3",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Baron Tonguelick, Lord of Warts",
                             "Eilish Garrity, the Occultist",
                             "Lord Longfellow",
                             "Malady Man",
                             "Malady Man",
                             "Murder Crows",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Skin & Moans",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "David \"HugeScrub\" Chandler",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1pm1lVme2e3k3kjCoRoLoL3C3z2_ninini___-1q0ylVlUoRe4221GoLlM1G1G3t30",
                         "list1": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Judicator",
                             "Hierophant",
                             "Avatar of Menoth",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Hermit of Henge Hold",
                             "Menite Archon",
                             "Menite Archon",
                             "The Covenant of Menoth",
                             "Vassal of Menoth",
                             "Choir of Menoth (min)",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         },
                         "list2": {
                           "theme": "The Creator''s Might",
                           "list": [
                             "Kreoss 1",
                             "Judicator",
                             "Exemplar Warder",
                             "Hermit of Henge Hold",
                             "Initiate Tristan Durant",
                             "Reckoner",
                             "Redeemer",
                             "Menite Archon",
                             "Scrutator Potentate Severius",
                             "Redeemer",
                             "Redeemer",
                             "Vassal Mechanik",
                             "Choir of Menoth (max)"
                           ]
                         }
                       },
                       {
                         "name": "Diego \"Calcifer\" Moruzzo",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1pe71UlV3ImejClR3E3t2_3G3Hnini___-1r0AlVl-lUm03t3B2_lXlZlS2jfV2jfV",
                         "list1": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Reznik 2",
                             "Crusader",
                             "Judicator",
                             "Scourge of Heresy",
                             "Hierophant",
                             "Champion of the Order of the Wall",
                             "Hand of Silence",
                             "High Paladin Dartan Vilmon",
                             "Vassal Mechanik",
                             "Choir of Menoth (min)",
                             "Idrian Skirmishers (max)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         },
                         "list2": {
                           "theme": "Exemplar Interdiction",
                           "list": [
                             "Kreoss 2",
                             "Judicator",
                             "Exemplar Bastion Seneschal",
                             "Exemplar Warder",
                             "High Exemplar Gravus",
                             "Vassal Mechanik",
                             "Wrack",
                             "Choir of Menoth (min)",
                             "Exemplar Bastions (max)",
                             "Exemplar Cinerators (max)",
                             "Exemplar Cinerator Officer",
                             "Knights Exemplar",
                             "Knights Exemplar Officer",
                             "Knights Exemplar",
                             "Knights Exemplar Officer"
                           ]
                         }
                       },
                       {
                         "name": "Edoardo \"Finto\" Guarasci",
                         "faction": "Cygnar",
                         "cccode": "c1101b_-1L919b9b9cicakanlNf5e5awbzbz___-1K9a9g9giPiPiPiPiPiP7iamifieiea4igig",
                         "list1": {
                           "theme": "Heavy Metal",
                           "list": [
                             "Brisbane 1",
                             "Charger",
                             "Charger",
                             "Firefly",
                             "Triumph",
                             "Squire",
                             "Captain Arlan Strangewayes",
                             "Journeyman Lieutenant Allister Caine",
                             "Ace",
                             "Lieutenant Allison Jakes",
                             "Minuteman",
                             "Storm Strider",
                             "Storm Strider"
                           ]
                         },
                         "list2": {
                           "theme": "Gravediggers",
                           "list": [
                             "Sloan 1",
                             "Grenadier",
                             "Grenadier",
                             "Hunter",
                             "Hunter",
                             "Hunter",
                             "Hunter",
                             "Hunter",
                             "Hunter",
                             "Reinholdt, Gobber Speculator",
                             "Captain Maxwell Finn",
                             "Patrol Dog",
                             "Trench Buster",
                             "Trench Buster",
                             "Rangers",
                             "Trencher Express Team",
                             "Trencher Express Team"
                           ]
                         }
                       },
                       {
                         "name": "Francesco \"Zap\" Zapelloni",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2a5vmDmJmI545imUjXmS5f5f4_mQmi5wmj5w___-294a4QjGjFjF4H4Hg4g4mVmVmV5e5e5f5fmT",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Wurmwood 1",
                             "Feral Warpwolf",
                             "Warpwolf Stalker",
                             "Lord of the Feast",
                             "Tharn Ravager Shaman",
                             "Tharn Ravager White Mane",
                             "Tharn Wolf Rider Champion",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Tharn Bloodweavers",
                             "Tharn Bloodweaver Haruspex",
                             "Tharn Ravagers (min)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain"
                           ]
                         },
                         "list2": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Krueger 2",
                             "Megalith",
                             "Wold Guardian",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Italy Toad",
                     "players": [
                       {
                         "name": "Andrea Ambrosano",
                         "faction": "Mercenaries",
                         "cccode": "c6101b_-20oHnrlL7ipb4VoR733G3H3G3Hch8M___-1_b_94949494929292929292phpp9iiriEhX",
                         "list1": {
                           "theme": "The Irregulars",
                           "list": [
                             "Fiona 1",
                             "Rover",
                             "Toro",
                             "Reinholdt, Gobber Speculator",
                             "Alexia, Mistress of the Witchfire",
                             "Eiryss, Angel of Retribution",
                             "Hermit of Henge Hold",
                             "Croe''s Cutthroats (max)",
                             "Idrian Skirmishers (max)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Idrian Skirmishers (max)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Kayazy Eliminators",
                             "Lady Aiyana & Master Holt"
                           ]
                         },
                         "list2": {
                           "theme": "Hammer Strike",
                           "list": [
                             "Ossrum 1",
                             "Ghordson Driller",
                             "Ghordson Driller",
                             "Ghordson Driller",
                             "Ghordson Driller",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Balthazar Bamfist",
                             "Harlowe Holdemhigh",
                             "Ogrun Bokur",
                             "Horgenhold Artillery Corps",
                             "Tactical Arcanist Corps",
                             "Hammerfall Siege Crawler"
                           ]
                         }
                       },
                       {
                         "name": "Edoardo Cicognani",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1U0F1h1h1h1h2Ai22of0f0i4nkhZh_hZh_bBbB___-1Wkt1v1v1vkpkr2Iks1-kkkxkx1Nke1Nke",
                         "list1": {
                           "theme": "Dark Host",
                           "list": [
                             "Skarre 1",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Skarlock Thrall",
                             "Bane Lord Tartarus",
                             "Scrap Thrall (3)",
                             "Soul Trapper",
                             "Soul Trapper",
                             "Bane Knights (min)",
                             "Bane Knight Officer",
                             "Bane Warriors (min)",
                             "Bane Warrior Officer & Standard",
                             "Bane Warriors (min)",
                             "Bane Warrior Officer & Standard",
                             "Wraith Engine",
                             "Wraith Engine"
                           ]
                         },
                         "list2": {
                           "theme": "Scourge of the Broken Coast",
                           "list": [
                             "Skarre 3",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Satyxis Blood Priestess",
                             "Axiara Wraithblade",
                             "General Gerlak Slaughterborn",
                             "Severa Blacktide",
                             "Bloodgorgers (min)",
                             "Jussika Bloodtongue",
                             "Satyxis Gunslingers",
                             "Satyxis Gunslingers",
                             "Satyxis Raiders (max)",
                             "Satyxis Raider Sea Witch",
                             "Satyxis Raiders (max)",
                             "Satyxis Raider Sea Witch"
                           ]
                         }
                       },
                       {
                         "name": "Luca D''Andrea",
                         "faction": "Skorne",
                         "cccode": "c9101b_-2c3Z6r6U6A6NmZ6un2n2ncn9n1n9n1n9n1mB___-2cfk6r6rm-6u6un2n2n2ncn3n3fFn9n1n9n1mBmB",
                         "list1": {
                           "theme": "The Exalted",
                           "list": [
                             "Morghoul 2",
                             "Agonizer",
                             "Archidon",
                             "Titan Sentry",
                             "Aptimus Marketh",
                             "Abidan the Keeper",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian"
                           ]
                         },
                         "list2": {
                           "theme": "The Exalted",
                           "list": [
                             "Zaal 2",
                             "Agonizer",
                             "Agonizer",
                             "Bronzeback Titan",
                             "Ancestral Guardian",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Immortal Vessel",
                             "Immortal Vessel",
                             "Swamp Gobber Chef",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian",
                             "Supreme Guardian"
                           ]
                         }
                       },
                       {
                         "name": "Massimiliano Maino",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1r0JlVoRm0lMm32_lZlS3G3H2jfV___-1pm1lV3k3kjCjClR3E3r3C2_3G3Hninini",
                         "list1": {
                           "theme": "Exemplar Interdiction",
                           "list": [
                             "High Reclaimer 1",
                             "Judicator",
                             "Hermit of Henge Hold",
                             "High Exemplar Gravus",
                             "Scrutator Potentate Severius",
                             "Fire of Salvation",
                             "Choir of Menoth (min)",
                             "Exemplar Cinerators (max)",
                             "Exemplar Cinerator Officer",
                             "Idrian Skirmishers (max)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Knights Exemplar",
                             "Knights Exemplar Officer"
                           ]
                         },
                         "list2": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Judicator",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Hand of Silence",
                             "High Paladin Dartan Vilmon",
                             "Paladin of the Order of the Wall",
                             "The Covenant of Menoth",
                             "Choir of Menoth (min)",
                             "Idrian Skirmishers (max)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         }
                       },
                       {
                         "name": "Stefano Calloni",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2amPmOmI545imUmUjXmS4_mj5wmj5w___-2a4mmOoRmI5ijXmF5q4_mj5wmj5w",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Iona 1",
                             "Storm Raptor",
                             "Lord of the Feast",
                             "Tharn Ravager Shaman",
                             "Tharn Ravager White Mane",
                             "Tharn Wolf Rider Champion",
                             "Tharn Wolf Rider Champion",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Tharn Bloodweavers",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Storm Raptor",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Tharn Ravager White Mane",
                             "Boil Master & Spirit Cauldron",
                             "Tharn Bloodtrackers (max)",
                             "Nuala the Huntress",
                             "Tharn Bloodweavers",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Japan Ronin Onigiri",
                     "players": [
                       {
                         "name": "Carlos Sainz",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1T1619d-331v1v0t2n2n2nf0lP1f2B2B73i01K___-1T0F1v1v1h1h2Ae23b3b3h1u3h1u2n2n2n2B2Bi01K",
                         "list1": {
                           "theme": "Black Industries",
                           "list": [
                             "Venethrax 1",
                             "Deathripper",
                             "Inflictor",
                             "Malice",
                             "Slayer",
                             "Slayer",
                             "The Withershadow Combine",
                             "Necrotech",
                             "Necrotech",
                             "Necrotech",
                             "Soul Trapper",
                             "Warwitch Initiate Deneghra",
                             "Nightwretch",
                             "Warwitch Siren",
                             "Warwitch Siren",
                             "Croe''s Cutthroats (max)",
                             "Mechanithralls (min)",
                             "Brute Thrall (3)"
                           ]
                         },
                         "list2": {
                           "theme": "Black Industries",
                           "list": [
                             "Skarre 1",
                             "Slayer",
                             "Slayer",
                             "Stalker",
                             "Stalker",
                             "Skarlock Thrall",
                             "Aiakos, Scourge of the Meredius",
                             "Scavenger",
                             "Scavenger",
                             "Iron Lich Overseer",
                             "Seether",
                             "Iron Lich Overseer",
                             "Seether",
                             "Necrotech",
                             "Necrotech",
                             "Necrotech",
                             "Warwitch Siren",
                             "Warwitch Siren",
                             "Mechanithralls (min)",
                             "Brute Thrall (3)"
                           ]
                         }
                       },
                       {
                         "name": "Daniel McCartney",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2jhunlh3h3nFhknGhoh9nEnEhenChenChh___-2khsh2h2nlnlh4h6h6h3h3nFhmhmhmhmhn",
                         "list1": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Heretic 1",
                             "Clockatrice",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Cask Imp (2)",
                             "Grave Ghoul",
                             "Lord Longfellow",
                             "Dread Rots (max)",
                             "Malady Man",
                             "Malady Man",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Twilight Sisters"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Child 1",
                             "Cage Rager",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Gorehound",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose"
                           ]
                         }
                       },
                       {
                         "name": "Kirill Shulga",
                         "faction": "Skorne",
                         "cccode": "c9101b_-1sgO6r4x4xm-n65G6A6AfF5U2NhV___-2c4bm-5G6u6un2ncn9n1n9n1n9n15UmB",
                         "list1": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Zaadesh 2",
                             "Agonizer",
                             "Basilisk Krea",
                             "Basilisk Krea",
                             "Bronzeback Titan",
                             "Titan Cannoneer",
                             "Titan Gladiator",
                             "Titan Sentry",
                             "Titan Sentry",
                             "Swamp Gobber Chef",
                             "Paingiver Beast Handlers (min)",
                             "Swamp Gobber Bellows Crew",
                             "Siege Animantarax"
                           ]
                         },
                         "list2": {
                           "theme": "The Exalted",
                           "list": [
                             "Xerxis 1",
                             "Bronzeback Titan",
                             "Titan Gladiator",
                             "Ancestral Guardian",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Paingiver Beast Handlers (min)",
                             "Supreme Guardian"
                           ]
                         }
                       },
                       {
                         "name": "Manuel Yasuda",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-1x3TmDcImJ4z4z5A5g2QmVmVmVmI5j5j5jjX5f5f4TmT___-2amXmNmK4I5EmR2QmVmI545imS5f2Nmj5wmT",
                         "list1": {
                           "theme": "The Wild Hunt",
                           "list": [
                             "Kaya 2",
                             "Feral Warpwolf",
                             "Rip Horn Satyr",
                             "Warpwolf Stalker",
                             "Wild Argus",
                             "Wild Argus",
                             "Druid Wilder",
                             "Blackclad Wayfarer",
                             "Feralgeist",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "War Wolf",
                             "War Wolf",
                             "War Wolf",
                             "Boil Master & Spirit Cauldron",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Wolves of Orboros (min)",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Morvahna 1",
                             "Brennos the Elderhorn",
                             "Ghetorix",
                             "Gnarlhorn Satyr",
                             "Winter Argus",
                             "Tharn Blood Shaman",
                             "Feralgeist",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Tharn Ravager Shaman",
                             "Tharn Ravager White Mane",
                             "Bríghid & Caul",
                             "Shifting Stones",
                             "Swamp Gobber Bellows Crew",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Takuya Kimura",
                         "faction": "Convergence of Cyriss",
                         "cccode": "cc101b_-1ZjBd7dBd4dodododog5dCnadcdAdz___-1-d8dndBd5d9d9dej6dfdfdfdgdzdFdF",
                         "list1": {
                           "theme": "Clockwork Legions",
                           "list": [
                             "Orion 1",
                             "Cipher",
                             "Corollary",
                             "Diffuser",
                             "Modulator",
                             "Modulator",
                             "Modulator",
                             "Modulator",
                             "Prime Conflux",
                             "Algorithmic Dispersion Optifex",
                             "Frustum Locus",
                             "Clockwork Angels",
                             "Transverse Enumerator",
                             "Optifex Directive"
                           ]
                         },
                         "list2": {
                           "theme": "Destruction Initiative",
                           "list": [
                             "Axis 1",
                             "Conservator",
                             "Corollary",
                             "Galvanizer",
                             "Inverter",
                             "Inverter",
                             "Attunement Servitors",
                             "Eilish Garrity, the Occultist",
                             "Elimination Servitors",
                             "Elimination Servitors",
                             "Elimination Servitors",
                             "Reflex Servitors",
                             "Optifex Directive",
                             "Transfinite Emergence Projector",
                             "Transfinite Emergence Projector"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Lithuania Combine",
                     "players": [
                       {
                         "name": "Danielius Bubnys",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1XnA1g0v0v0v0veP9v3y3y3ye143hM3uhM___-1odUmsmv3y3y3y3Jjt3Jjt3Wmo313umo31",
                         "list1": {
                           "theme": "Forges of War",
                           "list": [
                             "Garryth 2",
                             "Chimera",
                             "Manticore",
                             "Manticore",
                             "Manticore",
                             "Manticore",
                             "Moros",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Elara, Tyro of the Third Chamber",
                             "Discordia",
                             "House Shyeel Arcanists",
                             "Soulless Escort (1)",
                             "House Shyeel Arcanists"
                           ]
                         },
                         "list2": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Issyria 1",
                             "Imperatus",
                             "Phoenix",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Dawnguard Sentinel Scyir",
                             "Siren",
                             "Dawnguard Sentinel Scyir",
                             "Siren",
                             "Eiryss, Mage Hunter of Ios",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Soulless Escort (1)",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard"
                           ]
                         }
                       },
                       {
                         "name": "Monika Repšytė",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1TbY1f1v1v1v1v1v1v1v1v2n2n2nlP19i01K___-1T161v1v1v1v1v1v1v1v0t2n2n2nlP19i01K",
                         "list1": {
                           "theme": "Black Industries",
                           "list": [
                             "Asphyxious 3",
                             "Nightwretch",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Necrotech",
                             "Necrotech",
                             "Necrotech",
                             "Warwitch Initiate Deneghra",
                             "Deathripper",
                             "Mechanithralls (min)",
                             "Brute Thrall (3)"
                           ]
                         },
                         "list2": {
                           "theme": "Black Industries",
                           "list": [
                             "Venethrax 1",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "The Withershadow Combine",
                             "Necrotech",
                             "Necrotech",
                             "Necrotech",
                             "Warwitch Initiate Deneghra",
                             "Deathripper",
                             "Mechanithralls (min)",
                             "Brute Thrall (3)"
                           ]
                         }
                       },
                       {
                         "name": "Rimantas Černiauskas",
                         "faction": "Trollbloods",
                         "cccode": "c7101b_-264X9DiRjq6G6Moo0l0mc8iTbK0b0ccA___-287e0riUjqfI6Gj2iZiZj5i_j3",
                         "list1": {
                           "theme": "Band of Heroes",
                           "list": [
                             "Madrak 2",
                             "Dire Troll Mauler",
                             "Earthborn Dire Troll",
                             "Trollkin Runebearer",
                             "Fell Caller Hero",
                             "Stone Scribe Chronicler",
                             "Trollkin Skinner",
                             "Krielstone Bearer & Stone Scribes (max)",
                             "Stone Scribe Elder",
                             "Sons of Bragg",
                             "Trollkin Champions (max)",
                             "Skaldi Bonehammer",
                             "Trollkin Fennblades (max)",
                             "Trollkin Fennblade Officer & Drummer",
                             "Trollkin Warders (min)"
                           ]
                         },
                         "list2": {
                           "theme": "Storm of the North",
                           "list": [
                             "Grissel 2",
                             "Dire Troll Bomber",
                             "Rök",
                             "Trollkin Runebearer",
                             "Bog Trog Mist Speaker",
                             "Fell Caller Hero",
                             "Valka Curseborn, Chieftain of the North",
                             "Northkin Bear Handlers & Battle Bears",
                             "Northkin Bear Handlers & Battle Bears",
                             "Northkin Raiders (max)",
                             "Pyg Lookouts (min)",
                             "Hearthgut Hooch Hauler"
                           ]
                         }
                       },
                       {
                         "name": "Rokas Repšys",
                         "faction": "Mercenaries",
                         "cccode": "c6101b_-24b_9o9o9494929292pb3W7knvnwnwnxnsnsiBnunu___-208bnV7jh18j8P8jfCdL8j7B8jchch8Mca",
                         "list1": {
                           "theme": "Soldiers of Fortune",
                           "list": [
                             "Ossrum 1",
                             "Ghordson Basher",
                             "Ghordson Basher",
                             "Ghordson Driller",
                             "Ghordson Driller",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Alexia, Mistress of the Witchfire",
                             "Eiryss, Mage Hunter of Ios",
                             "Gorman di Wulfe, Rogue Alchemist",
                             "Steelhead Arcanist",
                             "Steelhead Gunner",
                             "Steelhead Gunner",
                             "Steelhead Ironhead",
                             "Steelhead Cannon Crew",
                             "Steelhead Cannon Crew",
                             "Steelhead Halberdiers (max)",
                             "Steelhead Volley Gun",
                             "Steelhead Volley Gun"
                           ]
                         },
                         "list2": {
                           "theme": "The Irregulars",
                           "list": [
                             "Shae 1",
                             "Blockader",
                             "Anastasia di Bray",
                             "Colbie Sterling, Captain of the BRI",
                             "Freebooter",
                             "Dirty Meg",
                             "Freebooter",
                             "Hutchuk, Ogrun Bounty Hunter",
                             "Raluk Moorclaw, the Ironmonger",
                             "Freebooter",
                             "Rutger Shaw, Professional Adventurer",
                             "Freebooter",
                             "Kayazy Eliminators",
                             "Kayazy Eliminators",
                             "Lady Aiyana & Master Holt",
                             "The Commodore Cannon & Crew"
                           ]
                         }
                       },
                       {
                         "name": "Valius Vaitkus",
                         "faction": "Khador",
                         "cccode": "c3101b_-1P797pkWl5l4l4l3l3chl27Ml0l7l17Pgd___-1mhzkW7skU7ihF7whFkZe3kTchch",
                         "list1": {
                           "theme": "Armored Korps",
                           "list": [
                             "Irusk 2",
                             "Destroyer",
                             "Juggernaut",
                             "Man-O-War Kovnik",
                             "Man-O-War Strike Tanker",
                             "Man-O-War Strike Tanker",
                             "Man-O-War Suppression Tanker",
                             "Man-O-War Suppression Tanker",
                             "Kayazy Eliminators",
                             "Kommandant Atanas Arconovich & Standard",
                             "Man-O-War Bombardiers (max)",
                             "Man-O-War Bombardier Officer",
                             "Man-O-War Demolition Corps (max)",
                             "Sergeant Dragos Dragadovich",
                             "Man-O-War Shocktroopers (min)",
                             "Man-O-War Shocktrooper Officer"
                           ]
                         },
                         "list2": {
                           "theme": "Jaws of the Wolf",
                           "list": [
                             "Old Witch 2",
                             "Juggernaut",
                             "Kodiak",
                             "Spriggan",
                             "Reinholdt, Gobber Speculator",
                             "Greylord Forge Seer",
                             "Behemoth",
                             "Greylord Forge Seer",
                             "Rager",
                             "Kovnik Andrei Malakov",
                             "Marauder",
                             "Kayazy Eliminators",
                             "Kayazy Eliminators"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Malaysia Tigers",
                     "players": [
                       {
                         "name": "Benjamin See",
                         "faction": "Khador",
                         "cccode": "c3101b_-1S47f8njnohFoR8h8hnf89nf89nf89ngnn___-1GbW1rdZoRoL8x3z3z3B3B8y2_7Ki6i6",
                         "list1": {
                           "theme": "Wolves of Winter",
                           "list": [
                             "Sorscha 1",
                             "Victor",
                             "Greylord Adjunct",
                             "Fenris",
                             "Greylord Forge Seer",
                             "Hermit of Henge Hold",
                             "Koldun Lord",
                             "Koldun Lord",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Greylord Outriders (min)",
                             "Greylord Ternion"
                           ]
                         },
                         "list2": {
                           "theme": "Warriors of the Old Faith",
                           "list": [
                             "Vladimir 3",
                             "Devout",
                             "Grolar",
                             "Hermit of Henge Hold",
                             "Menite Archon",
                             "Uhlan Kovnik Markov",
                             "Vassal of Menoth",
                             "Vassal of Menoth",
                             "Wrack",
                             "Wrack",
                             "Yuri the Axe",
                             "Choir of Menoth (min)",
                             "Iron Fang Uhlans (max)",
                             "Winter Guard Gun Carriage",
                             "Winter Guard Gun Carriage"
                           ]
                         }
                       },
                       {
                         "name": "Collin Hee",
                         "faction": "Crucible Guard",
                         "cccode": "cf101b_-1ul8lulvlFlnlcfilElElElelglkiBlD___-1vlqltltlblulululFlHlHlnlblElElClClk",
                         "list1": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Syvestro 1",
                             "Toro",
                             "Vindicator",
                             "Aurum Ominus Alyce Marc",
                             "Prospero",
                             "Vulcan",
                             "Sergeant Nicolas Verendrye",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Crucible Guard Rocketmen (min)",
                             "Crucible Guard Rocketman Captain",
                             "Dragon''s Breath Rocket",
                             "Steelhead Halberdiers (max)",
                             "Doctor Alejandro Mosby"
                           ]
                         },
                         "list2": {
                           "theme": "Prima Materia",
                           "list": [
                             "Locke 1",
                             "Liberator",
                             "Liberator",
                             "Suppressor",
                             "Toro",
                             "Toro",
                             "Toro",
                             "Aurum Ominus Alyce Marc",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Prospero",
                             "Suppressor",
                             "Trancer",
                             "Trancer",
                             "Combat Alchemists",
                             "Combat Alchemists",
                             "Dragon''s Breath Rocket"
                           ]
                         }
                       },
                       {
                         "name": "Helmi Khairul",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-294a4QjGjFjF4H4Hg4g4mVmVmV5e5e5f5fmT___-2a4mmOmIf4jXmSmF5qmj5wmj5wmT",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Krueger 2",
                             "Megalith",
                             "Wold Guardian",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Storm Raptor",
                             "Lord of the Feast",
                             "Swamp Gobber River Raider",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Tharn Bloodtrackers (max)",
                             "Nuala the Huntress",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Petra Mustafa",
                         "faction": "Skorne",
                         "cccode": "c9101b_-1snb6r6U4xj9j96NfIea5G5UhVhV___-2cfkn46un2n2n26v6vncn9n1n9n1mBmB",
                         "list1": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Makeda 3",
                             "Agonizer",
                             "Archidon",
                             "Basilisk Krea",
                             "War Hog",
                             "War Hog",
                             "Aptimus Marketh",
                             "Bog Trog Mist Speaker",
                             "Tyrant Zaadesh",
                             "Titan Gladiator",
                             "Paingiver Beast Handlers (min)",
                             "Siege Animantarax",
                             "Siege Animantarax"
                           ]
                         },
                         "list2": {
                           "theme": "The Exalted",
                           "list": [
                             "Zaal 2",
                             "Mammoth",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Extoller Soulward",
                             "Extoller Soulward",
                             "Hakaar the Destroyer",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian",
                             "Supreme Guardian"
                           ]
                         }
                       },
                       {
                         "name": "Syafiq Ali",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1pm11UlVme3k3k7jjClRoL3C2_3F3Hninini___-1r0JlV7jm0lM1q2_lYlSlZlS2vm2",
                         "list1": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Crusader",
                             "Judicator",
                             "Hierophant",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Anastasia di Bray",
                             "Champion of the Order of the Wall",
                             "Hand of Silence",
                             "Menite Archon",
                             "The Covenant of Menoth",
                             "Choir of Menoth (min)",
                             "Idrian Skirmishers (min)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         },
                         "list2": {
                           "theme": "Exemplar Interdiction",
                           "list": [
                             "High Reclaimer 1",
                             "Judicator",
                             "Anastasia di Bray",
                             "High Exemplar Gravus",
                             "Scrutator Potentate Severius",
                             "Dervish",
                             "Choir of Menoth (min)",
                             "Exemplar Cinerators (min)",
                             "Exemplar Cinerator Officer",
                             "Exemplar Cinerators (max)",
                             "Exemplar Cinerator Officer",
                             "Exemplar Vengers (max)",
                             "Visgoth Juviah Rhoven & Honor Guard"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Netherlands 1",
                     "players": [
                       {
                         "name": "Casper",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-294a4QjGjFjF4H4Hg4g4oR5e5e5f5fmT___-2a4mmKmOmIfF54jX5fmj5wmj5wmT",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Krueger 2",
                             "Megalith",
                             "Wold Guardian",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Hermit of Henge Hold",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Ghetorix",
                             "Storm Raptor",
                             "Lord of the Feast",
                             "Swamp Gobber Chef",
                             "Tharn Ravager Shaman",
                             "Boil Master & Spirit Cauldron",
                             "Shifting Stones",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Michael",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1p171U1q1q1q1qlV3U3k3k7j3z3z2_2_nini___-1p0ylV3k3k7je4lV3t3t2_3G3Hnini",
                         "list1": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Amon 1",
                             "Crusader",
                             "Dervish",
                             "Dervish",
                             "Dervish",
                             "Dervish",
                             "Judicator",
                             "Sanctifier",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Anastasia di Bray",
                             "Vassal of Menoth",
                             "Vassal of Menoth",
                             "Choir of Menoth (min)",
                             "Choir of Menoth (min)",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         },
                         "list2": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Kreoss 1",
                             "Judicator",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Anastasia di Bray",
                             "Initiate Tristan Durant",
                             "Judicator",
                             "Vassal Mechanik",
                             "Vassal Mechanik",
                             "Choir of Menoth (min)",
                             "Idrian Skirmishers (max)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         }
                       },
                       {
                         "name": "Michiel",
                         "faction": "Trollbloods",
                         "cccode": "c7101b_-28j1iR0404jq6GfF6Oj20li-iZiZezeziTbK___-264Njn9Djq6G6G6M6O0l0miTbKcCiT6l",
                         "list1": {
                           "theme": "Storm of the North",
                           "list": [
                             "Kolgrima 1",
                             "Earthborn Dire Troll",
                             "Winter Troll",
                             "Winter Troll",
                             "Trollkin Runebearer",
                             "Fell Caller Hero",
                             "Swamp Gobber Chef",
                             "Trollkin Champion Hero",
                             "Valka Curseborn, Chieftain of the North",
                             "Krielstone Bearer & Stone Scribes (max)",
                             "Northkin Elder",
                             "Northkin Bear Handlers & Battle Bears",
                             "Northkin Bear Handlers & Battle Bears",
                             "Northkin Fire Eaters",
                             "Northkin Fire Eaters",
                             "Trollkin Champions (max)",
                             "Skaldi Bonehammer"
                           ]
                         },
                         "list2": {
                           "theme": "Band of Heroes",
                           "list": [
                             "Madrak 1",
                             "Dire Troll Brawler",
                             "Dire Troll Mauler",
                             "Trollkin Runebearer",
                             "Fell Caller Hero",
                             "Fell Caller Hero",
                             "Stone Scribe Chronicler",
                             "Trollkin Champion Hero",
                             "Krielstone Bearer & Stone Scribes (max)",
                             "Stone Scribe Elder",
                             "Trollkin Champions (max)",
                             "Skaldi Bonehammer",
                             "Trollkin Sorcerer (1)",
                             "Trollkin Champions (max)",
                             "Trollkin Long Riders (min)"
                           ]
                         }
                       },
                       {
                         "name": "Paul",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1rbVlVmelUm0lM1q2_lZlS2v2jfV___-1pm1lVme2e3k3kjCjCe4l_3t3t2_ninini",
                         "list1": {
                           "theme": "Exemplar Interdiction",
                           "list": [
                             "Kreoss 3",
                             "Judicator",
                             "Hierophant",
                             "Exemplar Warder",
                             "High Exemplar Gravus",
                             "Scrutator Potentate Severius",
                             "Dervish",
                             "Choir of Menoth (min)",
                             "Exemplar Cinerators (max)",
                             "Exemplar Cinerator Officer",
                             "Exemplar Vengers (max)",
                             "Knights Exemplar",
                             "Knights Exemplar Officer"
                           ]
                         },
                         "list2": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Judicator",
                             "Hierophant",
                             "Avatar of Menoth",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Initiate Tristan Durant",
                             "Indictor",
                             "Vassal Mechanik",
                             "Vassal Mechanik",
                             "Choir of Menoth (min)",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         }
                       },
                       {
                         "name": "Vincent",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1W0IkA19c3kroIks1Z1Zkjkjkxko___-1TbY1k191v1v1v1v1v1vhC2k2kf0f4kji01Ki01K",
                         "list1": {
                           "theme": "Scourge of the Broken Coast",
                           "list": [
                             "Skarre 2",
                             "Barathrum",
                             "Deathripper",
                             "Kraken",
                             "Axiara Wraithblade",
                             "Ragman",
                             "Severa Blacktide",
                             "Black Ogrun Boarding Party (max)",
                             "Black Ogrun Boarding Party (max)",
                             "Black Ogrun Ironmongers",
                             "Black Ogrun Ironmongers",
                             "Satyxis Gunslingers",
                             "Scharde Dirge Seers"
                           ]
                         },
                         "list2": {
                           "theme": "Black Industries",
                           "list": [
                             "Asphyxious 3",
                             "Cankerworm",
                             "Deathripper",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Hellslinger Phantom",
                             "Machine Wraith",
                             "Machine Wraith",
                             "Soul Trapper",
                             "Swamp Gobber River Raider",
                             "Black Ogrun Ironmongers",
                             "Mechanithralls (min)",
                             "Brute Thrall (3)",
                             "Mechanithralls (min)",
                             "Brute Thrall (3)"
                           ]
                         }
                       },
                       {
                         "name": "Harm",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1UdTc3i22E2k2k2k2nf4i5nkdWdW___-1U0Fd-1h1h2Ai22E2k2k2k2oi5nkhZh_bBbB",
                         "list1": {
                           "theme": "Dark Host",
                           "list": [
                             "Goreshade 3",
                             "Kraken",
                             "Bane Lord Tartarus",
                             "Darragh Wrathe",
                             "Machine Wraith",
                             "Machine Wraith",
                             "Machine Wraith",
                             "Necrotech",
                             "Swamp Gobber River Raider",
                             "Bane Knights (max)",
                             "Bane Knight Officer",
                             "Bane Riders (max)",
                             "Bane Riders (max)"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Host",
                           "list": [
                             "Skarre 1",
                             "Inflictor",
                             "Stalker",
                             "Stalker",
                             "Skarlock Thrall",
                             "Bane Lord Tartarus",
                             "Darragh Wrathe",
                             "Machine Wraith",
                             "Machine Wraith",
                             "Machine Wraith",
                             "Scrap Thrall (3)",
                             "Bane Knights (max)",
                             "Bane Knight Officer",
                             "Bane Warriors (min)",
                             "Bane Warrior Officer & Standard",
                             "Wraith Engine",
                             "Wraith Engine"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Norway Hugin",
                     "players": [
                       {
                         "name": "Asbjørn Willersrud",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2a4mmKmOmRmVmVmVmIjXmSeE5fmj5wmT___-294a4QjFjFjF4H4Hg4g4mVmVoR5e5e5fmT",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Ghetorix",
                             "Storm Raptor",
                             "Tharn Blood Shaman",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Death Wolves",
                             "Shifting Stones",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Krueger 2",
                             "Megalith",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Hans Kjenes",
                         "faction": "Skorne",
                         "cccode": "c9101b_-1sey6U6U4xm_jS6w6wfF5U5UhVhV___-2cfk6rn4mZ6un2n26vncoRn3n9n1n9n1mB",
                         "list1": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Xerxis 2",
                             "Archidon",
                             "Archidon",
                             "Basilisk Krea",
                             "Desert Hydra",
                             "Gatorman Husk",
                             "Paingiver Bloodrunner Master Tormentor",
                             "Paingiver Bloodrunner Master Tormentor",
                             "Swamp Gobber Chef",
                             "Paingiver Beast Handlers (min)",
                             "Paingiver Beast Handlers (min)",
                             "Siege Animantarax",
                             "Siege Animantarax"
                           ]
                         },
                         "list2": {
                           "theme": "The Exalted",
                           "list": [
                             "Zaal 2",
                             "Agonizer",
                             "Mammoth",
                             "Abidan the Keeper",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Extoller Soulward",
                             "Hakaar the Destroyer",
                             "Hermit of Henge Hold",
                             "Immortal Vessel",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian"
                           ]
                         }
                       },
                       {
                         "name": "Jonas Brand",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1W0I19c3e2kwkrkqks2B1Q1Tkx1Mkeko___-1W0F1h1h1h1he21h1h1h1h2I2x2xks2B2B1Q1Tkxko",
                         "list1": {
                           "theme": "Scourge of the Broken Coast",
                           "list": [
                             "Skarre 2",
                             "Deathripper",
                             "Kraken",
                             "Aiakos, Scourge of the Meredius",
                             "Kharybdis",
                             "Axiara Wraithblade",
                             "Misery Cage",
                             "Severa Blacktide",
                             "Warwitch Siren",
                             "Satyxis Blood Witches (min)",
                             "Satyxis Blood Hag",
                             "Satyxis Gunslingers",
                             "Satyxis Raiders (min)",
                             "Satyxis Raider Sea Witch",
                             "Scharde Dirge Seers"
                           ]
                         },
                         "list2": {
                           "theme": "Scourge of the Broken Coast",
                           "list": [
                             "Skarre 1",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Aiakos, Scourge of the Meredius",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "General Gerlak Slaughterborn",
                             "Satyxis Raider Captain",
                             "Satyxis Raider Captain",
                             "Severa Blacktide",
                             "Warwitch Siren",
                             "Warwitch Siren",
                             "Satyxis Blood Witches (min)",
                             "Satyxis Blood Hag",
                             "Satyxis Gunslingers",
                             "Scharde Dirge Seers"
                           ]
                         }
                       },
                       {
                         "name": "Lars Hjelen",
                         "faction": "Crucible Guard",
                         "cccode": "cf101b_-1vlrlulululolFlnlclElElElElC___-1ul8ltlslblFoRlnlslElElElElkiBlDldld",
                         "list1": {
                           "theme": "Prima Materia",
                           "list": [
                             "Mackay 1",
                             "Toro",
                             "Toro",
                             "Toro",
                             "Vanguard",
                             "Aurum Ominus Alyce Marc",
                             "Prospero",
                             "Vulcan",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Combat Alchemists"
                           ]
                         },
                         "list2": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Syvestro 1",
                             "Liberator",
                             "Retaliator",
                             "Suppressor",
                             "Aurum Ominus Alyce Marc",
                             "Hermit of Henge Hold",
                             "Prospero",
                             "Retaliator",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Dragon''s Breath Rocket",
                             "Steelhead Halberdiers (max)",
                             "Doctor Alejandro Mosby",
                             "Railless Interceptor",
                             "Railless Interceptor"
                           ]
                         }
                       },
                       {
                         "name": "Sindre Kjølvang",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khth2nlnlnlnlh4h6h3nFhmhmhmhr___-2jhsnlnlnlnlnlh3h3nFhphpnEhc",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Death Knell"
                           ]
                         },
                         "list2": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Child 1",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Trapperkin",
                             "Trapperkin",
                             "Malady Man",
                             "Murder Crows"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Norway Munin",
                     "players": [
                       {
                         "name": "Christian",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1plT1q1q3Ume2e3k3kjCjClRoLoL3C3B2_ninini___-1Fp6lVjCjCnolRoR3E8poLoL8y2_ni",
                         "list1": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Cyrenia 1",
                             "Dervish",
                             "Dervish",
                             "Sanctifier",
                             "Hierophant",
                             "Avatar of Menoth",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Hand of Silence",
                             "Menite Archon",
                             "Menite Archon",
                             "The Covenant of Menoth",
                             "Wrack",
                             "Choir of Menoth (min)",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         },
                         "list2": {
                           "theme": "Warriors of the Old Faith",
                           "list": [
                             "Vladimir 3",
                             "Judicator",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Fenris",
                             "Hand of Silence",
                             "Hermit of Henge Hold",
                             "High Paladin Dartan Vilmon",
                             "Man-O-War Drakhun",
                             "Menite Archon",
                             "Menite Archon",
                             "Yuri the Axe",
                             "Choir of Menoth (min)",
                             "Initiates of the Wall"
                           ]
                         }
                       },
                       {
                         "name": "Juan",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khth2nlnlnlnlh4h3hmhmhmhmoRhnhr___-2khsh2nlnlnlnlnlh4h6nFhmhmhmhmoRhnnE",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Skin & Moans",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Hermit of Henge Hold",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Child 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Hermit of Henge Hold",
                             "Lady Karianna Rose",
                             "Malady Man"
                           ]
                         }
                       },
                       {
                         "name": "Kuba",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1q0ylVlUlUk9oRoLoLlM1G1G3t2_nKm2___-1pm11U1U1U3Ume3k3kjCjClRoLoL3C3t3t2_ninini",
                         "list1": {
                           "theme": "The Creator''s Might",
                           "list": [
                             "Kreoss 1",
                             "Judicator",
                             "Exemplar Warder",
                             "Exemplar Warder",
                             "Exemplar Warder Elias Gade",
                             "Hermit of Henge Hold",
                             "Menite Archon",
                             "Menite Archon",
                             "Scrutator Potentate Severius",
                             "Redeemer",
                             "Redeemer",
                             "Vassal Mechanik",
                             "Choir of Menoth (min)",
                             "Press Gangers (min)",
                             "Visgoth Juviah Rhoven & Honor Guard"
                           ]
                         },
                         "list2": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Crusader",
                             "Crusader",
                             "Crusader",
                             "Sanctifier",
                             "Hierophant",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Hand of Silence",
                             "Menite Archon",
                             "Menite Archon",
                             "The Covenant of Menoth",
                             "Vassal Mechanik",
                             "Vassal Mechanik",
                             "Choir of Menoth (min)",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         }
                       },
                       {
                         "name": "Martin",
                         "faction": "Legion of Everblight",
                         "cccode": "ca101b_-2iewkK282828282828eJbwaO2929292929oRb9fTfT___-2hbskEkBcocob5kLkFkGkJkJfTfT",
                         "list1": {
                           "theme": "Ravens of War",
                           "list": [
                             "Absylonia 2",
                             "Golab",
                             "Harrier",
                             "Harrier",
                             "Harrier",
                             "Harrier",
                             "Harrier",
                             "Harrier",
                             "Neraph",
                             "Proteus",
                             "Seraph",
                             "Shredder",
                             "Shredder",
                             "Shredder",
                             "Shredder",
                             "Shredder",
                             "Hermit of Henge Hold",
                             "The Forsaken",
                             "Hellmouth",
                             "Hellmouth"
                           ]
                         },
                         "list2": {
                           "theme": "Primal Terrors",
                           "list": [
                             "Kallus 1",
                             "Blightbringer",
                             "Ammok the Truthbearer",
                             "Spell Martyr",
                             "Spell Martyr",
                             "Blighted Ogrun Warmongers (min)",
                             "Gorag Rotteneye",
                             "Blighted Rotwings (min)",
                             "Blighted Rotwings (max)",
                             "Chosen of Everblight (max)",
                             "Chosen of Everblight (max)",
                             "Hellmouth",
                             "Hellmouth"
                           ]
                         }
                       },
                       {
                         "name": "Sverre",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1nnA4EjsjseP9v3y3y3W3L41414Jf23uhTmp___-1odU1gmsmv3y3y4141oR4Lmo313umpmp",
                         "list1": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Garryth 2",
                             "Banshee",
                             "Harpy",
                             "Harpy",
                             "Moros",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Eiryss, Mage Hunter of Ios",
                             "Fane Knight Skeryth Issyen",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Heavy Rifle Team",
                             "House Vyre Electromancers",
                             "Soulless Escort (1)",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Issyria 1",
                             "Chimera",
                             "Imperatus",
                             "Phoenix",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "House Shyeel Artificer",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Soulless Escort (1)",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Norway Sleipner",
                     "players": [
                       {
                         "name": "Geir Vedeld",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1pm11U1U1U3Ume3k3kjClRoL3C3t3t30nininilQ___-1q0ylV7jlUe4lVoLoLlM1G2_",
                         "list1": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Crusader",
                             "Crusader",
                             "Crusader",
                             "Sanctifier",
                             "Hierophant",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Hand of Silence",
                             "Menite Archon",
                             "The Covenant of Menoth",
                             "Vassal Mechanik",
                             "Vassal Mechanik",
                             "Choir of Menoth (max)",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Shrine of the Lawgiver"
                           ]
                         },
                         "list2": {
                           "theme": "The Creator''s Might",
                           "list": [
                             "Kreoss 1",
                             "Judicator",
                             "Anastasia di Bray",
                             "Exemplar Warder",
                             "Initiate Tristan Durant",
                             "Judicator",
                             "Menite Archon",
                             "Menite Archon",
                             "Scrutator Potentate Severius",
                             "Redeemer",
                             "Choir of Menoth (min)"
                           ]
                         }
                       },
                       {
                         "name": "Jan Endre Pettersen",
                         "faction": "Khador",
                         "cccode": "c3101b_-1Pk_7s7s7snjl5l4l4l3l387l2l7l17Qgd___-1S47kS7qnjpbno8h8hnf89nf89nf89nf89nnnn",
                         "list1": {
                           "theme": "Armored Korps",
                           "list": [
                             "Sorscha 3",
                             "Kodiak",
                             "Kodiak",
                             "Kodiak",
                             "Greylord Adjunct",
                             "Man-O-War Kovnik",
                             "Man-O-War Strike Tanker",
                             "Man-O-War Strike Tanker",
                             "Man-O-War Suppression Tanker",
                             "Man-O-War Suppression Tanker",
                             "Battle Mechaniks (max)",
                             "Kommandant Atanas Arconovich & Standard",
                             "Man-O-War Demolition Corps (max)",
                             "Sergeant Dragos Dragadovich",
                             "Man-O-War Shocktroopers (max)",
                             "Man-O-War Shocktrooper Officer"
                           ]
                         },
                         "list2": {
                           "theme": "Wolves of Winter",
                           "list": [
                             "Sorscha 1",
                             "Decimator",
                             "Devastator",
                             "Greylord Adjunct",
                             "Alexia, Mistress of the Witchfire",
                             "Fenris",
                             "Koldun Lord",
                             "Koldun Lord",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Greylord Ternion",
                             "Greylord Ternion"
                           ]
                         }
                       },
                       {
                         "name": "Lars Erik Gulberg",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2a4mmOmJmVmVmVmIeEjO5f4_mj5wmT___-294a4QjFjFjF4H4Hg4g4mVmVoR5e5e5fmT",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Storm Raptor",
                             "Warpwolf Stalker",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Death Wolves",
                             "Gatorman Bokor & Bog Trog Swamp Shamblers",
                             "Shifting Stones",
                             "Tharn Bloodweavers",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Krueger 2",
                             "Megalith",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Stian Engebretsen",
                         "faction": "Legion of Everblight",
                         "cccode": "ca101b_-2hkCkE28kBcocofFb6kLkFkJkJfTfT___-2iewkK28282828eJbwaO29292929oRcob9kFfTfT",
                         "list1": {
                           "theme": "Primal Terrors",
                           "list": [
                             "Anamag 1",
                             "Blightbringer",
                             "Harrier",
                             "Ammok the Truthbearer",
                             "Spell Martyr",
                             "Spell Martyr",
                             "Swamp Gobber Chef",
                             "Blighted Ogrun Warmongers (max)",
                             "Gorag Rotteneye",
                             "Blighted Rotwings (min)",
                             "Chosen of Everblight (max)",
                             "Chosen of Everblight (max)",
                             "Hellmouth",
                             "Hellmouth"
                           ]
                         },
                         "list2": {
                           "theme": "Ravens of War",
                           "list": [
                             "Absylonia 2",
                             "Golab",
                             "Harrier",
                             "Harrier",
                             "Harrier",
                             "Harrier",
                             "Neraph",
                             "Proteus",
                             "Seraph",
                             "Shredder",
                             "Shredder",
                             "Shredder",
                             "Shredder",
                             "Hermit of Henge Hold",
                             "Spell Martyr",
                             "The Forsaken",
                             "Blighted Rotwings (min)",
                             "Hellmouth",
                             "Hellmouth"
                           ]
                         }
                       },
                       {
                         "name": "Øystein Berg",
                         "faction": "Mercenaries",
                         "cccode": "c6101b_-20oHlLlLlLe0nS7m733G3Hchch8M___-1_b_94949292phpp9inwnwiriripiphXhX",
                         "list1": {
                           "theme": "The Irregulars",
                           "list": [
                             "Fiona 1",
                             "Toro",
                             "Toro",
                             "Toro",
                             "Gastone Crosse",
                             "Swabber",
                             "Kell Bailoch",
                             "Croe''s Cutthroats (max)",
                             "Idrian Skirmishers (max)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Kayazy Eliminators",
                             "Kayazy Eliminators",
                             "Lady Aiyana & Master Holt"
                           ]
                         },
                         "list2": {
                           "theme": "Hammer Strike",
                           "list": [
                             "Ossrum 1",
                             "Ghordson Driller",
                             "Ghordson Driller",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Balthazar Bamfist",
                             "Harlowe Holdemhigh",
                             "Ogrun Bokur",
                             "Steelhead Gunner",
                             "Steelhead Gunner",
                             "Horgenhold Artillery Corps",
                             "Horgenhold Artillery Corps",
                             "Horgenhold Forge Guard (min)",
                             "Horgenhold Forge Guard (min)",
                             "Hammerfall Siege Crawler",
                             "Hammerfall Siege Crawler"
                           ]
                         }
                       },
                       {
                         "name": "Lars Einar Brandshaug",
                         "faction": "Infernals",
                         "cccode": "cg101b_-1yo7ocococoaoaoS4ioqoqoqororopogoyovogou___-1z9a9b9biPiPiPiPiPawawoqororaeoi",
                         "list1": {
                           "theme": "Dark Legacy",
                           "list": [
                             "Omodamos 1",
                             "Lamenter",
                             "Lamenter",
                             "Lamenter",
                             "Tormentor",
                             "Tormentor",
                             "Hermit of Henge Hold",
                             "Saxon Orrik",
                             "The Wretch",
                             "The Wretch",
                             "The Wretch",
                             "Umbral Guardian",
                             "Umbral Guardian",
                             "Valin Hauke, The Fallen Knight",
                             "Cultist Band (max)",
                             "Dark Sentinel (3)",
                             "Master Preceptor Orin Midwinter",
                             "Cultist Band (max)",
                             "Infernal Gate"
                           ]
                         },
                         "list2": {
                           "theme": "Hearts of Darkness (Cygnar)",
                           "list": [
                             "Sloan 1",
                             "Charger",
                             "Charger",
                             "Hunter",
                             "Hunter",
                             "Hunter",
                             "Hunter",
                             "Hunter",
                             "Minuteman",
                             "Minuteman",
                             "The Wretch",
                             "Umbral Guardian",
                             "Umbral Guardian",
                             "Field Mechaniks (min)",
                             "Griever Swarm (max)"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Poland Centrum",
                     "players": [
                       {
                         "name": "Karol Sosnowski",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2jhxnlnlh4nFhknGnGoRh8h8hinEhchenChenC___-2khsh2nlnlnlnlh4h6h3nFhmhmhnhr",
                         "list1": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Old Witch 3",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Baron Tonguelick, Lord of Warts",
                             "Cask Imp (2)",
                             "Grave Ghoul",
                             "Grave Ghoul",
                             "Hermit of Henge Hold",
                             "Dread Rots (min)",
                             "Dread Rots (min)",
                             "Mad Caps",
                             "Malady Man",
                             "Murder Crows",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Child 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "Konrad Sosnowski",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2a4amOmOmVmVmVoRmImUmSeE5fmT___-2bgM4B5H5H5H5H5HmO5gmVmVmVoRgo5f",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Krueger 2",
                             "Storm Raptor",
                             "Storm Raptor",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Tharn Wolf Rider Champion",
                             "Bríghid & Caul",
                             "Death Wolves",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "Secret Masters",
                           "list": [
                             "Una 2",
                             "Gorax Rager",
                             "Scarsfell Griffon",
                             "Scarsfell Griffon",
                             "Scarsfell Griffon",
                             "Scarsfell Griffon",
                             "Scarsfell Griffon",
                             "Storm Raptor",
                             "Blackclad Wayfarer",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Druid Mist Riders (max)",
                             "Shifting Stones"
                           ]
                         }
                       },
                       {
                         "name": "Pawel Blados",
                         "faction": "Skorne",
                         "cccode": "c9101b_-2cfk6r4Cm_mZ6un2ncn3n3n9n1n9n1mB___-2cgO6r4xn0mZ6u6un2n2ncn9n1n9n1n9n1mB",
                         "list1": {
                           "theme": "The Exalted",
                           "list": [
                             "Zaal 2",
                             "Agonizer",
                             "Cyclops Shaman",
                             "Desert Hydra",
                             "Abidan the Keeper",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Immortal Vessel",
                             "Immortal Vessel",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian"
                           ]
                         },
                         "list2": {
                           "theme": "The Exalted",
                           "list": [
                             "Zaadesh 2",
                             "Agonizer",
                             "Basilisk Krea",
                             "Despoiler",
                             "Abidan the Keeper",
                             "Ancestral Guardian",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian"
                           ]
                         }
                       },
                       {
                         "name": "Piotr Palacz",
                         "faction": "Cygnar",
                         "cccode": "c1101b_-1L919b9bicak7jlNf5aj9c6ibzbz___-1L8U9B9H9AakanoRlN9J6ibz",
                         "list1": {
                           "theme": "Heavy Metal",
                           "list": [
                             "Brisbane 1",
                             "Charger",
                             "Charger",
                             "Triumph",
                             "Squire",
                             "Anastasia di Bray",
                             "Journeyman Lieutenant Allister Caine",
                             "Ace",
                             "Journeyman Warcaster",
                             "Firefly",
                             "Alexia Ciannor & the Risen",
                             "Storm Strider",
                             "Storm Strider"
                           ]
                         },
                         "list2": {
                           "theme": "Heavy Metal",
                           "list": [
                             "Haley 2",
                             "Centurion",
                             "Stormclad",
                             "Thorn",
                             "Squire",
                             "Captain Arlan Strangewayes",
                             "Hermit of Henge Hold",
                             "Journeyman Lieutenant Allister Caine",
                             "Thunderhead",
                             "Alexia Ciannor & the Risen",
                             "Storm Strider"
                           ]
                         }
                       },
                       {
                         "name": "Tomasz Tutaj",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1O0JlVoL3Sf72_2MdR2O3R2K2L2K2L___-1pm11U1U1q2e3kjCjCoR3EoLoL3C3z2_ninini",
                         "list1": {
                           "theme": "Guardians of the Temple",
                           "list": [
                             "High Reclaimer 1",
                             "Judicator",
                             "Menite Archon",
                             "Nicia, Tear of Vengeance",
                             "Pyrrhus, Flameguard Hero",
                             "Choir of Menoth (min)",
                             "Daughters of the Flame",
                             "Flame Bringers (min)",
                             "Flameguard Cleansers (min)",
                             "Flameguard Cleanser Officer",
                             "Temple Flameguard (max)",
                             "Temple Flameguard Officer & Standard",
                             "Temple Flameguard (max)",
                             "Temple Flameguard Officer & Standard"
                           ]
                         },
                         "list2": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Crusader",
                             "Crusader",
                             "Dervish",
                             "Avatar of Menoth",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Hermit of Henge Hold",
                             "High Paladin Dartan Vilmon",
                             "Menite Archon",
                             "Menite Archon",
                             "The Covenant of Menoth",
                             "Vassal of Menoth",
                             "Choir of Menoth (min)",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         }
                       },
                       {
                         "name": "Alternate"
                       },
                       {
                         "name": "Mateusz Dziewanowski",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-295v4QjFjFjF4H4Hg4g4mVmVmVoR0V5e5e5f5f___-2a5CmKmOmRmVmVmVoRmIjXeE5fmj5wmT",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Wurmwood 1",
                             "Megalith",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Farrow Bone Grinders (max)",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 2",
                             "Ghetorix",
                             "Storm Raptor",
                             "Tharn Blood Shaman",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Boil Master & Spirit Cauldron",
                             "Death Wolves",
                             "Shifting Stones",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Poland South",
                     "players": [
                       {
                         "name": "Artur Rietz",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2amPeemOmVmVmVmIf454jX4_mj5wmj5wmT___-294qmKjGjG4H4Hg4g4mVmVoRjD5e5e5f5fmT",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Iona 1",
                             "Argus Moonhound",
                             "Storm Raptor",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Swamp Gobber River Raider",
                             "Tharn Ravager Shaman",
                             "Boil Master & Spirit Cauldron",
                             "Tharn Bloodweavers",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Kromac 1",
                             "Ghetorix",
                             "Wold Guardian",
                             "Wold Guardian",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Farrow Valkyries",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Marcin Mycek",
                         "faction": "Mercenaries",
                         "cccode": "c6101b_-205pnV5IlLlLpb7j3WppoRpr3F3Hchch___-2582nVnV5I5InNnPnPnPf4f4nKnKkoca",
                         "list1": {
                           "theme": "The Irregulars",
                           "list": [
                             "Magnus 2",
                             "Blockader",
                             "Talon",
                             "Toro",
                             "Toro",
                             "Alexia, Mistress of the Witchfire",
                             "Anastasia di Bray",
                             "Eiryss, Mage Hunter of Ios",
                             "Harlowe Holdemhigh",
                             "Hermit of Henge Hold",
                             "Widget, Tinker Extraordinaire",
                             "Idrian Skirmishers (min)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Kayazy Eliminators",
                             "Kayazy Eliminators"
                           ]
                         },
                         "list2": {
                           "theme": "Talion Charter",
                           "list": [
                             "Montador 1",
                             "Blockader",
                             "Blockader",
                             "Talon",
                             "Talon",
                             "First Mate Hawk",
                             "Powder Monkey",
                             "Powder Monkey",
                             "Powder Monkey",
                             "Swamp Gobber River Raider",
                             "Swamp Gobber River Raider",
                             "Press Gangers (min)",
                             "Press Gangers (min)",
                             "Scharde Dirge Seers",
                             "The Commodore Cannon & Crew"
                           ]
                         }
                       },
                       {
                         "name": "Pawel Kruk",
                         "faction": "Crucible Guard",
                         "cccode": "cf101b_-1vlqltlululolclFlHlHlHlnlolElElElk___-1ul8ltlblvlFoRfClElElElklkiBlDldld",
                         "list1": {
                           "theme": "Prima Materia",
                           "list": [
                             "Locke 1",
                             "Liberator",
                             "Toro",
                             "Toro",
                             "Vanguard",
                             "Vulcan",
                             "Aurum Ominus Alyce Marc",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Prospero",
                             "Vanguard",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Dragon''s Breath Rocket"
                           ]
                         },
                         "list2": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Syvestro 1",
                             "Liberator",
                             "Suppressor",
                             "Vindicator",
                             "Aurum Ominus Alyce Marc",
                             "Hermit of Henge Hold",
                             "Hutchuk, Ogrun Bounty Hunter",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Dragon''s Breath Rocket",
                             "Dragon''s Breath Rocket",
                             "Steelhead Halberdiers (max)",
                             "Doctor Alejandro Mosby",
                             "Railless Interceptor",
                             "Railless Interceptor"
                           ]
                         }
                       },
                       {
                         "name": "Tomasz Mucha",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2a4mmKmOmRmVmVmVmIjXmSeE5fmj5wmT___-294a4QjFjFjF4H4Hg4g4mVoR5e5e5f5fmT",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Ghetorix",
                             "Storm Raptor",
                             "Tharn Blood Shaman",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Death Wolves",
                             "Shifting Stones",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Krueger 2",
                             "Megalith",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Tomasz Okolski",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2jhxnlnlnlnlnFhknGhonEnEhchenChenC___-2khsh2nlnlnlnlh4h6h3nFhmhmhmhmhr",
                         "list1": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Old Witch 3",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Baron Tonguelick, Lord of Warts",
                             "Cask Imp (2)",
                             "Grave Ghoul",
                             "Lord Longfellow",
                             "Malady Man",
                             "Malady Man",
                             "Murder Crows",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Child 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "Mateusz Dziewanowski",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2a5CmKmOmRmVmVmVoRmIjXeE5fmj5wmT___-295v4QjFjFjF4H4Hg4g4mVmVmVoR0V5e5e5f5f",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 2",
                             "Ghetorix",
                             "Storm Raptor",
                             "Tharn Blood Shaman",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Boil Master & Spirit Cauldron",
                             "Death Wolves",
                             "Shifting Stones",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Wurmwood 1",
                             "Megalith",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Farrow Bone Grinders (max)",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Poland West",
                     "players": [
                       {
                         "name": "Andrzej Rzeszelski",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1q0ylVlUoRe4lVlM1G1G3t3t3B2____-1r3K3N1q1qmel-oRm0lMm33B2_lZlS2jfV2jfV",
                         "list1": {
                           "theme": "The Creator''s Might",
                           "list": [
                             "Kreoss 1",
                             "Judicator",
                             "Exemplar Warder",
                             "Hermit of Henge Hold",
                             "Initiate Tristan Durant",
                             "Judicator",
                             "Scrutator Potentate Severius",
                             "Redeemer",
                             "Redeemer",
                             "Vassal Mechanik",
                             "Vassal Mechanik",
                             "Wrack",
                             "Choir of Menoth (min)"
                           ]
                         },
                         "list2": {
                           "theme": "Exemplar Interdiction",
                           "list": [
                             "Thyra 1",
                             "Blood of Martyrs",
                             "Dervish",
                             "Dervish",
                             "Hierophant",
                             "Exemplar Bastion Seneschal",
                             "Hermit of Henge Hold",
                             "High Exemplar Gravus",
                             "Scrutator Potentate Severius",
                             "Fire of Salvation",
                             "Wrack",
                             "Choir of Menoth (min)",
                             "Exemplar Cinerators (max)",
                             "Exemplar Cinerator Officer",
                             "Knights Exemplar",
                             "Knights Exemplar Officer",
                             "Knights Exemplar",
                             "Knights Exemplar Officer"
                           ]
                         }
                       },
                       {
                         "name": "Bartek Smarsz",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khsh2nlnlh4h6h7h3h3nFhmhmhmhnhr___-2khxh2nlnlnlh4h6h7h3h3hmhmhmhmoR",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Child 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Rattler",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Old Witch 3",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Rattler",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Hermit of Henge Hold"
                           ]
                         }
                       },
                       {
                         "name": "Jakub Gurdek",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1pm1lVme3k3kjCjClRoR3EoLoL3C2_ninini___-1Fp6lV8fjCjCnooR3EoLoL3t3B8y2_dRni",
                         "list1": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Judicator",
                             "Hierophant",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Hand of Silence",
                             "Hermit of Henge Hold",
                             "High Paladin Dartan Vilmon",
                             "Menite Archon",
                             "Menite Archon",
                             "The Covenant of Menoth",
                             "Choir of Menoth (min)",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         },
                         "list2": {
                           "theme": "Warriors of the Old Faith",
                           "list": [
                             "Vladimir 3",
                             "Judicator",
                             "War Dog",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Fenris",
                             "Hermit of Henge Hold",
                             "High Paladin Dartan Vilmon",
                             "Menite Archon",
                             "Menite Archon",
                             "Vassal Mechanik",
                             "Wrack",
                             "Yuri the Axe",
                             "Choir of Menoth (min)",
                             "Flame Bringers (min)",
                             "Initiates of the Wall"
                           ]
                         }
                       },
                       {
                         "name": "Marcin Nowicki",
                         "faction": "Skorne",
                         "cccode": "c9101b_-2c6In4mZ6un2n2ncn9n1n9n1mBmB___-1s3_6U4xjijk5J6N6L6Lf4jDjD5VhVhV",
                         "list1": {
                           "theme": "The Exalted",
                           "list": [
                             "Rasheth 1",
                             "Mammoth",
                             "Abidan the Keeper",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian",
                             "Supreme Guardian"
                           ]
                         },
                         "list2": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Makeda 1",
                             "Archidon",
                             "Basilisk Krea",
                             "Battle Boar",
                             "Blind Walker",
                             "Molik Karn",
                             "Aptimus Marketh",
                             "Paingiver Task Master",
                             "Paingiver Task Master",
                             "Swamp Gobber River Raider",
                             "Farrow Valkyries",
                             "Farrow Valkyries",
                             "Paingiver Beast Handlers (max)",
                             "Siege Animantarax",
                             "Siege Animantarax"
                           ]
                         }
                       },
                       {
                         "name": "Rafał Anusiak",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1odU1gjsmv3y4141oR4L753umn313umpmp___-1nnAjsjsePk19v3y4141oRfWfWf2hTmpmp",
                         "list1": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Issyria 1",
                             "Chimera",
                             "Harpy",
                             "Phoenix",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "House Shyeel Artificer",
                             "Cylena Raefyll & Nyss Hunters (max)",
                             "Soulless Escort (1)",
                             "Dawnguard Sentinels (min)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Soulless Escort (1)",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Garryth 2",
                             "Harpy",
                             "Harpy",
                             "Moros",
                             "Sphinx",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "Lys Healer",
                             "Lys Healer",
                             "House Vyre Electromancers",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "Mateusz Dziewanowski",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-295v4QjFjFjF4H4Hg4g4mVmVmVoR0V5e5e5f5f___-2a5CmKmOmRmVmVmVoRmIjXeE5fmj5wmT",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Wurmwood 1",
                             "Megalith",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Farrow Bone Grinders (max)",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 2",
                             "Ghetorix",
                             "Storm Raptor",
                             "Tharn Blood Shaman",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Boil Master & Spirit Cauldron",
                             "Death Wolves",
                             "Shifting Stones",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Portugal Primal",
                     "players": [
                       {
                         "name": "Alberto Santos",
                         "faction": "Mercenaries",
                         "cccode": "c6101b_-205pnpnpnSlLlL7jbH3WdHoR7mchch8M___-2582nOnSlLlL8P8S8TnPnPnP8MnKkoca",
                         "list1": {
                           "theme": "The Irregulars",
                           "list": [
                             "Magnus 2",
                             "Nomad",
                             "Nomad",
                             "Swabber",
                             "Toro",
                             "Toro",
                             "Anastasia di Bray",
                             "Dahlia Hallyr",
                             "Eiryss, Mage Hunter of Ios",
                             "Gobber Tinker",
                             "Hermit of Henge Hold",
                             "Kell Bailoch",
                             "Kayazy Eliminators",
                             "Kayazy Eliminators",
                             "Lady Aiyana & Master Holt"
                           ]
                         },
                         "list2": {
                           "theme": "Talion Charter",
                           "list": [
                             "Montador 1",
                             "Galleon",
                             "Swabber",
                             "Toro",
                             "Toro",
                             "Dirty Meg",
                             "Lord Rockbottom",
                             "Master Gunner Dougal MacNaile",
                             "Powder Monkey",
                             "Powder Monkey",
                             "Powder Monkey",
                             "Lady Aiyana & Master Holt",
                             "Press Gangers (min)",
                             "Scharde Dirge Seers",
                             "The Commodore Cannon & Crew"
                           ]
                         }
                       },
                       {
                         "name": "André Valentim",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1ohH1gmshQ3y3y3W41414L4Lmo313umo313ump___-1nnAjsjseP9vhJ3y3y4141oR4Jf2f2hTmpmp",
                         "list1": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Goreshade 4",
                             "Chimera",
                             "Imperatus",
                             "Fane Knight Guardian",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Eiryss, Mage Hunter of Ios",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "House Shyeel Artificer",
                             "House Shyeel Artificer",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Soulless Escort (1)",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Soulless Escort (1)",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Garryth 2",
                             "Harpy",
                             "Harpy",
                             "Moros",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Aelyth Vyr, Blade of Nyssor",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "Heavy Rifle Team",
                             "House Vyre Electromancers",
                             "House Vyre Electromancers",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "Bruno Settimelli",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khth2nlnlnlnlh4h3nFhmhmoRhnhr___-2jhvnlnlnlnlnlnlh4nFhknGhohinEhc",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Hermit of Henge Hold",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         },
                         "list2": {
                           "theme": "Bump in the Night",
                           "list": [
                             "King of Nothing 1",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Baron Tonguelick, Lord of Warts",
                             "Cask Imp (2)",
                             "Grave Ghoul",
                             "Lord Longfellow",
                             "Mad Caps",
                             "Malady Man",
                             "Murder Crows"
                           ]
                         }
                       },
                       {
                         "name": "João Isidro",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-294a4QjFjF4H4Hg4g4fI5e5e5fi7mT___-2amP4BmOmVmVmVmI54jX4_mj5wmj5wmT",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Krueger 2",
                             "Megalith",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Bog Trog Mist Speaker",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Celestial Fulcrum",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Iona 1",
                             "Gorax Rager",
                             "Storm Raptor",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Tharn Ravager Shaman",
                             "Boil Master & Spirit Cauldron",
                             "Tharn Bloodweavers",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Luís Leite",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1q0ylV7jk9e4lVlM1G1G3t3z3z2____-1pm1lVme2e3k3kjCjClRoR3C3t3z2_ninini",
                         "list1": {
                           "theme": "The Creator''s Might",
                           "list": [
                             "Kreoss 1",
                             "Judicator",
                             "Anastasia di Bray",
                             "Exemplar Warder Elias Gade",
                             "Initiate Tristan Durant",
                             "Judicator",
                             "Scrutator Potentate Severius",
                             "Redeemer",
                             "Redeemer",
                             "Vassal Mechanik",
                             "Vassal of Menoth",
                             "Vassal of Menoth",
                             "Choir of Menoth (min)"
                           ]
                         },
                         "list2": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Judicator",
                             "Hierophant",
                             "Avatar of Menoth",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Hand of Silence",
                             "Hermit of Henge Hold",
                             "The Covenant of Menoth",
                             "Vassal Mechanik",
                             "Vassal of Menoth",
                             "Choir of Menoth (min)",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Portugal Prime",
                     "players": [
                       {
                         "name": "João Morais",
                         "faction": "Skorne",
                         "cccode": "c9101b_-1s3_6r4xn45JcP5G6N2Q7y5VhV___-2cnb6U6U4x5J5G6N6un2ncn9n15UmB",
                         "list1": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Makeda 1",
                             "Agonizer",
                             "Basilisk Krea",
                             "Mammoth",
                             "Molik Karn",
                             "Reptile Hound",
                             "Titan Gladiator",
                             "Aptimus Marketh",
                             "Feralgeist",
                             "Orin Midwinter, Rogue Inquisitor",
                             "Paingiver Beast Handlers (max)",
                             "Siege Animantarax"
                           ]
                         },
                         "list2": {
                           "theme": "The Exalted",
                           "list": [
                             "Makeda 3",
                             "Archidon",
                             "Archidon",
                             "Basilisk Krea",
                             "Molik Karn",
                             "Titan Gladiator",
                             "Aptimus Marketh",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Paingiver Beast Handlers (min)",
                             "Supreme Guardian"
                           ]
                         }
                       },
                       {
                         "name": "Nuno Sequeira",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1U0Fc32Ai22E2k2k2k2n2odWdWbB___-1Wkv191e1h1hkr2Iks1_kk1Q1T1Nke1Nke",
                         "list1": {
                           "theme": "Dark Host",
                           "list": [
                             "Skarre 1",
                             "Kraken",
                             "Skarlock Thrall",
                             "Bane Lord Tartarus",
                             "Darragh Wrathe",
                             "Machine Wraith",
                             "Machine Wraith",
                             "Machine Wraith",
                             "Necrotech",
                             "Scrap Thrall (3)",
                             "Bane Riders (max)",
                             "Bane Riders (max)",
                             "Wraith Engine"
                           ]
                         },
                         "list2": {
                           "theme": "Scourge of the Broken Coast",
                           "list": [
                             "Deneghra 1",
                             "Deathripper",
                             "Ripjaw",
                             "Stalker",
                             "Stalker",
                             "Axiara Wraithblade",
                             "General Gerlak Slaughterborn",
                             "Severa Blacktide",
                             "Bloodgorgers (max)",
                             "Jussika Bloodtongue",
                             "Satyxis Blood Witches (min)",
                             "Satyxis Blood Hag",
                             "Satyxis Raiders (max)",
                             "Satyxis Raider Sea Witch",
                             "Satyxis Raiders (max)",
                             "Satyxis Raider Sea Witch"
                           ]
                         }
                       },
                       {
                         "name": "Paulo Morais",
                         "faction": "Trollbloods",
                         "cccode": "c7101b_-27j19Dc6jp0h0jjq2QfJfp0ki-___-277e0rc60hjq7dfJfp0k0m6n6n6n",
                         "list1": {
                           "theme": "Power of Dhunia",
                           "list": [
                             "Kolgrima 1",
                             "Dire Troll Mauler",
                             "Mountain King",
                             "Mulg the Ancient",
                             "Troll Axer",
                             "Troll Bouncer",
                             "Trollkin Runebearer",
                             "Feralgeist",
                             "Northkin Shaman",
                             "Dhunian Knot",
                             "Krielstone Bearer & Stone Scribes (min)",
                             "Northkin Elder"
                           ]
                         },
                         "list2": {
                           "theme": "Power of Dhunia",
                           "list": [
                             "Grissel 2",
                             "Dire Troll Bomber",
                             "Mountain King",
                             "Troll Axer",
                             "Trollkin Runebearer",
                             "Janissa Stonetide",
                             "Northkin Shaman",
                             "Dhunian Knot",
                             "Krielstone Bearer & Stone Scribes (min)",
                             "Stone Scribe Elder",
                             "Trollkin Runeshapers",
                             "Trollkin Runeshapers",
                             "Trollkin Runeshapers"
                           ]
                         }
                       },
                       {
                         "name": "Pedro Araújo",
                         "faction": "Cygnar",
                         "cccode": "c1101b_-1KeS9g9g9AaminoIieie8MayiNihigig9Tio___-1L8U9B9B9I9AakanlN9Jaj9cae",
                         "list1": {
                           "theme": "Gravediggers",
                           "list": [
                             "Haley 3",
                             "Grenadier",
                             "Grenadier",
                             "Thorn",
                             "Captain Maxwell Finn",
                             "Commander Anson Hitch",
                             "Ragman",
                             "Trench Buster",
                             "Trench Buster",
                             "Lady Aiyana & Master Holt",
                             "Captain Jonas Murdoch",
                             "Trencher Commandos (max)",
                             "Trencher Commando Officer",
                             "Trencher Express Team",
                             "Trencher Express Team",
                             "Trencher Infantry (min)",
                             "Trencher Blockhouse"
                           ]
                         },
                         "list2": {
                           "theme": "Heavy Metal",
                           "list": [
                             "Haley 2",
                             "Centurion",
                             "Centurion",
                             "Ol'' Rowdy",
                             "Thorn",
                             "Squire",
                             "Captain Arlan Strangewayes",
                             "Journeyman Lieutenant Allister Caine",
                             "Thunderhead",
                             "Journeyman Warcaster",
                             "Firefly",
                             "Field Mechaniks (min)"
                           ]
                         }
                       },
                       {
                         "name": "Vasco Oliveira",
                         "faction": "Legion of Everblight",
                         "cccode": "ca101b_-2hbskE28kBcocokPkGkGkJkJfTfT___-2icVkHkHkK2828bvbfbecobdbdb9b9fTb3b4",
                         "list1": {
                           "theme": "Primal Terrors",
                           "list": [
                             "Kallus 1",
                             "Blightbringer",
                             "Harrier",
                             "Ammok the Truthbearer",
                             "Spell Martyr",
                             "Spell Martyr",
                             "Warmonger War Chief",
                             "Blighted Rotwings (max)",
                             "Blighted Rotwings (max)",
                             "Chosen of Everblight (max)",
                             "Chosen of Everblight (max)",
                             "Hellmouth",
                             "Hellmouth"
                           ]
                         },
                         "list2": {
                           "theme": "Ravens of War",
                           "list": [
                             "Lylyth 3",
                             "Carnivean",
                             "Carnivean",
                             "Golab",
                             "Harrier",
                             "Harrier",
                             "Naga Nightlurker",
                             "Nephilim Bolt Thrower",
                             "Blighted Nyss Sorceress & Hellion",
                             "Spell Martyr",
                             "Strider Deathstalker",
                             "Strider Deathstalker",
                             "The Forsaken",
                             "The Forsaken",
                             "Hellmouth",
                             "Strider Scouts",
                             "Strider Scout Officer & Musician"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Portugal Primus",
                     "players": [
                       {
                         "name": "Daniel Figueira",
                         "faction": "Mercenaries",
                         "cccode": "c6101b_-225rlLlJlJ7i7j7koBgv7_iFiF9U9Vikil___-249pnqlL7i3W7zfi7AnvnwiAiA6161nznunu",
                         "list1": {
                           "theme": "Llaelese Resistance",
                           "list": [
                             "Ashlynn 1",
                             "Toro",
                             "Vanguard",
                             "Vanguard",
                             "Reinholdt, Gobber Speculator",
                             "Anastasia di Bray",
                             "Gorman di Wulfe, Rogue Alchemist",
                             "Harlan Versh, Illuminated One",
                             "Major Harrison Gibbs",
                             "Taryn di la Rovissi, Llaelese Gun Mage",
                             "Thorn Gun Mages",
                             "Thorn Gun Mages",
                             "Trencher Infantry (max)",
                             "Trencher Infantry Officer & Sniper",
                             "Trencher Long Gunners (max)",
                             "Trencher Long Gunner Officer"
                           ]
                         },
                         "list2": {
                           "theme": "Soldiers of Fortune",
                           "list": [
                             "Damiano 1",
                             "Rocinante",
                             "Toro",
                             "Reinholdt, Gobber Speculator",
                             "Eiryss, Mage Hunter of Ios",
                             "Rhupert Carvolo, Piper of Ord",
                             "Sergeant Nicolas Verendrye",
                             "Stannis Brocker",
                             "Steelhead Arcanist",
                             "Steelhead Gunner",
                             "Steelhead Halberdiers (min)",
                             "Steelhead Halberdiers (min)",
                             "Steelhead Heavy Cavalry (min)",
                             "Steelhead Heavy Cavalry (min)",
                             "Steelhead Riflemen (max)",
                             "Steelhead Volley Gun",
                             "Steelhead Volley Gun"
                           ]
                         }
                       },
                       {
                         "name": "Daniela Sousa",
                         "faction": "Cygnar",
                         "cccode": "c1101b_-1K9a9b9biPiPiPiPiPiPamaligig9U9V___-1N7D9c9Hakaj9caooJdhadada5a6",
                         "list1": {
                           "theme": "Gravediggers",
                           "list": [
                             "Sloan 1",
                             "Charger",
                             "Charger",
                             "Hunter",
                             "Hunter",
                             "Hunter",
                             "Hunter",
                             "Hunter",
                             "Hunter",
                             "Captain Maxwell Finn",
                             "Trencher Master Gunner",
                             "Trencher Express Team",
                             "Trencher Express Team",
                             "Trencher Infantry (max)",
                             "Trencher Infantry Officer & Sniper"
                           ]
                         },
                         "list2": {
                           "theme": "Storm Division",
                           "list": [
                             "Stryker 2",
                             "Firefly",
                             "Stormclad",
                             "Squire",
                             "Journeyman Warcaster",
                             "Firefly",
                             "Major Katherine Laddermore",
                             "Savio Montero Acosta",
                             "Stormblade Captain",
                             "Storm Lances (max)",
                             "Storm Lances (max)",
                             "Stormblade Infantry",
                             "Stormblade Infantry Officer & Standard"
                           ]
                         }
                       },
                       {
                         "name": "Jorge Dias",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1ohH1gms3A3WfW2zmn31mo31mp___-1ndUhI0v3y4141dPf2f234363536hTmp",
                         "list1": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Goreshade 4",
                             "Chimera",
                             "Imperatus",
                             "Dawnguard Destor Thane",
                             "Eiryss, Mage Hunter of Ios",
                             "Lys Healer",
                             "Dawnguard Destors (max)",
                             "Dawnguard Sentinels (min)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Issyria 1",
                             "Hemera",
                             "Manticore",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Houseguard Thane",
                             "House Vyre Electromancers",
                             "House Vyre Electromancers",
                             "Houseguard Halberdiers (min)",
                             "Houseguard Halberdier Officer & Standard",
                             "Houseguard Halberdiers (max)",
                             "Houseguard Halberdier Officer & Standard",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "Simão Marques",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-29exjGjGjEjEjEjEjEjE4Hg4g4g4mVmV5e5e5f5f___-2amPmOmVmVmI54mUmUjXmS4_mj5wmj5w",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Thorle 1",
                             "Wold Guardian",
                             "Wold Guardian",
                             "Woldwatcher",
                             "Woldwatcher",
                             "Woldwatcher",
                             "Woldwatcher",
                             "Woldwatcher",
                             "Woldwatcher",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Iona 1",
                             "Storm Raptor",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Tharn Ravager Shaman",
                             "Tharn Wolf Rider Champion",
                             "Tharn Wolf Rider Champion",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Tharn Bloodweavers",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain"
                           ]
                         }
                       },
                       {
                         "name": "Telmo Mordeira",
                         "faction": "Khador",
                         "cccode": "c3101b_-1QhD7skUnjpmdijy8xfSbPbR7H7Ich___-1SeW7qkUnjnohF8hnf89nf89nhnnnniE8I",
                         "list1": {
                           "theme": "Legion of Steel",
                           "list": [
                             "Strakhov 2",
                             "Kodiak",
                             "Spriggan",
                             "Greylord Adjunct",
                             "Eiryss, Fortune Hunter of Ios",
                             "Iron Fang Kovnik",
                             "Kapitan Sofya Skirova",
                             "Uhlan Kovnik Markov",
                             "Black Dragons (max)",
                             "Black Dragon Officer & Standard",
                             "Great Bears of the Gallowswood",
                             "Iron Fang Pikemen (max)",
                             "Iron Fang Pikemen Officer & Standard",
                             "Kayazy Eliminators"
                           ]
                         },
                         "list2": {
                           "theme": "Wolves of Winter",
                           "list": [
                             "Zerkova 2",
                             "Devastator",
                             "Spriggan",
                             "Greylord Adjunct",
                             "Fenris",
                             "Greylord Forge Seer",
                             "Koldun Lord",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Greylord Outriders (max)",
                             "Greylord Ternion",
                             "Greylord Ternion",
                             "Tactical Arcanist Corps",
                             "Koldun Kapitan Valachev"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Russia 3 - Iron Cossacks",
                     "players": [
                       {
                         "name": "Andrei \"Magadanskiy\" Zheldochenko",
                         "faction": "Legion of Everblight",
                         "cccode": "ca101b_-2ibskE28282828befxoRcocokGkGfwfwfTfT___-2gaJkOkOkEbbbbbecocob9b9",
                         "list1": {
                           "theme": "Ravens of War",
                           "list": [
                             "Kallus 1",
                             "Blightbringer",
                             "Harrier",
                             "Harrier",
                             "Harrier",
                             "Harrier",
                             "Blighted Nyss Sorceress & Hellion",
                             "Grotesque Assassin",
                             "Hermit of Henge Hold",
                             "Spell Martyr",
                             "Spell Martyr",
                             "Blighted Rotwings (max)",
                             "Blighted Rotwings (max)",
                             "Grotesque Banshees (max)",
                             "Grotesque Banshees (max)",
                             "Hellmouth",
                             "Hellmouth"
                           ]
                         },
                         "list2": {
                           "theme": "Oracles of Annihilation",
                           "list": [
                             "Absylonia 1",
                             "Archangel",
                             "Archangel",
                             "Blightbringer",
                             "Blighted Nyss Shepherd",
                             "Blighted Nyss Shepherd",
                             "Blighted Nyss Sorceress & Hellion",
                             "Spell Martyr",
                             "Spell Martyr",
                             "The Forsaken",
                             "The Forsaken"
                           ]
                         }
                       },
                       {
                         "name": "Egor \"Cowboy Jerry\" Dolzhenko",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1T16193a1v1v1v1v1v1v0thC2n2n2n2Bi01K___-1U0F1h1h1h1h2Ai22k2k2k2of0i5nkdWhZh_bB",
                         "list1": {
                           "theme": "Black Industries",
                           "list": [
                             "Venethrax 1",
                             "Deathripper",
                             "Erebus",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "The Withershadow Combine",
                             "Hellslinger Phantom",
                             "Necrotech",
                             "Necrotech",
                             "Necrotech",
                             "Warwitch Siren",
                             "Mechanithralls (min)",
                             "Brute Thrall (3)"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Host",
                           "list": [
                             "Skarre 1",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Skarlock Thrall",
                             "Bane Lord Tartarus",
                             "Machine Wraith",
                             "Machine Wraith",
                             "Machine Wraith",
                             "Scrap Thrall (3)",
                             "Soul Trapper",
                             "Bane Knights (max)",
                             "Bane Knight Officer",
                             "Bane Riders (max)",
                             "Bane Warriors (min)",
                             "Bane Warrior Officer & Standard",
                             "Wraith Engine"
                           ]
                         }
                       },
                       {
                         "name": "Ivan \"Bulka\" Sitkov",
                         "faction": "Mercenaries",
                         "cccode": "c6101b_-2582nVnrnrnrnr5I5I8PnPnPnPko___-1_b_94929292929iiririqiqhXhX",
                         "list1": {
                           "theme": "Talion Charter",
                           "list": [
                             "Montador 1",
                             "Blockader",
                             "Rover",
                             "Rover",
                             "Rover",
                             "Rover",
                             "Talon",
                             "Talon",
                             "Dirty Meg",
                             "Powder Monkey",
                             "Powder Monkey",
                             "Powder Monkey",
                             "Scharde Dirge Seers"
                           ]
                         },
                         "list2": {
                           "theme": "Hammer Strike",
                           "list": [
                             "Ossrum 1",
                             "Ghordson Driller",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Ogrun Bokur",
                             "Horgenhold Artillery Corps",
                             "Horgenhold Artillery Corps",
                             "Horgenhold Forge Guard (max)",
                             "Horgenhold Forge Guard (max)",
                             "Hammerfall Siege Crawler",
                             "Hammerfall Siege Crawler"
                           ]
                         }
                       },
                       {
                         "name": "Mark \"Snob\" Kolesnikov",
                         "faction": "Khador",
                         "cccode": "c3101b_-1R79kTkUnj8tgcgc6i7Z7Z7S7T7W7-7-7X7W7X7W___-1R47kXnj3W8tnt7Z7-7-7X7Wi6i6",
                         "list1": {
                           "theme": "Winter Guard Kommand",
                           "list": [
                             "Irusk 2",
                             "Marauder",
                             "Spriggan",
                             "Greylord Adjunct",
                             "Kovnik Jozef Grigorovich",
                             "Winter Guard Artillery Kapitan",
                             "Winter Guard Artillery Kapitan",
                             "Alexia Ciannor & the Risen",
                             "Winter Guard Field Gun Crew",
                             "Winter Guard Field Gun Crew",
                             "Winter Guard Infantry (max)",
                             "Winter Guard Infantry Officer & Standard",
                             "Winter Guard Rocketeer (3)",
                             "Winter Guard Mortar Crew",
                             "Winter Guard Mortar Crew",
                             "Winter Guard Rifle Corps (min)",
                             "Winter Guard Rocketeer (3)",
                             "Winter Guard Rifle Corps (min)",
                             "Winter Guard Rocketeer (3)"
                           ]
                         },
                         "list2": {
                           "theme": "Winter Guard Kommand",
                           "list": [
                             "Sorscha 1",
                             "Conquest",
                             "Greylord Adjunct",
                             "Eiryss, Mage Hunter of Ios",
                             "Kovnik Jozef Grigorovich",
                             "Steelhead Mortar Crew",
                             "Winter Guard Field Gun Crew",
                             "Winter Guard Mortar Crew",
                             "Winter Guard Mortar Crew",
                             "Winter Guard Rifle Corps (min)",
                             "Winter Guard Rocketeer (3)",
                             "Winter Guard Gun Carriage",
                             "Winter Guard Gun Carriage"
                           ]
                         }
                       },
                       {
                         "name": "Roman \"Schulz\" Shinkarenko",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1Wkv191e1h1hkrkqoI2xks1Q1Tkxkx1Nke1Nke___-1TbY191e1v1v1v1v1v1v1v1vhC2n2n2ni01K",
                         "list1": {
                           "theme": "Scourge of the Broken Coast",
                           "list": [
                             "Deneghra 1",
                             "Deathripper",
                             "Ripjaw",
                             "Stalker",
                             "Stalker",
                             "Axiara Wraithblade",
                             "Misery Cage",
                             "Ragman",
                             "Satyxis Raider Captain",
                             "Severa Blacktide",
                             "Satyxis Blood Witches (min)",
                             "Satyxis Blood Hag",
                             "Satyxis Gunslingers",
                             "Satyxis Gunslingers",
                             "Satyxis Raiders (max)",
                             "Satyxis Raider Sea Witch",
                             "Satyxis Raiders (max)",
                             "Satyxis Raider Sea Witch"
                           ]
                         },
                         "list2": {
                           "theme": "Black Industries",
                           "list": [
                             "Asphyxious 3",
                             "Deathripper",
                             "Ripjaw",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Slayer",
                             "Hellslinger Phantom",
                             "Necrotech",
                             "Necrotech",
                             "Necrotech",
                             "Mechanithralls (min)",
                             "Brute Thrall (3)"
                           ]
                         }
                       },
                       {
                         "name": "None"
                       }
                     ]
                   },
                   {
                     "name": "Russia Soyuz",
                     "players": [
                       {
                         "name": "Andrei Romanov",
                         "faction": "Khador",
                         "cccode": "c3101b_-1P777p7pnjj6l5l4l3l3l2l7l17QgdkQ___-1R79kTkUnj8tgcgc6i7Z7Z7S7T7W7-7-7X7W7X7W",
                         "list1": {
                           "theme": "Armored Korps",
                           "list": [
                             "Vladimir 2",
                             "Destroyer",
                             "Destroyer",
                             "Greylord Adjunct",
                             "Eilish Garrity, the Occultist",
                             "Man-O-War Kovnik",
                             "Man-O-War Strike Tanker",
                             "Man-O-War Suppression Tanker",
                             "Man-O-War Suppression Tanker",
                             "Kommandant Atanas Arconovich & Standard",
                             "Man-O-War Demolition Corps (max)",
                             "Sergeant Dragos Dragadovich",
                             "Man-O-War Shocktroopers (max)",
                             "Man-O-War Shocktrooper Officer",
                             "Man-O-War Siege Chariot"
                           ]
                         },
                         "list2": {
                           "theme": "Winter Guard Kommand",
                           "list": [
                             "Irusk 2",
                             "Marauder",
                             "Spriggan",
                             "Greylord Adjunct",
                             "Kovnik Jozef Grigorovich",
                             "Winter Guard Artillery Kapitan",
                             "Winter Guard Artillery Kapitan",
                             "Alexia Ciannor & the Risen",
                             "Winter Guard Field Gun Crew",
                             "Winter Guard Field Gun Crew",
                             "Winter Guard Infantry (max)",
                             "Winter Guard Infantry Officer & Standard",
                             "Winter Guard Rocketeer (3)",
                             "Winter Guard Mortar Crew",
                             "Winter Guard Mortar Crew",
                             "Winter Guard Rifle Corps (min)",
                             "Winter Guard Rocketeer (3)",
                             "Winter Guard Rifle Corps (min)",
                             "Winter Guard Rocketeer (3)"
                           ]
                         }
                       },
                       {
                         "name": "Dmitrii Tochenov",
                         "faction": "Skorne",
                         "cccode": "c9101b_-2e3Z6r6r6U4x6Nn26v6vn3fFggjD5V6qhVhVmB___-1sju6r6U6U4xjc4yn66NfIhm5U5U5ShV",
                         "list1": {
                           "theme": "Winds of Death",
                           "list": [
                             "Morghoul 2",
                             "Agonizer",
                             "Agonizer",
                             "Archidon",
                             "Basilisk Krea",
                             "Aptimus Marketh",
                             "Extoller Novitiate",
                             "Extoller Soulward",
                             "Extoller Soulward",
                             "Immortal Vessel",
                             "Swamp Gobber Chef",
                             "Venator Dakar",
                             "Farrow Valkyries",
                             "Paingiver Beast Handlers (max)",
                             "Venator Catapult Crew",
                             "Siege Animantarax",
                             "Siege Animantarax",
                             "Supreme Guardian"
                           ]
                         },
                         "list2": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Jalaam 1",
                             "Agonizer",
                             "Archidon",
                             "Archidon",
                             "Basilisk Krea",
                             "Blackhide Wrastler",
                             "Cyclops Brute",
                             "Titan Cannoneer",
                             "Aptimus Marketh",
                             "Bog Trog Mist Speaker",
                             "Gremlin Swarm",
                             "Paingiver Beast Handlers (min)",
                             "Paingiver Beast Handlers (min)",
                             "Paingiver Bloodrunners",
                             "Siege Animantarax"
                           ]
                         }
                       },
                       {
                         "name": "Egor Nechaev",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1nnAjsjseP9v3y3y3W4141dP4J4J35363xhTmp___-1ndU1g1gmx9v3y3W4141dP35363umpmp",
                         "list1": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Garryth 2",
                             "Harpy",
                             "Harpy",
                             "Moros",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Eiryss, Mage Hunter of Ios",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Houseguard Thane",
                             "Heavy Rifle Team",
                             "Heavy Rifle Team",
                             "Houseguard Halberdiers (max)",
                             "Houseguard Halberdier Officer & Standard",
                             "Stormfall Archers",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Issyria 1",
                             "Chimera",
                             "Chimera",
                             "Hyperion",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Eiryss, Mage Hunter of Ios",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Houseguard Thane",
                             "Houseguard Halberdiers (max)",
                             "Houseguard Halberdier Officer & Standard",
                             "Soulless Escort (1)",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "Kirill Tomyshev",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-294w4QjFjFjF4H4Hg4g45gfF5e5e5fmY5fmT___-2amPmJmJfrmV54mUmS4_mQmj5wmj5wmT",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Mohsar 1",
                             "Megalith",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Blackclad Wayfarer",
                             "Swamp Gobber Chef",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Stone Keeper",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Iona 1",
                             "Warpwolf Stalker",
                             "Warpwolf Stalker",
                             "Bloodweaver Night Witch",
                             "Gallows Grove",
                             "Tharn Ravager Shaman",
                             "Tharn Wolf Rider Champion",
                             "Bríghid & Caul",
                             "Tharn Bloodweavers",
                             "Tharn Bloodweaver Haruspex",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Viktor Nelipovich",
                         "faction": "Crucible Guard",
                         "cccode": "cf101b_-1vlrlslululololFlHlHlHlnlblClkld___-1ul8ltlslblulF7jlElElElklkiBlDldld",
                         "list1": {
                           "theme": "Prima Materia",
                           "list": [
                             "Mackay 1",
                             "Retaliator",
                             "Toro",
                             "Toro",
                             "Vanguard",
                             "Vanguard",
                             "Aurum Ominus Alyce Marc",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Prospero",
                             "Suppressor",
                             "Combat Alchemists",
                             "Dragon''s Breath Rocket",
                             "Railless Interceptor"
                           ]
                         },
                         "list2": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Syvestro 1",
                             "Liberator",
                             "Retaliator",
                             "Suppressor",
                             "Toro",
                             "Aurum Ominus Alyce Marc",
                             "Anastasia di Bray",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Dragon''s Breath Rocket",
                             "Dragon''s Breath Rocket",
                             "Steelhead Halberdiers (max)",
                             "Doctor Alejandro Mosby",
                             "Railless Interceptor",
                             "Railless Interceptor"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Russia: Aurora",
                     "players": [
                       {
                         "name": "Aleksander Utlin",
                         "faction": "Minions",
                         "cccode": "cb101b_-2ljP4ck0k0jNjNjWbO4nk4jXkc___-2l494c4djTjWbObOfFkbkbkbkc",
                         "list1": {
                           "theme": "The Blindwater Congregation",
                           "list": [
                             "Jaga-Jaga 1",
                             "Blackhide Wrastler",
                             "Ironback Spitter",
                             "Ironback Spitter",
                             "Swamp Horror",
                             "Swamp Horror",
                             "Gatorman Soul Slave",
                             "Gatorman Witch Doctor",
                             "Totem Hunter",
                             "Bog Trog Ambushers (min)",
                             "Boil Master & Spirit Cauldron",
                             "Gatorman Posse (max)"
                           ]
                         },
                         "list2": {
                           "theme": "The Blindwater Congregation",
                           "list": [
                             "Maelok 1",
                             "Blackhide Wrastler",
                             "Bull Snapper",
                             "Dracodile",
                             "Gatorman Soul Slave",
                             "Gatorman Witch Doctor",
                             "Gatorman Witch Doctor",
                             "Swamp Gobber Chef",
                             "Gatorman Posse (min)",
                             "Gatorman Posse (min)",
                             "Gatorman Posse (min)",
                             "Gatorman Posse (max)"
                           ]
                         }
                       },
                       {
                         "name": "Aleksei Guk",
                         "faction": "Crucible Guard",
                         "cccode": "cf101b_-1vlrlululolololFlHlHlnlblClkld___-1ul8ltlulululF7jlHlnlblklkiBlDld",
                         "list1": {
                           "theme": "Prima Materia",
                           "list": [
                             "Mackay 1",
                             "Toro",
                             "Toro",
                             "Vanguard",
                             "Vanguard",
                             "Vanguard",
                             "Aurum Ominus Alyce Marc",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Prospero",
                             "Suppressor",
                             "Combat Alchemists",
                             "Dragon''s Breath Rocket",
                             "Railless Interceptor"
                           ]
                         },
                         "list2": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Syvestro 1",
                             "Liberator",
                             "Toro",
                             "Toro",
                             "Toro",
                             "Aurum Ominus Alyce Marc",
                             "Anastasia di Bray",
                             "Crucible Guard Mechanik",
                             "Prospero",
                             "Suppressor",
                             "Dragon''s Breath Rocket",
                             "Dragon''s Breath Rocket",
                             "Steelhead Halberdiers (max)",
                             "Doctor Alejandro Mosby",
                             "Railless Interceptor"
                           ]
                         }
                       },
                       {
                         "name": "Nikolai Gerasimov",
                         "faction": "Trollbloods",
                         "cccode": "c7101b_-28j1iU0hjqj66G6O0ki-iZiZiTbKcCiT___-2659iW0hjq6GcF2Q6Moo0k0miTbK0b0c",
                         "list1": {
                           "theme": "Storm of the North",
                           "list": [
                             "Kolgrima 1",
                             "Rök",
                             "Troll Axer",
                             "Trollkin Runebearer",
                             "Eilish Garrity, the Occultist",
                             "Fell Caller Hero",
                             "Trollkin Champion Hero",
                             "Krielstone Bearer & Stone Scribes (min)",
                             "Northkin Elder",
                             "Northkin Bear Handlers & Battle Bears",
                             "Northkin Bear Handlers & Battle Bears",
                             "Trollkin Champions (max)",
                             "Skaldi Bonehammer",
                             "Trollkin Sorcerer (1)",
                             "Trollkin Champions (max)"
                           ]
                         },
                         "list2": {
                           "theme": "Band of Heroes",
                           "list": [
                             "Grim 1",
                             "Sea King",
                             "Troll Axer",
                             "Trollkin Runebearer",
                             "Fell Caller Hero",
                             "Fennblade Kithkar",
                             "Feralgeist",
                             "Stone Scribe Chronicler",
                             "Trollkin Skinner",
                             "Krielstone Bearer & Stone Scribes (min)",
                             "Stone Scribe Elder",
                             "Trollkin Champions (max)",
                             "Skaldi Bonehammer",
                             "Trollkin Fennblades (max)",
                             "Trollkin Fennblade Officer & Drummer"
                           ]
                         }
                       },
                       {
                         "name": "Nikolai Shirokov",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1p0TlV2e3k7j3C3t3B2_3F3H3G3Hninini___-1pm11U1U1U1Ume3k3kjCjC3E7y3C3B3F3HninininK",
                         "list1": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Severius 1",
                             "Judicator",
                             "Avatar of Menoth",
                             "Allegiant of the Order of the Fist",
                             "Anastasia di Bray",
                             "The Covenant of Menoth",
                             "Vassal Mechanik",
                             "Wrack",
                             "Choir of Menoth (min)",
                             "Idrian Skirmishers (min)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Idrian Skirmishers (max)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         },
                         "list2": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Crusader",
                             "Crusader",
                             "Crusader",
                             "Crusader",
                             "Hierophant",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "High Paladin Dartan Vilmon",
                             "Orin Midwinter, Rogue Inquisitor",
                             "The Covenant of Menoth",
                             "Wrack",
                             "Idrian Skirmishers (min)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Press Gangers (min)"
                           ]
                         }
                       },
                       {
                         "name": "Tim Yakubov",
                         "faction": "Mercenaries",
                         "cccode": "c6101b_-219p5Xnpnp7mfinvnwnwnx7fnsnsnz9U9V___-2582nVnOnM8P8Q8TnPnPnPf4f4nKkoo28o",
                         "list1": {
                           "theme": "The Kingmaker''s Army",
                           "list": [
                             "Damiano 1",
                             "Mangler",
                             "Nomad",
                             "Nomad",
                             "Kell Bailoch",
                             "Sergeant Nicolas Verendrye",
                             "Steelhead Arcanist",
                             "Steelhead Gunner",
                             "Steelhead Gunner",
                             "Steelhead Ironhead",
                             "Greygore Boomhowler & Co. (min)",
                             "Steelhead Cannon Crew",
                             "Steelhead Cannon Crew",
                             "Steelhead Riflemen (max)",
                             "Trencher Infantry (max)",
                             "Trencher Infantry Officer & Sniper"
                           ]
                         },
                         "list2": {
                           "theme": "Talion Charter",
                           "list": [
                             "Montador 1",
                             "Blockader",
                             "Galleon",
                             "Bosun Grogspar",
                             "Dirty Meg",
                             "Doc Killingsworth",
                             "Master Gunner Dougal MacNaile",
                             "Powder Monkey",
                             "Powder Monkey",
                             "Powder Monkey",
                             "Swamp Gobber River Raider",
                             "Swamp Gobber River Raider",
                             "Press Gangers (min)",
                             "Scharde Dirge Seers",
                             "Sea Dog Pirates (max)",
                             "Mr. Walls, the Quartermaster"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Scotland Bunnahabhain",
                     "players": [
                       {
                         "name": "Frazer Penman",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1r0JlVm03plM1U3t3t2_lZlS2lbQ2um2___-1pm11UlVme3k3k7jjCjClR3C2_3F3Hninini",
                         "list1": {
                           "theme": "Exemplar Interdiction",
                           "list": [
                             "High Reclaimer 1",
                             "Judicator",
                             "High Exemplar Gravus",
                             "Knights Exemplar Seneschal",
                             "Scrutator Potentate Severius",
                             "Crusader",
                             "Vassal Mechanik",
                             "Vassal Mechanik",
                             "Choir of Menoth (min)",
                             "Exemplar Cinerators (max)",
                             "Exemplar Cinerator Officer",
                             "Exemplar Errants (min)",
                             "Exemplar Errant Officer & Standard",
                             "Exemplar Vengers (min)",
                             "Visgoth Juviah Rhoven & Honor Guard"
                           ]
                         },
                         "list2": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Crusader",
                             "Judicator",
                             "Hierophant",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Anastasia di Bray",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Hand of Silence",
                             "The Covenant of Menoth",
                             "Choir of Menoth (min)",
                             "Idrian Skirmishers (min)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         }
                       },
                       {
                         "name": "Joe Taylor",
                         "faction": "Mercenaries",
                         "cccode": "c6101b_-24b_9o9o949494949292929292pl7knvnvnwnxns___-20oHnV7j3We0lLppoRfC7Fprchch8Mca",
                         "list1": {
                           "theme": "Soldiers of Fortune",
                           "list": [
                             "Ossrum 1",
                             "Ghordson Basher",
                             "Ghordson Basher",
                             "Ghordson Driller",
                             "Ghordson Driller",
                             "Ghordson Driller",
                             "Ghordson Driller",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Dez",
                             "Gorman di Wulfe, Rogue Alchemist",
                             "Steelhead Arcanist",
                             "Steelhead Arcanist",
                             "Steelhead Gunner",
                             "Steelhead Ironhead",
                             "Steelhead Cannon Crew"
                           ]
                         },
                         "list2": {
                           "theme": "The Irregulars",
                           "list": [
                             "Fiona 1",
                             "Blockader",
                             "Anastasia di Bray",
                             "Eiryss, Mage Hunter of Ios",
                             "Gastone Crosse",
                             "Toro",
                             "Harlowe Holdemhigh",
                             "Hermit of Henge Hold",
                             "Hutchuk, Ogrun Bounty Hunter",
                             "Rorsh",
                             "Widget, Tinker Extraordinaire",
                             "Kayazy Eliminators",
                             "Kayazy Eliminators",
                             "Lady Aiyana & Master Holt",
                             "The Commodore Cannon & Crew"
                           ]
                         }
                       },
                       {
                         "name": "Lewis Watson",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khvh2nlnlnlnlnlnlh4hmhmhmhmoRhn___-2khsh2nlnlnlnlnlh4h3nFhmhmoRhn",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "King of Nothing 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Hermit of Henge Hold",
                             "Lady Karianna Rose"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Child 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Hermit of Henge Hold",
                             "Lady Karianna Rose"
                           ]
                         }
                       },
                       {
                         "name": "Sean Murchie",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2jhxnlnlnlh7nFhknGoRhphpnEnEhchenChenC___-2khth2nlnlnlnlh4h6h3hmhmhmhnhr",
                         "list1": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Old Witch 3",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Rattler",
                             "Baron Tonguelick, Lord of Warts",
                             "Cask Imp (2)",
                             "Grave Ghoul",
                             "Hermit of Henge Hold",
                             "Trapperkin",
                             "Trapperkin",
                             "Malady Man",
                             "Malady Man",
                             "Murder Crows",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Skin & Moans",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "Shane Frost",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2a4amOmR54jXmS4_mQmj5wmj5wmT___-295v4QjFjF4H4H4H4Hg4g4g4mVmVmVoR5e5e5f5f",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Krueger 2",
                             "Storm Raptor",
                             "Tharn Blood Shaman",
                             "Tharn Ravager Shaman",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Tharn Bloodweavers",
                             "Tharn Bloodweaver Haruspex",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Wurmwood 1",
                             "Megalith",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Scotland Laphroaig",
                     "players": [
                       {
                         "name": "Adam Davies",
                         "faction": "Crucible Guard",
                         "cccode": "cf101b_-1ul8ltlblulFlH7kfCfilElElElElAlkiBlDld___-1vlrlblclFlHlHlnlolElElClClkld",
                         "list1": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Syvestro 1",
                             "Liberator",
                             "Suppressor",
                             "Toro",
                             "Aurum Ominus Alyce Marc",
                             "Crucible Guard Mechanik",
                             "Gorman di Wulfe, Rogue Alchemist",
                             "Hutchuk, Ogrun Bounty Hunter",
                             "Sergeant Nicolas Verendrye",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Crucible Guard Storm Troopers (max)",
                             "Dragon''s Breath Rocket",
                             "Steelhead Halberdiers (max)",
                             "Doctor Alejandro Mosby",
                             "Railless Interceptor"
                           ]
                         },
                         "list2": {
                           "theme": "Prima Materia",
                           "list": [
                             "Mackay 1",
                             "Suppressor",
                             "Vulcan",
                             "Aurum Ominus Alyce Marc",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Prospero",
                             "Vanguard",
                             "Trancer",
                             "Trancer",
                             "Combat Alchemists",
                             "Combat Alchemists",
                             "Dragon''s Breath Rocket",
                             "Railless Interceptor"
                           ]
                         }
                       },
                       {
                         "name": "Andrew Murchie",
                         "faction": "Convergence of Cyriss",
                         "cccode": "cc101b_-1ZlIdndndBd4d9d9dbdCdCnaoRdz___-1-d8dndndBd9d9dddeoRdgdzdFdF",
                         "list1": {
                           "theme": "Clockwork Legions",
                           "list": [
                             "Locke 1",
                             "Conservator",
                             "Conservator",
                             "Corollary",
                             "Diffuser",
                             "Inverter",
                             "Inverter",
                             "Prime Axiom",
                             "Algorithmic Dispersion Optifex",
                             "Algorithmic Dispersion Optifex",
                             "Frustum Locus",
                             "Hermit of Henge Hold",
                             "Optifex Directive"
                           ]
                         },
                         "list2": {
                           "theme": "Destruction Initiative",
                           "list": [
                             "Axis 1",
                             "Conservator",
                             "Conservator",
                             "Corollary",
                             "Inverter",
                             "Inverter",
                             "Accretion Servitors",
                             "Attunement Servitors",
                             "Hermit of Henge Hold",
                             "Reflex Servitors",
                             "Optifex Directive",
                             "Transfinite Emergence Projector",
                             "Transfinite Emergence Projector"
                           ]
                         }
                       },
                       {
                         "name": "Cole Westbrook ",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-295v4QjFjF4H4H4Hg4g4g45gmVmVmVoR0U5e5e5f5f___-2a4mmKmOmRmVmVmVoRmIjXmSeE5fmi5wmT",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Wurmwood 1",
                             "Megalith",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Blackclad Wayfarer",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Farrow Bone Grinders (min)",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Ghetorix",
                             "Storm Raptor",
                             "Tharn Blood Shaman",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Death Wolves",
                             "Shifting Stones",
                             "Tharn Ravagers (min)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Dan Scott Lintott",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khsh2nlnlnlnlnlh6h3nFhmhmhmhmhn___-2khth2nlnlnlnlh4h6h3hmhmhmhnhr",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Child 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Gorehound",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Skin & Moans",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "William Cruickshanks",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-294a4QjGjFjFjFg4g4mVmVoR5e5e5f5fmT___-294qmKjGjG4H4Hg4g45goRjD5e5e5f5fmT",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Krueger 2",
                             "Megalith",
                             "Wold Guardian",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwarden",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Kromac 1",
                             "Ghetorix",
                             "Wold Guardian",
                             "Wold Guardian",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Blackclad Wayfarer",
                             "Hermit of Henge Hold",
                             "Farrow Valkyries",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Spain 2 (Spain Gipsy Team)",
                     "players": [
                       {
                         "name": "Andres Suarez \"Nantes\"",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1q0ylVk9oRe4lVlM1G3t3z3z2_m2___-1pm1lVme3k3kjCjCoR3E3s3C2_3G3Hninini",
                         "list1": {
                           "theme": "The Creator''s Might",
                           "list": [
                             "Kreoss 1",
                             "Judicator",
                             "Exemplar Warder Elias Gade",
                             "Hermit of Henge Hold",
                             "Initiate Tristan Durant",
                             "Judicator",
                             "Scrutator Potentate Severius",
                             "Redeemer",
                             "Vassal Mechanik",
                             "Vassal of Menoth",
                             "Vassal of Menoth",
                             "Choir of Menoth (min)",
                             "Visgoth Juviah Rhoven & Honor Guard"
                           ]
                         },
                         "list2": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Judicator",
                             "Hierophant",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Hermit of Henge Hold",
                             "High Paladin Dartan Vilmon",
                             "Reclaimer Gatekeeper",
                             "The Covenant of Menoth",
                             "Choir of Menoth (min)",
                             "Idrian Skirmishers (max)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         }
                       },
                       {
                         "name": "Daniel Valero \"Reki\"",
                         "faction": "Khador",
                         "cccode": "c3101b_-1S77kZnmnjoR8h8hnf89nf89nfnfnhnK___-1Pk_kTkTkTl5l5l3l34ichl2l7l17Q7Q",
                         "list1": {
                           "theme": "Wolves of Winter",
                           "list": [
                             "Vladimir 2",
                             "Rager",
                             "Ruin",
                             "Greylord Adjunct",
                             "Hermit of Henge Hold",
                             "Koldun Lord",
                             "Koldun Lord",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Doom Reaver Swordsmen",
                             "Greylord Outriders (max)",
                             "Press Gangers (min)"
                           ]
                         },
                         "list2": {
                           "theme": "Armored Korps",
                           "list": [
                             "Sorscha 3",
                             "Marauder",
                             "Marauder",
                             "Marauder",
                             "Man-O-War Kovnik",
                             "Man-O-War Kovnik",
                             "Man-O-War Suppression Tanker",
                             "Man-O-War Suppression Tanker",
                             "Saxon Orrik",
                             "Kayazy Eliminators",
                             "Kommandant Atanas Arconovich & Standard",
                             "Man-O-War Demolition Corps (max)",
                             "Sergeant Dragos Dragadovich",
                             "Man-O-War Shocktroopers (max)",
                             "Man-O-War Shocktroopers (max)"
                           ]
                         }
                       },
                       {
                         "name": "Marc Heredia \"MarcKlatch\"",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-295C4QjGjFcng4g45g5goR5e5e5f5f___-2amPmK4IfrfImI54jXmSmj5wmj5wmH",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Baldur 2",
                             "Megalith",
                             "Wold Guardian",
                             "Woldwarden",
                             "Woldwrath",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Blackclad Wayfarer",
                             "Blackclad Wayfarer",
                             "Hermit of Henge Hold",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Iona 1",
                             "Ghetorix",
                             "Gnarlhorn Satyr",
                             "Bloodweaver Night Witch",
                             "Bog Trog Mist Speaker",
                             "Lord of the Feast",
                             "Tharn Ravager Shaman",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Wolf Riders (max)"
                           ]
                         }
                       },
                       {
                         "name": "Marc Tortosa \"Marvin\"",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2a4mmW4MmRmImUjXmSeEmj5wmj5wmT___-294a4QjGjFjF4H4Hg4g4mVmVmV5e5e5f5fmT",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Loki",
                             "Pureblood Warpwolf",
                             "Tharn Blood Shaman",
                             "Lord of the Feast",
                             "Tharn Wolf Rider Champion",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Death Wolves",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Krueger 2",
                             "Megalith",
                             "Wold Guardian",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Raul Lopez \"Sanga\"",
                         "faction": "Cygnar",
                         "cccode": "c1101b_-1Nid9c9c9yakoRoJahahah6ia5a6a5a6aibz___-1K9aiPiPiPiPiPawaw7iifieiealalk8igig9T",
                         "list1": {
                           "theme": "Storm Division",
                           "list": [
                             "Brisbane 2",
                             "Firefly",
                             "Firefly",
                             "Lancer",
                             "Squire",
                             "Hermit of Henge Hold",
                             "Savio Montero Acosta",
                             "Stormsmith Stormcaller (3)",
                             "Stormsmith Stormcaller (3)",
                             "Stormsmith Stormcaller (3)",
                             "Alexia Ciannor & the Risen",
                             "Stormblade Infantry",
                             "Stormblade Infantry Officer & Standard",
                             "Stormblade Infantry",
                             "Stormblade Infantry Officer & Standard",
                             "Stormsmith Storm Tower",
                             "Storm Strider"
                           ]
                         },
                         "list2": {
                           "theme": "Gravediggers",
                           "list": [
                             "Sloan 1",
                             "Hunter",
                             "Hunter",
                             "Hunter",
                             "Hunter",
                             "Hunter",
                             "Minuteman",
                             "Minuteman",
                             "Reinholdt, Gobber Speculator",
                             "Patrol Dog",
                             "Trench Buster",
                             "Trench Buster",
                             "Trencher Master Gunner",
                             "Trencher Master Gunner",
                             "Lynus Wesselbaum & Edrea Lloryrr",
                             "Trencher Express Team",
                             "Trencher Express Team",
                             "Trencher Infantry (min)"
                           ]
                         }
                       },
                       {
                         "name": "Daniel Rios \"Kuni\"",
                         "faction": "Skorne",
                         "cccode": "c9101b_-1snb6r6U4x5J5G6Nf4f4f45U5U5ShVhV___-2cfk4x6S4C4C6u6u6vncn3n3n9n1n9n1n9n1mB",
                         "list1": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Makeda 3",
                             "Agonizer",
                             "Archidon",
                             "Basilisk Krea",
                             "Molik Karn",
                             "Titan Gladiator",
                             "Aptimus Marketh",
                             "Swamp Gobber River Raider",
                             "Swamp Gobber River Raider",
                             "Swamp Gobber River Raider",
                             "Paingiver Beast Handlers (min)",
                             "Paingiver Beast Handlers (min)",
                             "Paingiver Bloodrunners",
                             "Siege Animantarax",
                             "Siege Animantarax"
                           ]
                         },
                         "list2": {
                           "theme": "The Exalted",
                           "list": [
                             "Zaal 2",
                             "Basilisk Krea",
                             "Cyclops Raider",
                             "Cyclops Shaman",
                             "Cyclops Shaman",
                             "Ancestral Guardian",
                             "Ancestral Guardian",
                             "Extoller Soulward",
                             "Hakaar the Destroyer",
                             "Immortal Vessel",
                             "Immortal Vessel",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Spain Misfits",
                     "players": [
                       {
                         "name": "Jose Luque Fe \"Grillito\" ",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1Wkv1919c3kr2Iks1-1Q1Tkx1Nkeko___-1U0F1h1h1h1h2Ai22k2k2of0i5nkdWhZh_bB",
                         "list1": {
                           "theme": "Scourge of the Broken Coast",
                           "list": [
                             "Deneghra 1",
                             "Deathripper",
                             "Deathripper",
                             "Kraken",
                             "Axiara Wraithblade",
                             "General Gerlak Slaughterborn",
                             "Severa Blacktide",
                             "Bloodgorgers (min)",
                             "Satyxis Blood Witches (min)",
                             "Satyxis Blood Hag",
                             "Satyxis Gunslingers",
                             "Satyxis Raiders (max)",
                             "Satyxis Raider Sea Witch",
                             "Scharde Dirge Seers"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Host",
                           "list": [
                             "Skarre 1",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Skarlock Thrall",
                             "Bane Lord Tartarus",
                             "Machine Wraith",
                             "Machine Wraith",
                             "Scrap Thrall (3)",
                             "Soul Trapper",
                             "Bane Knights (max)",
                             "Bane Knight Officer",
                             "Bane Riders (max)",
                             "Bane Warriors (min)",
                             "Bane Warrior Officer & Standard",
                             "Wraith Engine"
                           ]
                         }
                       },
                       {
                         "name": "Jose Mateos",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2jhwnlnlnlh3nFnGoRhphphinEnEhenChenC___-2khsh2nlnlnlh4h3h3nFhmhmhmhmhnhr",
                         "list1": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Wanderer 1",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Grave Ghoul",
                             "Hermit of Henge Hold",
                             "Trapperkin",
                             "Trapperkin",
                             "Mad Caps",
                             "Malady Man",
                             "Malady Man",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Child 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "Marta Ribalta ",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1q0ylV7jlUe4lVlM1G3t3t3z3z3B2_m2___-1r1l3U3Umel-lUm03p3B2_2mbQ2jfV2jfV2jfV",
                         "list1": {
                           "theme": "The Creator''s Might",
                           "list": [
                             "Kreoss 1",
                             "Judicator",
                             "Anastasia di Bray",
                             "Exemplar Warder",
                             "Initiate Tristan Durant",
                             "Judicator",
                             "Scrutator Potentate Severius",
                             "Redeemer",
                             "Vassal Mechanik",
                             "Vassal Mechanik",
                             "Vassal of Menoth",
                             "Vassal of Menoth",
                             "Wrack",
                             "Choir of Menoth (min)",
                             "Visgoth Juviah Rhoven & Honor Guard"
                           ]
                         },
                         "list2": {
                           "theme": "Exemplar Interdiction",
                           "list": [
                             "Vindictus 1",
                             "Sanctifier",
                             "Sanctifier",
                             "Hierophant",
                             "Exemplar Bastion Seneschal",
                             "Exemplar Warder",
                             "High Exemplar Gravus",
                             "Knights Exemplar Seneschal",
                             "Wrack",
                             "Choir of Menoth (min)",
                             "Exemplar Errants (max)",
                             "Exemplar Errant Officer & Standard",
                             "Knights Exemplar",
                             "Knights Exemplar Officer",
                             "Knights Exemplar",
                             "Knights Exemplar Officer",
                             "Knights Exemplar",
                             "Knights Exemplar Officer"
                           ]
                         }
                       },
                       {
                         "name": "Sergi \"No D\" \"Randsak\"",
                         "faction": "Cygnar",
                         "cccode": "c1101b_-1L9aiPiPiPiPawawawawakan3WlNf5aenK___-1LbS9c9c9JakanlNf5aj9caeaebzbz",
                         "list1": {
                           "theme": "Heavy Metal",
                           "list": [
                             "Sloan 1",
                             "Hunter",
                             "Hunter",
                             "Hunter",
                             "Hunter",
                             "Minuteman",
                             "Minuteman",
                             "Minuteman",
                             "Minuteman",
                             "Squire",
                             "Captain Arlan Strangewayes",
                             "Eiryss, Mage Hunter of Ios",
                             "Journeyman Lieutenant Allister Caine",
                             "Ace",
                             "Field Mechaniks (min)",
                             "Press Gangers (min)"
                           ]
                         },
                         "list2": {
                           "theme": "Heavy Metal",
                           "list": [
                             "Nemo 3",
                             "Firefly",
                             "Firefly",
                             "Thunderhead",
                             "Squire",
                             "Captain Arlan Strangewayes",
                             "Journeyman Lieutenant Allister Caine",
                             "Ace",
                             "Journeyman Warcaster",
                             "Firefly",
                             "Field Mechaniks (min)",
                             "Field Mechaniks (min)",
                             "Storm Strider",
                             "Storm Strider"
                           ]
                         }
                       },
                       {
                         "name": "Sergi del Molino Rostey \"D\" ",
                         "faction": "Mercenaries",
                         "cccode": "c6101b_-20oHlLlL9v3We0nSoRfC733G3Hchch8M___-2582nV8k8knSnN8S8TnPnPnPf4f4nKnKko8J8J",
                         "list1": {
                           "theme": "The Irregulars",
                           "list": [
                             "Fiona 1",
                             "Toro",
                             "Toro",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Eiryss, Mage Hunter of Ios",
                             "Gastone Crosse",
                             "Swabber",
                             "Hermit of Henge Hold",
                             "Hutchuk, Ogrun Bounty Hunter",
                             "Croe''s Cutthroats (max)",
                             "Idrian Skirmishers (max)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Kayazy Eliminators",
                             "Kayazy Eliminators",
                             "Lady Aiyana & Master Holt"
                           ]
                         },
                         "list2": {
                           "theme": "Talion Charter",
                           "list": [
                             "Montador 1",
                             "Blockader",
                             "Mariner",
                             "Mariner",
                             "Swabber",
                             "First Mate Hawk",
                             "Lord Rockbottom",
                             "Master Gunner Dougal MacNaile",
                             "Powder Monkey",
                             "Powder Monkey",
                             "Powder Monkey",
                             "Swamp Gobber River Raider",
                             "Swamp Gobber River Raider",
                             "Press Gangers (min)",
                             "Press Gangers (min)",
                             "Scharde Dirge Seers",
                             "Sea Dog Deck Gun",
                             "Sea Dog Deck Gun"
                           ]
                         }
                       },
                       {
                         "name": "Alternate"
                       },
                       {
                         "name": "Sandra Bertolin \"DaiGuard\"",
                         "faction": "Khador",
                         "cccode": "c3101b_-1Pk_kTkTkTl5l5l3l34ichl2l7l17Q7Q___-1P76kWkU7il5l5l4l4l3l3l27Ll07Ll0l7l1",
                         "list1": {
                           "theme": "Armored Korps",
                           "list": [
                             "Sorscha 3",
                             "Marauder",
                             "Marauder",
                             "Marauder",
                             "Man-O-War Kovnik",
                             "Man-O-War Kovnik",
                             "Man-O-War Suppression Tanker",
                             "Man-O-War Suppression Tanker",
                             "Saxon Orrik",
                             "Kayazy Eliminators",
                             "Kommandant Atanas Arconovich & Standard",
                             "Man-O-War Demolition Corps (max)",
                             "Sergeant Dragos Dragadovich",
                             "Man-O-War Shocktroopers (max)",
                             "Man-O-War Shocktroopers (max)"
                           ]
                         },
                         "list2": {
                           "theme": "Armored Korps",
                           "list": [
                             "Vladimir 1",
                             "Juggernaut",
                             "Spriggan",
                             "Reinholdt, Gobber Speculator",
                             "Man-O-War Kovnik",
                             "Man-O-War Kovnik",
                             "Man-O-War Strike Tanker",
                             "Man-O-War Strike Tanker",
                             "Man-O-War Suppression Tanker",
                             "Man-O-War Suppression Tanker",
                             "Kommandant Atanas Arconovich & Standard",
                             "Man-O-War Bombardiers (min)",
                             "Man-O-War Bombardier Officer",
                             "Man-O-War Bombardiers (min)",
                             "Man-O-War Bombardier Officer",
                             "Man-O-War Demolition Corps (max)",
                             "Sergeant Dragos Dragadovich"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Spain Rogue",
                     "players": [
                       {
                         "name": "Carlos Carreras - ccarolus",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1q0yg97jk9e4lVlM1G3t3z3z2_m2___-1pm1lVme3k3kjCoRoLoL3C3t2_3G3Hninini",
                         "list1": {
                           "theme": "The Creator''s Might",
                           "list": [
                             "Kreoss 1",
                             "Revelator",
                             "Anastasia di Bray",
                             "Exemplar Warder Elias Gade",
                             "Initiate Tristan Durant",
                             "Judicator",
                             "Scrutator Potentate Severius",
                             "Redeemer",
                             "Vassal Mechanik",
                             "Vassal of Menoth",
                             "Vassal of Menoth",
                             "Choir of Menoth (min)",
                             "Visgoth Juviah Rhoven & Honor Guard"
                           ]
                         },
                         "list2": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Judicator",
                             "Hierophant",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Hermit of Henge Hold",
                             "Menite Archon",
                             "Menite Archon",
                             "The Covenant of Menoth",
                             "Vassal Mechanik",
                             "Choir of Menoth (min)",
                             "Idrian Skirmishers (max)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         }
                       },
                       {
                         "name": "David Coderch - DaveQD",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2jhvnlnlnlh4h4nFnGoRnEnEhchenChenC___-2khsh2nlnlnlh4h7h3h3nFhmhmhmhmoRhn",
                         "list1": {
                           "theme": "Bump in the Night",
                           "list": [
                             "King of Nothing 1",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Crabbits (2)",
                             "Baron Tonguelick, Lord of Warts",
                             "Grave Ghoul",
                             "Hermit of Henge Hold",
                             "Malady Man",
                             "Malady Man",
                             "Murder Crows",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Child 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Rattler",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Hermit of Henge Hold",
                             "Lady Karianna Rose"
                           ]
                         }
                       },
                       {
                         "name": "Ferran Villegas - Kelesis",
                         "faction": "Legion of Everblight",
                         "cccode": "ca101b_-2hbskE28kBcocokPkGkGkJkJfTfT___-2igNkKeJeJeJaObebekacob9b9kGb3b42N",
                         "list1": {
                           "theme": "Primal Terrors",
                           "list": [
                             "Kallus 1",
                             "Blightbringer",
                             "Harrier",
                             "Ammok the Truthbearer",
                             "Spell Martyr",
                             "Spell Martyr",
                             "Warmonger War Chief",
                             "Blighted Rotwings (max)",
                             "Blighted Rotwings (max)",
                             "Chosen of Everblight (max)",
                             "Chosen of Everblight (max)",
                             "Hellmouth",
                             "Hellmouth"
                           ]
                         },
                         "list2": {
                           "theme": "Ravens of War",
                           "list": [
                             "Fyanna 2",
                             "Golab",
                             "Neraph",
                             "Neraph",
                             "Neraph",
                             "Seraph",
                             "Blighted Nyss Sorceress & Hellion",
                             "Blighted Nyss Sorceress & Hellion",
                             "Craelix, Fang of Everblight",
                             "Spell Martyr",
                             "The Forsaken",
                             "The Forsaken",
                             "Blighted Rotwings (max)",
                             "Strider Scouts",
                             "Strider Scout Officer & Musician",
                             "Swamp Gobber Bellows Crew"
                           ]
                         }
                       },
                       {
                         "name": "Manel Tulla - Manelo",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-295v4QjGjFjF4H4Hg4g4mVmVmVoR0U5e5e5f5f___-2a4mmDmOmVmVmVjXmSeEmi5wmj5wmT",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Wurmwood 1",
                             "Megalith",
                             "Wold Guardian",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Farrow Bone Grinders (min)",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Feral Warpwolf",
                             "Storm Raptor",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Death Wolves",
                             "Tharn Ravagers (min)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Santi Arteaga - Tkila",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1nnA1gjsjseP9v3y3y4141oRf2f2hTmpmp___-1n46jsjsjs3y3y4141oRdPdP3x3xhTmpmp",
                         "list1": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Garryth 2",
                             "Chimera",
                             "Harpy",
                             "Harpy",
                             "Moros",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "House Vyre Electromancers",
                             "House Vyre Electromancers",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Ossyan 1",
                             "Harpy",
                             "Harpy",
                             "Harpy",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "Houseguard Thane",
                             "Houseguard Thane",
                             "Stormfall Archers",
                             "Stormfall Archers",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Sweden 2",
                     "players": [
                       {
                         "name": "Arvid",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1Wkt1s1skpkr2IoRkqkg1_kk1Q1T1Q1Tko___-1U0F1h1h1h1h2Ai22E2odWhZh_bBbB",
                         "list1": {
                           "theme": "Scourge of the Broken Coast",
                           "list": [
                             "Skarre 3",
                             "Leviathan",
                             "Leviathan",
                             "Satyxis Blood Priestess",
                             "Axiara Wraithblade",
                             "General Gerlak Slaughterborn",
                             "Hermit of Henge Hold",
                             "Misery Cage",
                             "Blighted Trollkin Marauders (max)",
                             "Bloodgorgers (max)",
                             "Jussika Bloodtongue",
                             "Satyxis Blood Witches (min)",
                             "Satyxis Blood Hag",
                             "Satyxis Blood Witches (min)",
                             "Satyxis Blood Hag",
                             "Scharde Dirge Seers"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Host",
                           "list": [
                             "Skarre 1",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Skarlock Thrall",
                             "Bane Lord Tartarus",
                             "Darragh Wrathe",
                             "Scrap Thrall (3)",
                             "Bane Riders (max)",
                             "Bane Warriors (min)",
                             "Bane Warrior Officer & Standard",
                             "Wraith Engine",
                             "Wraith Engine"
                           ]
                         }
                       },
                       {
                         "name": "Hugo",
                         "faction": "Mercenaries",
                         "cccode": "c6101b_-24b_9o9o94949494929292pb9ifinvnxnxnsiB___-24oHnVlL9vpbfi7AnvnxnsiAiBiB61",
                         "list1": {
                           "theme": "Soldiers of Fortune",
                           "list": [
                             "Ossrum 1",
                             "Ghordson Basher",
                             "Ghordson Basher",
                             "Ghordson Driller",
                             "Ghordson Driller",
                             "Ghordson Driller",
                             "Ghordson Driller",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Alexia, Mistress of the Witchfire",
                             "Ogrun Bokur",
                             "Sergeant Nicolas Verendrye",
                             "Steelhead Arcanist",
                             "Steelhead Ironhead",
                             "Steelhead Ironhead",
                             "Steelhead Cannon Crew",
                             "Steelhead Halberdiers (max)"
                           ]
                         },
                         "list2": {
                           "theme": "Soldiers of Fortune",
                           "list": [
                             "Fiona 1",
                             "Blockader",
                             "Toro",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Alexia, Mistress of the Witchfire",
                             "Sergeant Nicolas Verendrye",
                             "Stannis Brocker",
                             "Steelhead Arcanist",
                             "Steelhead Ironhead",
                             "Steelhead Cannon Crew",
                             "Steelhead Halberdiers (min)",
                             "Steelhead Halberdiers (max)",
                             "Steelhead Halberdiers (max)",
                             "Steelhead Heavy Cavalry (min)"
                           ]
                         }
                       },
                       {
                         "name": "Johan",
                         "faction": "Crucible Guard",
                         "cccode": "cf101b_-1vlqltlblulululololFlHlHlHlnlslElElElC___-1ul8ltlulolFlHlHoRlnlclElElElElkld",
                         "list1": {
                           "theme": "Prima Materia",
                           "list": [
                             "Locke 1",
                             "Liberator",
                             "Suppressor",
                             "Toro",
                             "Toro",
                             "Toro",
                             "Vanguard",
                             "Vanguard",
                             "Aurum Ominus Alyce Marc",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Prospero",
                             "Retaliator",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Combat Alchemists"
                           ]
                         },
                         "list2": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Syvestro 1",
                             "Liberator",
                             "Toro",
                             "Vanguard",
                             "Aurum Ominus Alyce Marc",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Hermit of Henge Hold",
                             "Prospero",
                             "Vulcan",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Dragon''s Breath Rocket",
                             "Railless Interceptor"
                           ]
                         }
                       },
                       {
                         "name": "Morgan",
                         "faction": "Skorne",
                         "cccode": "c9101b_-2eg26r4xm_6N6v6voRn35V6o6FhVhV___-2cgO4y6S4CcPmZ6u6un2n2n2ncn9n1n9n1n9n1mB",
                         "list1": {
                           "theme": "Winds of Death",
                           "list": [
                             "Xekaar 1",
                             "Agonizer",
                             "Basilisk Krea",
                             "Desert Hydra",
                             "Aptimus Marketh",
                             "Extoller Soulward",
                             "Extoller Soulward",
                             "Hermit of Henge Hold",
                             "Immortal Vessel",
                             "Paingiver Beast Handlers (max)",
                             "Venator Reivers (min)",
                             "Venator Reiver Officer & Standard",
                             "Siege Animantarax",
                             "Siege Animantarax"
                           ]
                         },
                         "list2": {
                           "theme": "The Exalted",
                           "list": [
                             "Zaadesh 2",
                             "Cyclops Brute",
                             "Cyclops Raider",
                             "Cyclops Shaman",
                             "Reptile Hound",
                             "Abidan the Keeper",
                             "Ancestral Guardian",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian"
                           ]
                         }
                       },
                       {
                         "name": "Robin",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-294a4QjGjFjF4H4Hg4g4mVmVmVoR5e5f5fmT___-2a4mmKmOmRmVmVmVmIjXmSeE5fmj5wmT",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Krueger 2",
                             "Megalith",
                             "Wold Guardian",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Ghetorix",
                             "Storm Raptor",
                             "Tharn Blood Shaman",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Death Wolves",
                             "Shifting Stones",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Sweden Ombudsman",
                     "players": [
                       {
                         "name": "David Gustafsson",
                         "faction": "Trollbloods",
                         "cccode": "c7101b_-264N0r0jjq6GoobF0o0l0miTbKiT___-28j10rjo04jqpk6G0ki-iZiZezeziTbKcC",
                         "list1": {
                           "theme": "Band of Heroes",
                           "list": [
                             "Madrak 1",
                             "Dire Troll Bomber",
                             "Troll Bouncer",
                             "Trollkin Runebearer",
                             "Fell Caller Hero",
                             "Trollkin Skinner",
                             "Wrong Eye",
                             "Kriel Warriors (max)",
                             "Krielstone Bearer & Stone Scribes (max)",
                             "Stone Scribe Elder",
                             "Trollkin Champions (max)",
                             "Skaldi Bonehammer",
                             "Trollkin Champions (max)"
                           ]
                         },
                         "list2": {
                           "theme": "Storm of the North",
                           "list": [
                             "Kolgrima 1",
                             "Dire Troll Bomber",
                             "Pyre Troll",
                             "Winter Troll",
                             "Trollkin Runebearer",
                             "Boomhowler, Solo Artist",
                             "Fell Caller Hero",
                             "Krielstone Bearer & Stone Scribes (min)",
                             "Northkin Elder",
                             "Northkin Bear Handlers & Battle Bears",
                             "Northkin Bear Handlers & Battle Bears",
                             "Northkin Fire Eaters",
                             "Northkin Fire Eaters",
                             "Trollkin Champions (max)",
                             "Skaldi Bonehammer",
                             "Trollkin Sorcerer (1)"
                           ]
                         }
                       },
                       {
                         "name": "Fredrik Rabén",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-294a4QjGjFjF4H4Hg4g4oR5e5e5f5fmT___-2a4mmKmOmRmVoRmIjXmSeEmj5wmT",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Krueger 2",
                             "Megalith",
                             "Wold Guardian",
                             "Woldwarden",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Hermit of Henge Hold",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Ghetorix",
                             "Storm Raptor",
                             "Tharn Blood Shaman",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Death Wolves",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Gustav Berggren",
                         "faction": "Legion of Everblight",
                         "cccode": "ca101b_-2hfdkEbvaOfIcokPkJkJfTfT___-2heweJeJbwkNkNaOfIcocob9jDfTfT",
                         "list1": {
                           "theme": "Primal Terrors",
                           "list": [
                             "Twins 2",
                             "Blightbringer",
                             "Naga Nightlurker",
                             "Seraph",
                             "Bog Trog Mist Speaker",
                             "Spell Martyr",
                             "Warmonger War Chief",
                             "Chosen of Everblight (max)",
                             "Chosen of Everblight (max)",
                             "Hellmouth",
                             "Hellmouth"
                           ]
                         },
                         "list2": {
                           "theme": "Primal Terrors",
                           "list": [
                             "Absylonia 2",
                             "Neraph",
                             "Neraph",
                             "Proteus",
                             "Scythean",
                             "Scythean",
                             "Seraph",
                             "Bog Trog Mist Speaker",
                             "Spell Martyr",
                             "Spell Martyr",
                             "The Forsaken",
                             "Farrow Valkyries",
                             "Hellmouth",
                             "Hellmouth"
                           ]
                         }
                       },
                       {
                         "name": "Mathias Dreifaldt",
                         "faction": "Skorne",
                         "cccode": "c9101b_-2cgO6r4xm-mZ6u6un2n2n2ncoRn8n9n1n9n12NmB___-2enb4x4y4y4y5J6N6v6voRn35U5UhVhV",
                         "list1": {
                           "theme": "The Exalted",
                           "list": [
                             "Zaadesh 2",
                             "Agonizer",
                             "Basilisk Krea",
                             "Bronzeback Titan",
                             "Abidan the Keeper",
                             "Ancestral Guardian",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Hermit of Henge Hold",
                             "Immortals (min)",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Swamp Gobber Bellows Crew",
                             "Supreme Guardian"
                           ]
                         },
                         "list2": {
                           "theme": "Winds of Death",
                           "list": [
                             "Makeda 3",
                             "Basilisk Krea",
                             "Cyclops Brute",
                             "Cyclops Brute",
                             "Cyclops Brute",
                             "Molik Karn",
                             "Aptimus Marketh",
                             "Extoller Soulward",
                             "Extoller Soulward",
                             "Hermit of Henge Hold",
                             "Immortal Vessel",
                             "Paingiver Beast Handlers (min)",
                             "Paingiver Beast Handlers (min)",
                             "Siege Animantarax",
                             "Siege Animantarax"
                           ]
                         }
                       },
                       {
                         "name": "Olov Winroth",
                         "faction": "Khador",
                         "cccode": "c3101b_-1S47kS7qnjpbno8h8hnf89nf89nf89nf89nnnn___-1GbWlV9xjCjCnooR3EoLoL3t3z3z2_nini",
                         "list1": {
                           "theme": "Wolves of Winter",
                           "list": [
                             "Sorscha 1",
                             "Decimator",
                             "Devastator",
                             "Greylord Adjunct",
                             "Alexia, Mistress of the Witchfire",
                             "Fenris",
                             "Koldun Lord",
                             "Koldun Lord",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Greylord Ternion",
                             "Greylord Ternion"
                           ]
                         },
                         "list2": {
                           "theme": "Warriors of the Old Faith",
                           "list": [
                             "Vladimir 3",
                             "Judicator",
                             "Repenter",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Fenris",
                             "Hermit of Henge Hold",
                             "High Paladin Dartan Vilmon",
                             "Menite Archon",
                             "Menite Archon",
                             "Vassal Mechanik",
                             "Vassal of Menoth",
                             "Vassal of Menoth",
                             "Choir of Menoth (min)",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         }
                       },
                       {
                         "name": "Alternate"
                       },
                       {
                         "name": "Oskar Sibeck",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1plTlV3kjCjCoRe4lV3t2_ninini___-1pm1l_l_lVme3k3kjCjCoR3C3t2_ninini",
                         "list1": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Cyrenia 1",
                             "Judicator",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Hermit of Henge Hold",
                             "Initiate Tristan Durant",
                             "Judicator",
                             "Vassal Mechanik",
                             "Choir of Menoth (min)",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         },
                         "list2": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Indictor",
                             "Indictor",
                             "Judicator",
                             "Hierophant",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Hermit of Henge Hold",
                             "The Covenant of Menoth",
                             "Vassal Mechanik",
                             "Choir of Menoth (min)",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Sweden Smorgasbord",
                     "players": [
                       {
                         "name": "Alexander Ivanovic",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-294qmKjGjG4H4Hg4g45goRjD5e5e5f5fmT___-2a4wmO4zmVmVmVmImU4_4_mi5wmj5wmT",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Kromac 1",
                             "Ghetorix",
                             "Wold Guardian",
                             "Wold Guardian",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Blackclad Wayfarer",
                             "Hermit of Henge Hold",
                             "Farrow Valkyries",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Mohsar 1",
                             "Storm Raptor",
                             "Wild Argus",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Tharn Wolf Rider Champion",
                             "Tharn Bloodweavers",
                             "Tharn Bloodweavers",
                             "Tharn Ravagers (min)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Andreas Holm",
                         "faction": "Crucible Guard",
                         "cccode": "cf101b_-1vlqltlblulululololFlHlHlHlnlslElElElC___-1ul8ltlslulFoRlnlclElEiBlDld",
                         "list1": {
                           "theme": "Prima Materia",
                           "list": [
                             "Locke 1",
                             "Liberator",
                             "Suppressor",
                             "Toro",
                             "Toro",
                             "Toro",
                             "Vanguard",
                             "Vanguard",
                             "Aurum Ominus Alyce Marc",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Prospero",
                             "Retaliator",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Combat Alchemists"
                           ]
                         },
                         "list2": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Syvestro 1",
                             "Liberator",
                             "Retaliator",
                             "Toro",
                             "Aurum Ominus Alyce Marc",
                             "Hermit of Henge Hold",
                             "Prospero",
                             "Vulcan",
                             "Trancer",
                             "Trancer",
                             "Steelhead Halberdiers (max)",
                             "Doctor Alejandro Mosby",
                             "Railless Interceptor"
                           ]
                         }
                       },
                       {
                         "name": "Henrik Oskarsson",
                         "faction": "Cygnar",
                         "cccode": "c1101b_-1L919GicakoRlNf5aj9c6iaebzbz___-1N7Cf6akaj9coIoJdhadada5a6",
                         "list1": {
                           "theme": "Heavy Metal",
                           "list": [
                             "Brisbane 1",
                             "Ironclad",
                             "Triumph",
                             "Squire",
                             "Hermit of Henge Hold",
                             "Journeyman Lieutenant Allister Caine",
                             "Ace",
                             "Journeyman Warcaster",
                             "Firefly",
                             "Alexia Ciannor & the Risen",
                             "Field Mechaniks (min)",
                             "Storm Strider",
                             "Storm Strider"
                           ]
                         },
                         "list2": {
                           "theme": "Storm Division",
                           "list": [
                             "Stryker 1",
                             "Hurricane",
                             "Squire",
                             "Journeyman Warcaster",
                             "Firefly",
                             "Ragman",
                             "Savio Montero Acosta",
                             "Stormblade Captain",
                             "Storm Lances (max)",
                             "Storm Lances (max)",
                             "Stormblade Infantry",
                             "Stormblade Infantry Officer & Standard"
                           ]
                         }
                       },
                       {
                         "name": "Magnus Forslund",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-294a4QjGjF4H4H4Hg4g4mVmVmVoR5e5e5f5fmT___-2a4mmKmOmRmVmVmVmIjXmSeE5fmj5wmT",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Krueger 2",
                             "Megalith",
                             "Wold Guardian",
                             "Woldwarden",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Ghetorix",
                             "Storm Raptor",
                             "Tharn Blood Shaman",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Death Wolves",
                             "Shifting Stones",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Peter Alsen",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khth2nlnlnlh4h4h3h3hmhmhmhnhr___-2jhvnlnlnlnlh4nFnGhinEnEhchdnChenC",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Crabbits (2)",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         },
                         "list2": {
                           "theme": "Bump in the Night",
                           "list": [
                             "King of Nothing 1",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Baron Tonguelick, Lord of Warts",
                             "Grave Ghoul",
                             "Mad Caps",
                             "Malady Man",
                             "Malady Man",
                             "Murder Crows",
                             "Neigh Slayers (min)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Switzerland Cheese",
                     "players": [
                       {
                         "name": "Player 1",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1XnA432wePmv9v3y3y3yoR3M3MhMhMmpmp___-1o0G4E0w3y3y3W41414L4Lmo313umo313ump",
                         "list1": {
                           "theme": "Forges of War",
                           "list": [
                             "Garryth 2",
                             "Discordia",
                             "Griffon",
                             "Moros",
                             "Phoenix",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Hermit of Henge Hold",
                             "House Shyeel Magister",
                             "House Shyeel Magister",
                             "House Shyeel Arcanists",
                             "House Shyeel Arcanists",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Kaelyssa 1",
                             "Banshee",
                             "Hydra",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Eiryss, Mage Hunter of Ios",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "House Shyeel Artificer",
                             "House Shyeel Artificer",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Soulless Escort (1)",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Soulless Escort (1)",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "Player 2",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2a4qmKmJmVmIjXmS5f4_mj5wmj5wmT___-2a5BmKmJmRmVmIjXmSeE5f4_mj5wmj5w",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Kromac 1",
                             "Ghetorix",
                             "Warpwolf Stalker",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Shifting Stones",
                             "Tharn Bloodweavers",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Grayle 1",
                             "Ghetorix",
                             "Warpwolf Stalker",
                             "Tharn Blood Shaman",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Death Wolves",
                             "Shifting Stones",
                             "Tharn Bloodweavers",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain"
                           ]
                         }
                       },
                       {
                         "name": "Player 3",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khxh2h2h2nlnlh4h5h6h6nFhmhmhmhmoRhn___-2jhuh2nlnlh4nFnGhonEnEhchenChenChh",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Old Witch 3",
                             "Cage Rager",
                             "Cage Rager",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Frightmare",
                             "Gorehound",
                             "Gorehound",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Hermit of Henge Hold",
                             "Lady Karianna Rose"
                           ]
                         },
                         "list2": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Heretic 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Baron Tonguelick, Lord of Warts",
                             "Grave Ghoul",
                             "Lord Longfellow",
                             "Malady Man",
                             "Malady Man",
                             "Murder Crows",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Twilight Sisters"
                           ]
                         }
                       },
                       {
                         "name": "Player 4",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1q171U1q1rl_1H3U241Lme3C3z3z3B30m2___-1rgAlV221G1Hmel-lM9x3z3z3B2_lX",
                         "list1": {
                           "theme": "The Creator''s Might",
                           "list": [
                             "Amon 1",
                             "Crusader",
                             "Dervish",
                             "Devout",
                             "Indictor",
                             "Revenger",
                             "Sanctifier",
                             "Templar",
                             "Vigilant",
                             "Hierophant",
                             "The Covenant of Menoth",
                             "Vassal of Menoth",
                             "Vassal of Menoth",
                             "Wrack",
                             "Choir of Menoth (max)",
                             "Visgoth Juviah Rhoven & Honor Guard"
                           ]
                         },
                         "list2": {
                           "theme": "Exemplar Interdiction",
                           "list": [
                             "Durant 2",
                             "Judicator",
                             "Reckoner",
                             "Redeemer",
                             "Revenger",
                             "Hierophant",
                             "Exemplar Bastion Seneschal",
                             "Scrutator Potentate Severius",
                             "Repenter",
                             "Vassal of Menoth",
                             "Vassal of Menoth",
                             "Wrack",
                             "Choir of Menoth (min)",
                             "Exemplar Bastions (max)"
                           ]
                         }
                       },
                       {
                         "name": "Player 5",
                         "faction": "Skorne",
                         "cccode": "c9101b_-1s3V6reFeFeF4xjijf6N7yfFea5G5U5U___-1snb6r4xji4y4y5J5G6NfI5UhVhV",
                         "list1": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Morghoul 1",
                             "Agonizer",
                             "Aradus Soldier",
                             "Aradus Soldier",
                             "Aradus Soldier",
                             "Basilisk Krea",
                             "Battle Boar",
                             "Swamp Horror",
                             "Aptimus Marketh",
                             "Orin Midwinter, Rogue Inquisitor",
                             "Swamp Gobber Chef",
                             "Tyrant Zaadesh",
                             "Titan Gladiator",
                             "Paingiver Beast Handlers (min)",
                             "Paingiver Beast Handlers (min)"
                           ]
                         },
                         "list2": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Makeda 3",
                             "Agonizer",
                             "Basilisk Krea",
                             "Battle Boar",
                             "Cyclops Brute",
                             "Cyclops Brute",
                             "Molik Karn",
                             "Titan Gladiator",
                             "Aptimus Marketh",
                             "Bog Trog Mist Speaker",
                             "Paingiver Beast Handlers (min)",
                             "Siege Animantarax",
                             "Siege Animantarax"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Switzerland Chocolate",
                     "players": [
                       {
                         "name": "Player 1",
                         "faction": "Cygnar",
                         "cccode": "c1101b_-1NbS9c9c9yakplaj9cpqahahahfOfObzbz___-1M8Uc09AakanplaglNf5aj9b9Mir",
                         "list1": {
                           "theme": "Storm Division",
                           "list": [
                             "Nemo 3",
                             "Firefly",
                             "Firefly",
                             "Lancer",
                             "Squire",
                             "Dez",
                             "Journeyman Warcaster",
                             "Firefly",
                             "Sir Dreyfus the Storm Knight",
                             "Stormsmith Stormcaller (3)",
                             "Stormsmith Stormcaller (3)",
                             "Stormsmith Stormcaller (3)",
                             "Stormsmith Grenadiers",
                             "Stormsmith Grenadiers",
                             "Storm Strider",
                             "Storm Strider"
                           ]
                         },
                         "list2": {
                           "theme": "Sons of the Tempest",
                           "list": [
                             "Haley 2",
                             "Stormwall",
                             "Thorn",
                             "Squire",
                             "Captain Arlan Strangewayes",
                             "Dez",
                             "Gun Mage Captain Adept",
                             "Journeyman Lieutenant Allister Caine",
                             "Ace",
                             "Journeyman Warcaster",
                             "Charger",
                             "Black 13th Strike Force",
                             "Horgenhold Artillery Corps"
                           ]
                         }
                       },
                       {
                         "name": "Player 2",
                         "faction": "Skorne",
                         "cccode": "c9101b_-1s3_6r4x4Cm_n4ea6r5G5V___-2cfkn46u6un2n2n2ncn9n1n9n1mBmB",
                         "list1": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Makeda 1",
                             "Agonizer",
                             "Basilisk Krea",
                             "Cyclops Shaman",
                             "Desert Hydra",
                             "Mammoth",
                             "Tyrant Zaadesh",
                             "Agonizer",
                             "Titan Gladiator",
                             "Paingiver Beast Handlers (max)"
                           ]
                         },
                         "list2": {
                           "theme": "The Exalted",
                           "list": [
                             "Zaal 2",
                             "Mammoth",
                             "Ancestral Guardian",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian",
                             "Supreme Guardian"
                           ]
                         }
                       },
                       {
                         "name": "Player 3",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khth2nlnlnlnlh4h3j6hmhmhmhmhnhr___-2khsh2nlh4h3h3h3h3nFhmhmhmhmhr",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Skin & Moans",
                             "Eilish Garrity, the Occultist",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Child 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "Player 4",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1odU1gmx3y3W41414Lmo313umo313ump___-1nnAjsjsmv9vhJ3y3y4141oR4kf2hO3uhTmp",
                         "list1": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Issyria 1",
                             "Chimera",
                             "Hyperion",
                             "Arcanist Mechanik",
                             "Eiryss, Mage Hunter of Ios",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "House Shyeel Artificer",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Soulless Escort (1)",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Soulless Escort (1)",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Garryth 2",
                             "Harpy",
                             "Harpy",
                             "Phoenix",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Aelyth Vyr, Blade of Nyssor",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "Lanyssa Ryssyl, Nyss Sorceress",
                             "House Vyre Electromancers",
                             "Ryssovass Defenders (max)",
                             "Soulless Escort (1)",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "Player 5",
                         "faction": "Crucible Guard",
                         "cccode": "cf101b_-1vlqltlululolclFlnlblElElClk___-1ul8ltlslulFfClnlslElElklkiBlDldld",
                         "list1": {
                           "theme": "Prima Materia",
                           "list": [
                             "Locke 1",
                             "Liberator",
                             "Toro",
                             "Toro",
                             "Vanguard",
                             "Vulcan",
                             "Aurum Ominus Alyce Marc",
                             "Prospero",
                             "Suppressor",
                             "Trancer",
                             "Trancer",
                             "Combat Alchemists",
                             "Dragon''s Breath Rocket"
                           ]
                         },
                         "list2": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Syvestro 1",
                             "Liberator",
                             "Retaliator",
                             "Toro",
                             "Aurum Ominus Alyce Marc",
                             "Hutchuk, Ogrun Bounty Hunter",
                             "Prospero",
                             "Retaliator",
                             "Trancer",
                             "Trancer",
                             "Dragon''s Breath Rocket",
                             "Dragon''s Breath Rocket",
                             "Steelhead Halberdiers (max)",
                             "Doctor Alejandro Mosby",
                             "Railless Interceptor",
                             "Railless Interceptor"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Ukrainian Boars",
                     "players": [
                       {
                         "name": "Ivan Pylypenko",
                         "faction": "Mercenaries",
                         "cccode": "c6101b_-1_b_9o9o9o949494929292ppnwnw9jirirhX___-20oHnrlL2Tpk8P8je08jfC7mpr72cfcgch8M",
                         "list1": {
                           "theme": "Hammer Strike",
                           "list": [
                             "Ossrum 1",
                             "Ghordson Basher",
                             "Ghordson Basher",
                             "Ghordson Basher",
                             "Ghordson Driller",
                             "Ghordson Driller",
                             "Ghordson Driller",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Harlowe Holdemhigh",
                             "Steelhead Gunner",
                             "Steelhead Gunner",
                             "Thor Steinhammer",
                             "Horgenhold Artillery Corps",
                             "Horgenhold Artillery Corps",
                             "Hammerfall Siege Crawler"
                           ]
                         },
                         "list2": {
                           "theme": "The Irregulars",
                           "list": [
                             "Fiona 1",
                             "Rover",
                             "Toro",
                             "Alten Ashley",
                             "Boomhowler, Solo Artist",
                             "Dirty Meg",
                             "Freebooter",
                             "Gastone Crosse",
                             "Freebooter",
                             "Hutchuk, Ogrun Bounty Hunter",
                             "Kell Bailoch",
                             "Widget, Tinker Extraordinaire",
                             "Croe''s Cutthroats (min)",
                             "Kayazy Assassins (max)",
                             "Kayazy Assassin Underboss",
                             "Kayazy Eliminators",
                             "Lady Aiyana & Master Holt"
                           ]
                         }
                       },
                       {
                         "name": "Parfonov Oleksandr",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1pgRlVgboRoL3t3B2_2S2S2W3F3Hninini___-1qfZgSg9lUoRoLlM1O223t3z3z3B2_",
                         "list1": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Feora 3",
                             "Judicator",
                             "Deliverer Arms Master",
                             "Hermit of Henge Hold",
                             "Menite Archon",
                             "Vassal Mechanik",
                             "Wrack",
                             "Choir of Menoth (min)",
                             "Deliverer Skyhammers (max)",
                             "Deliverer Skyhammers (max)",
                             "Deliverer Sunburst Crew",
                             "Idrian Skirmishers (min)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         },
                         "list2": {
                           "theme": "The Creator''s Might",
                           "list": [
                             "Malekus 1",
                             "Eye of Truth",
                             "Revelator",
                             "Exemplar Warder",
                             "Hermit of Henge Hold",
                             "Menite Archon",
                             "Scrutator Potentate Severius",
                             "Blessing of Vengeance",
                             "Reckoner",
                             "Vassal Mechanik",
                             "Vassal of Menoth",
                             "Vassal of Menoth",
                             "Wrack",
                             "Choir of Menoth (min)"
                           ]
                         }
                       },
                       {
                         "name": "Saputkin Andrii",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1U0F1h1h1h1h2Ai22E2odWhZh_bBbB___-1Wkt3c1skpe2kwkrkski1Q1T1Nkeko",
                         "list1": {
                           "theme": "Dark Host",
                           "list": [
                             "Skarre 1",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Stalker",
                             "Skarlock Thrall",
                             "Bane Lord Tartarus",
                             "Darragh Wrathe",
                             "Scrap Thrall (3)",
                             "Bane Riders (max)",
                             "Bane Warriors (min)",
                             "Bane Warrior Officer & Standard",
                             "Wraith Engine",
                             "Wraith Engine"
                           ]
                         },
                         "list2": {
                           "theme": "Scourge of the Broken Coast",
                           "list": [
                             "Skarre 3",
                             "Desecrator",
                             "Leviathan",
                             "Satyxis Blood Priestess",
                             "Aiakos, Scourge of the Meredius",
                             "Kharybdis",
                             "Axiara Wraithblade",
                             "Severa Blacktide",
                             "Black Ogrun Smog Belchers (max)",
                             "Satyxis Blood Witches (min)",
                             "Satyxis Blood Hag",
                             "Satyxis Raiders (max)",
                             "Satyxis Raider Sea Witch",
                             "Scharde Dirge Seers"
                           ]
                         }
                       },
                       {
                         "name": "Serhii Kryvonosov",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1pm1lVme2e3k3kjCjC3E3r3C3t3t3z3B2_ninini___-1rbVm3lVlUlUk9m0lM1q2_2l2v",
                         "list1": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Judicator",
                             "Hierophant",
                             "Avatar of Menoth",
                             "Allegiant of the Order of the Fist",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "High Paladin Dartan Vilmon",
                             "Paladin of the Order of the Wall",
                             "The Covenant of Menoth",
                             "Vassal Mechanik",
                             "Vassal Mechanik",
                             "Vassal of Menoth",
                             "Wrack",
                             "Choir of Menoth (min)",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         },
                         "list2": {
                           "theme": "Exemplar Interdiction",
                           "list": [
                             "Kreoss 3",
                             "Fire of Salvation",
                             "Judicator",
                             "Exemplar Warder",
                             "Exemplar Warder",
                             "Exemplar Warder Elias Gade",
                             "High Exemplar Gravus",
                             "Scrutator Potentate Severius",
                             "Dervish",
                             "Choir of Menoth (min)",
                             "Exemplar Errants (min)",
                             "Exemplar Vengers (max)"
                           ]
                         }
                       },
                       {
                         "name": "Yurii Tartachnyi",
                         "faction": "Cryx",
                         "cccode": "c4101b_-1T16193c3c3a1v1v0thC2n2n2n3232i01K___-1U0E193c1hi22E2k8Ti5nkhZh_hZh_nsbB",
                         "list1": {
                           "theme": "Black Industries",
                           "list": [
                             "Venethrax 1",
                             "Deathripper",
                             "Desecrator",
                             "Desecrator",
                             "Erebus",
                             "Slayer",
                             "Slayer",
                             "The Withershadow Combine",
                             "Hellslinger Phantom",
                             "Necrotech",
                             "Necrotech",
                             "Necrotech",
                             "Cephalyx Overlords",
                             "Cephalyx Overlords",
                             "Mechanithralls (min)",
                             "Brute Thrall (3)"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Host",
                           "list": [
                             "Asphyxious 2",
                             "Deathripper",
                             "Desecrator",
                             "Stalker",
                             "Bane Lord Tartarus",
                             "Darragh Wrathe",
                             "Machine Wraith",
                             "Master Gunner Dougal MacNaile",
                             "Bane Knights (max)",
                             "Bane Knight Officer",
                             "Bane Warriors (min)",
                             "Bane Warrior Officer & Standard",
                             "Bane Warriors (min)",
                             "Bane Warrior Officer & Standard",
                             "Steelhead Cannon Crew",
                             "Wraith Engine"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "United Nations",
                     "players": [
                       {
                         "name": "Brezel",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1Xb-432w2w2w2w2w2w2wms3y3y4L4khMhM___-1n46mxhJ3y3y3W4141hThTmpmp",
                         "list1": {
                           "theme": "Forges of War",
                           "list": [
                             "Vyros 2",
                             "Discordia",
                             "Griffon",
                             "Griffon",
                             "Griffon",
                             "Griffon",
                             "Griffon",
                             "Griffon",
                             "Griffon",
                             "Imperatus",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "House Shyeel Artificer",
                             "Lanyssa Ryssyl, Nyss Sorceress",
                             "House Shyeel Arcanists",
                             "House Shyeel Arcanists"
                           ]
                         },
                         "list2": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Ossyan 1",
                             "Hyperion",
                             "Aelyth Vyr, Blade of Nyssor",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Eiryss, Mage Hunter of Ios",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Arcantrik Force Generator",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "CJC",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1odU1gms3y4141oR4L75mo31mpmp___-1nnA1gjsjseP9v3y3y3W4141f2f2hTmpmp",
                         "list1": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Issyria 1",
                             "Chimera",
                             "Imperatus",
                             "Arcanist Mechanik",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Hermit of Henge Hold",
                             "House Shyeel Artificer",
                             "Cylena Raefyll & Nyss Hunters (max)",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Garryth 2",
                             "Chimera",
                             "Harpy",
                             "Harpy",
                             "Moros",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Eiryss, Mage Hunter of Ios",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "House Vyre Electromancers",
                             "House Vyre Electromancers",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "Khalany",
                         "faction": "Crucible Guard",
                         "cccode": "cf101b_-1ul8ltlblulFlHfClElElElElflglklkiBlDld___-1vlqltlululolclFlHlHlHlnlblClk",
                         "list1": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Syvestro 1",
                             "Liberator",
                             "Suppressor",
                             "Toro",
                             "Aurum Ominus Alyce Marc",
                             "Crucible Guard Mechanik",
                             "Hutchuk, Ogrun Bounty Hunter",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Crucible Guard Rocketmen (max)",
                             "Crucible Guard Rocketman Captain",
                             "Dragon''s Breath Rocket",
                             "Dragon''s Breath Rocket",
                             "Steelhead Halberdiers (max)",
                             "Doctor Alejandro Mosby",
                             "Railless Interceptor"
                           ]
                         },
                         "list2": {
                           "theme": "Prima Materia",
                           "list": [
                             "Locke 1",
                             "Liberator",
                             "Toro",
                             "Toro",
                             "Vanguard",
                             "Vulcan",
                             "Aurum Ominus Alyce Marc",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Prospero",
                             "Suppressor",
                             "Combat Alchemists",
                             "Dragon''s Breath Rocket"
                           ]
                         }
                       },
                       {
                         "name": "KomWu",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2jhxnlnlnlh4nFoRhohihinEnEhenChenChh___-2khsh2nlnlnlh4h3h3nFhmhmhmhmhnhr",
                         "list1": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Old Witch 3",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Baron Tonguelick, Lord of Warts",
                             "Hermit of Henge Hold",
                             "Lord Longfellow",
                             "Mad Caps",
                             "Mad Caps",
                             "Malady Man",
                             "Malady Man",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Twilight Sisters"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Child 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "Lazyhase",
                         "faction": "Skorne",
                         "cccode": "c9101b_-2c6I4x6S4C4C6NmZ6u6un26vncn8n9n1n9n1mB___-1snb6r6U6U6U4v4x5G7yf45VhVhV",
                         "list1": {
                           "theme": "The Exalted",
                           "list": [
                             "Rasheth 1",
                             "Basilisk Krea",
                             "Cyclops Raider",
                             "Cyclops Shaman",
                             "Cyclops Shaman",
                             "Aptimus Marketh",
                             "Abidan the Keeper",
                             "Ancestral Guardian",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Soulward",
                             "Hakaar the Destroyer",
                             "Immortals (min)",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian"
                           ]
                         },
                         "list2": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Makeda 3",
                             "Agonizer",
                             "Archidon",
                             "Archidon",
                             "Archidon",
                             "Basilisk Drake",
                             "Basilisk Krea",
                             "Titan Gladiator",
                             "Orin Midwinter, Rogue Inquisitor",
                             "Swamp Gobber River Raider",
                             "Paingiver Beast Handlers (max)",
                             "Siege Animantarax",
                             "Siege Animantarax"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "USA East",
                     "players": [
                       {
                         "name": "Danny McGeehan",
                         "faction": "Mercenaries",
                         "cccode": "c6101b_-24b_9o9o94949494929292pbplfinvnxnxnsiB___-24oHnV9vpb2Tfi7AnvnxnsiAiBiB62",
                         "list1": {
                           "theme": "Soldiers of Fortune",
                           "list": [
                             "Ossrum 1",
                             "Ghordson Basher",
                             "Ghordson Basher",
                             "Ghordson Driller",
                             "Ghordson Driller",
                             "Ghordson Driller",
                             "Ghordson Driller",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Grundback Blaster",
                             "Alexia, Mistress of the Witchfire",
                             "Dez",
                             "Sergeant Nicolas Verendrye",
                             "Steelhead Arcanist",
                             "Steelhead Ironhead",
                             "Steelhead Ironhead",
                             "Steelhead Cannon Crew",
                             "Steelhead Halberdiers (max)"
                           ]
                         },
                         "list2": {
                           "theme": "Soldiers of Fortune",
                           "list": [
                             "Fiona 1",
                             "Blockader",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Alexia, Mistress of the Witchfire",
                             "Alten Ashley",
                             "Sergeant Nicolas Verendrye",
                             "Stannis Brocker",
                             "Steelhead Arcanist",
                             "Steelhead Ironhead",
                             "Steelhead Cannon Crew",
                             "Steelhead Halberdiers (min)",
                             "Steelhead Halberdiers (max)",
                             "Steelhead Halberdiers (max)",
                             "Steelhead Heavy Cavalry (max)"
                           ]
                         }
                       },
                       {
                         "name": "Jacob VanMeter",
                         "faction": "Legion of Everblight",
                         "cccode": "ca101b_-2igNkKeJeJeJaObebekacob9b9kGb3b42N___-2hbskE28kB2-cokGkGkJkJfTfT",
                         "list1": {
                           "theme": "Ravens of War",
                           "list": [
                             "Fyanna 2",
                             "Golab",
                             "Neraph",
                             "Neraph",
                             "Neraph",
                             "Seraph",
                             "Blighted Nyss Sorceress & Hellion",
                             "Blighted Nyss Sorceress & Hellion",
                             "Craelix, Fang of Everblight",
                             "Spell Martyr",
                             "The Forsaken",
                             "The Forsaken",
                             "Blighted Rotwings (max)",
                             "Strider Scouts",
                             "Strider Scout Officer & Musician",
                             "Swamp Gobber Bellows Crew"
                           ]
                         },
                         "list2": {
                           "theme": "Primal Terrors",
                           "list": [
                             "Kallus 1",
                             "Blightbringer",
                             "Harrier",
                             "Ammok the Truthbearer",
                             "Gudrun the Wanderer",
                             "Spell Martyr",
                             "Blighted Rotwings (max)",
                             "Blighted Rotwings (max)",
                             "Chosen of Everblight (max)",
                             "Chosen of Everblight (max)",
                             "Hellmouth",
                             "Hellmouth"
                           ]
                         }
                       },
                       {
                         "name": "Jason Watt",
                         "faction": "Skorne",
                         "cccode": "c9101b_-2cfkn4mZ6un2ncn3n9n1n9n1n9n1mB___-1s6In6n66w6w6L6Lfgfg5UhVhV",
                         "list1": {
                           "theme": "The Exalted",
                           "list": [
                             "Zaal 2",
                             "Mammoth",
                             "Abidan the Keeper",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Hakaar the Destroyer",
                             "Immortal Vessel",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian"
                           ]
                         },
                         "list2": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Rasheth 1",
                             "Titan Cannoneer",
                             "Titan Cannoneer",
                             "Paingiver Bloodrunner Master Tormentor",
                             "Paingiver Bloodrunner Master Tormentor",
                             "Paingiver Task Master",
                             "Paingiver Task Master",
                             "Croak Raiders (max)",
                             "Croak Raiders (max)",
                             "Paingiver Beast Handlers (min)",
                             "Siege Animantarax",
                             "Siege Animantarax"
                           ]
                         }
                       },
                       {
                         "name": "Mike Puryear",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1p0X1OlV3UmelRoRoLoL3z3B2_ninini___-1pm1lV2e3kjCoLoL3C2_3F3Hninini",
                         "list1": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Severius 2",
                             "Blessing of Vengeance",
                             "Judicator",
                             "Sanctifier",
                             "Hierophant",
                             "Hand of Silence",
                             "Hermit of Henge Hold",
                             "Menite Archon",
                             "Menite Archon",
                             "Vassal of Menoth",
                             "Wrack",
                             "Choir of Menoth (min)",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         },
                         "list2": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Judicator",
                             "Avatar of Menoth",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Menite Archon",
                             "Menite Archon",
                             "The Covenant of Menoth",
                             "Choir of Menoth (min)",
                             "Idrian Skirmishers (min)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         }
                       },
                       {
                         "name": "Tom Guan",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2jhwnlnlnlnFnGoRhohphphinEnEhchenChenC___-2khth2nlnlnlnlh4h6h3hmhmhmhnhr",
                         "list1": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Wanderer 1",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Baron Tonguelick, Lord of Warts",
                             "Grave Ghoul",
                             "Hermit of Henge Hold",
                             "Lord Longfellow",
                             "Trapperkin",
                             "Trapperkin",
                             "Mad Caps",
                             "Malady Man",
                             "Malady Man",
                             "Murder Crows",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Skin & Moans",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "Brent Simon",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khsh2nlnlnlh4h3h3nFhmhmhmhmhnhr___-2jhxnlnlnlnlh6nFnGhihinEnEhenChenC",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Child 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Baron Tonguelick, Lord of Warts",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         },
                         "list2": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Old Witch 3",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Gorehound",
                             "Baron Tonguelick, Lord of Warts",
                             "Grave Ghoul",
                             "Mad Caps",
                             "Mad Caps",
                             "Malady Man",
                             "Malady Man",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "USA North",
                     "players": [
                       {
                         "name": "David Bergstrom",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2a5vmKmOmVmVmVoRmIjXmSeE5fmi5wmT___-2amXmNmKmRmVmVmVoRmI54mUjXmSmLmMmF5q",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Wurmwood 1",
                             "Ghetorix",
                             "Storm Raptor",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Death Wolves",
                             "Shifting Stones",
                             "Tharn Ravagers (min)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Morvahna 1",
                             "Brennos the Elderhorn",
                             "Ghetorix",
                             "Tharn Blood Shaman",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Hermit of Henge Hold",
                             "Lord of the Feast",
                             "Tharn Ravager Shaman",
                             "Tharn Wolf Rider Champion",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Tharn Blood Pack (min)",
                             "Tharn Blood Pack (max)",
                             "Tharn Bloodtrackers (max)",
                             "Nuala the Huntress"
                           ]
                         }
                       },
                       {
                         "name": "Ethan Windschitl",
                         "faction": "Crucible Guard",
                         "cccode": "cf101b_-1ul9lululololF7jlnlblElElElklknKlDld___-1ul8lslululF7jlnlblElElkiBlDldld",
                         "list1": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Gearhart 1",
                             "Toro",
                             "Toro",
                             "Vanguard",
                             "Vanguard",
                             "Aurum Ominus Alyce Marc",
                             "Anastasia di Bray",
                             "Prospero",
                             "Suppressor",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Dragon''s Breath Rocket",
                             "Dragon''s Breath Rocket",
                             "Press Gangers (min)",
                             "Doctor Alejandro Mosby",
                             "Railless Interceptor"
                           ]
                         },
                         "list2": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Syvestro 1",
                             "Retaliator",
                             "Toro",
                             "Toro",
                             "Aurum Ominus Alyce Marc",
                             "Anastasia di Bray",
                             "Prospero",
                             "Suppressor",
                             "Trancer",
                             "Trancer",
                             "Dragon''s Breath Rocket",
                             "Steelhead Halberdiers (max)",
                             "Doctor Alejandro Mosby",
                             "Railless Interceptor",
                             "Railless Interceptor"
                           ]
                         }
                       },
                       {
                         "name": "Tom Kluis",
                         "faction": "Mercenaries",
                         "cccode": "c6101b_-20oHlLlL9v7j8PlL3W7mbF733F3Hchch___-245pnVlLlLlJpb7j3W7AnvnxnsnsiB",
                         "list1": {
                           "theme": "The Irregulars",
                           "list": [
                             "Fiona 1",
                             "Toro",
                             "Toro",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Anastasia di Bray",
                             "Dirty Meg",
                             "Toro",
                             "Eiryss, Mage Hunter of Ios",
                             "Kell Bailoch",
                             "Wrong Eye",
                             "Croe''s Cutthroats (max)",
                             "Idrian Skirmishers (min)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Kayazy Eliminators",
                             "Kayazy Eliminators"
                           ]
                         },
                         "list2": {
                           "theme": "Soldiers of Fortune",
                           "list": [
                             "Magnus 2",
                             "Blockader",
                             "Toro",
                             "Toro",
                             "Vanguard",
                             "Alexia, Mistress of the Witchfire",
                             "Anastasia di Bray",
                             "Eiryss, Mage Hunter of Ios",
                             "Stannis Brocker",
                             "Steelhead Arcanist",
                             "Steelhead Ironhead",
                             "Steelhead Cannon Crew",
                             "Steelhead Cannon Crew",
                             "Steelhead Halberdiers (max)"
                           ]
                         }
                       },
                       {
                         "name": "Tom Wurzinger",
                         "faction": "Skorne",
                         "cccode": "c9101b_-1s6I6r4xn4fI6L6LjDjD5U5ShVhV___-2cfkn46un2n2n26v6vncn9n1n9n1mBmB",
                         "list1": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Rasheth 1",
                             "Agonizer",
                             "Basilisk Krea",
                             "Mammoth",
                             "Bog Trog Mist Speaker",
                             "Paingiver Task Master",
                             "Paingiver Task Master",
                             "Farrow Valkyries",
                             "Farrow Valkyries",
                             "Paingiver Beast Handlers (min)",
                             "Paingiver Bloodrunners",
                             "Siege Animantarax",
                             "Siege Animantarax"
                           ]
                         },
                         "list2": {
                           "theme": "The Exalted",
                           "list": [
                             "Zaal 2",
                             "Mammoth",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Extoller Soulward",
                             "Extoller Soulward",
                             "Hakaar the Destroyer",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian",
                             "Supreme Guardian"
                           ]
                         }
                       },
                       {
                         "name": "Trevor Gould",
                         "faction": "Retribution of Scyrah",
                         "cccode": "c5101b_-1odU1ghIms3y3y3y3W41414Lmo31mpmp___-1nnAjsePmv3y3y3W41414kf2f2hTmpmp",
                         "list1": {
                           "theme": "Legions of Dawn",
                           "list": [
                             "Issyria 1",
                             "Chimera",
                             "Hemera",
                             "Imperatus",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Eiryss, Mage Hunter of Ios",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "House Shyeel Artificer",
                             "Dawnguard Sentinels (max)",
                             "Dawnguard Sentinel Officer & Standard",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         },
                         "list2": {
                           "theme": "Defenders of Ios",
                           "list": [
                             "Garryth 2",
                             "Harpy",
                             "Moros",
                             "Phoenix",
                             "Arcanist Mechanik",
                             "Arcanist Mechanik",
                             "Eiryss, Mage Hunter of Ios",
                             "Ghost Sniper",
                             "Ghost Sniper",
                             "Lanyssa Ryssyl, Nyss Sorceress",
                             "House Vyre Electromancers",
                             "House Vyre Electromancers",
                             "Arcantrik Force Generator",
                             "Dawnguard Trident",
                             "Dawnguard Trident"
                           ]
                         }
                       },
                       {
                         "name": "Donnie Gallitz",
                         "faction": "Legion of Everblight",
                         "cccode": "ca101b_-2haCkEkKkBoOb9kPb6kLkJfTfT___-2hbskEkKkBcofFkFkFkJkJfTfT",
                         "list1": {
                           "theme": "Primal Terrors",
                           "list": [
                             "Thagrosh 1",
                             "Blightbringer",
                             "Golab",
                             "Ammok the Truthbearer",
                             "Primal Archon",
                             "The Forsaken",
                             "Warmonger War Chief",
                             "Blighted Ogrun Warmongers (max)",
                             "Gorag Rotteneye",
                             "Chosen of Everblight (max)",
                             "Hellmouth",
                             "Hellmouth"
                           ]
                         },
                         "list2": {
                           "theme": "Primal Terrors",
                           "list": [
                             "Kallus 1",
                             "Blightbringer",
                             "Golab",
                             "Ammok the Truthbearer",
                             "Spell Martyr",
                             "Swamp Gobber Chef",
                             "Blighted Rotwings (min)",
                             "Blighted Rotwings (min)",
                             "Chosen of Everblight (max)",
                             "Chosen of Everblight (max)",
                             "Hellmouth",
                             "Hellmouth"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "USA Team West",
                     "players": [
                       {
                         "name": "Aaron Allen",
                         "faction": "Convergence of Cyriss",
                         "cccode": "cc101b_-1-d8d7dBd4d4d9d9d9dddddfdgdzdzdF___-1-jBdBdododododog5dCdCdCdedfdfdfoRdz",
                         "list1": {
                           "theme": "Destruction Initiative",
                           "list": [
                             "Axis 1",
                             "Cipher",
                             "Corollary",
                             "Diffuser",
                             "Diffuser",
                             "Inverter",
                             "Inverter",
                             "Inverter",
                             "Accretion Servitors",
                             "Accretion Servitors",
                             "Elimination Servitors",
                             "Reflex Servitors",
                             "Optifex Directive",
                             "Optifex Directive",
                             "Transfinite Emergence Projector"
                           ]
                         },
                         "list2": {
                           "theme": "Destruction Initiative",
                           "list": [
                             "Orion 1",
                             "Corollary",
                             "Modulator",
                             "Modulator",
                             "Modulator",
                             "Modulator",
                             "Modulator",
                             "Prime Conflux",
                             "Algorithmic Dispersion Optifex",
                             "Algorithmic Dispersion Optifex",
                             "Algorithmic Dispersion Optifex",
                             "Attunement Servitors",
                             "Elimination Servitors",
                             "Elimination Servitors",
                             "Elimination Servitors",
                             "Hermit of Henge Hold",
                             "Optifex Directive"
                           ]
                         }
                       },
                       {
                         "name": "Adam Stewart",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2a4mmKmJjSmIjXmSmMmj5wmj5wmT___-1x4a4MmOfImVmVmVmIecmO5fmT",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Baldur 1",
                             "Ghetorix",
                             "Warpwolf Stalker",
                             "Gatorman Husk",
                             "Lord of the Feast",
                             "Boil Master & Spirit Cauldron",
                             "Bríghid & Caul",
                             "Tharn Blood Pack (max)",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "The Wild Hunt",
                           "list": [
                             "Krueger 2",
                             "Pureblood Warpwolf",
                             "Storm Raptor",
                             "Bog Trog Mist Speaker",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Lord of the Feast",
                             "Una the Falconer",
                             "Storm Raptor",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         }
                       },
                       {
                         "name": "Alexander Kosma",
                         "faction": "Skorne",
                         "cccode": "c9101b_-1sju6U6U4x4xjcjbjbfI6w6wfF5U5U5S5S___-2cnb6r6r4x4C6u6un2n2n26vncfFn9n1n9n1mBmB",
                         "list1": {
                           "theme": "Disciples of Agony",
                           "list": [
                             "Jalaam 1",
                             "Archidon",
                             "Archidon",
                             "Basilisk Krea",
                             "Basilisk Krea",
                             "Blackhide Wrastler",
                             "Road Hog",
                             "Road Hog",
                             "Bog Trog Mist Speaker",
                             "Paingiver Bloodrunner Master Tormentor",
                             "Paingiver Bloodrunner Master Tormentor",
                             "Swamp Gobber Chef",
                             "Paingiver Beast Handlers (min)",
                             "Paingiver Beast Handlers (min)",
                             "Paingiver Bloodrunners",
                             "Paingiver Bloodrunners"
                           ]
                         },
                         "list2": {
                           "theme": "The Exalted",
                           "list": [
                             "Makeda 3",
                             "Agonizer",
                             "Agonizer",
                             "Basilisk Krea",
                             "Cyclops Shaman",
                             "Ancestral Guardian",
                             "Ancestral Guardian",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Extoller Novitiate",
                             "Extoller Soulward",
                             "Hakaar the Destroyer",
                             "Swamp Gobber Chef",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Immortals (max)",
                             "Extoller Advocate",
                             "Supreme Guardian",
                             "Supreme Guardian"
                           ]
                         }
                       },
                       {
                         "name": "Brandon Owens",
                         "faction": "Crucible Guard",
                         "cccode": "cf101b_-1ul8ltlslblFoRlnlslElElklkiBlDldld___-1vlqltlululolclFlHlHlHlnlblClk",
                         "list1": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Syvestro 1",
                             "Liberator",
                             "Retaliator",
                             "Suppressor",
                             "Aurum Ominus Alyce Marc",
                             "Hermit of Henge Hold",
                             "Prospero",
                             "Retaliator",
                             "Trancer",
                             "Trancer",
                             "Dragon''s Breath Rocket",
                             "Dragon''s Breath Rocket",
                             "Steelhead Halberdiers (max)",
                             "Doctor Alejandro Mosby",
                             "Railless Interceptor",
                             "Railless Interceptor"
                           ]
                         },
                         "list2": {
                           "theme": "Prima Materia",
                           "list": [
                             "Locke 1",
                             "Liberator",
                             "Toro",
                             "Toro",
                             "Vanguard",
                             "Vulcan",
                             "Aurum Ominus Alyce Marc",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Crucible Guard Mechanik",
                             "Prospero",
                             "Suppressor",
                             "Combat Alchemists",
                             "Dragon''s Breath Rocket"
                           ]
                         }
                       },
                       {
                         "name": "Tucker Jackson",
                         "faction": "Mercenaries",
                         "cccode": "c6101b_-24oHlLlLlLpb7jpl3W7kfi7AnvnwnxnsnsiAiBnu___-225rnVlL9v7je05I7kgvoKoKoI7_9K9Lig",
                         "list1": {
                           "theme": "Soldiers of Fortune",
                           "list": [
                             "Fiona 1",
                             "Toro",
                             "Toro",
                             "Toro",
                             "Alexia, Mistress of the Witchfire",
                             "Anastasia di Bray",
                             "Dez",
                             "Eiryss, Mage Hunter of Ios",
                             "Gorman di Wulfe, Rogue Alchemist",
                             "Sergeant Nicolas Verendrye",
                             "Stannis Brocker",
                             "Steelhead Arcanist",
                             "Steelhead Gunner",
                             "Steelhead Ironhead",
                             "Steelhead Cannon Crew",
                             "Steelhead Cannon Crew",
                             "Steelhead Halberdiers (min)",
                             "Steelhead Halberdiers (max)",
                             "Steelhead Volley Gun"
                           ]
                         },
                         "list2": {
                           "theme": "Llaelese Resistance",
                           "list": [
                             "Ashlynn 1",
                             "Blockader",
                             "Toro",
                             "Sylys Wyshnalyrr, the Seeker",
                             "Anastasia di Bray",
                             "Gastone Crosse",
                             "Talon",
                             "Gorman di Wulfe, Rogue Alchemist",
                             "Major Harrison Gibbs",
                             "Morrowan Archon",
                             "Morrowan Archon",
                             "Ragman",
                             "Taryn di la Rovissi, Llaelese Gun Mage",
                             "Arcane Tempest Gun Mages",
                             "Arcane Tempest Gun Mage Officer",
                             "Trencher Express Team"
                           ]
                         }
                       },
                       {
                         "name": "Eric Eikermann",
                         "faction": "Crucible Guard",
                         "cccode": "cf101b_-1ulrlulululvlFlH7klnlblElElkld___-1ul9lulclF7jlH7klnlslGlElElElxlylklk",
                         "list1": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Mackay 1",
                             "Toro",
                             "Toro",
                             "Toro",
                             "Vindicator",
                             "Aurum Ominus Alyce Marc",
                             "Crucible Guard Mechanik",
                             "Gorman di Wulfe, Rogue Alchemist",
                             "Prospero",
                             "Suppressor",
                             "Trancer",
                             "Trancer",
                             "Dragon''s Breath Rocket",
                             "Railless Interceptor"
                           ]
                         },
                         "list2": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Gearhart 1",
                             "Toro",
                             "Vulcan",
                             "Aurum Ominus Alyce Marc",
                             "Anastasia di Bray",
                             "Crucible Guard Mechanik",
                             "Gorman di Wulfe, Rogue Alchemist",
                             "Prospero",
                             "Retaliator",
                             "Rocketman Ace",
                             "Trancer",
                             "Trancer",
                             "Trancer",
                             "Crucible Guard Infantry (max)",
                             "Crucible Guard Infantry Officer & Standard",
                             "Dragon''s Breath Rocket",
                             "Dragon''s Breath Rocket"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Wales  Caradog",
                     "players": [
                       {
                         "name": "Benny Pang",
                         "faction": "Legion of Everblight",
                         "cccode": "ca101b_-2igNkKeJeJaMaMaObebe2Qcob9b9kGb3b4___-2hbskE28kBcob6kLkGkJkJfTfT",
                         "list1": {
                           "theme": "Ravens of War",
                           "list": [
                             "Fyanna 2",
                             "Golab",
                             "Neraph",
                             "Neraph",
                             "Raek",
                             "Raek",
                             "Seraph",
                             "Blighted Nyss Sorceress & Hellion",
                             "Blighted Nyss Sorceress & Hellion",
                             "Feralgeist",
                             "Spell Martyr",
                             "The Forsaken",
                             "The Forsaken",
                             "Blighted Rotwings (max)",
                             "Strider Scouts",
                             "Strider Scout Officer & Musician"
                           ]
                         },
                         "list2": {
                           "theme": "Primal Terrors",
                           "list": [
                             "Kallus 1",
                             "Blightbringer",
                             "Harrier",
                             "Ammok the Truthbearer",
                             "Spell Martyr",
                             "Blighted Ogrun Warmongers (max)",
                             "Gorag Rotteneye",
                             "Blighted Rotwings (max)",
                             "Chosen of Everblight (max)",
                             "Chosen of Everblight (max)",
                             "Hellmouth",
                             "Hellmouth"
                           ]
                         }
                       },
                       {
                         "name": "Byron Liles",
                         "faction": "Protectorate of Menoth",
                         "cccode": "c2101b_-1r0J1rlVm0lM1r3t2_lYlSlZlS2v___-1pm11rlVme3kjCjClR3C3t2_3G3Hninini",
                         "list1": {
                           "theme": "Exemplar Interdiction",
                           "list": [
                             "High Reclaimer 1",
                             "Devout",
                             "Judicator",
                             "High Exemplar Gravus",
                             "Scrutator Potentate Severius",
                             "Devout",
                             "Vassal Mechanik",
                             "Choir of Menoth (min)",
                             "Exemplar Cinerators (min)",
                             "Exemplar Cinerator Officer",
                             "Exemplar Cinerators (max)",
                             "Exemplar Cinerator Officer",
                             "Exemplar Vengers (max)"
                           ]
                         },
                         "list2": {
                           "theme": "The Faithful Masses",
                           "list": [
                             "Harbinger 1",
                             "Devout",
                             "Judicator",
                             "Hierophant",
                             "Allegiant of the Order of the Fist",
                             "Champion of the Order of the Wall",
                             "Champion of the Order of the Wall",
                             "Hand of Silence",
                             "The Covenant of Menoth",
                             "Vassal Mechanik",
                             "Choir of Menoth (min)",
                             "Idrian Skirmishers (max)",
                             "Idrian Skirmisher Chieftain & Guide",
                             "Initiates of the Wall",
                             "Initiates of the Wall",
                             "Initiates of the Wall"
                           ]
                         }
                       },
                       {
                         "name": "Elliot Guest",
                         "faction": "Crucible Guard",
                         "cccode": "cf101b_-1vlqltlululolclFlnlblElElClk___-1ul8ltlulvlFlnlblElElkiBlDldld",
                         "list1": {
                           "theme": "Prima Materia",
                           "list": [
                             "Locke 1",
                             "Liberator",
                             "Toro",
                             "Toro",
                             "Vanguard",
                             "Vulcan",
                             "Aurum Ominus Alyce Marc",
                             "Prospero",
                             "Suppressor",
                             "Trancer",
                             "Trancer",
                             "Combat Alchemists",
                             "Dragon''s Breath Rocket"
                           ]
                         },
                         "list2": {
                           "theme": "Magnum Opus",
                           "list": [
                             "Syvestro 1",
                             "Liberator",
                             "Toro",
                             "Vindicator",
                             "Aurum Ominus Alyce Marc",
                             "Prospero",
                             "Suppressor",
                             "Trancer",
                             "Trancer",
                             "Dragon''s Breath Rocket",
                             "Steelhead Halberdiers (max)",
                             "Doctor Alejandro Mosby",
                             "Railless Interceptor",
                             "Railless Interceptor"
                           ]
                         }
                       },
                       {
                         "name": "Lewis James",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2jhunlnlnlnlh4nFnGhohinEnEhenChenC___-2khth2h2nlnlh4h6h3h3hmhmhmhmhr",
                         "list1": {
                           "theme": "Bump in the Night",
                           "list": [
                             "Heretic 1",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Baron Tonguelick, Lord of Warts",
                             "Grave Ghoul",
                             "Lord Longfellow",
                             "Mad Caps",
                             "Malady Man",
                             "Malady Man",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse"
                           ]
                         },
                         "list2": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Skin & Moans",
                             "Skin & Moans",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Death Knell"
                           ]
                         }
                       },
                       {
                         "name": "Maxwell Cook",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-295C4QjGjGjGjEjEjEg4g4g45g5f5fmT___-294w4Q4H4H4H4H4H4H5Ag4g45gfImVmVmV5e5emT",
                         "list1": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Baldur 2",
                             "Megalith",
                             "Wold Guardian",
                             "Wold Guardian",
                             "Wold Guardian",
                             "Woldwatcher",
                             "Woldwatcher",
                             "Woldwatcher",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Blackclad Wayfarer",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Mohsar 1",
                             "Megalith",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Druid Wilder",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Blackclad Wayfarer",
                             "Bog Trog Mist Speaker",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Well of Orboros"
                           ]
                         }
                       }
                     ]
                   },
                   {
                     "name": "Wales Glyndŵr",
                     "players": [
                       {
                         "name": "Dan Jones",
                         "faction": "Grymkin",
                         "cccode": "ce101b_-2khth2nlnlnlnlh4h6h3hmhmhmhnhr___-2jhvnlnlnlnlnFnGoRhohphpnEnEhenChenC",
                         "list1": {
                           "theme": "Dark Menagerie",
                           "list": [
                             "Dreamer 1",
                             "Cage Rager",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Crabbits (2)",
                             "Gorehound",
                             "Skin & Moans",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Gremlin Swarm",
                             "Lady Karianna Rose",
                             "Death Knell"
                           ]
                         },
                         "list2": {
                           "theme": "Bump in the Night",
                           "list": [
                             "King of Nothing 1",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Clockatrice",
                             "Baron Tonguelick, Lord of Warts",
                             "Grave Ghoul",
                             "Hermit of Henge Hold",
                             "Lord Longfellow",
                             "Trapperkin",
                             "Trapperkin",
                             "Malady Man",
                             "Malady Man",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse",
                             "Neigh Slayers (max)",
                             "Neigh Slayer War Horse"
                           ]
                         }
                       },
                       {
                         "name": "Luke Waller",
                         "faction": "Legion of Everblight",
                         "cccode": "ca101b_-2ifdkK2828aKaOeKbebecococobdbdbFeL2N___-2ig-kKaMaMbubebefxcocobdbdaYaYjDfTfT",
                         "list1": {
                           "theme": "Ravens of War",
                           "list": [
                             "Twins 2",
                             "Golab",
                             "Harrier",
                             "Harrier",
                             "Nephilim Protector",
                             "Seraph",
                             "Zuriel",
                             "Blighted Nyss Sorceress & Hellion",
                             "Blighted Nyss Sorceress & Hellion",
                             "Spell Martyr",
                             "Spell Martyr",
                             "Spell Martyr",
                             "Strider Deathstalker",
                             "Strider Deathstalker",
                             "Wrong Eye",
                             "Strider Blightblades",
                             "Swamp Gobber Bellows Crew"
                           ]
                         },
                         "list2": {
                           "theme": "Ravens of War",
                           "list": [
                             "Kallus 2",
                             "Golab",
                             "Raek",
                             "Raek",
                             "Succubus",
                             "Blighted Nyss Sorceress & Hellion",
                             "Blighted Nyss Sorceress & Hellion",
                             "Grotesque Assassin",
                             "Spell Martyr",
                             "Spell Martyr",
                             "Strider Deathstalker",
                             "Strider Deathstalker",
                             "Blighted Nyss Raptors (max)",
                             "Blighted Nyss Raptors (max)",
                             "Farrow Valkyries",
                             "Hellmouth",
                             "Hellmouth"
                           ]
                         }
                       },
                       {
                         "name": "Matthew Hopkins",
                         "faction": "Khador",
                         "cccode": "c3101b_-1m7a7qkTkTkTkTkTnj7mlOkZ8n8n8r8ychch___-1ShzkZnmnjpb8h8hnf89nf89nfnfnfnnnnnn",
                         "list1": {
                           "theme": "Jaws of the Wolf",
                           "list": [
                             "Karchev 1",
                             "Devastator",
                             "Marauder",
                             "Marauder",
                             "Marauder",
                             "Marauder",
                             "Marauder",
                             "Greylord Adjunct",
                             "Kell Bailoch",
                             "Kovnik Apprentice Kratikoff",
                             "Rager",
                             "Manhunter",
                             "Manhunter",
                             "Widowmaker Marksman",
                             "Yuri the Axe",
                             "Kayazy Eliminators",
                             "Kayazy Eliminators"
                           ]
                         },
                         "list2": {
                           "theme": "Wolves of Winter",
                           "list": [
                             "Old Witch 2",
                             "Rager",
                             "Ruin",
                             "Greylord Adjunct",
                             "Alexia, Mistress of the Witchfire",
                             "Koldun Lord",
                             "Koldun Lord",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Greylord Escort",
                             "Doom Reaver Swordsmen",
                             "Doom Reaver Swordsmen",
                             "Doom Reaver Swordsmen",
                             "Greylord Ternion",
                             "Greylord Ternion",
                             "Greylord Ternion"
                           ]
                         }
                       },
                       {
                         "name": "Terry Rhys",
                         "faction": "Legion of Everblight",
                         "cccode": "ca101b_-2iaDkK2828bveJeJaRbqbebecob9b9fTfT2N___-2ibskK28eJbubebekafxfxoRbdkGkGjDfvfTfT",
                         "list1": {
                           "theme": "Ravens of War",
                           "list": [
                             "Thagrosh 2",
                             "Golab",
                             "Harrier",
                             "Harrier",
                             "Naga Nightlurker",
                             "Neraph",
                             "Neraph",
                             "Typhon",
                             "Annyssa Ryvaal",
                             "Blighted Nyss Sorceress & Hellion",
                             "Blighted Nyss Sorceress & Hellion",
                             "Spell Martyr",
                             "The Forsaken",
                             "The Forsaken",
                             "Hellmouth",
                             "Hellmouth",
                             "Swamp Gobber Bellows Crew"
                           ]
                         },
                         "list2": {
                           "theme": "Ravens of War",
                           "list": [
                             "Kallus 1",
                             "Golab",
                             "Harrier",
                             "Neraph",
                             "Succubus",
                             "Blighted Nyss Sorceress & Hellion",
                             "Blighted Nyss Sorceress & Hellion",
                             "Craelix, Fang of Everblight",
                             "Grotesque Assassin",
                             "Grotesque Assassin",
                             "Hermit of Henge Hold",
                             "Strider Deathstalker",
                             "Blighted Rotwings (max)",
                             "Blighted Rotwings (max)",
                             "Farrow Valkyries",
                             "Grotesque Banshees (min)",
                             "Hellmouth",
                             "Hellmouth"
                           ]
                         }
                       },
                       {
                         "name": "Will Allen",
                         "faction": "Circle Orboros",
                         "cccode": "c8101b_-2amXmNmOmRmVmVmVjXeEmMmj5wmT___-294qmKjGjG4H4Hg4g45goRjD5e5e5f5fmT",
                         "list1": {
                           "theme": "The Devourer''s Host",
                           "list": [
                             "Morvahna 1",
                             "Brennos the Elderhorn",
                             "Storm Raptor",
                             "Tharn Blood Shaman",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Gallows Grove",
                             "Boil Master & Spirit Cauldron",
                             "Death Wolves",
                             "Tharn Blood Pack (max)",
                             "Tharn Ravagers (max)",
                             "Tharn Ravager Chieftain",
                             "Well of Orboros"
                           ]
                         },
                         "list2": {
                           "theme": "Bones of Orboros",
                           "list": [
                             "Kromac 1",
                             "Ghetorix",
                             "Wold Guardian",
                             "Wold Guardian",
                             "Woldwyrd",
                             "Woldwyrd",
                             "Blackclad Stoneshaper",
                             "Blackclad Stoneshaper",
                             "Blackclad Wayfarer",
                             "Hermit of Henge Hold",
                             "Farrow Valkyries",
                             "Sentry Stone & Mannikins",
                             "Sentry Stone & Mannikins",
                             "Shifting Stones",
                             "Shifting Stones",
                             "Well of Orboros"
                           ]
                         }
                       }
                     ]
                   }
                 ]'
);

-- team insert
insert into wtc2019_team (name, team) select json_array_elements(info)->'name', json_array_elements(info) from wtc2019_import;
-- player insert
insert into wtc2019_player (team_id, name, faction, cccode,list1,list2)
    select id, json_array_elements(team->'players')->'name',
           json_array_elements(team->'players')->'faction',
           json_array_elements(team->'players')->'cccode',
           json_array_elements(team->'players')->'list1',
           json_array_elements(team->'players')->'list2'
from wtc2019_team;
delete from wtc2019_player where faction is null;
-- list insert
insert into wtc2019_list (player_id, theme, list) select id, list1->'theme',list1->'list' from wtc2019_player;
insert into wtc2019_list (player_id, theme, list) select id, list2->'theme',list2->'list' from wtc2019_player;

update wtc2019_list set caster = list->>0;

create view caster_theme as
select caster_theme.caster, caster_theme.theme, caster_theme.antall_i_theme, sum(antall_i_theme) over (partition by caster_theme.caster) as totalt from
(
select l.caster, l.theme, count(*) as antall_i_theme
from wtc2019_list l
group by l.caster, l.theme
order by l.caster
) caster_theme
group by caster_theme.caster, caster_theme.theme, caster_theme.antall_i_theme
order by totalt desc, caster, antall_i_theme desc
;

-- Cleaning up
update wtc2019_team set name = replace(name, '"', '');
update wtc2019_list set theme = replace(theme, '"', '');
update wtc2019_player set faction = replace(faction, '"', '');
alter table wtc2019_player drop column cccode;

alter table wtc2019_team add column tier integer;
