USE demo;
DROP TABLE IF EXISTS queue;
DROP TABLE IF EXISTS members;
DROP TABLE IF EXISTS dvds;


CREATE TABLE members (
MEMBERID SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
LASTNAME VARCHAR(20),
FIRSTNAME VARCHAR(15),
ADDRESS VARCHAR(30),
CITY VARCHAR(25),
STATE VARCHAR(2),
POSTAL_CODE VARCHAR(10),
EMAIL VARCHAR(32),
PASSWORD VARCHAR(32));
ALTER TABLE members AUTO_INCREMENT = 1001;

INSERT INTO members (LASTNAME, FIRSTNAME, ADDRESS, CITY, STATE, POSTAL_CODE, EMAIL, PASSWORD) 
VALUES ('Esola', 'Edward', '224 Oakridge Avenue', 'Valparaiso', 'IN', '46385', 'eesola@isp.com', 'eesola');

INSERT INTO members (LASTNAME, FIRSTNAME, ADDRESS, CITY, STATE, POSTAL_CODE, EMAIL, PASSWORD) 
VALUES ('Sullivan', 'Mike', '7616 Queens Garden', 'Logansport', 'IN', '46947', 'msulliva@isp.com', 'msulliva');

INSERT INTO members (LASTNAME, FIRSTNAME, ADDRESS, CITY, STATE, POSTAL_CODE, EMAIL, PASSWORD) 
VALUES ('Jeruzal', 'Joe', '3447 N. County Rd. 725E', 'Cordova', 'IN', '38018-6942', 'jjeruzal@isp.com', 'jjeruzal');

INSERT INTO members (LASTNAME, FIRSTNAME, ADDRESS, CITY, STATE, POSTAL_CODE, EMAIL, PASSWORD) 
VALUES ('Bush', 'Bill', '1015 Barkdull', 'Anderson', 'IN', '46011', 'bbush@isp.com', 'bbush');

INSERT INTO members (LASTNAME, FIRSTNAME, ADDRESS, CITY, STATE, POSTAL_CODE, EMAIL, PASSWORD) 
VALUES ('Sutherland', 'Sean', '8869 Walnut Ridge Loop', 'Peoria', 'IL', '61614', 'ssutherl@isp.com', 'ssutherl');

INSERT INTO members (LASTNAME, FIRSTNAME, ADDRESS, CITY, STATE, POSTAL_CODE, EMAIL, PASSWORD) 
VALUES ('Stazinski', 'Mickey', '702 Morewood Cres', 'Valparaiso', 'IN', '46385-8008', 'mstazins@isp.com', 'mstazins');

INSERT INTO members (LASTNAME, FIRSTNAME, ADDRESS, CITY, STATE, POSTAL_CODE, EMAIL, PASSWORD) 
VALUES ('Channell', 'Charles', '18250 S. 66Th Avenue', 'Plympton', 'MA', '02367', 'cchannel@isp.com', 'cchannel');

INSERT INTO members (LASTNAME, FIRSTNAME, ADDRESS, CITY, STATE, POSTAL_CODE, EMAIL, PASSWORD) 
VALUES ('Reed', 'Laura', '4745 Baycliffe Drive', 'Atlanta', 'GA', '30341', 'lreed@isp.com', 'lreed');

INSERT INTO members (LASTNAME, FIRSTNAME, ADDRESS, CITY, STATE, POSTAL_CODE, EMAIL, PASSWORD) 
VALUES ('Lolli', 'Keith', '455 Scarborough Road', 'Highwood', 'IL', '60040', 'klolli@isp.com', 'klolli');

INSERT INTO members (LASTNAME, FIRSTNAME, ADDRESS, CITY, STATE, POSTAL_CODE, EMAIL, PASSWORD) 
VALUES ('Chaffin', 'Cathy', '106 R Brook Street', 'Dallas', 'TX', '75248', 'cchaffin@isp.com', 'cchaffin');

INSERT INTO members (LASTNAME, FIRSTNAME, ADDRESS, CITY, STATE, POSTAL_CODE, EMAIL, PASSWORD) 
VALUES ('Clancy', 'Deborah', '1936 Chamdun Way', 'Rolling Prairie', 'IN', '46371', 'dclancy@isp.com', 'dclancy');

INSERT INTO members (LASTNAME, FIRSTNAME, ADDRESS, CITY, STATE, POSTAL_CODE, EMAIL, PASSWORD) 
VALUES ('Hauge', 'Jayne', '2925 Ontario Road', 'Excelsior', 'MN', '55331', 'jhauge@isp.com', 'jhauge');

INSERT INTO members (LASTNAME, FIRSTNAME, ADDRESS, CITY, STATE, POSTAL_CODE, EMAIL, PASSWORD) 
VALUES ('Shearen', 'Mary', '6741 St Rd 32 W', 'Little Canada', 'MN', '55117-1268', 'mshearen@isp.com', 'mshearen');

INSERT INTO members (LASTNAME, FIRSTNAME, ADDRESS, CITY, STATE, POSTAL_CODE, EMAIL, PASSWORD) 
VALUES ('Collier', 'Donna', '2001 Ruppman Plaza', 'Houston', 'TX', '77006-6570', 'dcollier@isp.com', 'dcollier');

INSERT INTO members (LASTNAME, FIRSTNAME, ADDRESS, CITY, STATE, POSTAL_CODE, EMAIL, PASSWORD) 
VALUES ('Griffith', 'Herb', '236 West 150 North', 'Raleigh', 'NC', '27615', 'hgriffit@isp.com', 'hgriffit');

INSERT INTO members (LASTNAME, FIRSTNAME, ADDRESS, CITY, STATE, POSTAL_CODE, EMAIL, PASSWORD) 
VALUES ('Griffin', 'Elizabeth', '2324 Ravenhill Drive', 'Tinley Park', 'IL', '60477', 'egriffin@isp.com', 'egriffin');




