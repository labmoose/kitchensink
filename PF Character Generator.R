# Create a vector of Common Pathfinder Races, (weighted for most common selection)
rcom <- c("Dwarf", "Dwarf", "Elf", "Elf", "Gnome", 
          "Half Elf", "Half Elf", "Half Orc", "Halfling", "Human", 
          "Human", "Human")

# Create a vector of uncommon Pathfinder Races (unweighted)          
runc <- c("Catfolk", "Fetchling", "Ratfolk", "Tengu", "Tiefling", 
          "Kitsune")

# Create a vector of rare Pathfinder Races (unweighted)
rrar <- c("Ifrit", "Oread", "Sylph", "Undine", "Aasimar")

# Create a weighted vector of race categories
rcat <- c("Common", "Common", "Common", "Common", "Common","Common", "Common", "Common", "Common", "Common", 
        "Common", "Common", "Uncommon", "Uncommon", "Uncommon", "Uncommon", "Uncommon", "Uncommon", "Rare")

# Create a system to sample one of the categories from rcat
rcatpick <- sample(rcat, 1, replace = TRUE)

# Create a system to randomly select a race from the category previously selected
if(rcatpick == "Common") {
  race <- sample(rcom, 1, replace = TRUE)
  }else if(rcatpick == "Uncommon") {
  race <- sample(runc, 1, replace = FALSE)
  }else if(rcatpick == "Rare") {
  race <- sample(rrar, 1, replace = TRUE)}

# Create a vector of core (common) classes
clcore <- c("Barbarian", "Bard", "Cleric", "Druid", "Fighter",
            "Monk", "Paladin", "Ranger", "Rogue", "Sorcerer")

# Create a vector of base (uncommon) classes
clbase <- c("Alchemist", "Cavalier", "Inquisitor", "Magus", "Oracle",
            "Summoner", "Witch")

# Create a Vector of rare/hybrid classes
clrare <- c("Gunslinger", "Arcanist", "Bloodrager", "Brawler", "Hunter",
            "Investigator", "Shaman", "Skald", "Slayer", "Swashbuckler",
            "Warpriest")

# Create a weighted vector of class categories
clcat <- c("Core", "Core", "Core", "Core", "Core", "Core", "Core", "Core", "Core", "Core", 
           "Core", "Core", "Core", "Core", "Base", "Base", "Base", "Base", "Rare", "Rare")

# Create a system to randomly select a category from clcat
clcatpick <- sample(clcat, 1, replace = TRUE)

# Create a system to randomly select a class from the category previously selected
if(clcatpick == "Core") {
  class <- sample(clcore, 1, replace = TRUE)
  }else if(clcatpick == "Base") {
  class <- sample(clbase, 1, replace = TRUE)
  }else if(clcatpick == "Rare") {
  class <- sample(clrare, 1, replace = TRUE)}

# Create a vector of possible homeland terrain categories
terraincats <- c("isolated", "small", "small", "small", "medium", "medium", "medium", "large", "large")

# Randomly sample a category from the terrain categories
terraintype <- sample(terraincats, 1, replace = TRUE)

# Create vectors of possible terrain descriptions
terrainiso <- c("on a desolate plain", "on the tall grass plains","in a woodland meadow",
                "in a desert", "in the tundra", "on a remote island", "in the deep woods",
                "along the riverside", "on the oceanside", "in the high mountains", "near a swamp")
terrainsml <- c("in the low mountains", "in the high mountains", "in a rich agricultural plain",
                "on the tall grass plains", "in a woodland meadow", "along the riverside",
                "on the oceanside", "near a large forest", "in a desert oasis", "in the tundra", "on an island chain")
terrainmed <- c("in the low mountains", "in the high mountains", "in a rich agricultural plain",
                "along the riverside", "at a seaside port", "on the plains", "near a large forest",
                "along a busy trade route", "in a desert oasis")
terrainlg <- c("at the base of a mountain", "in a rich agricultural plain", "along the riverside",
               "at a seaside port", "on the plains", "near a large forest", "along a busy trade route",
               "along the border with an unfriendly kingdom")

# Randomly select a terrain type for the character's homeland
if (terraintype == "isolated") {
  terrain <- sample(terrainiso, 1, replace = TRUE)
  }else if(terraintype == "small") {
  terrain <- sample(terrainsml, 1, replace = TRUE)
  }else if(terraintype == "medium") {
  terrain <- sample(terrainmed, 1, replace = TRUE)
  }else if(terraintype == "large") {
  terrain <- sample(terrainlg, 1, replace = TRUE)}

# Create vectors of home types
homesizesmall <- c("a nomadic group", "your family homestead", "an isolated village",
                   "a small village","a small village", "a small town", 
                   "a small town", "a small city", "a small city", "a military encampment",
                   "an isolated religious community", "a boarding school")
