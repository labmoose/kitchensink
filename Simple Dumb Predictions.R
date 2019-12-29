# Vector of prediction beginnings
v_pred <- c("This year", "In 2020", "Within the year", "In the next year")

# Vector of self/people related to self
v_peep <- c("you", "your significant other", "you", "your friend", "you",
         "a family member", "you", "a coworker", "you")

# Vector of verbs for prediction for SELF
v_self <- c("will", "are bound to", "are going to", "are fated to", "will feel inclined to", "are compelled to")
# Vector of verbs for prediction for OTHER
v_other <- c("will", "is bound to", "is going to", "is fated to", "will feel inclined to", "will be compelled to")

# vector of prediction part A
v_A <- c("accomplish", "obtain", "create", "enact", "complete", 
         "solve", "endure", "survive", "invent", "quit",
         "begin", "prepare", "share", "bury", "join", 
         "write about")


# vector of prediction part B
v_B <- c("a revolution", "a political movement", "a fitness routine", "a career", "a field of study",
         "a new relationship", "a diet", "a writing workshop", "a line of work", "an art project",
         "a writing project", "a psychic connection", "all out war", "a peaceful discussion", "a workshop",
         "an artistic endevor", "a partnership", "a real brain trust", "an exclusive group that's definitely not a cult",
         "a religious revival", "a television series", "a trilogy", "some productive discourse", "an intense debate",
         "a gaming system", "a program", "a scientific discovery", "an indisputable truth", "a fruitless discussion",
         "some playful banter", "some dedicated charity work", "a serious relationship", "a drawn out battle", "some light flirting",
         "a entirely new way of thinking", "a revolutionary discovery", "a possible cure", "a long internet tirade",
         "some rather lengthy training")

# vector of joiners
v_join <- c("with", "about", "with", "for", "with",
            "opposing", "involving", "about", "that revolves around", "for",
            "using", "with", "on")

# vector of random endings
v_end <- c("a complete stranger", "an obnoxious politician", "a herd of cats", "an old friend", "a new friend",
           "a down-on-their-luck magician", "a friendly demon", "an ancient diety", "a literal asshole", "Nathan Fillion",
           "a confused author", "some guy who thinks he's Naruto reincarnated", "a private detective", "an angry mob",
           "the main cast of the Starwars Prequels", "a burned out Jedi knight", "George Lucas", "the Ghostbusters", "Paul Rudd",
           "a living nightmare that would have felt much more frightening before 2016 but we've all just seen too much now", 
           "Michelle Obama", "a turtle that looks just like Mitch McConnell but is sooooo much smarter and cooler", "the man",
           "the true spririt of Christmas- Spiked Eggnog", "an awkward highschool teacher that's trying too hard to be cool",
           "Elon Musk", "an angry goose hell-bent on ruining this quaint village", "an AI that knows too much",
           "a murder of crows planning an actual murder", "a whole bunch of Guy Fawkes wannabes", "every neckbeard in the Tri-state area",
           "a beautiful horse named Gustvo", "a friendly and helpful garden gnome that is proud of you and wants you to succeed",
           "that hippopotomus you wanted for Christmas", "a diseased group of anti-vaxxers promoting essential oils",
           "those people who keep creating predatory MLMs", "Alexa, who has finally become fully self-aware", "a powerfull badass",
           "a perfectly normal human being", "what turns out to be five squirrels in a trenchcoat", "your new neighbor, Totoro",
           "an ancient dragon that was supposed to be secretly controlling things but has instead by taking a 50-year nap",
           "an all-powerful but uninterested God", "the best damn whorehouse in Texas", "four professional Luchadors in full costume",
           "that guy that keeps telling everyone money can't buy happiness while taking a small yacht to his bigger yacht",
           "some guy that looks supiciously like Mr Clean", "a genie that only offers you one wish instead of three",
           "a well-paid college professor with passion, skill, and enough sleep to function well", "a tribe of mutants living in the sewers",
           "a guy named Kyle who has developed telekenesis", "a real live flying spaghetti monster", "a sweet three-legged donkey named Tricks",
           "I dunno, like twelve Chihuahuas?", "just your ordinary, everyday, run of the mill unicorn", "a Yeti on her first visit to the big city",
           "a fast food worker who's out of fucks to give", "a boat-load of drunken vikings", "a pod of telepathic Blue Whales",
           "Old MacDonald and his farm", "a big ol' bag of dicks", "fear itself", "unemployed lawyers", "the Scooby Gang",
           "The Warner Brothers and their sister, Dot", "Chris Hemsworth, currently being played by the Norse god Thor", 
           "that girl at the bar who thinks shots of Fireball whiskey is where it's at", "a lonely Mars rover",
           "war, huh, good god, what is it good for?", "Gordon Ramsey's new book on positive reinforcement methods",
           "Tiamat", "an army of the undead", "a herd of fainting goats", "an up-and-coming K-pop group")

# sample v_pred to start the prediction line
pred <- sample(v_pred, 1, replace = TRUE)

# sample v_peep to add to the prediction line
peep <- sample(v_peep, 1, replace = TRUE)

# sample EITHER v_self OR v_other depending on the v_peep result
if(peep == "you") {
  verb <- sample(v_self, 1, replace = TRUE)
} else {
  verb <- sample(v_other, 1, replace = TRUE)
}

# sample v_A
A <- sample(v_A, 1, replace = TRUE)
# sample v_B
B <- sample(v_B, 1, replace = TRUE)

# sample a joiner
J <- sample(v_join, 1, replace = TRUE)

# sample prediction ender
end <- sample(v_end, 1, replace = TRUE)

# Paste and print all the samples together into a remotely legible prediction
print(paste(pred, peep, verb, A, B, J, end))