CREATE TABLE dvds ( 
DVDID VARCHAR(4) NOT NULL PRIMARY KEY,
TITLE VARCHAR(50),
RATING VARCHAR(5),
DESCRIPTION VARCHAR(500),
DATE_RELEASED DATE);

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0920', 'Dear John', 'PG-13', 'While on leave, U.S. soldier John Tyree (Channing Tatum) falls for Southern college student Savannah (Amanda Seyfried), whose ideals and heartfelt principles are at once attractive and unfamiliar. But their love is put on hold when terrorist attacks prompt John to reenlist. Now, handwritten letters hold the lovers together. Lasse Hallstrom directs this modern romance based on the novel by Nicholas Sparks.', '2007/03/07');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0924', 'Alice in Wonderland', 'PG', 'A 19-year-old Alice (Mia Wasikowska) journeys through Underland, where she experiences strange ordeals and encounters peculiar characters, including the vaporous Cheshire Cat (voiced by Stephen Fry), the Mad Hatter (Johnny Depp) and the sadistic Red Queen (Helena Bonham Carter). Anne Hathaway, Alan Rickman, Matt Lucas and Crispin Glover co-star in director Tim Burton''s bold adaptation of the Lewis Carroll classic.', '2008/06/07');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0933', 'Remember Me', 'PG-13', 'Still reeling from a heartbreaking family event and his parents'' subsequent divorce, Tyler Hawkins (Robert Pattinson) discovers a fresh lease on life when he meets Ally Craig (Emilie de Ravin), a gregarious beauty who witnessed her mother''s death. But as the couple draws closer, the fallout from their separate tragedies jeopardizes their love. Allen Coulter directs this romantic drama that co-stars Pierce Brosnan, Lena Olin and Chris Cooper.', '2010/06/11');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0963', 'Book of Eli, The', 'R', 'Determined to salvage a sacred text in order to protect humanity, Eli (Denzel Washington) goes on a quest across the country in this action-packed sci-fi adventure. Meanwhile, a blind woman named Claudia (Jennifer Beals) tries to protect her daughter, Solara (Mila Kunis). It seems that tyrannical town bully Carnegie (Gary Oldman) has taken a shine to the girl. Directed by the Hughes brothers, the film co-stars Ray Stevenson.', '2001/03/12');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0964', 'Clash of the Titans', 'PG-13', 'f he is to save the life of the beautiful Princess Andromeda (Alexa Davalos), the valiant Perseus (Sam Worthington) -- born to a god but raised as a man -- must lead a team of intrepid warriors on a quest to battle a host of powerful, beastly enemies. This sweeping fantasy epic, a remake of the 1981 hit, also stars Liam Neeson as Zeus, Ralph Fiennes as Hades, Danny Huston as Poseidon and Gemma Arterton as Io.', '2003/05/03');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0966', 'Ghost Writer, The', 'PG-13', 'A writer (Ewan McGregor) stumbles upon a long-hidden secret when he agrees to help former British Prime Minister Adam Lang (Pierce Brosnan) complete his memoirs on a remote island after the politician''s assistant drowns in a mysterious accident. In director Roman Polanski''s tense drama, the author realizes that his discovery threatens some very powerful people who will do anything to ensure that certain episodes from Lang''s past remain buried.', '2009/01/03');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0970', 'Prince of Persia: The Sands of Time', 'PG-13', 'Jake Gyllenhaal stars as Prince Dastan, who pairs with spunky Princess Tamina (Gemma Arterton) to keep the Sands of Time -- a mystical dagger that gives its holder control over the flow of time -- from falling into the wrong hands and putting the world in peril. Mike Newell directs this sweeping live-action adventure based on the popular video game series, co-starring Ben Kingsley and Alfred Molina.', '2006/12/05');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0971', 'Date Night', 'PG-13', 'Who knew simple dinner reservations under a different name could turn one New Jersey couple''s date night so terribly upside-down? Claire (Tina Fey) and Phil (Steve Carell) Foster leave their kids with the sitter (Leighton Meester) and head out for a night on the town -- as the Tripplehorns. Shawn Levy (Just Married, Night at the Museum) directs this action-comedy; Mark Wahlberg and James Franco co-star.', '2011/02/09');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0974', 'Jonah Hex', 'PG-13', 'Enlisted by a Union soldier (Will Arnett), scarred bounty hunter Jonah Hex (Josh Brolin) scours the Wild West in pursuit of Turnbull (John Malkovich), a crazed voodoo master with a scheme to assemble a devastating weapon that will destroy the government and lift the Confederacy. Based on the cult DC Comics hero, this action Western co-stars Michael Shannon as strange circus impresario Doc Cross Williams and Megan Fox as beautiful gunslinger Lilah.', '2008/01/09');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0980', 'Inception', 'PG-13', 'Nominated for two Golden Globes, this unnerving sci-fi thriller stars Leonardo DiCaprio as Dom Cobb, who earns a tidy sum infiltrating the dreams of corporate titans to steal their most closely held secrets. Tapped by a rich industrialist (Ken Watanabe) for a job involving a rival''s heir, Cobb marshals a team of specialists that includes his right-hand man (Joseph Gordon-Levitt), an architecture student (Ellen Page) and a chemist (Dileep Rao).', '2011/04/01');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0981', 'Toy Story III', 'G', 'In this installment of the Pixar animated franchise, toy cowboy Woody (voiced by Tom Hanks), his astronaut pal, Buzz Lightyear (Tim Allen), and their friends cope with their owner''s departure for college -- and their new home in a day-care center. Joan Cusack, John Ratzenberger, Don Rickles, Michael Keaton, Ned Beatty and Jodi Benson also lend their voices to this delightful sequel that garnered a Golden Globe nod for Best Animated Feature.', '2003/03/03');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0982', 'A Team', 'PG', 'This updated feature-film take on the hit 1980s television show follows a group of Iraq War veterans on the run from U.S. military forces while they try to clear their names after being framed for a crime they didn''t commit. Along the way, Col. Hannibal Smith, Capt. H.M. "Howling Mad" Murdock , Sgt. Bosco "B.A." Baracus and Lt. Templeton "Faceman" Peck help out various people they encounter. Joe Carnahan directs this high-octane actioner.', '2004/01/04');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0983', 'Salt', 'NR', 'After she''s accused of being a Russian sleeper spy, rogue CIA agent Evelyn Salt (Angelina Jolie) goes on the run, using every tactic, accent and disguise she knows to elude her pursuers, clear her name and protect her husband. Her supervisor, Winter (Liev Schreiber), buys her story, while counterintelligence officer Peabody (Chiwetel Ejiofor) decidedly does not and will do anything to stop her in this fast-paced, intrigue-filled spy adventure.', '2009/09/06');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0984', 'Wall Street: Money Never Sleeps', 'PG-13', 'Trader Jake (Shia LaBeouf) tries to mend the broken relationship between his fiancée, Winnie (Carey Mulligan), and her father, Gordon Gekko (Michael Douglas), while avenging the fate of his mentor, Lou (Frank Langella), by getting close to Wall Street''s new megalomaniac, Bretton James (Josh Brolin). Centered on the 2008 financial crisis, director Oliver Stone''s follow-up is a modern-day ode to unfettered capitalism and, of course, greed.', '2005/01/07');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0988', 'Social Network, The', 'PG-13', 'Director David Fincher''s biographical drama chronicles the meteoric rise of Facebook CEO Mark Zuckerberg (Jesse Eisenberg) from Harvard sophomore to Internet superstar, examining his relationships with co-founder Eduardo Saverin (Andrew Garfield) and Napster founder Sean Parker (Justin Timberlake). Winning Golden Globes for Best Picture and Best Director, the film also racked up Oscar nods in the same categories and for lead actor Eisenberg.', '2013/09/02');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0990', 'Town, The', 'R', 'Career bank robber Doug (Ben Affleck) and his volatile partner, Jim (Jeremy Renner), hit a roadblock when Doug falls for bank manager Claire (Rebecca Hall), whom he kidnapped during their last heist. Worse, an FBI agent (Jon Hamm) is now trailing the thieves around their Charlestown, Mass., territory. Affleck directs and co-writes this smart, intricate actioner that co-stars Blake Lively as Krista, Jim''s sister and Doug''s troubled former flame.', '2004/06/11');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0992', 'Red', 'PG-13', 'After trading in his professional past as a black-ops CIA operative for a new identity, Frank Moses (Bruce Willis) is basking in normality. But he''s forced to return to old habits when an assassin puts a target on his back and goes after the woman (Mary-Louise Parker) he loves. Helen Mirren and John Malkovich co-star as former members of Frank''s team who reluctantly reassemble to save his life in this Golden Globe-nominated action-comedy.', '2002/04/01');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0993', 'Next Three Days, The', 'PG-13', 'When his wife (Elizabeth Banks) is sent to jail on murder charges she fervidly denies, college professor John Brennan (Russell Crowe) comes up with a plan to break her out by meticulously plotting the ultimate escape -- despite the fact that he''s never committed a crime in his life. Writer-producer Paul Haggis (Crash) also directs this remake of the French film Pour Elle by Fred Cavayé. Liam Neeson and Brian Dennehy co-star.', '2011/08/07');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0994', 'Winter''s Bone', 'R', 'In director Debra Granik''s unflinching noir drama set deep in the Ozarks, resilient teen Ree Dolly (Jennifer Lawrence) goes on the trail of her missing, drug-dealing father when his absence jeopardizes the family''s safety. Her deadbeat dad has a key court date pending, and Ree is determined that he show up -- despite the objections of the insular Dolly clan. The film earned Oscar and Independent Spirit Award nods for Best Picture and for Lawrence.', '2011/08/11');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0995', 'Unstopable', 'PG-13', 'It''s a nail-biting race against time as an unmanned train carrying a load of lethal chemicals speeds out of control, and a conductor and engineer do everything in their power to keep it from derailing and killing tens of thousands of people. Denzel Washington leads the cast in Tony Scott''s tough-minded action thriller, in which a terrible circumstance forces a couple of ordinary men to become extraordinary heroes.', '2007/02/05');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0996', 'Hereafter', 'PG-13', 'Clint Eastwood directs this supernatural thriller about three very different people and their responses to death, including a hesitant American psychic named George (Matt Damon) who may be able to help the others find answers and peace. Marie (Cécile De France) is a French journalist caught up in the aftereffects of the devastating 2004 tsunami, while in London, young Marcus (Frankie and George McLaren) seeks to contact his deceased twin brother.', '2004/09/07');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0997', 'Fighter, The', 'R', 'After a string of defeats, Mickey Ward rediscovers his fighting will with help from trainer and half-brother Dicky (Oscar winner Christian Bale) -- a once-talented pugilist and small-town hero now battling drug addiction.', '2010/02/06');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0998', 'Way Back, The', 'PG-13', 'After narrowly escaping from a wretched World War II Siberian labor camp, a small band of multinational soldiers desperately undertakes a harrowing journey to traverse Siberia, the Gobi Desert and the Himalayas on foot. Directed by Peter Weir, this exciting drama about courage and endurance -- based on a true story -- stars Colin Farrell, Jim Sturgess, Ed Harris, Saoirse Ronan, Mark Strong and Gustaf Skarsgård.', '2005/07/05');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('0999', 'Black Swan', 'R', 'In director Darren Aronofsky''s psychological thriller, ambitious New York City ballet dancer Nina Sayers (Natalie Portman) lands the lead in "Swan Lake" but soon thinks her dreams of stardom are threatened by a rival ballerina (Mila Kunis). As opening night nears and the pressure to be perfect builds, Nina''s obsession descends into paranoia and delusion. Portman won an Academy Award for the film, which also nabbed an Oscar nod for Best Picture.', '2001/07/10');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1000', 'Rabbit Hole', 'PG-13', 'In this raw drama based on David Lindsay-Abaire''s Pulitzer Prize-winning play of the same name, Becca (Nicole Kidman) and Howie (Aaron Eckhart) grapple with the realities of life eight months after the death of their 4-year-old son, Danny. Even with Becca''s well-meaning mother (Dianne Wiest) offering comfort and weekly group therapy always available, the couple go about their own secret ways of coping. John Cameron Mitchell directs.', '2000/12/09');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1001', 'Casino Jack', 'R', 'Kevin Spacey stars in this drama as disgraced political lobbyist Jack Abramoff, who defrauded Native American tribes out of tens of millions of dollars in his efforts to peddle influence in Washington''s corridors of power. As justice closes in on Abramoff and his associates, the audacious scope of his scams comes to light. Based on true events, this film from director George Hickenlooper co-stars Kelly Preston and Barry Pepper.', '2003/01/09');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1002', 'Tourist, The', 'PG-13', 'Watery Venice, Italy, provides the setting as Johnny Depp, playing an American tourist seeking solace for his shattered heart, instead finds it in danger again after encountering a beautiful Interpol agent (Angelina Jolie). Little does the Yank know that the artful lady has gone to great lengths to arrange their "chance" meeting and is using him to trap a thief who happens to be her ex-lover. The film earned Golden Globe nods for Depp and Jolie.', '2013/06/02');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1003', 'Blue Velvet', 'R', 'Once crazy about each other, Cindy (Michelle Williams) and Dean (Ryan Gosling) have now grown apart. Cindy is bored and disenchanted with her life while Dean languishes in the emotional emptyness of their sexless, routine life in rural Pennsylvania. As they muddle through their marriage, they hearken back to the golden days when life was filled with possibility and romance. Derek Cianfrance writes and directs this drama.', '2005/04/07');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1004', 'Stone', 'R', 'Edward Norton plays a convicted arsonist who hopes to get out of prison early by putting to work the seductive talents of his beautiful wife, Lucetta (Milla Jovovich). Robert DeNiro plays the parole officer who is the target of the couple''s cat-and-mouse scheming. John Curran (The Painted Veil) directs this subtle psychological thriller based on the play by screenwriter Angus MacLachlan (Junebug).', '2011/09/12');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1005', 'Country Strong', 'PG-13', 'While out on tour to revive her stalled career, once-popular country singer Kelly (Gwyneth Paltrow) falls for emerging newcomer Beau (Garrett Hedlund) and tries desperately to hide their burgeoning romance from her ever-present husband and manager, Ed (Tim McGraw). Written and directed by Shana Feste, this musical drama co-stars Leighton Meester as a former beauty queen trying to break out as a songstress.', '2011/03/08');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1006', 'Gulliver''s Travels', 'PG', 'When a trip to the Bermuda Triangle inevitably goes awry, shipwrecked travel writer Lemuel Gulliver (the inimitable Jack Black) finds himself in Lilliput, land of the little people, where he''s bound to discover just how much size matters. Jonathan Swift''s immortal satire gets a broad comic retelling in this updated adaptation directed by Rob Letterman. Amanda Peet, Emily Blunt and Billy Connolly also star.', '2000/01/03');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1007', 'Jack Goes Boating', 'R', 'Philip Seymour Hoffman directs and stars in this romantic comedy about Jack, a marijuana-smoking Manhattan limo driver who begins an unlikely regimen of self-improvement to win the heart of a fellow misfit named Connie (Amy Ryan). But as Jack learns to cook and swim for the benefit of his girl, he also witnesses the breakup of his best friends'' marriage. John Ortiz and Daphne Rubin-Vega co-star in this adaptation of Bob Glaudini''s play.', '2005/03/09');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1008', 'Mao''s Last Dancer', 'PG', 'A delegation from Madame Mao''s Beijing Dance Academy selects 11-year-old peasant villager Li Cunxin to study ballet in far-off Beijing, where he trains for seven grueling years to become one of China''s greatest dancers. His efforts win him the opportunity to dance in America, opening his eyes to a new love and the possibility of a dramatic defection from China in this remarkable true story based on Cunxin''s autobiography.', '2009/04/03');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1009', 'Mechanic, The', 'R', 'When his mentor is murdered, lone hit man Arthur Bishop (Jason Statham) trains the man''s son, Steve McKenna (Ben Foster), in the ways of the professional kill. Together Arthur and his eager apprentice hunt down those responsible for executing Steve''s father. But the partnership gives rise to new dangers and deceptions. Simon West directs and Donald Sutherland co-stars in this action-packed remake of the 1972 Charles Bronson thriller.', '2004/09/06');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1010', 'Company Men, The', 'R', 'Written, directed and produced by John Wells ("The West Wing"), this indie drama stars Ben Affleck as a successful businessman who comes face-to-face with America''s downsizing epidemic when he loses his job and is forced to take a construction gig. Rounding out the all-star cast are Kevin Costner as Affleck''s brother-in-law, Tommy Lee Jones as a conflicted corporate bigwig and Chris Cooper as a paranoid executive.', '2012/01/01');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1011', 'True Grit', 'PG-13', 'After drifter Tom Chaney (Josh Brolin) murders her father, 14-year-old Mattie Ross (Hailee Steinfeld) hires alcoholic U.S. Marshal Reuben "Rooster" Cogburn (Jeff Bridges) to help her exact revenge. The disreputable lawman still has grit, though, and mounts an epic search. Joining the duo on their quest is a Texas Ranger (Matt Damon) who''s also hunting for Chaney in this updated Western that received multiple Oscar nods, including Best Picture.', '2011/08/12');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1012', 'Lincoln Lawyer, The', 'R', 'Tasked with defending rich lothario Louis Roulet, who''s been charged with assault, lawyer Mick Haller finds himself and his family in danger when he deduces the truth behind this and former cases he''s worked on.', '2004/11/11');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1014', 'Robin Hood', 'PG-13', 'Russell Crowe stars as Robin Longstride in director Ridley Scott''s big-budget twist on the celebrated legend. When soldier Robin happens upon the dying Robert of Loxley, he promises to return the man''s sword to his family in Nottingham. There, he assumes Robert''s identity; romances his widow, Marion (Cate Blanchett); and draws the ire of the town''s sheriff (Matthew Macfadyen) and King John''s henchman, Godfrey (Mark Strong).', '2010/01/07');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1015', 'Source Code', 'PG-13', 'Jake Gyllenhaal portrays a soldier recruited for a time-bending government investigation that places him in another man''s mind and body, reliving the same traumatic event repeatedly in an effort to identify the perpetrators of a terrorist bombing. Vera Farmiga plays a communications specialist who provides the vital link to the soldier''s primary reality as he searches for critical clues within a recurring nightmare.', '2005/03/01');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1016', 'Adjustment Bureau, The', 'PG-13', 'A congressman (Matt Damon) who''s a rising star on the political scene finds himself entranced by a beautiful ballerina (Emily Blunt), but mysterious circumstances ensure that their love affair is predestined to be a non-starter. Screenwriter George Nolfi (The Bourne Ultimatum) makes his directorial debut with this romantic adaptation of Philip K. Dick''s classic sci-fi short story "Adjustment Team."', '2007/06/03');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1018', 'Unknown', 'PG-13', 'Liam Neeson stars in this taut thriller as a man who regains consciousness after an auto accident only to discover that another man is impersonating him, and that no one -- not even his wife (January Jones) -- recognizes his identity as the real Dr. Martin Harris. Finding himself with an unexpected ally (Diane Kruger), Harris struggles to solve the mystery and hang onto his own wits, while also being stalked by anonymous killers.', '2008/04/04');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1020', 'Other Woman, The', 'R', 'Romance becomes reality for Emilia Greenleaf (Natalie Portman), who wins the heart of the handsome object of her affection (Scott Cohen), only to find that the relationship comes with some very real baggage -- including her new beau''s troubled son (Charlie Tahan). Don Roos directs the film adaptation of Ayelet Waldman''s compelling novel, co-starring Lisa Kudrow, Lauren Ambrose and Elizabeth Marvel.', '2005/12/10');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1021', 'Limitless', 'PG-13', 'With his writing career dragging and his girlfriend casting him off, Eddie Morra''s life turns around when he takes a drug that provides astonishing mental focus -- but its deadly side effects threaten his future.', '2004/08/03');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1026', 'Conviction', 'R', 'Convinced that her brother, Kenneth (Sam Rockwell), has been unjustly convicted of murder and incompetently defended by court-ordered attorneys, high school dropout Betty Anne Waters (Hilary Swank) puts herself through law school in order to represent him in his appeal. Inspired by a true story, director Tony Goldwyn''s stirring drama also stars Melissa Leo, Minnie Driver, Peter Gallagher and Clea DuVall.', '2007/07/10');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1028', 'Jane Eyre', 'PG-13', 'en from her post at Thornfield House by her love for her brooding employer and his secret past, young governess Jane Eyre reflects on her youth and the events that led her to the misty moors in this artful adaptation of Charlotte Brontë''s novel.', '2007/09/09');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1029', 'Hanna', 'PG-13', 'Hanna (Saoirse Ronan) is a teenager raised and trained by her father (Eric Bana), an ex-CIA operative, to become a highly skilled assassin. But when she''s sent on a deadly mission across Europe, Hanna takes to an English family and starts longing for a normal life. She must first solve the puzzle of her mysterious past, however. Joe Wright (Atonement) directs this tense actioneer; Cate Blanchett also stars.', '2002/01/03');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1030', 'X-Men: First Class', 'PG-13', 'In this exciting prequel to the X-Men series, Charles Xavier (James McAvoy) and Erik Lehnsherr (Michael Fassbender) -- the future Professor X and Magneto -- are best friends dedicated to harnessing their powers and promoting the education of fellow mutants during the turbulent 1960s. The duo works together to stop a powerful adversary that threatens mankind, but their ideological differences drive them apart and turn them into ferocious enemies.', '2003/04/04');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1031', 'Captain America', 'PG-13', 'Marvel launches another super franchise with this action-packed origin story, which follows Steve Rogers (Chris Evans) as he volunteers for a secret experiment during World War II. Transformed into a superhero named Captain America, Steve goes after the Axis. With his perfect physique and heightened reflexes -- and his sidekick, Bucky (Sebastian Stan) -- Steve battles the Red Skull (Hugo Weaving), a super soldier created by Italian fascists.', '2012/03/03');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1035', 'Tree of Life, The', 'PG-13', 'Brad Pitt and Sean Penn star in Terrence Malick''s 1950s adventure about a confused man named Jack, who sets off on a journey to understand the true nature of the world. Growing up in the Midwest with two brothers, Jack has always been torn between his mother''s guidance to approach everything he encounters with an open heart and his father''s advice to look after his own interests. Now, Jack must find a way to regain purpose and perspective.', '2008/09/04');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1038', 'Our Idiot Brother', 'R', 'Ned (Paul Rudd) is a seemingly clueless idealist who must rely upon his three exasperated sisters (Emily Mortimer, Elizabeth Banks and Zooey Deschanel) for shelter and support after he''s dumped by his fed-up girlfriend (Kathryn Hahn) and loses custody of his beloved dog, Willie Nelson. As he wreaks havoc on his sisters'' lives, Ned''s earnestness shines through until his siblings realize that family ties take priority over wealth and position.', '2013/07/03');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1039', 'Water for Elephantis', 'PG-13', 'In this captivating Depression-era melodrama, impetuous veterinary student Jacob Jankowski (Robert Pattinson) joins a celebrated circus as an animal caretaker but faces a wrenching dilemma when he''s transfixed by angelic married performer Marlena (Reese Witherspoon). An affinity for elephants brings together the young pair, but the warmth between them sends Marlena''s cruel husband, animal trainer August (Christoph Waltz), into a frightening fury.', '2013/12/09');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1040', 'Crazy, Stupid, Love', 'PG-13', 'When Cal Weaver (Steve Carell) discovers that his wife (Julianne Moore) wants to end their marriage, he reluctantly faces the unwelcome prospect of single life with the counsel of the younger and smoother super-bachelor Jacob Palmer (Ryan Gosling). Meanwhile, Cal''s adolescent son, Robbie (Jonah Bobo), has formed an unquenchable crush on his 17-year-old babysitter (Analeigh Tipton) -- but is she more interested in Robbie''s recently unwed father?', '2000/12/09');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1041', 'Atlas Shrugged Part 1', 'PG-13', 'Ayn Rand''s controversial bestseller is the basis for this potent drama about Dagny Taggart, a fiercely independent railroad tycoon determined to use innovative technology and enterprising partners to revive her business, no matter the personal cost.', '2006/03/01');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1042', 'Larry Crowe', 'PG-13', 'After being laid off from his longtime job at a soulless retail giant, average middle-aged guy Larry Crowne (Tom Hanks) decides it''s time to change up his life, so he heads back to college. There, he finds a new perspective -- and a new romance with a professor (Julia Roberts). Hanks directs this comedy-drama from a script co-written by Hanks and Nia Vardalos. Bryan Cranston, Pam Grier, Taraji P. Henson, Cedric the Entertainer and Vardalos co-star.', '2011/04/01');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1048', 'Abduction', 'PG-13', 'When teenager Nathan comes across his own childhood picture while scrolling through a missing persons website, he begins to question everything he ever took for granted -- including the people he always assumed were his parents.', '2002/06/04');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1049', 'Cowboys and Aliens', 'PG-13', 'Scott Mitchell Rosenberg''s graphic novel series leaps to the screen as amnesiac gunslinger Jake Lonergan (Daniel Craig) stumbles into the Wild West town of Absolution, where he''s confronted by potent enemy Col. Dolarhyde (Harrison Ford) and a terrifying problem: invading aliens. Aided by the lovely Ella (Olivia Wilde), Jake rallies a posse of the townspeople, Dolarhyde''s minions and local Apache warriors to fight off the extraterrestrial threat.', '2013/11/01');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1051', 'Contagion', 'PG-13', 'Steven Soderbergh steers big stars through this big-screen disaster-thriller about a global team of doctors tasked with tamping down a deadly outbreak of infectious disease before it annihilates mankind.', '2003/08/04');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1052', 'Ides of March, The', 'R', 'Dirty tricks stand to soil an ambitious young press spokesman''s (Ryan Gosling) idealism in a cutthroat presidential campaign where "victory" is relative. The film, directed by George Clooney, is inspired by the real-life experiences of an aide who worked on Howard Dean''s failed 2004 run.', '2003/04/01');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1053', 'Debt, The', 'R', 'Rachel Singer (Helen Mirren) is a former Mossad intelligence agent forced to relive her 1965 pursuit of a notorious Nazi war criminal when the bold and dangerous fugitive is thought to have reemerged 30 years later in the Ukraine. Director John Madden''s redo of Assaf Bernstein''s 2007 Israeli suspense piece also features Jessica Chastain as the young Rachel Singer, along with Sam Worthington, Tom Wilkinson and Ciarán Hinds.', '2013/11/07');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1054', 'Killer Elite', 'R', 'This globe-trotting thriller, based on a true story, follows Danny Bryce, a former British special ops tough guy forced to come out of retirement when his mentor is kidnapped by a ruthless criminal. Enraged, Danny has to dodge three top assassins.', '2011/08/12');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1055', 'Margin Call', 'R', 'An all-star cast shines in this engrossing drama about a critical 24-hour period at a high-profile investment bank in the early days of the 2008 financial crisis, when young analyst Peter Sullivan (Zachary Quinto) uncovers information that could destroy the firm. When he alerts upper management to the precarious position of their risky investments, an emergency meeting is held to decide if they should alert clients or abscond with the profits.', '2009/07/06');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1056', 'Columibiana', 'R', 'After watching Bogota gangsters slay her parents in cold blood, young Cataleya Restrepo (Zoe Saldana) dedicates her life to becoming a ruthless assassin on the hunt for the criminals who killed her family.', '2003/02/06');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1057', 'Rum Diary, The', 'R', 'Eager to flee his humdrum life in 1950s New York, booze-loving journalist Paul (Johnny Depp) moves to Puerto Rico and begins writing for a local rag, but his life becomes unhinged when he falls for a gorgeous woman (Amber Heard) and clashes with her shifty fiancé (Aaron Eckhart). Written and directed by Bruce Robinson, this adaptation of Hunter S. Thompson''s early novel also stars Richard Jenkins as Paul''s editor.', '2013/10/07');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1058', 'Dream House', 'PG-13', 'Daniel Craig plays Will Atenton, a successful businessman who forsakes New York City for the rural pleasures of New England, only to discover that the tranquil abode he''s moved into was the scene of an as-yet-unsolved multiple homicide. Drawn reluctantly into the mystery surrounding the tragic events, Will and his wife (Rachel Weisz) soon begin finding plenty of reasons to worry about their own safety in this psychological thriller.', '2011/02/03');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1059', 'Help, The', 'PG-13', 'In 1960s Jackson, Miss., aspiring writer Eugenia Phelan crosses taboo racial lines by conversing with Aibileen Clark about her life as a housekeeper, and their ensuing friendship upsets the fragile dynamic between the haves and the have-nots. When other long-silent black servants begin opening up to Eugenia, the disapproving conservative Southern town soon gets swept up in the turbulence of changing times.', '2006/01/02');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1060', 'A Better Life', 'PG-13', 'This candid social drama tracks the relationship and conflicts between Mexican immigrant gardener Carlos and his teenage son Luis, whom he''s trying to interest in earning an honest living rather than drifting into the East L.A. gang scene.', '2012/11/02');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1061', 'Hugo', 'PG', 'When his father dies, 12-year-old orphan Hugo takes up residence behind the walls of a Parisian train station. There, he meets Isabelle, the daughter of filmmaker Georges Méliès, who holds the key to Hugo''s destiny.', '2013/03/06');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1063', 'Drive', 'R', 'A Hollywood stuntman who moonlights as a getaway driver is lured from his isolated life by a lovely neighbor and her young son. His newfound peace is shattered, however, when her violent husband is released from prison.', '2001/06/07');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1064', 'Whistleblower, The', 'R', 'Sent to Bosnia to train cops in the aftermath of that country''s brutal civil war, American policewoman Kathryn Bolkovac (Rachel Weisz) uncovers evidence that U.N. peacekeepers are complicit in a flourishing sex-trafficking trade. But when she brings her allegations to light, she discovers that her foes are more powerful than the law. Based on a true story, this thriller from director Larysa Kondracki co-stars Monica Bellucci and David Strathairn.', '2005/02/10');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1065', 'My Week With Marilyn', 'R', 'While filming a movie in England, Hollywood icon Marilyn Monroe slips away with a young Brit for a week of self-discovery and frivolity. The story that ensues is based on the real-life memoirs of Colin Clark, once assistant to Sir Laurence Olivier.', '2009/09/07');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1066', 'Super 8', 'PG-13', 'With a nod toward producer Steven Spielberg''s landmark sci-fi films of the 1970s and ''80s, writer-director J.J. Abrams crafts a supernatural tale about six kids who witness something incredible while shooting a movie with their Super 8 camera.', '2005/05/03');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1067', 'Young Adult', 'R', 'Taken aback when she receives a letter from an old boyfriend announcing that he''s just had a baby with his wife, divorced fiction writer Mavis Gary decides to return to her small hometown and reconnect with her former lover.', '2006/03/03');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1068', 'Tinker, Taylor, Soldier, Spy', 'R', 'John Le Carré''s classic thriller of Cold War espionage follows an English spy as he returns to MI-6 under a cloud of suspicion. In the years since he was sacked by the agency, some suspect he''s become an operative for the Soviet Union.', '2003/06/09');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1070', 'Carnage', 'R', 'In this comic drama from director Roman Polanski, two sets of parents meet in the aftermath of an incident in which one of their children bullied the other. As the evening progresses, the adults confront each other in increasingly hostile ways.', '2011/06/05');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1073', 'Martha Marcy May Marlene', 'R', 'After escaping from a violent cult in rural New York, Martha (Elizabeth Olsen) tries to reconnect with her estranged sister, Lucy (Sarah Paulson), and Lucy''s well-to-do husband, Ted (Hugh Dancy), but the brainwashing she endured continues to prevent her from forming an identity of her own. Overwhelmed with paranoia, guilt and shame, Martha isolates herself until Lucy begins to suspect her sister''s emotional trauma has deeper underlying causes.', '2013/05/03');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1075', 'There Be Dragons', 'PG-13', 'Roland Joffé directs this epic tale of love and betrayal set during the Spanish Civil War. When a present-day journalist (Dougray Scott) investigates Opus Dei founder Josemaría Escrivá (Charlie Cox), he uncovers a surprising link to his own father, Manolo (Wes Bentley). Manolo and Josemaría were childhood friends who followed different paths when the war broke out. Josemaría pursued his faith, while Manolo joined the rebels to fight Franco.', '2003/01/03');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1076', 'Iron Lady, The', 'PG-13', 'Meryl Streep provides a subtle and nuanced portrait of Margaret Thatcher, the first female prime minister of Britain, whose political career and determination changed the rules that had limited women''s opportunities for leadership.', '2012/01/02');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1077', 'Descendants, The', 'R', 'When his wife is killed in a Waikiki boating accident, distant father Matt King (George Clooney) begins an iffy journey to repair his fractured relationship with his two daughters. But he''s also trying to decide whether to let go of some valuable family real estate. Judy Greer, Beau Bridges and Matthew Lillard co-star in this tragic-comic tale of legacy and unexpected loss based on the novel by Kaui Hart Hemmings.', '2005/04/10');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1078', 'A Dangerous Method', 'R', 'In this David Cronenberg-helmed biopic, Viggo Mortensen stars as Sigmund Freud, whose relationship with fellow psychology luminary Carl Jung (Michael Fassbender) is tested when Sabina Spielrein (Keira Knightley), one of the first female psychoanalysts, enters their lives. This World War I-set drama also stars Vincent Cassel as Otto Gross, a disciple of Freud, and Sarah Gadon, who plays Jung''s psychoanalyst wife.', '2003/06/01');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1080', 'J. Edgar', 'R', 'Leonardo DiCaprio stars in this riveting biopic as J. Edgar Hoover, the longtime FBI director as notorious for his overzealous methods of law enforcement as for the rumors regarding his cross-dressing and close relationship with protégé Clyde Tolson.', '2001/07/09');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1081', 'Mission Impossible: Ghost Protocol', 'PG-13', 'Super-agent Ethan Hunt dangles from skyscrapers and otherwise takes daring to new heights on another operation from the Impossible Missions Force. Helping Hunt get the job done is droll fellow IMF agent Luther Stickel.', '2005/05/10');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1082', 'Darkest Hour, The', 'PG-13', 'This sci-fi action thriller tracks the adventures of a group of young Americans touring Moscow who get caught up in an alien invasion. Despite the unfamiliarity of their surroundings, the Yanks quickly team up with the Russians to fight back.', '2003/01/07');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1083', 'Retreat', 'R', 'While visiting a remote island, a couple (Cillian Murphy and Thandie Newton) encounters a man (Jamie Bell):  who apparently washed up there -- claiming a lethal virus has spread through Europe. The couple must decide whether to trust the stranger and figure out how to survive.', '2006/01/06');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1084', 'Moneyball', 'PG-13', 'An all-star cast brings to life the true story of Billy Beane (Brad Pitt), a former jock turned general manager who uses unconventional methods to bring the best players to the Oakland A''s, a major league baseball team struggling against financial hardship.', '2003/04/11');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1085', 'London Boulevard', 'R', 'Colin Farrell stars as a paroled ex-con whose attempt at straight life includes taking a job as a handyman for a reclusive young starlet. This adaptation of Ken Bruen''s novel marks the directorial debut of award-winning screenwriter William Monahan.', '2001/10/07');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1087', 'Haywire', 'R', 'A last-minute mission in Dublin turns deadly for stunning secret operative Mallory Kane when she realizes she''s been betrayed -- and that her own life is no longer safe. Now, to outwit her enemies, she''ll simply have to outlast them.', '2001/08/11');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1088', 'W.E.', 'R', 'This glossy ensemble drama juxtaposes the lives of famous divorcée Wallis Simpson and Wally Winthrop, a young 1990s housewife. Wally yearns to have a romance as dramatic as Wallis''s but soon discovers that history can be misleading.', '2013/05/04');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1090', 'Albert Nobbs', 'R', 'Having for decades disguised herself as a man while working as a butler in a posh 19th-century Dublin hotel, a woman calling herself Albert Nobbs reconsiders her charade when a handsome painter arrives on the scene.', '2001/12/01');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1091', 'Extremely Loud and Incredibly Close', 'PG-13', 'Believing that his father left him a message before dying in the September 11 attacks, young Oskar Schell embarks on an emotional odyssey through New York City to find the lock that matches a key he found among his father''s belongings.', '2013/03/03');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1092', 'Contraband', 'R', 'When his brother-in-law runs afoul of a drug lord, family man Chris Farraday turns to a skill he abandoned long ago -- smuggling -- to repay the debt. But the job goes wrong, and Farraday finds himself wanted by cops, crooks and killers alike.', '2008/01/06');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1093', 'Girl With The Dragon Tatoo, The', 'R', 'When a young computer hacker is tasked with investigating a prying journalist, their separate missions become entangled amid a decades-old conspiracy. David Fincher directs this English adaptation of Stieg Larsson''s novel.', '2010/03/02');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1094', 'In the Land of Blood and Honey', 'R', 'Danijel, a Bosnian Serb soldier serving under his father''s command, reunites with Ajla, a Bosnian Muslim woman he was involved with before the war, when she is captured by his camp and forced to work as a sex slave.', '2006/01/02');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1097', 'Artist, The', 'PG-13', 'This modern-day silent film artfully recounts the poignant end of the silent-movie era in the late 1920s. The story contrasts the declining fortunes of a silent-screen superstar with his lover''s rise to popularity as a darling of the "talkies."', '2010/11/03');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1099', 'Coriolanus', 'R', 'Actor Ralph Fiennes makes his directorial debut with this modern update of Shakespeare''s tale about the arrogant general who is banished by the republic he has protected at all costs, provoking him to ally with former foes and wreck a bloody revenge.', '2008/01/05');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1100', 'Safe House', 'R', 'When men bent on eliminating dangerous criminal Tobin Frost attack the safe house where the CIA has squirreled him away, young operative Matt Weston must find a way to get Frost out alive and relocate him to another, securer location.', '2006/06/11');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1102', 'Grey, The', 'R', 'After narrowly surviving a deadly plane crash in the Alaskan wilderness, a band of oil riggers must fend for their lives in the ice and snow. But thanks to wolves that view their presence as a threat, they aren''t alone.', '2008/12/04');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1103', 'Salmon Fishing on the Yemen', 'PG-13', 'A sheik with a love for the sport hopes to introduce fly-fishing to the Middle East and turns to uptight fisheries expert Fred Jones for help. Buoyed by the sheik''s enthusiasm (and his comely English aide), Fred sets out to achieve the impossible.', '2008/04/01');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1104', 'Man On A Ledge', 'PG-13', 'When fugitive ex-cop Nick Cassidy steps onto a window ledge high above a busy Manhattan street, police psychologist Lydia Anderson tries to talk him down. But soon Anderson suspects that there''s more to Cassidy''s stunt than meets the eye.', '2006/12/04');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1106', 'Being Flynn', 'R', 'A young man employed at a Boston homeless shelter comes upon his long-lost, destitute and alcoholic father while at work one evening in this subtle, emotionally charged drama based on the acclaimed memoir by poet and playwright Nick Flynn.', '2007/04/04');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1107', 'Bel Ami', 'R', 'Armed with good looks and devastating charm, manipulative journalist Georges Duroy (Robert Pattinson) climbs from the depths of poverty to the height of Parisian society, taking up with a variety of beautiful women along the way. Declan Donnellan and Nick Ormerod direct this erotically charged period drama based on the classic novel by French writer Guy de Maupassant. Uma Thurman, Christina Ricci and Kristin Scott Thomas co-star.', '2006/05/03');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1108', 'Sherlock Holmes: A Game of Shadows', 'PG-13', 'Robert Downey Jr. returns as the brilliant sleuth and Jude Law is back as Dr. Watson in this atmospheric sequel to 2009''s Sherlock Holmes. Holmes resorts to occult theories and more to defeat the plans of his nemesis, the evil Professor Moriarty.', '2005/02/08');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1111', 'Hungar Games, The', 'PG-13', 'In a dystopian future ruled by a totalitarian regime, resourceful Katniss and her partner, Peeta, represent their district in the lethal Hunger Games -- a televised survival competition in which teenage contestants fight each other to the death.', '2003/05/05');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1116', 'People Like Us', 'PG-13', 'When Sam flies home for his estranged father''s funeral, the reading of the will reveals a sister he never knew he had -- and an order that Sam must bring his alcoholic sibling and her young son their inheritance.', '2008/01/02');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1117', 'Snow White and the Huntsman', 'PG-13', 'An updated take on the Snow White tale finds the fair-skinned maiden battling the Evil Queen with skills learned from the huntsman sent to kill her. Meanwhile, a love-struck prince bides his time from afar.', '2005/08/10');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1118', 'Battleship', 'PG-13', 'The classic Battleship board game moves to the big screen in this at-sea adventure about defending planet Earth from a mysterious enemy fleet. At the center of the action is a pair of naval officer brothers and their commanding superior.', '2010/07/11');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1119', 'Best Exotic Marigold Hotel, The', 'PG-13', 'To make the most of their meager retirement savings, a group of British seniors moves to India to live out their golden years at the Marigold Hotel. But upon arrival, they discover the once-lavish resort has wilted considerably.', '2007/08/05');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1120', 'Avengers, The', 'PG-13', 'An all-star lineup of superheroes -- including Iron Man, the Incredible Hulk and Captain America -- team up to save the world from certain doom. Working under the authority of S.H.I.E.L.D., can our heroes keep the planet at peace?', '2011/04/08');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1123', 'Safety Not Guaranteed', 'R', 'A team of journalists are dispatched to find out who''s behind a classified advertisement seeking a companion for time travel, with payment on return. After tracking down their oddball prey, the team has to decide how best to approach their subject.', '2005/09/09');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1124', 'Prometheus', 'R', 'When scientific explorers unearth an artifact that points to the origins of humankind, they''re pulled into the unexpected adventure of a lifetime. But if they falter, the very future of their species is at stake.', '2001/12/01');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1125', 'Amazing Spider Man, The', 'PG-13', 'The story of Spider-Man takes a turn toward the darker side in this reboot of the hit superhero franchise, which reveals how high school lad Peter Parker (Andrew Garfield) learns to wield his newfound powers while facing down archvillain The Lizard (Rhys Ifans).', '2004/10/06');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1126', 'Moonrise Kingdom', 'PG-13', 'Wes Anderson''s quirky drama follows the frantic search that ensues in a small New England town when two 12-year-olds fall in love and run away together. As the townsfolk hunt for the vanished kids, a storm causes even more profound communal upheaval.', '2004/07/09');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1127', '360', 'R', 'In this remake of the 1950 classic La Ronde, an all-star cast weaves through interrelated stories about love, passion and loneliness. From London and Denver to Phoenix and Vienna, people are haunted by their need to connect, despite the consequences.', '2002/01/07');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1129', 'Dark Shadows', 'PG-13', 'Tim Burton''s take on the cult gothic soap follows a centuries-old vampire as he returns to his now-crumbling estate to meet his modern descendants. But what he finds is a house full of secrets and shadows.', '2013/09/06');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1130', 'Men In Black 3', 'PG-13', 'When Earth comes under the threat of an alien attack, Agent J (Will Smith) travels back in time to join forces with a much-younger Agent K (Josh Brolin) and change the course of history. But if they fail, the future of the world is at stake.', '2006/08/11');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1131', 'Hope Springs', 'PG-13', 'Feeling disconnected in her decades-old marriage, Maeve convinces her skeptical husband to attend a marriage therapy week with a celebrated relationship expert -- but now they must shed their inhibitions and learn some new sexual and emotional moves.', '2009/09/10');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1132', 'Rock of Ages', 'PG-13', 'In the 1980s, Los Angeles'' famed Sunset Strip is pulsing to a beat that attracts waitress Sherrie and busboy Drew, who fall in love and chase fame while working at the Bourbon Room, a club catering to rock royalty like Stacee Jaxx.', '2009/05/01');