homesizemed <- c("a large town", "a large town", "a city", "a city", 
                 "an agricultural community", "an agricultural community",
                 "a bustling tradepost", "a large military encampment")
homesizelg <- c("a busy town", "a busy town", "a busy town", "a crowded town",
                "a large city", "a large city", "a large city", "a crowded city",
                "a regional capitol", "the kingdom/country main center")

# Link the terrain type to the homesize
if (terraintype == "isolated") {
  homepos <- c(homesizesmall)
} else if(terraintype == "small") {
  homepos <- c(homesizesmall)
  } else if(terraintype == "medium") {
  homepos <- c(homesizemed) 
  } else if(terraintype == "large") {
  homepos <- c(homesizelg) }

# Create a system to randomly select the hometown descriptor
homesize <- sample(homepos, 1, replace = TRUE)

# Create vectors of background factors
# Possible number of siblings:
numsibscats <- c("are an only child", "are an only child", "are an only child", "have a twin sister",
                  "have a twin brother", "have 1 sibling", "have 1 sibling", "have 1 sibling", "have 1 sibling", 
                 "have 2 siblings", "have 2 siblings", "have 2 siblings", "have 2 siblings", "have 2 siblings", 
                 "have 3 siblings", "have 3 siblings", "have 3 siblings", "have 4 siblings", "have 4 siblings", 
                 "have 5 siblings", "have 6 siblings", "have 7 siblings", "have 8 siblings", "have 10 siblings")
# Randomly select the number of siblings for the character
numsibs <- sample(numsibscats, 1, replace = TRUE)
# Parent categories:
famclassoptions <- c("Low", "Low", "Low", "Middle", "Middle", "Middle", "Upper", "Difficult")
# Randomly determine family class
famclass <- sample(famclassoptions, 1, replace = TRUE)
# Parent subcategories:
plow <- c("Slave", "Serf", "Serf", "Farmer", "Farmer",
          "Beggar", "Shepherd", "Laborer", "Laborer", "Thief",
          "Prisoner", "Conscripted Soldier", "Hunter")
pmid <- c("Entertainer", "Soldier", "Guard", "Merchant", "Merchant",
          "Trader", "Trader", "Farmer", "Farmer", "Herdsman", "Herdsman",
          "Criminal", "Artist", "Teacher", "Innkeeper", "Mason", "Butcher",
          "Midwife", "Barkeep", "Maid", "Baker", "Blacksmith", "Carpenter", "Herbalist")
pupp <- c("Trader", "Trader", "Merchant", "Merchant", "Military Leader",
          "Merchant", "Famous Entertainer", "Famous Artist",
          "Captain of the Guard", "Clergy Member", "Ship Captain", "Doctor", "Crime Boss",
          "Noble", "Trader", "Merchant", "Scholar")
pdif <- c("You ran away from abusive parents", 
          "You were raised by your Grandparents", 
          "You were sold by your parents", "You were sold by a slaver", 
          "You became lost in an accident",
          "You became lost in a violent event", 
          "You were abandoned as a baby",
          "You were born a bastard", "You were an orphan, living on your own",
          "You were kidnapped", "You were raised by your Aunt/Uncle")
# Create a system to randomly select parent circumstances
if(famclass == "Low") {
  fam <- sample(plow, 1, replace = TRUE)
  ptext <- "Your family was poor. Your parent was a"
  } else if(famclass == "Middle") {
  fam <- sample(pmid, 1, replace = TRUE)
  ptext <- "Your family was middle-class.  Your parent was a"
  } else if(famclass == "Upper") {
  fam <- sample(pupp, 1, replace = TRUE)
  ptext <- "Your family was wealthy.  Your parent was a"
  } else if(famclass == "Difficult") {
  fam <- sample(pdif, 1, replace = TRUE)
  ptext <- "Your childhood was unusual."
  }
# Create a vector of reasons to strike out on an adventure:
posreasons <- c("want to see the world", "want to prove yourself",
            "want to restore your honor", "want to help others", 
            "want to discover something new", "lost your true love",
            "you took an oath", "want revenge", "you made a promise",
            "want to escape your current circumstance", "want to find your fortune",
            "have been falsely accused of a crime", "have lost your home to violence",
            "received a vision", "received a mysterious letter",
            "made a powerful enemy", "need a new start", 
            "were run out of town", "to find work", "need to pay a great debt",
            "lost your home to a natural disaster", "are looking for work")
# Randomly select the reason for adventuring
reason <- sample(posreasons, 1, replace = TRUE)
# Create a line printing out all randomly determined traits
print(paste("You are a", race, class, ".", "You are from", homesize, terrain, ".", ptext, fam, ".", 
            "You", numsibs, ".", "You have become an adventurer because you", reason, "."))