INSERT INTO dvds (DVDID, TITLE, RATING, DESCRIPTION, DATE_RELEASED) 
VALUES ('1133', 'Lawless', 'R', 'This true-to-life action saga profiles Virginia''s bootlegging Bondurant gang, whose exploits during the Prohibition era made them outlaw heroes. The three Bondurant brothers tussle with the law and each other as they try to survive changing times.', '2004/07/03');


CREATE TABLE queue (
MEMBERID SMALLINT,
DVDID VARCHAR(4),
ORDERNO SMALLINT,
CONSTRAINT fk_member_id FOREIGN KEY (memberid) REFERENCES members (memberid),
CONSTRAINT fk_dvdid FOREIGN KEY (dvdid) REFERENCES dvds (dvdid));

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1001, '0974', 1.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1001, '1041', 2.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1001, '1052', 3.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1001, '1055', 4.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1001, '1106', 5.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1002, '0924', 1.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1002, '0982', 2.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1002, '1002', 3.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1002, '1048', 4.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1002, '1078', 5.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1002, '1102', 6.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1002, '1131', 7.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1003, '1006', 1.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1003, '1083', 2.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1003, '1094', 3.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1003, '1124', 4.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1004, '0974', 1.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1004, '0999', 2.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1004, '1004', 3.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1004, '1038', 4.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1004, '1054', 5.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1004, '1082', 6.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1004, '1111', 7.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1004, '1119', 8.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1006, '0964', 1.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1006, '0994', 2.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1006, '1009', 3.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1006, '1035', 4.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1006, '1054', 5.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1006, '1063', 6.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1006, '1097', 7.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1006, '1099', 8.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1006, '1131', 9.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1006, '1133', 10.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1007, '0983', 1.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1007, '0998', 2.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1007, '1005', 3.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1007, '1006', 4.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1007, '1012', 5.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1007, '1039', 6.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1007, '1070', 7.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1007, '1119', 8.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1008, '0966', 1.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1008, '0974', 2.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1008, '0995', 3.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1008, '1020', 4.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1008, '1081', 5.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1008, '1093', 6.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1008, '1104', 7.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1009, '1011', 1.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1009, '1067', 2.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1009, '1103', 3.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1009, '1107', 4.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1009, '1118', 5.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1010, '0966', 1.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1010, '1016', 2.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1010, '1080', 3.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1010, '1099', 4.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1010, '1126', 5.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1010, '1133', 6.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1011, '0920', 1.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1011, '0963', 2.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1011, '0993', 3.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1011, '1087', 4.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1011, '1103', 5.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1012, '0995', 1.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1012, '0998', 2.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1012, '1000', 3.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1012, '1005', 4.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1012, '1029', 5.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1012, '1035', 6.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1012, '1056', 7.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1012, '1057', 8.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1012, '1059', 9.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1012, '1102', 10.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1013, '1001', 1.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1013, '1016', 2.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1013, '1028', 3.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1013, '1061', 4.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1013, '1063', 5.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1013, '1082', 6.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1013, '1108', 7.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1013, '1111', 8.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1013, '1118', 9.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1013, '1133', 10.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1014, '1016', 1.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1014, '1020', 2.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1014, '1054', 3.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1014, '1103', 4.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1014, '1104', 5.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1014, '1133', 6.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1015, '1008', 1.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1016, '1055', 1.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1016, '1056', 2.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1016, '1088', 3.0);

INSERT INTO queue (MEMBERID, DVDID, ORDERNO) 
VALUES (1016, '1090', 4.0);



COMMIT;