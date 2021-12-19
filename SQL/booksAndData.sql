/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS "books" (
	"BookID" INT NOT NULL,
	"title" VARCHAR(255) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"author" VARCHAR(255) NULL DEFAULT 'NULL' COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"total_pages" INT NULL DEFAULT 'NULL',
	"SelerID" INT NULL DEFAULT 'NULL',
	"Lang" VARCHAR(50) NULL DEFAULT 'NULL' COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"published_date" DATE NULL DEFAULT 'NULL',
	"uploadedDate" DATETIME NULL DEFAULT 'NULL',
	"series" VARCHAR(200) NULL DEFAULT 'NULL' COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"cover" VARCHAR(20) NULL DEFAULT 'NULL' COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"description" TEXT NULL DEFAULT 'NULL' COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"isApproved" INT NULL DEFAULT 'NULL',
	FOREIGN KEY INDEX "FK_SelerID" ("SelerID"),
	PRIMARY KEY ("BookID"),
	CONSTRAINT "FK_SelerID" FOREIGN KEY ("SelerID") REFERENCES "users" ("userID") ON UPDATE CASCADE ON DELETE CASCADE
);

/*!40000 ALTER TABLE "books" DISABLE KEYS */;
INSERT INTO "books" ("BookID", "title", "author", "total_pages", "SelerID", "Lang", "published_date", "uploadedDate", "series", "cover", "description", "isApproved") VALUES
	(1, 'Kafka on the Shore', 'Haruki Murakami', 467, 5905, 'English', '2006-01-03', NULL, NULL, 'covers/cover2.png', 'Kafka on the Shore, a tour de force of metaphysical reality, is powered by two remarkable characters: a teenage boy, Kafka Tamura, who runs away from home either to escape a gruesome oedipal prophecy or to search for his long-missing mother and sister; and an aging simpleton called Nakata, who never recovered from a wartime affliction and now is drawn toward Kafka for reasons that, like the most basic activities of daily life, he cannot fathom. Their odyssey, as mysterious to them as it is to us, is enriched throughout by vivid accomplices and mesmerizing events. Cats and people carry on conversations, a ghostlike pimp employs a Hegel-quoting prostitute, a forest harbors soldiers apparently unaged since World War II, and rainstorms of fish (and worse) fall from the sky. There is a brutal murder, with the identity of both victim and perpetrator a riddle—yet this, along with everything else, is eventually answered, just as the entwined destinies of Kafka and Nakata are gradually revealed, with one escaping his fate entirely and the other given a fresh start on his own. (less)', 1),
	(2, 'Doctor Zhivago', 'Boris Pasternak', 592, 5907, 'English', '1997-03-18', NULL, NULL, 'covers/cover3.png', 'This epic tale about the effects of the Russian Revolution and its aftermath on a bourgeois family was not published in the Soviet Union until 1987. One of the results of its publication in the West was Pasternak''s complete rejection by Soviet authorities; when he was awarded the Nobel Prize for Literature in 1958 he was compelled to decline it. The book quickly became an international best-seller.

Dr. Yury Zhivago, Pasternak''s alter ego, is a poet, philosopher, and physician whose life is disrupted by the war and by his love for Lara, the wife of a revolutionary. His artistic nature makes him vulnerable to the brutality and harshness of the Bolsheviks. The poems he writes constitute some of the most beautiful writing featured in the novel. (less)', 1),
	(3, 'The Elephant Tree', 'R.D. Ronald', 252, 600, 'English', '2010-01-01', NULL, NULL, 'covers/cover4.png', 'Mark Fallon is an overworked detective investigating a spate of attacks at a string of high profile city centre nightclubs. Scott is a dejected 24 year old struggling to make ends meet working for his brother and supplementing his income with a small-scale drug dealing operation. Angela is an attractive 23 year old, raised by her father, a career criminal and small time drug dealer who supplies Scott with cannabis. This is a chilling tale spanning a few months in the lives of Scott and Angela, where realizations about the present combine with shocking revelations from the past leading to an apocalyptic climax where they no longer know whom they can trust. (less)', 1),
	(4, 'The Bean Trees', 'Barbara Kingsolver', 232, 5934, 'English', '1989-03-01', NULL, 'Greer Family #1', 'covers/cover5.png', 'Clear-eyed and spirited, Taylor Greer grew up poor in rural Kentucky with the goals of avoiding pregnancy and getting away. But when she heads west with high hopes and a barely functional car, she meets the human condition head-on. By the time Taylor arrives in Tucson, Arizona, she has acquired a completely unexpected child, a three-year-old American Indian girl named Turtle, and must somehow come to terms with both motherhood and the necessity for putting down roots. Hers is a story about love and friendship, abandonment and belonging, and the discovery of surprising resources in apparently empty places. (less)', 1),
	(5, 'The Sirens of Titan', 'Kurt Vonnegut Jr.', 224, 4077, 'English', '1999-09-09', NULL, NULL, 'covers/cover6.png', 'The Sirens of Titan is an outrageous romp through space, time, and morality. The richest, most depraved man on Earth, Malachi Constant, is offered a chance to take a space journey to distant worlds with a beautiful woman at his side. Of course there''s a catch to the invitation—and a prophetic vision about the purpose of human life that only Vonnegut has the courage to tell. (less)', 1),
	(6, 'The Sparrow', 'Mary Doria Russell', 516, 1510, 'English', '1997-09-08', NULL, 'The Sparrow #1', 'covers/cover7.png', 'In 2019, humanity finally finds proof of extraterrestrial life when a listening post in Puerto Rico picks up exquisite singing from a planet that will come to be known as Rakhat. While United Nations diplomats endlessly debate a possible first contact mission, the Society of Jesus quietly organizes an eight-person scientific expedition of its own. What the Jesuits find is a world so beyond comprehension that it will lead them to question what it means to be "human". (less)', 1),
	(7, 'Deception Point', 'Dan Brown', 556, 4175, 'English', '2002-12-01', NULL, NULL, 'covers/cover8.png', 'A shocking scientific discovery.
A conspiracy of staggering brilliance.
A thriller unlike any you''ve ever read....

When a NASA satellite discovers an astonishingly rare object buried deep in the Arctic ice, the floundering space agency proclaims a much-needed victory—a victory with profound implications for NASA policy and the impending presidential election. To verify the authenticity of the find, the White House calls upon the skills of intelligence analyst Rachel Sexton. Accompanied by a team of experts, including the charismatic scholar Michael Tolland, Rachel travels to the Arctic and uncovers the unthinkable: evidence of scientific trickery—a bold deception that threatens to plunge the world into controversy. But before she can warn the President, Rachel and Michael are ambushed by a deadly team of assassins. Fleeing for their lives across a desolate and lethal landscape, their only hope for survival is to discover who is behind this masterful plot. The truth, they will learn, is the most shocking deception of all. (less)', 1),
	(8, 'Journey to the Center of the Earth', 'Jules Verne', 240, 4802, 'English', '2006-04-25', NULL, 'Extraordinary Voyages #3', 'covers/cover9.png', 'An adventurous geology professor chances upon a manuscript in which a 16th-century explorer claims to have found a route to the earth''s core. Professor Lidenbrock can''t resist the opportunity to investigate, and with his nephew Axel, he sets off across Iceland in the company of Hans Bjelke, a native guide. The expedition descends into an extinct volcano toward a sunless sea, where they encounter a subterranean world of luminous rocks, antediluvian forests, and fantastic marine life — a living past that holds the secrets to the origins of human existence. (less)', 1),
	(9, 'Hearts in Atlantis', 'Stephen King', 640, 5472, 'English', '2001-01-01', NULL, NULL, 'covers/cover10.png', 'Five interconnected, sequential narratives, set in the years from 1960 to 1999. Each story is deeply rooted in the sixties, and each is haunted by the Vietnam War.

Stephen King, whose first novel, Carrie, was published in 1974, the year before the last U.S. troops withdrew from Vietnam, is the first hugely popular writer of the TV generation. Images from that war -- and the protests against it -- had flooded America''s living rooms for a decade. Hearts in Atlantis, King''s newest fiction, is composed of five interconnected, sequential narratives, set in the years from 1960 to 1999. Each story is deeply rooted in the sixties, and each is haunted by the Vietnam War.

In Part One, "Low Men in Yellow Coats," eleven-year-old Bobby Garfield discovers a world of predatory malice in his own neighborhood. He also discovers that adults are sometimes not rescuers but at the heart of the terror.

In the title story, a bunch of college kids get hooked on a card game, discover the possibility of protest...and confront their own collective heart of darkness, where laughter may be no more than the thinly disguised cry of the beast.

In "Blind Willie" and "Why We''re in Vietnam," two men who grew up with Bobby in suburban Connecticut try to fill the emptiness of the post-Vietnam era in an America which sometimes seems as hollow -- and as haunted -- as their own lives.

And in "Heavenly Shades of Night Are Falling," this remarkable book''s denouement, Bobby returns to his hometown where one final secret, the hope of redemption, and his heart''s desire may await him.

Full of danger, full of suspense, most of all full of heart, Stephen King''s new book will take some readers to a place they have never been...and others to a place they have never been able to completely leave. (less)', 1),
	(10, 'An Echo in the Bone', 'Diana Gabaldon', 820, 4945, 'English', '2010-01-21', NULL, 'Outlander #7', 'covers/cover11.png', 'A new Outlander novel — the seventh — from #1 National Bestselling author Diana Gabaldon.

Readers have been waiting with bated breath for the seventh volume in bestselling author Diana Gabaldon’s epic Outlander saga — a masterpiece of historical fiction featuring Jamie and Claire, from one of the genre’s most popular and beloved authors.

Jamie Fraser, erstwhile Jacobite and reluctant rebel, knows three things about the American rebellion: the Americans will win, unlikely as that seems in 1778; being on the winning side is no guarantee of survival; and he’d rather die than face his illegitimate son — a young lieutenant in the British Army — across the barrel of a gun. Fraser’s time-travelling wife, Claire, also knows a couple of things: that the Americans will win, but that the ultimate price of victory is a mystery. What she does believe is that the price won’t include Jamie’s life or happiness — not if she has anything to say.

Claire’s grown daughter Brianna, and her husband, Roger, watch the unfolding of Brianna’s parents’ history — a past that may be sneaking up behind their own family. (less)', 1),
	(11, 'The Manufactured Identity', 'Heath Sommer', 305, 130, 'English', '2009-06-23', NULL, 'Manufactured Identity #1', 'covers/cover12.png', 'Months after his mysterious disappearance from a routine fishing trip, no one really expects over-the-hill Texas housewife Lory Latchley to find her missing husband--especially her husband. The Manufactured Identity is clinical psychologist Heath Sommer''s ever-escalating immersion into the world of unlikely friends who each awaken to find their faithful companions missing without warning or reason. Desperate to find meaning in their pain, they are thrust by the auspices of fate into a common thread of mystery and human frailty. In the end, the fate of all may reside in the unstable hands of rookie pastor John Joe, but ultimately Lory and her newfound partners will uncover a truth so unnerving it makes even infidelity look palatable.
(less)', 1),
	(12, 'My Story: "A Child Called It", "The Lost Boy", "A Man Named Dave"', 'Dave Pelzer', 437, 4558, 'English', '2002-01-01', NULL, NULL, 'covers/cover13.png', 'Dave Pelzer''s remarkable journey from a child who lived in terror of his unstable, violently unpredictable mother''s every move, to his emergence as an inspiration the world over is a remarkable tale of survival and the triumph of the human spirit over adversity.

Dave Pelzer''s three volumes of memoirs - A Child Called ''It'', The Lost Boy and A Man Named Dave - brought this story of courage and triumph against all odds to the world, becoming global bestsellers.

My Story brings these volumes together, following Dave from a childhood spent in fear, his tempestuous teenage years haunted by the spectre of his mother, through to his adulthood, and his great achievement of not only understanding and reconciling the story of his own life, but his dedication to helping others overcome similar adversity.

It is a remarkable story of courage and survival, already embraced by millions and destined to inspire millions more. (less)', 1),
	(13, 'Silent Spring', 'Rachel Carson', 378, 1768, 'English', '2002-10-22', NULL, NULL, 'covers/cover14.png', 'Rachel Carson’s Silent Spring was first published in three serialized excerpts in the New Yorker in June of 1962. The book appeared in September of that year and the outcry that followed its publication forced the banning of DDT and spurred revolutionary changes in the laws affecting our air, land, and water. Carson’s passionate concern for the future of our planet reverberated powerfully throughout the world, and her eloquent book was instrumental in launching the environmental movement. It is without question one of the landmark books of the twentieth century. (less)', 1),
	(14, 'Prey', 'Michael Crichton', 507, 2406, 'English', '2004-01-01', NULL, NULL, 'covers/cover15.png', 'In the Nevada desert, an experiment has gone horribly wrong. A cloud of nanoparticles -- micro-robots -- has escaped from the laboratory. This cloud is self-sustaining and self-reproducing. It is intelligent and learns from experience. For all practical purposes, it is alive.

It has been programmed as a predator. It is evolving swiftly, becoming more deadly with each passing hour.

Every attempt to destroy it has failed.

And we are the prey. (less)', 1),
	(15, 'Wives and Daughters', 'Elizabeth Gaskell', 679, 2758, 'English', '1996-05-30', NULL, NULL, 'covers/cover16.png', 'Set in English society before the 1832 Reform Bill, Wives and Daughters centres on the story of youthful Molly Gibson, brought up from childhood by her father. When he remarries, a new step-sister enters Molly''s quiet life – loveable, but worldly and troubling, Cynthia. The narrative traces the development of the two girls into womanhood within the gossiping and watchful society of Hollingford.

Wives and Daughters is far more than a nostalgic evocation of village life; it offers an ironic critique of mid-Victorian society. ''No nineteenth-century novel contains a more devastating rejection than this of the Victorian male assumption of moral authority'', writes Pam Morris in her introduction to this new edition, in which she explores the novel''s main themes – the role of women, Darwinism and the concept of Englishness – and its literary and social context. (less)', 1),
	(16, 'The Brothers Lionheart', 'Astrid Lindgren', 231, 725, 'English', '2004-12-31', NULL, NULL, 'covers/cover17.png', 'The Brothers Lionheart (Swedish: Bröderna Lejonhjärta) is a children''s fantasy novel written by Astrid Lindgren. It was published in the autumn of 1973 and has been translated into 46 languages. Many of its themes are unusually dark and heavy for the children''s book genre. Disease, death, tyranny, betrayal and rebellion are some of the dark themes that permeate the story. The lighter themes of the book involve platonic love, loyalty, hope, courage and pacifism.

The two main characters are two brothers; the older Jonatan and the younger Karl. The two brothers'' surname was originally Lion, but they are generally known as Lionheart. Karl''s nickname is Skorpan (Rusky) since Jonatan likes these typical Swedish toasts or crusts.

In Nangijala, a land in "the campfires and storytelling days", the brothers experience adventures. Together with a resistance group they lead the struggle against the evil Tengil, who rules with the aid of the fearsome fire-breathing dragon, Katla. (less)', 1),
	(17, 'Eon: Dragoneye Reborn', 'Alison Goodman', 531, 5005, 'English', '2008-12-26', NULL, 'Eon #1', 'covers/cover18.png', 'Also Known As: Two Pearls of Wisdom, Eon: Rise of the Dragoneye, and Eon (All the same book just published with different publishers)

Swordplay, dragon magic--and a hero with a desperate secret

Twelve-year-old Eon has been in training for years. His intensive study of Dragon Magic, based on East Asian astrology, involves two kinds of skills: sword-work and magical aptitude. He and his master hope that he will be chosen as a Dragoneye--an apprentice to one of the twelve energy dragons of good fortune.

But Eon has a dangerous secret. He is actually Eona, a sixteen-year-old girl who has been masquerading as a boy for the chance to become a Dragoneye. Females are forbidden to use Dragon Magic; if anyone discovers she has been hiding in plain sight, her death is assured.

When Eon''s secret threatens to come to light, she and her allies are plunged into grave danger and a deadly struggle for the Imperial throne. Eon must find the strength and inner power to battle those who want to take her magic...and her life. (less)', 1),
	(18, 'God Is Not Great: How Religion Poisons Everything', 'Christopher Hitchens', 307, 877, 'English', '2007-01-01', NULL, NULL, 'covers/cover19.png', 'With his unique brand of erudition and wit, Hitchens describes the ways in which religion is man-made. "God did not make us," he says. "We made God." He explains the ways in which religion is immoral: We damage our children by indoctrinating them. It is a cause of sexual repression, violence, and ignorance. It is a distortion of our origins and the cosmos. In the place of religion, Hitchens offers the promise of a new enlightenment through science and reason, a realm in which hope and wonder can be found through a strand of DNA or a gaze through the Hubble Telescope. As Hitchens sees it, you needn''t get the blues once you discover the heavens are empty. (less)', 1),
	(19, 'We the Living', 'Ayn Rand', 464, 2779, 'English', '1996-01-01', NULL, NULL, 'covers/cover20.png', 'Ayn Rand''s first published novel, a timeless story that explores the struggles of the individual against the state in Soviet Russia.

First published in 1936, We the Living portrays the impact of the Russian Revolution on three human beings who demand the right to live their own lives and pursue their own happiness. It tells of a young woman’s passionate love, held like a fortress against the corrupting evil of a totalitarian state.

We the Living is not a story of politics, but of the men and women who have to struggle for existence behind the Red banners and slogans. It is a picture of what those slogans do to human beings. What happens to the defiant ones? What happens to those who succumb?

Against a vivid panorama of political revolution and personal revolt, Ayn Rand shows what the theory of socialism means in practice. (less)', 1),
	(20, 'Reckless', 'S.C. Stephens', 546, 2411, 'English', '2013-03-05', NULL, 'Thoughtless #3', 'covers/cover21.png', 'Can love survive when life gets Reckless?

When the band hits it big, Kiera and Kellan must ask themselves: Can their love for each other survive the constant pressures of superstardom? The friendships they''ve formed, the new family they''ve found, and the history they''ve forged will all play a part in helping them navigate the turbulent waters of the band''s exploding popularity. A greedy executive hell-bent on success, a declining pop star looking for an edge, and a media circus that twists lies into truths are just some of the obstacles the lovers will have to overcome if they are going to remain together. Fame comes with a price-but will it cost Kiera and Kellan everything? (less)', 1),
	(21, 'The Mill on the Floss', 'George Eliot', 579, 478, 'English', '2003-02-27', NULL, NULL, 'covers/cover22.png', '''If life had no love in it, what else was there for Maggie?''

Brought up at Dorlcote Mill, Maggie Tulliver worships her brother Tom and is desperate to win the approval of her parents, but her passionate, wayward nature and her fierce intelligence bring her into constant conflict with her family. As she reaches adulthood, the clash between their expectations and her desires is painfully played out as she finds herself torn between her relationships with three very different men: her proud and stubborn brother, a close friend who is also the son of her family''s worst enemy, and a charismatic but dangerous suitor. With its poignant portrayal of sibling relationships, The Mill on the Floss is considered George Eliot''s most autobiographical novel; it is also one of her most powerful and moving.

In this edition writer and critic A.S. Byatt provides full explanatory notes and an introduction relating Mill on the Floss to George Eliot''s own life and times.

Edited with an introduction and notes by A.S. BYATT (less)', 1),
	(22, 'Finnikin of the Rock', 'Melina Marchetta', 416, 239, 'English', '2008-09-29', NULL, 'Lumatere Chronicles #1', 'covers/cover23.png', 'Finnikin of the Rock and his guardian, Sir Topher, have not been home to their beloved Lumatere for ten years. Not since the dark days when the royal family was murdered and the kingdom put under a terrible curse. But then Finnikin is summoned to meet Evanjalin, a young woman with an incredible claim: the heir to the throne of Lumatere, Prince Balthazar, is alive.

Evanjalin is determined to return home and she is the only one who can lead them to the heir. As they journey together, Finnikin is affected by her arrogance . . . and her hope. He begins to believe he will see his childhood friend, Prince Balthazar, again. And that their cursed people will be able to enter Lumatere and be reunited with those trapped inside. He even believes he will find his imprisoned father.

But Evanjalin is not what she seems. And the truth will test not only Finnikin''s faith in her . . . but in himself. (less)', 1),
	(23, 'The Sign of Four', 'Arthur Conan Doyle', 129, 5087, 'English', '2001-07-05', NULL, 'Sherlock Holmes #2', 'covers/cover24.png', 'As a dense yellow fog swirls through the streets of London, a deep melancholy has descended on Sherlock Holmes, who sits in a cocaine-induced haze at 221B Baker Street. His mood is only lifted by a visit from a beautiful but distressed young woman - Mary Morstan, whose father vanished ten years before. Four years later she began to receive an exquisite gift every year: a large, lustrous pearl. Now she has had an intriguing invitation to meet her unknown benefactor and urges Holmes and Watson to accompany her. And in the ensuing investigation - which involves a wronged woman, a stolen hoard of Indian treasure, a wooden-legged ruffian, a helpful dog and a love affair - even the jaded Holmes is moved to exclaim, ''Isn''t it gorgeous!''

--back cover (less)', 1),
	(24, 'Faith of the Fallen', 'Terry Goodkind', 785, 945, 'English', '2001-12-15', NULL, 'Sword of Truth #6', 'covers/cover25.png', 'There is an alternate cover edition here.

As his beloved Kahlan lies close to death, Richard Rahl, who distrusts prophecy more than anyone, is confronted by a compelling vision - one that bears a terrible price. It would mean taking Kahlan away to safety while abandoning his people to a grim fate.

As savage hordes stand poised to invade their homeland, Richard and Kahlan''s devotion, not only to each other but to their cause and their duty, is imperiled in the descending fury of war. Amid the turmoil, Nicci, a woman from Richard''s past, haunted by her memory of him, makes a fateful decision. Despite Nicci''s hunger to understand the source of Richard''s indomitable will, her burning passion to destroy him commits her to the unthinkable. (less)', 1),
	(25, 'The Fall of Hyperion', 'Dan Simmons', 517, 2875, 'English', '1995-12-01', NULL, 'Hyperion Cantos #2', 'covers/cover26.png', 'In the stunning continuation of the epic adventure begun in Hyperion, Simmons returns us to a far future resplendent with drama and invention. On the world of Hyperion, the mysterious Time Tombs are opening. And the secrets they contain mean that nothing--nothing anywhere in the universe--will ever be the same.', 1),
	(26, 'Buddenbrooks: The Decline of a Family', 'Thomas Mann', 731, 5483, 'English', '1994-10-04', NULL, NULL, 'covers/cover27.png', 'Buddenbrooks, first published in Germany in 1901, when Mann was only twenty-six, has become a classic of modern literature.

It is the story of four generations of a wealthy bourgeois family in northern Germany facing the advent of modernity; in an uncertain new world, the family’s bonds and traditions begin to disintegrate. As Mann charts the Buddenbrooks’ decline from prosperity to bankruptcy, from moral and psychic soundness to sickly piety, artistic decadence, and madness, he ushers the reader into a world of stunning vitality, pieced together from births and funerals, weddings and divorces, recipes, gossip, and earthy humor.

In its immensity of scope, richness of detail, and fullness of humanity, buddenbrooks surpasses all other modern family chronicles. With remarkable fidelity to the original German text, this superb translation emphasizes the magnificent scale of Mann’s achievement in this riveting, tragic novel. (less)', 1),
	(27, 'Warbreaker', 'Brandon Sanderson', 688, 5276, 'English', '2009-01-01', NULL, 'Warbreaker #1', 'covers/cover28.png', 'From #1 New York Times bestselling author Brandon Sanderson, Warbreaker is the story of two sisters, who happen to be princesses, the God King one of them has to marry, the lesser god who doesn''t like his job, and the immortal who''s still trying to undo the mistakes he made hundreds of years ago.

Their world is one in which those who die in glory return as gods to live confined to a pantheon in Hallandren''s capital city and where a power known as BioChromatic magic is based on an essence known as breath that can only be collected one unit at a time from individual people.

By using breath and drawing upon the color in everyday objects, all manner of miracles and mischief can be accomplished. It will take considerable quantities of each to resolve all the challenges facing Vivenna and Siri, princesses of Idris; Susebron the God King; Lightsong, reluctant god of bravery, and mysterious Vasher, the Warbreaker. (less)', 1),
	(28, 'Slave to Sensation', 'Nalini Singh', 334, 1332, 'English', '2006-09-05', NULL, 'Psy-Changeling #1', 'covers/cover29.png', 'Dive into a world torn apart by a powerful race with phenomenal powers of the mind— and none of the heart…

In a world that denies emotions, where the ruling Psy punish any sign of desire, Sascha Duncan must conceal the feelings that brand her as flawed. To reveal them would be to sentence herself to the horror of “rehabilitation”— the complete psychic erasure of everything she ever was….

Both human and animal, Lucas Hunter is a Changeling hungry for the very sensations the Psy disdain. After centuries of uneasy co-existence, these two races are now on the verge of war over the brutal murders of several Changeling women. Lucas is determined to find the Psy killer who butchered his packmate, and Sascha is his ticket into their closely guarded society. But he soon discovers that this ice-cold Psy is very capable of passion—and that the animal in him is fascinated by her. Caught between their conflicting worlds, Lucas and Sascha must remain bound to their identities—or sacrifice everything for a taste of darkest temptation… (less)', 1),
	(29, 'Strange the Dreamer', 'Laini Taylor', 544, 5498, 'English', '2017-03-28', NULL, 'Strange the Dreamer #1', 'covers/cover30.png', 'The dream chooses the dreamer, not the other way around—and Lazlo Strange, war orphan and junior librarian, has always feared that his dream chose poorly. Since he was five years old he’s been obsessed with the mythic lost city of Weep, but it would take someone bolder than he to cross half the world in search of it. Then a stunning opportunity presents itself, in the person of a hero called the Godslayer and a band of legendary warriors, and he has to seize his chance or lose his dream forever.

What happened in Weep two hundred years ago to cut it off from the rest of the world? What exactly did the Godslayer slay that went by the name of god? And what is the mysterious problem he now seeks help in solving?

The answers await in Weep, but so do more mysteries—including the blue-skinned goddess who appears in Lazlo’s dreams. How did he dream her before he knew she existed? And if all the gods are dead, why does she seem so real?

Welcome to Weep. (less)', 1),
	(30, 'The Candidate and other stories', 'Samuel R. George', 192, 3761, 'English', '2019-03-05', NULL, NULL, 'covers/cover31.png', 'Meet Professor Alfred Jules Ayer, a famous philosopher noted for his atheism, his disdain of all things metaphysical, and his reverence for logic, in “The Candidate.” After suffering a heart attack, he finds himself in the Greek Underworld. He never expected an afterlife, and the fabled abode is nothing like the fable, which never mentioned a salmon with human arms and legs, or a flying saucer captained by lizard man.

In “Harold,” you’ll meet a homunculus who is certain he is a one of a kind, a freak of nature. Imagine his surprise when he discovers an island populated by thousands of his kind. There he finds adventure, love, and danger. He must face thugs his size, sinister large people, a dangerous house cat, and a plethora of perplexing situations.

Irresolute poets find their plush postmortem refuge is anything but when it soon becomes a type of Hell in “Between Life and Oblivion.”

Discover the true story of Helen, the famous face that launched a thousand ships, in the tale “A More Likely Odyssey.”

Within these pages you’ll be taken on journeys beyond imagining. You’ll meet characters and explore familiar worlds through different eyes. Look beyond the hedge… (less)', 1),
	(31, 'The Thief', 'Megan Whalen Turner', 280, 2484, 'English', '2005-12-27', NULL, 'The Queen''s Thief #1', 'covers/cover32.png', 'The king''s scholar, the magus, believes he knows the site of an ancient treasure. To attain it for his king, he needs a skillful thief, and he selects Gen from the king''s prison. The magus is interested only in the thief''s abilities.

What Gen is interested in is anyone''s guess. Their journey toward the treasure is both dangerous and difficult, lightened only imperceptibly by the tales they tell of the old gods and goddesses. (less)', 1),
	(32, 'The Lords of Discipline', 'Pat Conroy', 512, 3312, 'English', '1997-02-24', NULL, NULL, 'covers/cover33.png', 'A novel you will never forget...

This powerful and breathtaking novel is the story of four cadets who have become bloodbrothers. Together they will encounter the hell of hazing and the rabid, raunchy and dangerously secretive atmosphere of an arrogant and proud military institute. They will experience the violence. The passion. The rage. The friendship. The loyalty. The betrayal. Together, they will brace themselves for the brutal transition to manhood... and one will not survive.

With all the dramatic brilliance he brought to The Great Santini, Pat Conroy sweeps you into the turbulent world of these four friends -- and draws you deep into the heart of his rebellious hero, Will McLean, an outsider forging his personal code of honor, who falls in love with a whimsical beauty... and who undergoes a transition more remarkable then he ever imagined possible. (less)', 1),
	(33, 'Deity', 'Jennifer L. Armentrout', 330, 1140, 'English', '2012-11-06', NULL, 'Covenant #3', 'covers/cover34.png', 'History is on repeat, and things didn''t go so well the last time.

Alexandria isn''t sure she''s going to make it to her eighteenth birthday--to her Awakening. A long-forgotten, fanatical order is out to kill her, and if the Council ever discovers what she did in the Catskills, she''s a goner... and so is Aiden.

If that''s not freaky enough, whenever Alex and Seth spend time "training"--which really is just Seth''s code word for some up-close and personal one-on-one time--she ends up with another mark of the Apollyon, which brings her one step closer to Awakening ahead of schedule. Awesome.

But as her birthday draws near, her entire world shatters with a startling revelation and she''s caught between love and Fate. One will do anything to protect her. One has been lying to her since the beginning. Once the gods have revealed themselves, unleashing their wrath, lives will be irrevocably changed... and destroyed.

Those left standing will discover if love is truly greater than Fate... (less)', 1),
	(34, 'The Earthsea Trilogy', 'Ursula K. Le Guin', 478, 2709, 'English', '1979-01-01', NULL, 'Earthsea Cycle #1-3', 'covers/cover35.png', 'As long ago as forever and as far away as Selidor, there lived the dragonlord and Archmage, Sparrowhawk, the greatest of the great wizards - he who, when still a youth, met with the evil shadow-beast; he who later brought back the Ring of Erreth-Akbe from the Tombs of Atuan; and he who, as an old man, rode the mighty dragon Kalessin back from the land of the dead. And then, the legends say, Sparrowhawk entered his boat, Lookfar, turned his back on land, and without wind or sail or oar moved westward over the sea and out of sight.

Wizard of Earthsea, The Tombs of Atuan, The Farthest Shore - Ursula Le Guin''s brilliant and magical trilogy.

Cover Illustration: Jonathan Field (less)', 1),
	(35, 'Second Foundation', 'Isaac Asimov', 256, 217, 'English', '2004-06-01', NULL, 'Foundation, publication order #3', 'covers/cover36.png', 'So far the Foundation was safe. But there was a hidden Second Foundation to protect the first. The Mule has yet to find it, but he was getting closer all the time. The men of the Foundation sought it, too, to escape from Mule''s mind control. Only Arkady, a 14 year-old girl seemed to have the answer, or did she...? (less)', 1),
	(36, 'The Winner''s Curse', 'Marie Rutkoski', 355, 5203, 'English', '2014-03-04', NULL, 'The Winner''s Trilogy #1', 'covers/cover37.png', 'Winning what you want may cost you everything you love... 

As a general’s daughter in a vast empire that revels in war and enslaves those it conquers, seventeen-year-old Kestrel has two choices: she can join the military or get married. But Kestrel has other intentions.

One day, she is startled to find a kindred spirit in a young slave up for auction. Arin’s eyes seem to defy everything and everyone. Following her instinct, Kestrel buys him—with unexpected consequences. It’s not long before she has to hide her growing love for Arin.

But he, too, has a secret, and Kestrel quickly learns that the price she paid for a fellow human is much higher than she ever could have imagined.

Set in a richly imagined new world, The Winner’s Curse by Marie Rutkoski is a story of deadly games where everything is at stake, and the gamble is whether you will keep your head or lose your heart. (less)', 1),
	(37, 'The Long Goodbye', 'Raymond Chandler', 379, 3058, 'English', '1988-08-12', NULL, 'Philip Marlowe #6', 'covers/cover38.png', 'Down-and-out drunk Terry Lennox has a problem: his millionaire wife is dead and he needs to get out of LA fast. So he turns to the only friend he can trust: private investigator Philip Marlowe. Marlowe is willing to help a man down on his luck, but later Lennox commits suicide in Mexico and things start to turn nasty. Marlowe is drawn into a sordid crowd of adulterers and alcoholics in LA''s Idle Valley, where the rich are suffering one big suntanned hangover. Marlowe is sure Lennox didn''t kill his wife, but how many stiffs will turn up before he gets to the truth? (less)', 1),
	(38, 'Brownout - 666: or the Real Meaning of the Swastika', 'John Richard Spencer', 605, 1886, NULL, '2018-08-14', NULL, NULL, 'covers/cover39.png', 'In the land of flaunted sex, money, and flexible rules, an ambitious but lonely Rick Daly faces his demons.
Rick Daly has established a business in the exotic surroundings of the Philippines, while simultaneously discovering Marilyn Delgado, the woman of his dreams.
However, a clash of cultures and his own naiveté lead to disaster. Falsely accused of a sexual crime, Rick loses both his freedom and his business. To add insult to injury, a prison escape merely amounts to switching jails.
In a world where the rich prosper, honest individuals are forced to the wall, and a cynical disregard for all but the dollar is destroying society from within, crime soon follows punishment for Rick. Close to losing his soul, will Rick''s ultimate success in drug and arms dealing finally lead him to face up to reality?
Difficult to put down and including erotic scenes, this is a high octane adventure, which will take the reader into a sea of cultural and ethical flashpoints, while exposing huge cracks in the world’s political and social order.





(less)', 1),
	(39, 'Common Sense', 'Thomas Paine', 104, 871, 'English', '2005-09-06', NULL, NULL, 'covers/cover40.png', 'Throughout history, some books have changed the world. They have transformed the way we see ourselves—and each other. They have inspired debate, dissent, war and revolution. They have enlightened, outraged, provoked and comforted. They have enriched lives—and destroyed them.

Published anonymously in 1776, six months before the Declaration of Independence, Thomas Paine’s Common Sense was a radical and impassioned call for America to free itself from British rule and set up an independent republican government.
Savagely attacking hereditary kingship and aristocratic institutions, Paine urged a new beginning for his adopted country in which personal freedom and social equality would be upheld and economic and cultural progress encouraged. 

His pamphlet was the first to speak directly to a mass audience—it went through fifty-six editions within a year of publication—and its assertive and often caustic style both embodied the democratic spirit he advocated, and converted thousands of citizens to the cause of American independence. (less)', 1),
	(40, 'Lips of a Mastodon', 'Ted Bernal Guevara', 226, 1149, 'English', '2015-09-30', NULL, NULL, 'covers/cover41.png', '(BACK COVER)

Why does Ted Bernal Guevara keep putting out these James Dean conceptual novels? In plain truth, Guevara says, “He’s like a kid (James Dean) I went to class with, rode the bus with, and slid down an awesome snow-packed hill with.” And after high school, he goes on to Hollywood fame and immortality while Guevara from his modest bookish world is left to wonder about the iconic image, giving it a stark, poignant voice sixty years later. Guevara grew up in Marion, Indiana, where the actor was born.

In 1954, Dean met perhaps the one real romance in his brief life. Italian actress Pier Angeli was barely 22 when her movie The Silver Chalice coincided with Dean’s East of Eden at Warner Brothers. She’d sneak over to watch him perform, and he would do the same. When they finally interact, Pier’s mother disapproves of Dean’s behavior, attire, and not being Catholic.

Some say it was all for the limelight and publicity. Guevara’s gripping and frank story vies otherwise, excavating the actor’s true passion for the lovely but quaint Ms. Angeli.

Guevara is also the author of True Feel, A Circle with Two Corners, and Days of Slint, the first James Dean conceptual novel. (less)', 1),
	(41, 'The End of Eternity', 'Isaac Asimov', 192, 5256, 'English', '1971-10-01', NULL, NULL, 'covers/cover42.png', 'Andrew Harlan is an Eternal, a man whose job it is to range through past and present Centuries, monitoring and, where necessary, altering Time''s myriad cause-and-effect relationships. But when Harlan meets and falls for a non-Eternal woman, he seeks to use the awesome powers and techniques of the Eternals to twist time for his own purposes, so that he and his love can survive together. (less)', 1),
	(42, 'Pure', 'Jennifer L. Armentrout', 329, 5365, 'English', '2012-04-03', NULL, 'Covenant #2', 'covers/cover43.png', 'There is need. And then there is Fate... Being destined to become some kind of supernatural electrical outlet isn’t exactly awesome—especially when Alexandria’s "other half" is everywhere she goes. Seth’s in her training room, outside her classes, and keeps showing up in her bedroom—so not cool. Their connection does have some benefits, like staving off her nightmares of the tragic showdown with her mother, but it has no effect on what Alex feels for the forbidden, pure-blooded Aiden. Or what he will do—and sacrifice—for her. When daimons infiltrate the Covenants and attack students, the gods send furies—lesser gods determined to eradicate any threat to the Covenants and to the gods, and that includes the Apollyon... and Alex. And if that and hordes of aether-sucking monsters didn’t blow bad enough, a mysterious threat seems willing to do anything to neutralize Seth, even if that means forcing Alex into servitude... or killing her. When the gods are involved, some decisions can never, ever be undone (less)', 1),
	(43, 'Opposition', 'Jennifer L. Armentrout', 533, 5953, 'English', '2014-08-05', NULL, 'Lux #5', 'covers/cover44.png', 'Katy knows the world changed the night the Luxen came.

She can''t believe Daemon welcomed his race or stood by as his kind threatened to obliterate every last human and hybrid on Earth. But the lines between good and bad have blurred, and love has become an emotion that could destroy her—could destroy them all.

Daemon will do anything to save those he loves, even if it means betrayal.

They must team with an unlikely enemy if there is any chance of surviving the invasion. But when it quickly becomes impossible to tell friend from foe, and the world is crumbling around them, they may lose everything— even what they cherish most—to ensure the survival of their friends…and mankind.

War has come to Earth. And no matter the outcome, the future will never be the same for those left standing.

This edition includes SHADOWS, a Lux Prequel Novella (less)', 1),
	(44, 'La Vérité sur l''affaire Harry Quebert', 'Joël Dicker', 672, 2122, 'French', '2012-09-19', NULL, 'Marcus Goldman #1', 'covers/cover45.png', 'À New York, au printemps 2008, alors que l’Amérique bruisse des prémices de l’élection présidentielle, Marcus Goldman, jeune écrivain à succès, est dans la tourmente : il est incapable d’écrire le nouveau roman qu’il doit remettre à son éditeur d’ici quelques mois. Le délai est près d’expirer quand soudain tout bascule pour lui : son ami et ancien professeur d’université, Harry Quebert, l’un des écrivains les plus respectés du pays, est rattrapé par son passé et se retrouve accusé d’avoir assassiné, en 1975, Nola Kellergan, une jeune fille de 15 ans, avec qui il aurait eu une liaison. Convaincu de l’innocence de Harry, Marcus abandonne tout pour se rendre dans le New Hampshire et mener son enquête. Il est rapidement dépassé par les événements : l’enquête s’enfonce et il fait l’objet de menaces. Pour innocenter Harry et sauver sa carrière d’écrivain, il doit absolument répondre à trois questions : Qui a tué Nola Kellergan? Que s’est-il passé dans le New Hampshire à l’été 1975? Et comment écrit-on un roman à succès? (less)', 1),
	(45, 'The Great Alone', 'Kristin Hannah', 435, 5505, 'English', '2018-02-06', NULL, NULL, 'covers/cover46.png', 'Alaska, 1974.
Unpredictable. Unforgiving. Untamed.
For a family in crisis, the ultimate test of survival.

Ernt Allbright, a former POW, comes home from the Vietnam war a changed and volatile man. When he loses yet another job, he makes an impulsive decision: he will move his family north, to Alaska, where they will live off the grid in America’s last true frontier.

Thirteen-year-old Leni, a girl coming of age in a tumultuous time, caught in the riptide of her parents’ passionate, stormy relationship, dares to hope that a new land will lead to a better future for her family. She is desperate for a place to belong. Her mother, Cora, will do anything and go anywhere for the man she loves, even if it means following him into the unknown.

At first, Alaska seems to be the answer to their prayers. In a wild, remote corner of the state, they find a fiercely independent community of strong men and even stronger women. The long, sunlit days and the generosity of the locals make up for the Allbrights’ lack of preparation and dwindling resources.

But as winter approaches and darkness descends on Alaska, Ernt’s fragile mental state deteriorates and the family begins to fracture. Soon the perils outside pale in comparison to threats from within. In their small cabin, covered in snow, blanketed in eighteen hours of night, Leni and her mother learn the terrible truth: they are on their own. In the wild, there is no one to save them but themselves.

In this unforgettable portrait of human frailty and resilience, Kristin Hannah reveals the indomitable character of the modern American pioneer and the spirit of a vanishing Alaska-a place of incomparable beauty and danger. The Great Alone is a daring, beautiful, stay-up-all-night story about love and loss, the fight for survival, and the wildness that lives in both man and nature. (less)', 1),
	(46, 'A Song of Ice and Fire', 'George R.R. Martin', 5216, 3567, 'English', '2011-07-22', NULL, 'A Song of Ice and Fire #1-5', 'covers/cover47.png', 'For the first time, all five novels in the epic fantasy series that inspired HBO''s "Game of Thrones "are together in one boxed set. An immersive entertainment experience unlike any other, A Song of Ice and Fire has earned George R. R. Martin--dubbed "the American Tolkien" by "Time" magazine--international acclaim and millions of loyal readers. Now here is the entire monumental cycle:
A GAME OF THRONES
A CLASH OF KINGS
A STORM OF SWORDS
A FEAST OF CROWS
A DANCE WITH DRAGONS
Winter is coming. Such is the stern motto of House Stark, the northernmost of the fiefdoms that owe allegiance to King Robert Baratheon in far-off King''s Landing. There Eddard Stark of Winterfell rules in Robert''s name. There his family dwells in peace and comfort: his proud wife, Catelyn; his sons Robb, Brandon, and Rickon; his daughters Sansa and Arya; and his bastard son, Jon Snow. Far to the north, behind the towering Wall, lie savage Wildings and worse--unnatural things relegated to myth during the centuries-long summer, but proving all too real and all too deadly in the turning of the season.
Yet a more immediate threat lurks to the south, where Jon Arryn, the Hand of the King, has died under mysterious circumstances. Now Robert is riding north to Winterfell, bringing his queen, the lovely but cold Cersei, his son, the cruel, vainglorious Prince Joffrey, and the queen''s brothers Jaime and Tyrion of the powerful and wealthy House Lannister--the first a swordsman without equal, the second a dwarf whose stunted stature belies a brilliant mind. All are heading for Winterfell and a fateful encounter that will change the course of kingdoms.
Meanwhile, across the Narrow Sea, Prince Viserys, heir of the fallen House Targaryen, which once ruled all of Westeros, schemes to reclaim the throne with an army of barbarian Dothraki--whose loyalty he will purchase in the only coin left to him: his beautiful yet innocent sister, Daenerys.
" (less)', 1),
	(47, 'Our Mutual Friend', 'Charles Dickens', 801, 5279, 'English', '2002-09-10', NULL, NULL, 'covers/cover48.png', 'A satiric masterpiece about the allure and peril of money, Our Mutual Friend revolves around the inheritance of a dust-heap where the rich throw their trash. When the body of John Harmon, the dust-heap’s expected heir, is found in the Thames, fortunes change hands surprisingly, raising to new heights “Noddy” Boffin, a low-born but kindly clerk who becomes “the Golden Dustman.” Charles Dickens’s last complete novel, Our Mutual Friend encompasses the great themes of his earlier works: the pretensions of the nouveaux riches, the ingenuousness of the aspiring poor, and the unfailing power of wealth to corrupt all who crave it. With its flavorful cast of characters and numerous subplots, Our Mutual Friend is one of Dickens’s most complex—and satisfying—novels. (less)', 1),
	(48, 'Splintered', 'A.G. Howard', 371, 879, 'English', '2013-01-01', NULL, 'Splintered #1', 'covers/cover49.png', 'Alyssa Gardner hears the whispers of bugs and flowers—precisely the affliction that landed her mother in a mental hospital years before. This family curse stretches back to her ancestor Alice Liddell, the real-life inspiration for Lewis Carroll’s Alice’s Adventures in Wonderland. Alyssa might be crazy, but she manages to keep it together. For now.

When her mother’s mental health takes a turn for the worse, Alyssa learns that what she thought was fiction is based in terrifying reality. The real Wonderland is a place far darker and more twisted than Lewis Carroll ever let on. There, Alyssa must pass a series of tests, including draining an ocean of Alice’s tears, waking the slumbering tea party, and subduing a vicious bandersnatch, to fix Alice’s mistakes and save her family. She must also decide whom to trust: Jeb, her gorgeous best friend and secret crush, or the sexy but suspicious Morpheus, her guide through Wonderland, who may have dark motives of his own. (less)', 1),
	(49, 'The Lost World', 'Michael Crichton', 448, 2710, 'English', '1995-01-01', NULL, 'Jurassic Park #2', 'covers/cover50.png', 'It is now six years since the secret disaster at Jurassic Park, six years since the extraordinary dream of science and imagination came to a crashing end – the dinosaurs destroyed, the park dismantled, the island indefinitely closed to the public.

There are rumors that something has survived....', 1),
	(50, 'The Golem''s Eye', 'Jonathan Stroud', 562, 722, 'English', '2006-01-01', NULL, 'Bartimaeus #2', 'covers/cover51.png', 'At only fourteen, Nathaniel is a rising star: a young magician who is quickly climbing the ranks of the government. There is seemingly nothing he cannot handle, until he is asked to deal with the growing Resistance movement, which is disrupting London life with its thefts and raids. It’s no easy task: the ringleader Kitty and her friends remain elusive, and Nathaniel’s job-and perhaps his life-are soon at risk. As the pressure mounts, he is distracted by a new series of terrifying attacks in the capital. But is it the Resistance again, or something more dangerous still? To uncover the perpetrators, Nathanial must take desperate measures: a journey to the enemy city of Prague and-worse-summoning once again the troublesome, enigmatic, and quick – witted djinni Bartimaeus.

A thrilling sequel to the best-selling Amulet of Samarkand, The Golem’s Eye is a roller-coaster ride of magic, adventure, and political skullduggery, in which the fates of Nathaniel, Bartimaeus, and Kitty explosively collide. (less)', 1),
	(51, 'The Daughter of Time', 'Josephine Tey', 206, 90, 'English', '1995-11-29', NULL, 'Inspector Alan Grant #5', 'covers/cover52.png', 'Scotland Yard Inspector Alan Grant is intrigued by a portrait of Richard III. Could such a sensitive face actually belong to a heinous villain — a king who killed his brother''s children to secure his crown? Grant seeks what kind of man Richard was and who in fact killed the princes in the tower. (less)', 1),
	(52, 'Blood Red Road', 'Moira Young', 459, 176, 'English', '2011-06-07', NULL, 'Dust Lands #1', 'covers/cover53.png', '? ACE #1

Saba has spent her whole life in Silverlake, a dried-up wasteland ravaged by constant sandstorms. The Wrecker civilization has long been destroyed, leaving only landfills for Saba and her family to scavenge from. That''s fine by her, as long as her beloved twin brother Lugh is around. But when four cloaked horsemen capture Lugh, Saba''s world is shattered, and she embarks on a quest to get him back.
Suddenly thrown into the lawless, ugly reality of the outside world, Saba discovers she is a fierce fighter, an unbeatable survivor, and a cunning opponent. Teamed up with a handsome daredevil named Jack and a gang of girl revolutionaries called the Free Hawks, Saba''s unrelenting search for Lugh stages a showdown that will change the course of her own civilization. (less)', 1),
	(53, 'The True Confessions of Charlotte Doyle', 'Avi', 278, 1782, 'English', '2003-09-02', NULL, NULL, 'covers/cover54.png', 'An ocean voyage of unimaginable consequences... Not every thirteen-year-old girl is accused of murder, brought to trial, and found guilty. But I was just such a girl, and my story is worth relating even if it did happen years ago. Be warned, however: If strong ideas and action offend you, read no more. Find another companion to share your idle hours. For my part I intend to tell the truth as I lived it. (less)', 1),
	(54, 'The Egyptian', 'Mika Waltari', 514, 2316, 'English', '2014-10-20', NULL, 'Sinuhe egyptiläinen #1–2', 'covers/cover55.png', 'The only Finnish novel adopted into a Hollywood film
Mika Waltari''s 1945 novel The Egyptian was turned into a DeLuxe Color epic film by 20th Century Fox in 1954 and was nominated for an academy award a year later.
A 1940s #1 Bestseller and a Historic Novel All-Time Favorite
A historic novel all-time favorite, after its translation in English from Swedish, The Egyptian topped the bestseller charts in 1949 and the years following. 
The protagonist of the novel is the fictional character Sinuhe, the royal physician, who tells the story in exile after Akhenaten''s fall and death. Apart from incidents in Egypt, the novel charts Sinuhe''s travels in then Egyptian-dominated Syria, in Mitanni, Babylon, Minoan Crete, Mitanni, and among the Hittites.
The main character of the novel is named after a character in an ancient Egyptian text commonly known as The Story of Sinuhe. The original story dates to a time long before that of Akhenaten: texts are known from as early as the 12th Dynasty.
Much concerned about the historical accuracy of his detailed description of ancient Egyptian life forced the author to carry out considerable research into the subject. The result has been praised not only by readers but also by Egyptologists.
Waltari had long been interested in Akhenaten and wrote a play about him which was staged in Helsinki in 1938. World War II provided the final impulse for exploring the subject in a novel which, although depicting events that took place over 3,300 years ago
  (less)', 1),
	(55, 'The Harry Potter Collection 1-4', 'J.K. Rowling', 1500, 3378, 'English', '1999-11-01', NULL, 'Harry Potter #1-4', 'covers/cover56.png', 'The exciting tales of Harry Potter, the young wizard-in-training, have taken the world by storm, and fans just can''t get enough of the magical world of Hogwarts and beyond. If you buy one of the Harry Potter books, we guarantee you''ll want the next...and the next...and the next -- so why not have them all, right at your fingertips? With the Harry Potter Hardcover Box Set (Books 1-4), Barnes amp; Noble.com offers simple one-stop shopping for your Harry Potter library! As easy as the wave of a magic wand, you can get all four Harry Potter books delivered to your doorstep at once.p

The Harry Potter Hardcover Box Set (Books 1-4) includes hardcover editions of iHarry Potter and the Sorcerer''s Stone, Harry Potter and the Chamber of Secrets, Harry Potter and the Prisoner of Azkaban,/i and iHarry Potter and the Goblet of Fire./i The books come snugly packed in a sturdy cardboard slipcase, beautifully decorated with memorable scenes from the books.p

So buy the set, and not even a pesky Locomotor Mortis spell cast by the evil Lord Voldemor...(oooops, sorry -- He-Who-Must-Not-Be-Named) can get in the way of your enjoying all of the mystery, adventure, intrigue, and, of course, magic that Muggles around the world can''t seem to get enough of. Hold on tight -- it''s going to be a wild ride! (less)', 1),
	(56, 'Nightfall', 'L.J. Smith', 586, 1727, 'English', '2009-02-10', NULL, 'The Vampire Diaries: The Return #1', 'covers/cover57.png', 'To save the two vampire brothers who love her, Elena Gilbert sacrificed her life.

Now that a supernatural force has brought Elena back from the dead, all handsome, brooding Stefan wants is to keep her safe. But when he is lured away from Fell''s Church, sleek, powerful Damon seizes his chance to win Elena over, unaware of the danger they''re both in. A malevolent being has infiltrated the town and is growing stronger. Able to possess Damon at will, the creature is also drawn to Elena and the new power she has acquired. But it''s after more than Elena''s power: It thirsts for her death.

Elena''s story continues in shadow souls! (less)', 1),
	(57, 'The Talented Mr. Ripley', 'Patricia Highsmith', 320, 3527, 'English', '2008-06-17', NULL, 'Ripley #1', 'covers/cover58.png', 'Since his debut in 1955, Tom Ripley has evolved into the ultimate bad boy sociopath, influencing countless novelists and filmmakers. In this first novel, we are introduced to suave, handsome Tom Ripley: a young striver, newly arrived in the heady world of Manhattan in the 1950s. A product of a broken home, branded a "sissy" by his dismissive Aunt Dottie, Ripley becomes enamored of the moneyed world of his new friend, Dickie Greenleaf. This fondness turns obsessive when Ripley is sent to Italy to bring back his libertine pal but grows enraged by Dickie''s ambivalent feelings for Marge, a charming American dilettante. A dark reworking of Henry James''s The Ambassadors, The Talented Mr. Ripley—is up to his tricks in a 90s film and also Rene Clement''s 60s film, "Purple Noon." (less)', 1),
	(58, 'The Guardian of Secrets and Her Deathly Pact', 'Jana Petken', 714, 2785, 'English', '2013-09-11', NULL, NULL, 'covers/cover59.png', 'A historical family saga spanning four generations, from 1912, Kent, England, to Spain and its 1936-39 civil war. Celia and Ernesto''s two sons march under opposing banners, whilst their daughters take different paths, one to the Catholic Church and the other to the battlefields, and in the shadow of war, an evil ghost from the past watches and waits for an opportunity to destroy the entire family. In exile, Celia and Ernesto can only wait and pray for their children and their safe return home. (less)', 1),
	(59, 'Eye of the Needle', 'Ken Follett', 339, 327, 'English', '2004-11-23', NULL, NULL, 'covers/cover60.png', 'One enemy spy knows the secret to the Allies'' greatest deception, a brilliant aristocrat and ruthless assassin -- code name: "The Needle" -- who holds the key to ultimate Nazi victory.
Only one person stands in his way: a lonely Englishwoman on an isolated island, who is beginning to love the killer who has mysteriously entered her life.
All will come to a terrifying conclusion in Ken Follett''s unsurpassed and unforgettable masterwork of suspense, intrigue, and the dangerous machinations of the human heart.
(less)', 1),
	(60, 'Chain Reaction', 'Simone Elkeles', 310, 3185, 'English', '2011-08-16', NULL, 'Perfect Chemistry #3', 'covers/cover61.png', 'Luis Fuentes is a good boy who doesn''t live with the angst that his big brothers, Alex and Carlos, have always lived with. Luis is smart, funny, and has big dreams of becoming an astronaut. But when he falls for the wrong girl,

Luis enters a dark world he''s never known, and just when he thinks he''s got life all figured out, learns some disturbing news about his family that destroys his positive outlook on life. Will that Fuentes bad boy streak come out with a vengeance and lure Luis to live on the edge like his new girlfriend and his own father?

Continuing all the steamy romance of the first two books, NY Times and USA Today bestselling author Simone Elkeles gives fans one more satisfying taste of the irresistible Fuentes boys. (less)', 1),
	(61, 'Winesburg, Ohio', 'Sherwood Anderson', 240, 3358, 'English', '1999-11-11', NULL, NULL, 'covers/cover62.png', 'Winesburg, Ohio depicts the strange, secret lives of the inhabitants of a small town. In "Hands," Wing Biddlebaum tries to hide the tale of his banishment from a Pennsylvania town, a tale represented by his hands. In "Adventure," lonely Alice Hindman impulsively walks naked into the night rain. Threaded through the stories is the viewpoint of George Willard, the young newspaper reporter who, like his creator, stands witness to the dark and despairing dealings of a community of isolated people. (less)', 1),
	(62, 'Sphere', 'Michael Crichton', 371, 2170, 'English', '1997-06-23', NULL, NULL, 'covers/cover63.png', 'A group of American scientists are rushed to a huge vessel that has been discovered resting on the ocean floor in the middle of the South Pacific. What they find defies their imaginations and mocks their attempts at logical explanation. It is a spaceship of phenomenal dimensions, apparently, undamaged by its fall from the sky. And, most startling, it appears to be at least three hundred years old....

"The suspense is real."
THE NEW YORK TIMES BOOK REVIEW

"A page-turner...Chichton''s writing is cinematic, with powerful visual images and nonstop action. This book should come with hot buttered popcorn."
NEWSWEEK
(less)', 1),
	(63, 'Leviathan', 'Scott Westerfeld', 440, 2923, 'English', '2009-10-06', NULL, 'Leviathan #1', 'covers/cover64.png', 'Prince Aleksander, would-be heir to the Austro-Hungarian throne, is on the run. His own people have turned on him. His title is worthless. All he has is a battletorn war machine and a loyal crew of men.

Deryn Sharp is a commoner, disguised as a boy in the British Air Service. She''s a brilliant airman. But her secret is in constant danger of being discovered.

With World War I brewing, Alek and Deryn''s paths cross in the most unexpected way…taking them on a fantastical, around-the-world adventure that will change both their lives forever. (less)', 1),
	(64, 'Explosion in Paris', 'Linda Masemore Pirrung', 408, 1132, 'English', '2009-04-24', NULL, NULL, 'covers/cover65.png', '"Explosion in Paris" is the story of one woman''s determination to better her life because she has finally found the man of her dreams! By refusing to accept her husband''s death sentence assessment of her soul, Angela Briann Scott is challenging herself to reach beyond her limits. This is especially true since her accidental meeting with the devastatingly handsome Ross Leigh Stafford. He''s a man of high principles, irreproachable character, unsinkable spirit, and unwavering compassion, all the qualities that her husband, Mitch, is seriously lacking. Angie''s adopted country of France glows with charm and beauty through her eyes. By reinventing herself to save her life, she discovers her true essence and she develops a strong sense of self-worth. Her impressive success and enduring strength tell a story that will keep readers engrossed to the very end! (less)', 1),
	(65, 'Love on the Line', 'Kirsten Fullmer', 362, 4113, 'English', '2017-06-14', NULL, 'Women at Work #1', 'covers/cover66.png', 'In this epic and unique love story set in the wild mountains of West Virginia, a young woman and her unlikely friends find their way through multiple job hazards and terrible working conditions to achieve the unexpected.

Andrea never thought she’d live in a camp trailer or work outdoors in inhospitable climates; but eager to leave the stress and tedium of grad-school behind, she sets off with her estranged grandpa, Buck, to build a pipeline through the rugged mountains of West Virginia. She’s determined to understand the man and the family divide that drove him away. Once the job starts, she forms an unlikely friendship with Nick, the rough and tumble foreman of the bending crew. Most of the guys aren’t willing to accept her, and Rooster, the handsome, cocky, tie-in foreman, is determined she’s a distraction.

But building a pipeline is fraught with danger, fatigue, and confrontation as egos collide. Caught up in the all-male social microcosm, Andrea can’t help but understand the pecking order, and she’s at the bottom. Being a woman makes it even more unlikely she’ll be accepted. Buck proves to be a taskmaster, but a kindhearted teddy-bear of a man under a gruff exterior, and Andrea comes to love him, opening herself up to the pain of his past.

Rooster and Andrea are drawn to each other, yet they know an on-the-job romance will only cause problems. Rooster is tormented by his own past, and determined to prove himself to Buck, a pipeline ledged. Messing with the old man’s granddaughter is a line Rooster refuses to cross. But as Andrea shows herself to be a hard worker and a valuable member of the crew, she earns Rooster’s respect and he can’t keep his distance. It seems the couple can’t go back, the relationship can’t move forward, and they can’t let go. Both will have to make sacrifices and take a chance on ruining their credibility in order to be together. (less)', 1),
	(66, 'The Testing', 'Joelle Charbonneau', 325, 3670, 'English', '2013-06-04', NULL, 'The Testing #1', 'covers/cover67.png', 'Keep your friends close and your enemies closer. Isn''t that what they say? But how close is too close when they may be one and the same?

The Seven Stages War left much of the planet a charred wasteland. The future belongs to the next generation''s chosen few who must rebuild it. But to enter this elite group, candidates must first pass The Testing—their one chance at a college education and a rewarding career.

Cia Vale is honoured to be chosen as a Testing candidate; eager to prove her worthiness as a University student and future leader of the United Commonwealth. But on the eve of her departure, her father''s advice hints at a darker side to her upcoming studies—trust no one.

But surely she can trust Tomas, her handsome childhood friend who offers an alliance? Tomas, who seems to care more about her with the passing of every gruelling (and deadly) day of the Testing.

To survive, Cia must choose: love without truth or life without trust. (less)', 1),
	(67, 'Black Boy', 'Richard Wright', 419, 5627, 'English', '1998-09-01', NULL, NULL, 'covers/cover68.png', 'Black Boy is a classic of American autobiography, a subtly crafted narrative of Richard Wright''s journey from innocence to experience in the Jim Crow South. An enduring story of one young man''s coming of age during a particular time and place, Black Boy remains a seminal text in our history about what it means to be a man, black, and Southern in America. (less)', 1),
	(68, 'The House on Mango Street', 'Sandra Cisneros', 110, 2808, 'English', '2009-04-03', NULL, NULL, 'covers/cover69.png', 'Acclaimed by critics, beloved by readers of all ages, taught everywhere from inner-city grade schools to universities across the country, and translated all over the world, The House on Mango Street is the remarkable story of Esperanza Cordero.

Told in a series of vignettes – sometimes heartbreaking, sometimes deeply joyous–it is the story of a young Latina girl growing up in Chicago, inventing for herself who and what she will become. Few other books in our time have touched so many readers. (less)', 1),
	(69, 'The Testament', 'John Grisham', 535, 4832, 'English', '1999-12-28', NULL, NULL, 'covers/cover70.png', 'In a plush Virginia office, a rich, angry old man is furiously rewriting his will. With his death just hours away, Troy Phelan wants to send a message to his children, his ex-wives, and his minions, a message that will touch off a vicious legal battle and transform dozens of lives.

Because Troy Phelan''s new will names a sole surprise heir to his eleven-billion-dollar fortune: a mysterious woman named Rachel Lane, a missionary living deep in the jungles of Brazil.

Enter the lawyers. Nate O''Riley is fresh out of rehab, a disgraced corporate attorney handpicked for his last job: to find Rachel Lane at any cost. As Phelan''s family circles like vultures in D.C., Nate is crashing through the Brazilian jungle, entering a world where money means nothing, where death is just one misstep away, and where a woman - pursued by enemies and friends alike - holds a stunning surprise of her own. (less)', 1),
	(70, 'Drum Beats, Heart Beats', 'Maria Nhambu', 500, 2646, 'English', '2018-08-24', NULL, 'Dancing Soul Trilogy', 'covers/cover71.png', 'In this final volume of The Dancing Soul Trilogy, we join an ever insightful and passionate Nhambu as she traverses diverse cultures and continents and negotiates a complex and shifting web of mixed identities—African immigrant and African American—through marriage, parenthood, and the search for the father she has never known. Through trauma and triumph, love and betrayal, the “Drum Beats” and “Heart Beats” of her native Africa lead her on an ultimate journey of transcendence that will enthrall and inspire readers around the world. (less)', 1),
	(71, 'Thud!', 'Terry Pratchett', 439, 4337, 'English', '2006-10-02', NULL, 'Discworld #34', 'covers/cover72.png', 'Koom Valley? That was where the trolls ambushed the dwarfs, or the dwarfs ambushed the trolls. It was far away. It was a long time ago.

But if he doesn''t solve the murder of just one dwarf, Commander Sam Vimes of Ankh-Morpork City Watch is going to see it fought again, right outside his office.

With his beloved Watch crumbling around him and war-drums sounding, he must unravel every clue, outwit every assassin and brave any darkness to find the solution. And darkness is following him.

Oh . . . and at six o''clock every day, without fail, with no excuses, he must go home to read ''Where''s My Cow?'', with all the right farmyard noises, to his little boy.

There are some things you have to do. (less)', 1),
	(72, 'Xenocide', 'Orson Scott Card', 592, 3103, 'English', '1996-07-15', NULL, 'Ender''s Saga #3', 'covers/cover73.png', 'The war for survival of the planet Lusitania will be fought in the hearts of a child named Gloriously Bright.

On Lusitania, Ender found a world where humans and pequininos and the Hive Queen could all live together; where three very different intelligent species could find common ground at last. Or so he thought.

Lusitania also harbors the descolada, a virus that kills all humans it infects, but which the pequininos require in order to become adults. The Starways Congress so fears the effects of the descolada, should it escape from Lusitania, that they have ordered the destruction of the entire planet, and all who live there. The Fleet is on its way, and a second xenocide seems inevitable. (less)', 1),
	(73, 'Lisey''s Story', 'Stephen King', 513, 3243, 'English', '2006-10-24', NULL, NULL, 'covers/cover74.png', 'Lisey Debusher Landon lost her husband, Scott, two years ago, after a twenty-five year marriage of the most profound and sometimes frightening intimacy. Scott was an award-winning, bestselling novelist and a very complicated man. Early in their relationship, before they married, Lisey had to learn from him about books and blood and bools. Later, she understood that there was a place Scott went--a place that both terrified and healed him, that could eat him alive or give him the ideas he needed in order to live. Now it''s Lisey''s turn to face Scott''s demons, Lisey''s turn to go to Boo''ya Moon. What begins as a widow''s efforts to sort through the papers of her celebrated husband becomes a nearly fatal journey into the darkness he inhabited. Perhaps King''s most personal and powerful novel, Lisey''s Story is about the wellsprings of creativity, the temptations of madness, and the secret language of love.
(front flap) (less)', 1),
	(74, 'Intensity', 'Dean Koontz', 436, 2938, 'English', '2000-10-31', NULL, NULL, 'covers/cover75.png', 'Past midnight, Chyna Shepard, twenty-six, gazes out a moonlit window, unable to sleep on her first night in the Napa Valley home of her best friend''s family. Instinct proves reliable. A murderous sociopath, Edgler Foreman Vess, has entered the house, intent on killing everyone inside. A self-proclaimed "homicidal adventurer," Vess lives only to satisfy all appetites as they arise, to immerse himself in sensation, to live without fear, remorse or limits, to live with "intensity." Chyna is trapped in his deadly orbit.

Chyna is a survivor, toughened by a lifelong struggle for safety and self-respect. Now she will be tested as never before. At first her sole aim is to get out alive--until, by chance, she learns the identity of Vess''s next intended victim, a faraway innocent only she can save. Driven by a newly discovered thirst for meaning beyond mere self-preservation, Chyna musters every inner resource she has to save an endangered girl...as moment by moment, the terrifying threat of Edgler Foreman Vess intensifies. (less)', 1),
	(75, 'Ghost Story', 'Peter Straub', 567, 2817, 'English', '1989-09-01', NULL, NULL, 'covers/cover76.png', 'In life, not every sin goes unpunished.

GHOST STORY

For four aging men in the terror-stricken town of Milburn, New York, an act inadvertently carried out in their youth has come back to haunt them. Now they are about to learn what happens to those who believe they can bury the past -- and get away with murder.', 1),
	(76, 'Nickel and Dimed: On (Not) Getting by in America', 'Barbara Ehrenreich', 240, 1045, 'English', '2002-05-01', NULL, NULL, 'covers/cover77.png', 'Millions of Americans work full-time, year-round, for poverty-level wages. In 1998, Barbara Ehrenreich decided to join them. She was inspired in part by the rhetoric surrounding welfare reform, which promised that any job equals a better life. But how can anyone survive, let alone prosper, on $6-$7 an hour? To find out, Ehrenreich moved from Florida to Maine to Minnesota, taking the cheapest lodgings available and accepting work as a waitress, hotel maid, house cleaner, nursing home aide, and Wal-Mart salesperson. She soon discovered that even the "lowliest" occupations require exhausting mental and physical efforts. And one job is not enough; you need at least two if you intend to live indoors.

Nickel and Dimed reveals low-wage America in all its tenacity, anxiety, and surprising generosity--a land of Big Boxes, fast food, and a thousand desperate stratagems for survival. Instantly acclaimed for its insight, humor, and passion, this book is changing the way America perceives its working poor. (less)', 1),
	(77, 'O Pioneers!', 'Willa Cather', 159, 76, 'English', '1992-01-01', NULL, 'Great Plains Trilogy #1', 'covers/cover78.png', 'O Pioneers! (1913) was Willa Cather''s first great novel, and to many it remains her unchallenged masterpiece. No other work of fiction so faithfully conveys both the sharp physical realities and the mythic sweep of the transformation of the American frontier—and the transformation of the people who settled it. Cather''s heroine is Alexandra Bergson, who arrives on the wind-blasted prairie of Hanover, Nebraska, as a girl and grows up to make it a prosperous farm. But this archetypal success story is darkened by loss, and Alexandra''s devotion to the land may come at the cost of love itself.

At once a sophisticated pastoral and a prototype for later feminist novels, O Pioneers! is a work in which triumph is inextricably enmeshed with tragedy, a story of people who do not claim a land so much as they submit to it and, in the process, become greater than they were. (less)', 1),
	(78, 'Defending Jacob', 'William Landay', 421, 4335, 'English', '2012-01-31', NULL, NULL, 'covers/cover79.png', 'Award-winning author William Landay has written the consummate novel of an embattled family in crisis - a suspenseful, character-driven mystery that is also a spellbinding tale of guilt, betrayal, and the terrifying speed at which our lives can spin out of control.

Andy Barber has been an assistant district attorney in his suburban Massachusetts county for more than twenty years. He is respected in his community, tenacious in the courtroom, and happy at home with his wife, Laurie, and son, Jacob. But when a shocking crime shatters their New England town, Andy is blindsided by what happens next: His fourteen-year-old son is charged with the murder of a fellow student. (less)', 1),
	(79, 'The Kiss of Deception', 'Mary E. Pearson', 492, 86, 'English', '2014-07-08', NULL, 'The Remnant Chronicles #1', 'covers/cover80.png', 'In a society steeped in tradition, Princess Lia’s life follows a preordained course. As First Daughter, she is expected to have the revered gift of sight—but she doesn’t—and she knows her parents are perpetrating a sham when they arrange her marriage to secure an alliance with a neighboring kingdom—to a prince she has never met.

On the morning of her wedding, Lia flees to a distant village. She settles into a new life, hopeful when two mysterious and handsome strangers arrive—and unaware that one is the jilted prince and the other an assassin sent to kill her. Deception abounds, and Lia finds herself on the brink of unlocking perilous secrets—even as she finds herself falling in love.

The Kiss of Deception is the first audiobook in Mary E. Pearson''s Remnant Chronicles (less)', 1),
	(80, 'The Authoritative Calvin and Hobbes: A Calvin and Hobbes Treasury', 'Bill Watterson', 254, 2080, 'English', '1990-10-17', NULL, 'Calvin and Hobbes', 'covers/cover81.png', 'A collection of Calvin and Hobbes cartoons. The author won the 1986 Reuben Award as Outstanding Cartoonist of the Year and has also illustrated Something Under the Bed is Drooling, Calvin and Hobbes'' Yukon Ho! and Weirdos From Another Planet. (less)', 1),
	(81, 'Moon Palace', 'Paul Auster', 320, 4048, 'English', '1990-04-01', NULL, NULL, 'covers/cover82.png', 'Marco Stanley Fogg is an orphan, a child of the sixties, a quester tirelessly seeking the key to his past, the answers to the ultimate riddle of his fate. As Marco sets out on a journey from the canyons of Manhattan to the deserts of Utah, he encounters a gallery of characters and a series of events as rich and surprising as any in modern fiction.

Beginning during the summer that men first walked on the moon, and moving backward and forward in time to span three generations, Moon Palace is propelled by coincidence and memory, and illuminated by marvelous flights of lyricism and wit. Here is the most entertaining and moving novel yet from an author well known for his breathtaking imagination. (less)', 1),
	(82, 'The Call of the Wild, White Fang and Other Stories', 'Jack London', 400, 3660, 'English', '1998-08-20', NULL, NULL, 'covers/cover83.png', 'Of all Jack London''s fictions none has been as popular as his dog stories. In addition to The Call of the Wild, the epic tale of a Californian dog''s adventures during the Klondike gold rush, this edition includes White Fang, and five famous short stories - B tard, Moon-Face, Brown Wolf, That Spot, and To Build a Fire. (less)', 1),
	(83, 'Haroun and the Sea of Stories', 'Salman Rushdie', 224, 3217, 'English', '1999-08-27', NULL, 'Khalifa Brothers #1', 'covers/cover84.png', 'Alternate cover for this ISBN can be found here

Discover Haroun and the Sea of Stories, Salman Rushdie’s classic fantasy novel

 Set in an exotic Eastern landscape peopled by magicians and fantastic talking animals, Salman Rushdie''s classic children''s novel Haroun and the Sea of Stories inhabits the same imaginative space as The Lord of the Rings, The Alchemist, and The Wizard of Oz. In this captivating work of fantasy from the author of Midnight’s Children and The Enchantress of Florence, Haroun sets out on an adventure to restore the poisoned source of the sea of stories. On the way, he encounters many foes, all intent on draining the sea of all its storytelling powers.   (less)', 1),
	(84, 'The Lottery and Other Stories', 'Shirley Jackson', 302, 1059, 'English', '2005-03-16', NULL, NULL, 'covers/cover85.png', 'The Lottery, one of the most terrifying stories written in this century, created a sensation when it was first published in The New Yorker. "Power and haunting," and "nights of unrest" were typical reader responses. This collection, the only one to appear during Shirley Jackson''s lifetime, unites "The Lottery:" with twenty-four equally unusual stories. Together they demonstrate Jackson''s remarkable range--from the hilarious to the truly horrible--and power as a storyteller. (less)', 1),
	(85, 'The Rainmaker', 'John Grisham', 419, 3234, 'English', '2005-09-27', NULL, NULL, 'covers/cover86.png', 'InThe Rainmaker, John Grisham tells the story of a young man barely out of law school who finds himself taking on one of the most powerful, corrupt, and ruthless companies in America -- and exposing a complex, multibillion-dollar insurance scam. In his final semester of law school Rudy Baylor is required to provide free legal advice to a group of senior citizens, and it is there that he meets his first "clients," Dot and Buddy Black. Their son, Donny Ray, is dying of leukemia, and their insurance company has flatly refused to pay for his medical treatments. While Rudy is at first skeptical, he soon realizes that the Blacks really have been shockingly mistreated by the huge company, and that he just may have stumbled upon one of the largest insurance frauds anyone''s ever seen -- and one of the most lucrative and important cases in the history of civil litigation. The problem is, Rudy''s flat broke, has no job, hasn''t even passed the bar, and is about to go head-to-head with one of the best defense attorneys -- and powerful industries -- in America. (less)', 1),
	(86, '????? ????? ??? ?????', '??? ????? ??????', 367, 5112, 'Persian', '2017-03-06', NULL, NULL, 'covers/cover87.png', '???? ???? "????? ????? ??? ?????" ?? ??  ????? ? ??? ?????? ?? ?????? ??? ??????? ?? ?? ?? ????? ?? ??? ?? ??? ??????? ????? ??? ?????????? ? ?????? ??? ? ??????? ?? ?? ?? ?? ??? ??????? ????? ??? ???? ????? ?? ????? ??? ???? ??? ?????  ?? ???? ??? ?? ???? ????? ?? ????  ?? ?????  ??? ?? ????? ????? ?? ??? ??????  ???? ?? ??????? ?? ??? ?? ???? ?? ?? ????? ???
(less)', 1),
	(87, 'The House at Riverton', 'Kate Morton', 599, 1773, 'English', '2007-06-15', NULL, NULL, 'covers/cover88.png', 'The House at Riverton is a gorgeous debut novel set in England between the wars. Perfect for fans of "Downton Abbey," it''s the story of an aristocratic family, a house, a mysterious death, and a way of life that vanished forever, told in flashback by a woman who witnessed it all.

The novel is full of secrets - some revealed, others hidden forever, reminiscent of the romantic suspense of Daphne du Maurier. It''s also a meditation on memory and the devastation of war and a beautifully rendered window into a fascinating time in history. (less)', 1),
	(88, 'In Search of Lost Time', 'Marcel Proust', 4211, 2893, 'English', '2003-06-03', NULL, 'À la recherche du temps perdu #1-7', 'covers/cover89.png', 'On the surface a traditional "Bildungsroman" describing the narrator’s journey of self-discovery, this huge and complex book is also a panoramic and richly comic portrait of France in the author’s lifetime, and a profound meditation on the nature of art, love, time, memory and death. But for most readers it is the characters of the novel who loom the largest: Swann and Odette, Monsieur de Charlus, Morel, the Duchesse de Guermantes, Françoise, Saint-Loup and so many others — Giants, as the author calls them, immersed in Time.

"In Search of Lost Time" is a novel in seven volumes. The novel began to take shape in 1909. Proust continued to work on it until his final illness in the autumn of 1922 forced him to break off. Proust established the structure early on, but even after volumes were initially finished he kept adding new material, and edited one volume after another for publication. The last three of the seven volumes contain oversights and fragmentary or unpolished passages as they existed in draft form at the death of the author; the publication of these parts was overseen by his brother Robert. (less)', 1),
	(89, 'Ptolemy''s Gate', 'Jonathan Stroud', 501, 3, 'English', '2006-01-01', NULL, 'Bartimaeus #3', 'covers/cover90.png', 'Nathaniel 17 treats Bartimaeus worse than ever. The long-suffering djinni is weak from too much time in this world, near the end of his patience. Rebel Kitty 18 hides, stealthily finishing her research on magic, demons, and Bartimaeus. She has a daring plan that she hopes will break the endless cycle of conflict between djinn and humans. But will anyone listen to what she has to say? Together the trio face treacherous magicians, a complex conspiracy, and a rebellious faction of demons. To survive, they must test the limits of this world and question the deepest parts of themselves. (less)', 1),
	(90, 'The Seventh Spark: Volume One – Knights of the Trinity', 'J.B. Lion', 203, 859, 'English', '2020-09-01', NULL, NULL, 'covers/cover91.png', 'fantasy graphic fiction novel', 1),
	(91, 'House Rules', 'Jodi Picoult', 532, 5796, 'English', '2010-03-02', NULL, NULL, 'covers/cover92.png', 'When your son can''t look you in the eye...does that mean he''s guilty?

Jacob Hunt is a teen with Asperger''s syndrome. He''s hopeless at reading social cues or expressing himself well to others, though he is brilliant in many ways. But he has a special focus on one subject - forensic analysis. A police scanner in his room clues him in to crime scenes, and he''s always showing up and telling the cops what to do. And he''s usually right.

But when Jacob''s small hometown is rocked by a terrible murder, law enforcement comes to him. Jacob''s behaviors are hallmark Asperger''s, but they look a lot like guilt to the local police. Suddenly the Hunt family, who only want to fit in, are directly in the spotlight. For Jacob''s mother, Emma, it''s a brutal reminder of the intolerance and misunderstanding that always threaten her family. For his brother, Theo, it''s another indication why nothing is normal because of Jacob.

And over this small family, the soul-searing question looms: Did Jacob commit murder? (less)', 1),
	(92, 'Dark Flame', 'Alyson Noel', 320, 1425, 'English', '2010-06-22', NULL, 'The Immortals #4', 'covers/cover93.png', 'In Alyson Noël’s most darkly seductive Immortals novel yet, Ever fights for control of her body, her soul—and the timeless true love she’s been chasing for centuries.

Ever is trying to help Haven make the transition into life as an immortal. But with Haven drunk on her new powers and acting recklessly, she poses the ultimate threat—exposing their secret world to the outside. But Ever''s struggle to keep the Immortals hidden only propels Haven closer to the enemy: Roman and his evil companions.

At the same time, Ever delves deeper into dark magick to free Damen from Roman’s power. But when her spell backfires, it binds her to the one guy who’s hell-bent on her destruction. Now there’s a strange, foreign pulse coursing through her, and no matter what she does, she can’t stop thinking about Roman—and longing for his touch. As she struggles to resist the fiery attraction threatening to consume her, Roman is more than willing to take advantage of her weakened state... and Ever edges closer and closer to surrender.

Frantic to break the spell before its too late, Ever turns to Jude for help, risking everything she knows and loves to save herself—and her future with Damen.... (less)', 1),
	(93, 'Black Hawk Down: A Story of Modern War', 'Mark Bowden', 386, 1378, 'English', '1999-02-10', NULL, NULL, 'covers/cover94.png', 'On October 3, 1993, about a hundred U.S. soldiers were dropped by helicopter into a teeming market in the heart of Mogadishu, Somalia, to abduct two top lieutenants of a Somali warlord. The action was supposed to take an hour. Instead, they spent a long and terrible night fighting thousands of armed Somalis. By morning, eighteen Americans were dead, and more than seventy badly injured. Mark Bowden''s gripping narrative is one of the most exciting accounts of modern war ever written--a riveting story that captures the heroism, courage and brutality of battle. (less)', 1),
	(94, 'Complicated Moonlight', 'Lynessa Layne', 287, 3695, 'English', '2020-08-30', NULL, 'DCYE #2', 'covers/cover95.png', 'In this second volume of the Don''t Close Your Eyes series, the evolving love triangle between Jase, Kinsley and Klive intensifies.

Klive’s Nightshade superiors command him to stay away from Kinsley or else.

Jase makes a move toward commitment, asking Kinsley for more.

When an Inferno biker crosses the line with Kinsley, Jase takes a violent stand while Klive defies orders defending her.

Afraid of the biker’s aggression, baffled by Klive’s sudden distance and uneasy with a side of Jase she''s never seen before, Kinsley seeks solace in her friendships.

Her brief reprieve quickly upends when an old enemy with eyes for Jase reappears in her life, reigniting their former feud.

Will Kinsley take Jase’s offer to be together, or follow the gravitational pull toward the man she thinks is the safer option, never knowing she’s amplifying the threat to her life?

Set in the tropical locales of Florida, this dual POV romantic suspense follows Klive, Kinsley and Jase into their perilous conflicts between good, evil, love, hate and the bounds they break when pushed to their limits. (less)', 1),
	(95, 'The Diviners', 'Libba Bray', 578, 2058, 'English', '2012-09-18', NULL, 'The Diviners #1', 'covers/cover96.png', 'SOMETHING DARK AND EVIL HAS AWAKENED… Evie O’Neill has been exiled from her boring old hometown and shipped off to the bustling streets of New York City—and she is pos-i-tute-ly ecstatic. It’s 1926, and New York is filled with speakeasies, Ziegfeld girls, and rakish pickpockets. The only catch is that she has to live with her uncle Will and his unhealthy obsession with the occult. Evie worries her uncle will discover her darkest secret: a supernatural power that has only brought her trouble so far. But when the police find a murdered girl branded with a cryptic symbol and Will is called to the scene, Evie realizes her gift could help catch a serial killer. As Evie jumps headlong into a dance with a murderer, other stories unfold in the city that never sleeps. A young man named Memphis is caught between two worlds. A chorus girl named Theta is running from her past. A student named Jericho is hiding a shocking secret. And unknown to all, something dark and evil has awakened… (less)', 1),
	(96, 'A Storm of Swords: Steel and Snow', 'George R.R. Martin', 663, 689, 'English', '2001-04-07', NULL, 'A Song of Ice and Fire (1-in-2) #5', 'covers/cover97.png', 'Winter approaches Westeros like an angry beast.

The Seven Kingdoms are divided by revolt and blood feud. In the northern wastes, a horde of hungry, savage people steeped in the dark magic of the wilderness is poised to invade the Kingdom of the North where Robb Stark wears his new-forged crown. And Robb''s defences are ranged against the South, the land of the cunning and cruel Lannisters, who have his young sisters in their power.

Throughout Westeros, the war for the Iron Throne rages more fiercely than ever, but if the wall is breached, no king will live to claim it. (less)', 1),
	(97, 'Dance with the Devil', 'Sherrilyn Kenyon', 361, 5445, 'English', '2003-12-01', NULL, 'Dark-Hunter #3', 'covers/cover98.png', 'Zarek’s Point of View:

Dark-Hunter: A soulless guardian who stands between mankind and those who would see mankind destroyed. Yeah, right. The only part of that Code of Honor I got was eternity and solitude.

Insanity: A condition many say I suffer from after being alone for so long. But I don’t suffer from my insanity-I enjoy every minute of it.

Trust: I can’t trust anyone…not even myself. The only thing I trust in is my ability to do the wrong thing in any situation and to put a hurt on anyone who gets in my way.

Truth: I endured a lifetime as a Roman slave, and 900 years as an exiled Dark-Hunter. Now I’m tired of enduring. I want the truth about what happened the night I was exiled-I have nothing to lose and everything to gain.

Astrid (Greek, meaning star): An exceptional woman who can see straight to the truth. Brave and strong, she is a point of light in the darkness. She touches me and I tremble. She smiles and my cold heart shatters.

Zarek: They say even the most damned man can be forgiven. I never believed that until the night Astrid opened her door to me and made this feral beast want to be human again. Made me want to love and be loved. But how can an ex-slave whose soul is owned by a Greek goddess ever dream of touching, let alone holding, a fiery star? (less)', 1),
	(98, 'Fragile Eternity', 'Melissa Marr', 389, 5125, 'English', '2009-04-21', NULL, 'Wicked Lovely #3', 'covers/cover99.png', 'Seth never expected he would want to settle down with anyone - but that was before Aislinn. She is everything he''d ever dreamed of, and he wants to be with her forever. Forever takes on new meaning, though, when your girlfriend is an immortal faery queen.

Aislinn never expected to rule the very creatures who''d always terrified her - but that was before Keenan. He stole her mortality to make her a monarch, and now she faces challenges and enticements beyond any she''d ever imagined.


In Melissa Marr''s third mesmerizing tale of Faerie, Seth and Aislinn struggle to stay true to themselves and each other in a milieu of shadowy rules and shifting allegiances, where old friends become new enemies and one wrong move could plunge the Earth into chaos. (less)', 1),
	(99, 'Galápagos', 'Kurt Vonnegut Jr.', 324, 1484, 'English', '1999-01-12', NULL, NULL, 'covers/cover100.png', 'Galápagos takes the reader back one million years, to A.D. 1986. A simple vacation cruise suddenly becomes an evolutionary journey. Thanks to an apocalypse, a small group of survivors stranded on the Galápagos Islands are about to become the progenitors of a brave, new, and totally different human race. In this inimitable novel, America’s master satirist looks at our world and shows us all that is sadly, madly awry—and all that is worth saving. (less)', 1),
	(100, 'The Human Obsession', 'Heath Sommer', 314, 3756, 'English', '2010-12-14', NULL, 'Manufactured Identity #3', 'covers/cover101.png', 'A year before retirement, Chief of Police Frank Murphy wants nothing more than to spend his golden years on HGTV marathons and endless tee-off times. What he gets is a string of abductions that makes Ted Bundy look like an amateur. The Human Obsession is the sequel to Heath Sommer''s 2009 breakout psychological thriller The Manufactured Identity, where Murphy and hapless lovers Addy and John Joe scramble against inhuman odds and unpredictable twists to solve the riddles of murder, obsession, and human weakness. Focusing on the trial of Cameron Bo, alleged murderer and loony from Sommer''s The Grand Delusion, The Human Obsession takes readers even deeper into the minds of Sommers'' belovedand twistedcharacters. In the end, no one could have seen why those meant to protect and serve may be in the greatest danger of all. (less)', 1),
	(101, 'After Forever Ends', 'Melodie Ramone', 564, 2866, 'English', '2012-10-01', NULL, NULL, 'covers/cover102.png', 'Orphaned by her mother and brushed off by her dad, fifteen year old Silvia Cotton had lived a lonely life. That is until 1985 when her father moved the family from the Highlands of Scotland to the Midlands of Wales. It is there she was enrolled in Bennington, a private boarding school, met the charming and rebellious Dickinson twins, Oliver and Alexander, and her regrettable life was changed forever.

Locked into a fierce friendship with Alexander and lost to a whirlwind romance with Oliver, Silvia found herself torn away from everything she thought she knew. Married too soon, she moved with Oliver to a rustic cabin deep in a Welsh wood and embarked upon a life she''d never planned for, surviving on hope she never knew existed and faith she never knew she had. She made her way through university and onto a career, only to surrender her ambition to raising her children and living a life that was strikingly "normal". But what is normal? Certainly not what ensued in the wood.

True love, faeries, friendship, loves lost and gained. Old magic, fate, doubt, strength and courage, Silvia''s story could belong to anyone, but it is her own. Simple yet extraordinary, told in retrospect with wit and candor, Silvia recalls a life of joy and sorrow, laughter and tears. As she unravels the tangled web of her days, she reveals the secrets that exist in an ancient wood, how hearts given freely can become the stuff of magic, and how true happiness was never any further than her own back garden. (less)', 1),
	(102, 'Daisy Jones & The Six', 'Taylor Jenkins Reid', 355, 2107, 'English', '2019-03-05', NULL, NULL, 'covers/cover103.png', 'A gripping novel about the whirlwind rise of an iconic 1970s rock group and their beautiful lead singer, revealing the mystery behind their infamous break up.

Everyone knows Daisy Jones & The Six, but nobody knows the real reason why they split at the absolute height of their popularity…until now.

Daisy is a girl coming of age in L.A. in the late sixties, sneaking into clubs on the Sunset Strip, sleeping with rock stars, and dreaming of singing at the Whisky a Go-Go. The sex and drugs are thrilling, but it’s the rock and roll she loves most. By the time she’s twenty, her voice is getting noticed, and she has the kind of heedless beauty that makes people do crazy things.

Another band getting noticed is The Six, led by the brooding Billy Dunne. On the eve of their first tour, his girlfriend Camila finds out she’s pregnant, and with the pressure of impending fatherhood and fame, Billy goes a little wild on the road.

Daisy and Billy cross paths when a producer realizes the key to supercharged success is to put the two together. What happens next will become the stuff of legend. (less)', 1),
	(103, 'Reading Lolita in Tehran: A Memoir in Books', 'Azar Nafisi', 356, 1152, 'English', '2003-12-30', NULL, NULL, 'covers/cover104.png', 'Every Thursday morning for two years in the Islamic Republic of Iran, a bold and inspired teacher named Azar Nafisi secretly gathered seven of her most committed female students to read forbidden Western classics. As Islamic morality squads staged arbitrary raids in Tehran, fundamentalists seized hold of the universities, and a blind censor stifled artistic expression, the girls in Azar Nafisi''s living room risked removing their veils and immersed themselves in the worlds of Jane Austen, F. Scott Fitzgerald, Henry James, and Vladimir Nabokov. In this extraordinary memoir, their stories become intertwined with the ones they are reading. Reading Lolita in Tehran is a remarkable exploration of resilience in the face of tyranny and a celebration of the liberating power of literature.
(less)', 1),
	(104, 'Just One Day', 'Gayle Forman', 369, 1624, 'English', '2013-08-20', NULL, 'Just One Day #1', 'covers/cover105.png', 'A breathtaking journey toward self-discovery and true love, from the author of If I Stay.

When sheltered American good girl Allyson "LuLu" Healey first meets laid-back Dutch actor Willem De Ruiter at an underground performance of Twelfth Night in England, there''s an undeniable spark. After just one day together, that spark bursts into a flame, or so it seems to Allyson, until the following morning, when she wakes up after a whirlwind day in Paris to discover that Willem has left. Over the next year, Allyson embarks on a journey to come to terms with the narrow confines of her life, and through Shakespeare, travel, and a quest for her almost-true-love, to break free of those confines. (less)', 1),
	(105, 'Good Night, Mr. Tom', 'Michelle Magorian', 320, 3237, 'English', '1986-11-13', NULL, NULL, 'covers/cover106.png', 'London is poised on the brink of World War II. Timid, scrawny Willie Beech -- the abused child of a single mother -- is evacuated to the English countryside. At first, he is terrified of everything, of the country sounds and sights, even of Mr. Tom, the gruff, kindly old man who has taken him in. But gradually Willie forgets the hate and despair of his past. He learns to love a world he never knew existed, a world of friendship and affection in which harsh words and daily beatings have no place. Then a telegram comes. Willie must return to his mother in London. When weeks pass by with no word from Willie, Mr. Tom sets out for London to look for the young boy he has come to love as a son. (less)', 1),
	(106, 'A Wind in the Door', 'Madeleine L''Engle', 203, 5507, 'English', '1976-03-01', NULL, 'Time Quintet #2', 'covers/cover107.png', 'Every time a star goes out, another Echthros has won a battle.

Just before Meg Murry''s little brother, Charles Wallace, falls deathly ill, he sees dragons in the vegetable garden. The dragons turn out to be Proginoskes, a cherubim composed out wings and eyes, wind and flame. It is up to Meg and Proginoskes, along with Meg''s friend Calvin, to save Charles Wallace''s life. To do so, they must travel deep within Charles Wallace to attempt to defeat the Echthroi—those who hate—and restore brilliant harmony and joy to the rhythm of creation, the song of the universe. (less)', 1),
	(107, 'Sarah, Plain and Tall', 'Patricia MacLachlan', 64, 2684, 'English', '2001-01-01', NULL, 'Sarah, Plain and Tall #1', 'covers/cover108.png', 'This beloved Newbery Medal–winning book is the first of five books in Patricia MacLachlan''s chapter book series about the Witting family.

Set in the late nineteenth century and told from young Anna''s point of view, Sarah, Plain and Tall tells the story of how Sarah Elisabeth Wheaton comes from Maine to the prairie to answer Papa''s advertisement for a wife and mother. Before Sarah arrives, Anna and her younger brother Caleb wait and wonder. Will Sarah be nice? Will she sing? Will she stay?

This children''s literature classic is perfect for fans of Laura Ingalls Wilder''s Little House on the Prairie books, historical fiction, and timeless stories using rich and beautiful language. Sarah, Plain and Tall gently explores themes of abandonment, loss and love. (less)', 1),
	(108, 'A Bird Without Wings', 'Roberta Pearce', NULL, 2088, 'English', '2013-12-02', NULL, NULL, 'covers/cover109.png', 'After an impoverished and indigent childhood, Callie Dahl is interested in one thing: money enough to buy her own home. Love and marriage are impractical pursuits, and hold zero attraction for her—though she alleviates her loneliness through the guilty pleasure of an at-far fantasy of her temporary boss, Lucius Ransome.

So when Lucius gives her the task of disproving a long-standing Ransome Family legend, it’s a tossup for her whether the main attraction is the financial bonus he’s promised or the chance to spend time in his company!

Her investigation unravels more than family secrets. As she plunges into a steamy affair with Lucius, everything she holds true comes apart as he introduces her to a world where love actually might mean more than money. (less)', 1),
	(109, 'The Girl Who Loved Tom Gordon', 'Stephen King', 264, 2247, 'English', '2005-11-01', NULL, NULL, 'covers/cover110.png', 'Nine-year-old Trisha McFarland strays from the path while she and her recently divorced mother and brother take a hike along a branch of the Appalachian Trail. Lost for days, wandering farther and farther astray, Trisha has only her portable radio for comfort. A huge fan of Tom Gordon, a Boston Red Sox relief pitcher, she listens to baseball games and fantasizes that her hero will save her. Nature isn''t her only adversary, though - something dangerous may be tracking Trisha through the dark woods. (less)', 1),
	(110, 'Survival in Auschwitz', 'Primo Levi', 187, 3650, 'English', '1995-09-01', NULL, 'Auschwitz Trilogy #1', 'covers/cover111.png', 'The true and harrowing account of Primo Levi’s experience at the German concentration camp of Auschwitz and his miraculous survival; hailed by The Times Literary Supplement as a “true work of art, this edition includes an exclusive conversation between the author and Philip Roth.

In 1943, Primo Levi, a twenty-five-year-old chemist and “Italian citizen of Jewish race,” was arrested by Italian fascists and deported from his native Turin to Auschwitz. Survival in Auschwitz is Levi’s classic account of his ten months in the German death camp, a harrowing story of systematic cruelty and miraculous endurance. Remarkable for its simplicity, restraint, compassion, and even wit, Survival in Auschwitz remains a lasting testament to the indestructibility of the human spirit. (less)', 1),
	(111, 'Long Day''s Journey into Night', 'Eugene O''Neill', 179, 134, 'English', '2002-02-08', NULL, NULL, 'covers/cover112.png', 'Eugene O''Neill''s autobiographical play Long Day''s Journey into Night is regarded as his finest work. First published by Yale University Press in 1956, it won the Pulitzer Prize in 1957 and has since sold more than one million copies. This edition includes a new foreword by Harold Bloom.

The action covers a fateful, heart-rending day from around 8:30 am to midnight, in August 1912 at the seaside Connecticut home of the Tyrones - the semi-autobiographical representations of O''Neill himself, his older brother, and their parents at their home, Monte Cristo Cottage.

One theme of the play is addiction and the resulting dysfunction of the family. All three males are alcoholics and Mary is addicted to morphine. They all constantly conceal, blame, resent, regret, accuse and deny in an escalating cycle of conflict with occasional desperate and half-sincere attempts at affection, encouragement and consolation. (less)', 1),
	(112, 'Death Note, Vol. 1: Boredom', 'Tsugumi Ohba', 195, 2485, 'English', '2005-10-10', NULL, 'Death Note #1', 'covers/cover113.png', 'Light Yagami is an ace student with great prospects - and he''s bored out of his mind. But all that changes when he finds the Death Note, a notebook dropped by a rogue Shinigami, a death god. Any human whose name is written in the notebook dies, and now Light has vowed to use the power of the Death Note to rid the world of evil. But when criminals begin dropping dead, the authorities send the legendary detective L to track down the killer. With L hot on his heels, will Light lose sight of his noble goal... or his life?

Boredom
Light tests the boundaries of the Death Note''s powers as L and the police begin to close in. Luckily, Light''s father is the head of the Japanese National Police Agency and leaves vital information about the case lying around the house. With access to his father''s files, Light can keep one step ahead of the authorities. But who is the strange man following him, and how can Light guard against enemies whose names he doesn''t know? (less)', 1),
	(113, 'Shadowland', 'Alyson Noel', 339, 4506, 'English', '2009-11-17', NULL, 'The Immortals #3', 'covers/cover114.png', 'Enter the realm of the Immortals—the #1 New York Times bestselling series that''s been acclaimed as breathtaking, mesmerizing, flawless, and extraordinary.

Ever and Damen have traveled through countless past lives—and fought off the world’s darkest enemies—so they could be together forever. But just when their long-awaited destiny is finally within reach, a powerful curse falls upon Damen... one that could destroy everything. Now a single touch of their hands or a soft brush of their lips could mean sudden death—plunging Damen into the Shadowland. Desperate to break the curse and save Damen, Ever immerses her herself in magick— and gets help from an unexpected source—a surfer named Jude.

Although she and Jude have only just met, he feels startlingly familiar. Despite her fierce loyalty to Damen, Ever is drawn to Jude, a green-eyed golden boy with magical talents and a mysterious past. She’s always believed Damen to be her soulmate and one true love—and she still believes it to be true. But as Damen pulls away to save them from the darkness inhabiting his soul, Ever’s connection with Jude grows stronger—and tests her love for Damen like never before…. (less)', 1),
	(114, 'The Selected Writings of Edgar Allan Poe', 'Edgar Allan Poe', 1024, 637, 'English', '2004-09-01', NULL, NULL, 'covers/cover115.png', 'Thompson (English and comparative literature, Purdue U.) relies on Poe''s original works as they were first published, solving the problem of Poe''s rewriting habit. Among his selections Thompson includes poems, tales and sketches, The Narrative of Arthur Gordon Pym and passages from Eureka: An Essay in the Material and Spiritual Universe. (less)', 1),
	(115, 'The King of Attolia', 'Megan Whalen Turner', 387, 123, 'English', '2006-01-24', NULL, 'The Queen''s Thief #3', 'covers/cover116.png', 'By scheming and theft, the Thief of Eddis has become King of Attolia. Eugenides wanted the queen, not the crown, but he finds himself trapped in a web of his own making.

Then he drags a naive young guard into the center of the political maelstrom. Poor Costis knows he is the victim of the king''s caprice, but his contempt for Eugenides slowly turns to grudging respect. Though struggling against his fate, the newly crowned king is much more than he appears. Soon the corrupt Attolian court will learn that its subtle and dangerous intrigue is no match for Eugenides. (less)', 1),
	(116, 'Men Are from Mars, Women Are from Venus', 'John Gray', 368, 1566, 'English', '2012-04-03', NULL, NULL, 'covers/cover117.png', 'Once upon a time Martians and Venusians met, fell in love, and had happy relationships together because they respected and accepted their differences. Then they came to Earth and amnesia set in: they forgot they were from different planets.
Based on years of successful counseling of couples and individuals, Men Are from Mars, Women Are from Venus has helped millions of couples transform their relationships. Now viewed as a modern classic, this phenomenal book has helped men and women realize how different they really are and how to communicate their needs in such a way that conflict doesn''t arise and intimacy is given every chance to grow!!!!
(less)', 1),
	(117, 'Down and Out in Paris and London', 'George Orwell', 213, 4633, 'English', '1972-03-15', NULL, NULL, 'covers/cover118.png', 'This unusual fictional memoir - in good part autobiographical - narrates without self-pity and often with humor the adventures of a penniless British writer among the down-and-outs of two great cities. The Parisian episode is fascinating for its expose of the kitchens of posh French restaurants, where the narrator works at the bottom of the culinary echelon as dishwasher, or plongeur. In London, while waiting for a job, he experiences the world of tramps, street people, and free lodging houses. In the tales of both cities we learn some sobering Orwellian truths about poverty and of society. (less)', 1),
	(118, 'The Physician', 'Noah Gordon', 714, 2791, 'English', '2001-07-01', NULL, 'Cole Family Trilogy #1', 'covers/cover119.png', 'In the 11th century, Rob Cole left poor, disease-ridden London to make his way across the land, hustling, juggling, peddling cures to the sick—and discovering the mystical ways of healing. It was on his travels that he found his own very real gift for healing—a gift that urged him on to become a doctor. So all consuming was his dream, that he made the perilous, unheard-of journey to Persia, to its Arab universities where he would undertake a transformation that would shape his destiny forever. (less)', 1),
	(119, 'Code Name Verity', 'Elizabeth Wein', 452, 5419, 'English', '2012-02-06', NULL, 'Code Name Verity #3', 'covers/cover120.png', 'Oct. 11th, 1943 - A British spy plane crashes in Nazi-occupied France. Its pilot and passenger are best friends. One of the girls has a chance at survival. The other has lost the game before it''s barely begun.

When "Verity" is arrested by the Gestapo, she''s sure she doesn''t stand a chance. As a secret agent captured in enemy territory, she''s living a spy''s worst nightmare. Her Nazi interrogators give her a simple choice: reveal her mission or face a grisly execution.

As she intricately weaves her confession, Verity uncovers her past, how she became friends with the pilot Maddie, and why she left Maddie in the wrecked fuselage of their plane. On each new scrap of paper, Verity battles for her life, confronting her views on courage and failure and her desperate hope to make it home. But will trading her secrets be enough to save her from the enemy?

Harrowing and beautifully written, Elizabeth Wein creates a visceral read of danger, resolve, and survival that shows just how far true friends will go to save each other. Code Name Verity is an outstanding novel that will stick with you long after the last page. (less)', 1),
	(120, 'Noble House', 'James Clavell', 1376, 3520, 'English', '1986-09-01', NULL, 'Asian Saga: Chronological Order #5', 'covers/cover121.png', 'This is an alternate cover edition for ISBN13: 9780440164845.

The tai-pan, Ian Dunross, struggles to rescue Struan''s from the precarious financial position left by his predecessor. To do this, he seeks partnership with an American millionaire, while trying to ward off his arch-rival Quillan Gornt, who seeks to destroy Struan''s once and for all. Meanwhile, Chinese communists, Taiwanese nationalists, and Soviet spies illegally vie for influence in Hong Kong while the British government seeks to prevent this. And nobody, it seems, can get anything done without enlisting the aid of Hong Kong''s criminal underworld. Other obstacles include water shortages, landslides, bank runs and stock market crashes.

Nov. 1987 Dell jumbo mass market paperback, 21st printing. James Clavell. (less)', 1),
	(121, 'The Cat in the Hat Comes Back', 'Dr. Seuss', 63, 5346, 'English', '2000-01-01', NULL, 'The Cat in the Hat #2', 'covers/cover122.png', 'The Cat in the Hat returns for more out-of-control fun in this wintry Beginner Book by Dr. Seuss.

It’s a snowy day and Dick and Sally are stuck shovelling . . . until the Cat in the Hat arrives to liven things up (to say the least!). Featuring the Cat’s helpers Little Cat A, Little Cat B, and so on through the alphabet, and ending with a gigantic Voom,

''The Cat in the Hat Comes Back'' is a riotous, fun-filled follow-up to Dr. Seuss’s classic ''The Cat in the Hat.''. (less)', 1),
	(122, 'Dark Matter', 'Blake Crouch', 342, 1521, 'English', '2016-07-26', NULL, NULL, 'covers/cover123.png', 'Jason Dessen is walking home through the chilly Chicago streets one night, looking forward to a quiet evening in front of the fireplace with his wife, Daniela, and their son, Charlie—when his reality shatters.

- - -

''Are you happy in your life?''

Those are the last words Jason Dessen hears before the masked abductor knocks him unconscious. Before he awakes to find himself strapped to a gurney, surrounded by strangers in hazmat suits. Before the man he''s never met smiles down at him and says, ''Welcome back.''

In this world he''s woken up to, Jason''s life is not the one he knows. His wife is not his wife. His son was never born. And Jason is not an ordinary college physics professor, but a celebrated genius who has achieved something remarkable. Something impossible.

Is it this world or the other that''s the dream?

And even if the home he remembers is real, how can Jason possibly make it back to the family he loves? The answers lie in a journey more wondrous and horrifying than anything he could''ve imagined—one that will force him to confront the darkest parts of himself even as he battles a terrifying, seemingly unbeatable foe. (less)', 1),
	(123, 'Crash', 'J.G. Ballard', 224, 3728, 'English', '2001-10-05', NULL, NULL, 'covers/cover124.png', 'In Ballard''s hallucinatory novel, the car provides the hellish tableau in which Vaughan, a "TV scientist" turned "nightmare angel of the highways," experiments with erotic atrocities among auto crash victims, each more sinister than the last. James Ballard, his friend and fellow obsessive, tells the story of this twisted visionary as he careens rapidly toward his own demise in an intentionally orchestrated car crash with Elizabeth Taylor. A classic work of cutting edge fiction, Crash explores the disturbing potentialities of contemporary society''s increasing dependence on technology as intermediary in human relations. (less)', 1),
	(124, '??????', 'Youssef Ziedan', 470, 1064, 'Arabic', '2009-01-01', NULL, NULL, 'covers/cover125.png', '???? ????? ??????? ?? ????? ?????? ???????? ?? ??? ???? ??? ??????????? ????? ?????? ??? ???? ???????????? ????????? ????? ???????? ??? ??? ??? ?? ???? ????? ????? ??? ???? ??????? ?? ???? ????????? ????? ???????? ????????? ?? ??? ????.

"?? ??? ??? ????? ???? ?? ??? ??????.. ?? ???? ??? ?????"
-- ???? ?????

"??? ??????? ??? ???? ?????? ???? ??? ?????? ?? ????? ?????? ??????? ?????? ??????? ????? ????? ???? ??????? ???????? ????? ???? ????? ????? ?? ???? ????? ?????? ??????? ??? ??????? ???????? ?? ??????.. ?? ???? ????? ????? ??????????? ????? ?????? ?????? ??????? ?????? ?? ?????? ????????? ?? ??? ?????"
-- ???? ????

"?? ????? ??????? ????? ??????? ??????? ??? ??????? ???? ??????? ????????? ???????? ???? ?? ????? ???? ??????? ????? ?????? ??????? ?? ????????? ???? ???? ?????.. ???? ??????? ??? ?????? ????? ???? ????? ????????? ???????? ????? ??? ???? ?????? ???? ???? "
-- ?. ???? ?????

"???? ????? ?? ??? ????? ????? ???? ?? ??????? ??????? ???? ????? ????. ??? ??? ????? ????? ?? ???? ????? ??????? ????? ????.. ?? ???? ????? ????? ???? ???????? ???? ????? ???? ?????? ????? ???? ??????? ???? ??? ??? ???? ?? ????? ??????? ???????"
-- ??????? ????? ?????????? (less)', 1),
	(125, 'Eva Luna', 'Isabel Allende', 307, 4085, 'English', '1989-08-01', NULL, NULL, 'covers/cover126.png', 'Meet New York Times bestselling author Isabel Allende’s most enchanting creation, Eva Luna: a lover, a writer, a revolutionary, and above all a storyteller—available for the first time in ebook.

Eva Luna is the daughter of a professor’s assistant and a snake-bitten gardener—born poor, orphaned at an early age, and working as a servant. Eva is a naturally gifted and imaginative storyteller who meets people from all stations and walks of life. Though she has no wealth, she trades her stories like currency with people who are kind to her. In this novel, she shares the story of her own life and introduces readers to a diverse and eccentric cast of characters including the Lebanese émigré who befriends her and takes her in; her unfortunate godmother, whose brain is addled by rum and who believes in all the Catholic saints and a few of her own invention; a street urchin who grows into a petty criminal and, later, a leader in the guerrilla struggle; a celebrated transsexual entertainer who instructs her in the ways of the adult world; and a young refugee whose flight from postwar Europe will prove crucial to Eva''s fate.

As Eva tells her story, Isabel Allende conjures up a whole complex South American nation—the rich, the poor, the simple, and the sophisticated—in a novel replete with character and incident, with drama and comedy and history, with battles and passions, rebellions and reunions, a novel that celebrates the power of imagination to create a better world. (less)', 1),
	(126, 'Wither', 'Lauren DeStefano', 358, 1029, 'English', '2011-03-22', NULL, 'The Chemical Garden #1', 'covers/cover127.png', 'By age sixteen, Rhine Ellery has four years left to live. She can thank modern science for this genetic time bomb. A botched effort to create a perfect race has left all males with a lifespan of 25 years, and females with a lifespan of 20 years. Geneticists are seeking a miracle antidote to restore the human race, desperate orphans crowd the population, crime and poverty have skyrocketed, and young girls are being kidnapped and sold as polygamous brides to bear more children.

When Rhine is kidnapped and sold as a bride, she vows to do all she can to escape. Her husband, Linden, is hopelessly in love with her, and Rhine can''t bring herself to hate him as much as she''d like to. He opens her to a magical world of wealth and illusion she never thought existed, and it almost makes it possible to ignore the clock ticking away her short life. But Rhine quickly learns that not everything in her new husband''s strange world is what it seems. Her father-in-law, an eccentric doctor bent on finding the antidote, is hoarding corpses in the basement. Her fellow sister wives are to be trusted one day and feared the next, and Rhine is desperate to communicate to her twin brother that she is safe and alive. Will Rhine be able to escape--before her time runs out?

Together with one of Linden''s servants, Gabriel, Rhine attempts to escape just before her seventeenth birthday. But in a world that continues to spiral into anarchy, is there any hope for freedom? (less)', 1),
	(127, 'Moloka''i', 'Alan Brennert', 405, 739, 'English', '2004-10-04', NULL, 'Moloka''i #1', 'covers/cover128.png', 'Set in Hawai''i more than a century ago, this is the story of Rachel Kalama, a spirited seven-year-old Hawaiian girl, who dreams of visiting far-off lands like her father, a merchant seaman. Then one day a rose-colored mark appears on her skin, and those dreams are stolen from her. Taken from her home and family, Rachel is sent to Kalaupapa, the quarantined leprosy settlement on the island of Moloka''i. Here her life is supposed to end---but instead she discovers it is only just beginning. (less)', 1),
	(128, 'Messenger', 'Lois Lowry', 169, 1853, 'English', '2006-08-22', NULL, 'The Giver  #3', 'covers/cover129.png', 'Messenger is the masterful third novel in the Giver Quartet, which began with the dystopian bestseller The Giver, now a major motion picture.
 
Matty has lived in Village and flourished under the guidance of Seer, a blind man known for his special sight. Village once welcomed newcomers, but something sinister has seeped into Village and the people have voted to close it to outsiders. Matty has been invaluable as a messenger. Now he must risk everything to make one last journey through the treacherous forest with his only weapon, a power he unexpectedly discovers within himself. (less)', 1),
	(129, 'The Light Fantastic', 'Terry Pratchett', 277, 3105, 'English', '2000-02-02', NULL, 'Discworld #2', 'covers/cover130.png', 'In The Light Fantastic only one individual can save the world from a disastrous collision. Unfortunately, the hero happens to be the singularly inept wizard Rincewind, who was last seen falling off the edge of the world...', 1),
	(130, 'The Sense of an Ending', 'Julian Barnes', 150, 2451, 'English', '2011-08-04', NULL, NULL, 'covers/cover131.png', 'By an acclaimed writer at the height of his powers, The Sense of an Ending extends a streak of extraordinary books that began with the best-selling Arthur & George and continued with Nothing to Be Frightened Of and, most recently, Pulse.

This intense novel follows a middle-aged man as he contends with a past he has never much thought about - until his closest childhood friends return with a vengeance, one of them from the grave, another maddeningly present. Tony Webster thought he''d left all this behind as he built a life for himself, and by now his marriage and family and career have fallen into an amicable divorce and retirement. But he is then presented with a mysterious legacy that obliges him to reconsider a variety of things he thought he''d understood all along, and to revise his estimation of his own nature and place in the world.

A novel so compelling that it begs to be read in a single sitting, with stunning psychological and emotional depth and sophistication, The Sense of an Ending is a brilliant new chapter in Julian Barnes''s oeuvre. (less)', 1),
	(131, 'The Mysterious Affair at Styles', 'Agatha Christie', 121, 5806, 'English', '2002-10-21', NULL, 'Hercule Poirot #1', 'covers/cover132.png', 'Agatha Christie''s debut novel was the first to feature Hercule Poirot, her famously eccentric Belgian detective.

A refugee of the Great War, Poirot is settling in England near Styles Court, the country estate of his wealthy benefactor, the elderly Emily Inglethorp. When Emily is poisoned and the authorities are baffled, Poirot puts his prodigious sleuthing skills to work. Suspects are plentiful, including the victim’s much younger husband, her resentful stepsons, her longtime hired companion, a young family friend working as a nurse, and a London specialist on poisons who just happens to be visiting the nearby village.

All of them have secrets they are desperate to keep, but none can outwit Poirot as he navigates the ingenious red herrings and plot twists that earned Agatha Christie her well-deserved reputation as the queen of mystery. (less)', 1),
	(132, 'Kiss of Midnight', 'Lara Adrian', 402, 5854, 'English', '2007-05-01', NULL, 'Midnight Breed #1', 'covers/cover133.png', 'He watches her from across the crowded dance club, a sensual black-haired stranger who stirs Gabrielle Maxwell’s deepest fantasies. But nothing about this night—or this man—is what it seems. For when Gabrielle witnesses a murder outside the club, reality shifts into something dark and deadly. In that shattering instant she is thrust into a realm she never knew existed—a realm where vampires stalk the shadows and a blood war is set to ignite.

Lucan Thorne despises the violence carried out by his lawless brethren. A vampire himself, Lucan is a Breed warrior, sworn to protect his kind—and the unwitting humans existing alongside them—from the mounting threat of the Rogues. Lucan cannot risk binding himself to a mortal woman, but when Gabrielle is targeted by his enemies, he has no choice but to bring her into the dark underworld he commands.

Here, in the arms of the Breed’s formidable leader, Gabrielle will confront an extraordinary destiny of danger, seduction, and the darkest pleasures of all. . . . (less)', 1),
	(133, 'Ascend', 'Amanda Hocking', 326, 1507, 'English', '2012-04-24', NULL, 'Trylle #3', 'covers/cover134.png', 'Wendy Everly is facing an impossible choice. The only way to save the Trylle from their deadliest enemy is by sacrificing herself.  If she doesn''t surrender to the Vittra, her people will be thrust into a brutal war against an unbeatable foe.  But how can Wendy leave all her friends behind... even if it’s the only way to save them?

The stakes have never been higher, because her kingdom isn''t the only thing she stands to lose. After falling for both Finn and Loki, she’s about to make the ultimate choice... who to love forever. One guy has finally proven to be the love of her life—and now all their lives might be coming to an end. 

Everything has been leading to this moment.  The future of her entire world rests in her hands—if she’s ready to fight for it. (less)', 1),
	(134, 'Rebel Angels', 'Libba Bray', 548, 1611, 'English', '2006-12-26', NULL, 'Gemma Doyle #2', 'covers/cover135.png', 'Ah, Christmas! Gemma Doyle is looking forward to a holiday from Spence Academy, spending time with her friends in the city, attending ritzy balls, and on a somber note, tending to her ailing father. As she prepares to ring in the New Year, 1896, a handsome young man, Lord Denby, has set his sights on Gemma, or so it seems. Yet amidst the distractions of London, Gemma’s visions intensify–visions of three girls dressed in white, to whom something horrific has happened, something only the realms can explain...

The lure is strong, and before long, Gemma, Felicity, and Ann are turning flowers into butterflies in the enchanted world of the realms that Gemma alone can bring them to. To the girls’ great joy, their beloved Pippa is there as well, eager to complete their circle of friendship.

But all is not well in the realms–or out. The mysterious Kartik has reappeared, telling Gemma she must find the Temple and bind the magic, else great disaster will befall her. Gemma’s willing to do his intrusive bidding, despite the dangers it brings, for it means she will meet up with her mother’s greatest friend–and now her foe, Circe. Until Circe is destroyed, Gemma cannot live out her destiny. But finding Circe proves a most perilous task. (less)', 1),
	(135, 'Some Girls Bite', 'Chloe Neill', 341, 1886, 'English', '2009-04-07', NULL, 'Chicagoland Vampires #1', 'covers/cover136.png', 'They killed me. They healed me. They changed me.

Sure, the life of a graduate student wasn’t exactly glamorous, but it was Merit’s. She was doing fine until a rogue vampire attacked her. But he only got a sip before he was scared away by another bloodsucker–and this one decided the best way to save her life was to make her the walking undead.

Turns out her savior was the master vampire of Cadogan House. Now she’s traded sweating over her thesis for learning to fit in at a Hyde Park mansion full of vamps loyal to Ethan Sullivan. Of course, as a tall, green-eyed, four-hundred-year-old vampire, he has centuries’ worth of charm, but unfortunately, he expects her gratitude–and servitude.

But an inconvenient sunlight allergy and Ethan’s attitude are the least of her concerns. Someone’s still out to get her. Her initiation into Chicago’s nightlife may be the first skirmish in a war–and there will be blood. (less)', 1),
	(136, 'Salt to the Sea', 'Ruta Sepetys', 391, 4596, 'English', '2016-02-02', NULL, NULL, 'covers/cover137.png', 'While the Titanic and Lusitania are both well-documented disasters, the single greatest tragedy in maritime history is the little-known January 30, 1945 sinking in the Baltic Sea by a Soviet submarine of the Wilhelm Gustloff, a German cruise liner that was supposed to ferry wartime personnel and refugees to safety from the advancing Red Army. The ship was overcrowded with more than 10,500 passengers — the intended capacity was approximately 1,800 — and more than 9,000 people, including 5,000 children, lost their lives.

Sepetys (writer of ''Between Shades of Gray'') crafts four fictionalized but historically accurate voices to convey the real-life tragedy. Joana, a Lithuanian with nursing experience; Florian, a Prussian soldier fleeing the Nazis with stolen treasure; and Emilia, a Polish girl close to the end of her pregnancy, converge on their escape journeys as Russian troops advance; each will eventually meet Albert, a Nazi peon with delusions of grandeur, assigned to the Gustloff decks. (less)', 1),
	(137, 'The Wrath and the Dawn', 'Renée Ahdieh', 404, 505, 'English', '2015-05-12', NULL, 'The Wrath and the Dawn #1', 'covers/cover138.png', 'One Life to One Dawn.

In a land ruled by a murderous boy-king, each dawn brings heartache to a new family. Khalid, the eighteen-year-old Caliph of Khorasan, is a monster. Each night he takes a new bride only to have a silk cord wrapped around her throat come morning. When sixteen-year-old Shahrzad''s dearest friend falls victim to Khalid, Shahrzad vows vengeance and volunteers to be his next bride. Shahrzad is determined not only to stay alive, but to end the caliph''s reign of terror once and for all.

Night after night, Shahrzad beguiles Khalid, weaving stories that enchant, ensuring her survival, though she knows each dawn could be her last. But something she never expected begins to happen: Khalid is nothing like what she''d imagined him to be. This monster is a boy with a tormented heart. Incredibly, Shahrzad finds herself falling in love. How is this possible? It''s an unforgivable betrayal. Still, Shahrzad has come to understand all is not as it seems in this palace of marble and stone. She resolves to uncover whatever secrets lurk and, despite her love, be ready to take Khalid''s life as retribution for the many lives he''s stolen. Can their love survive this world of stories and secrets? (less)', 1),
	(138, 'After', 'Anna Todd', 582, 2942, 'English', '2014-10-21', NULL, 'After #1', 'covers/cover139.png', 'Tessa is a good girl with a sweet, reliable boyfriend back home. She’s got direction, ambition, and a mother who’s intent on keeping her that way.

But she’s barely moved into her freshman dorm when she runs into Hardin. With his tousled brown hair, cocky British accent, tattoos, and lip ring, Hardin is cute and different from what she’s used to.

But he’s also rude—to the point of cruelty, even. For all his attitude, Tessa should hate Hardin. And she does—until she finds herself alone with him in his room. Something about his dark mood grabs her, and when they kiss it ignites within her a passion she’s never known before.

He’ll call her beautiful, then insist he isn''t the one for her and disappear again and again. Despite the reckless way he treats her, Tessa is compelled to dig deeper and find the real Hardin beneath all his lies. He pushes her away again and again, yet every time she pushes back, he only pulls her in deeper.

Tessa already has the perfect boyfriend. So why is she trying so hard to overcome her own hurt pride and Hardin’s prejudice about nice girls like her?

Unless…could this be love?

Now newly revised and expanded, Anna Todd’s After fanfiction racked up 1 billion reads online and captivated readers across the globe. Experience the Internet’s most talked-about book for yourself!

There was the time before Tessa met Hardin, and then there’s everything AFTER ... Life will never be the same. (less)', 1),
	(139, 'Flatland: A Romance of Many Dimensions', 'Edwin A. Abbott', 96, 4759, 'English', '1992-09-21', NULL, NULL, 'covers/cover140.png', 'This masterpiece of science (and mathematical) fiction is a delightfully unique and highly entertaining satire that has charmed readers for more than 100 years. The work of English clergyman, educator and Shakespearean scholar Edwin A. Abbott (1838-1926), it describes the journeys of A. Square [sic – ed.], a mathematician and resident of the two-dimensional Flatland, where women-thin, straight lines-are the lowliest of shapes, and where men may have any number of sides, depending on their social status.
Through strange occurrences that bring him into contact with a host of geometric forms, Square has adventures in Spaceland (three dimensions), Lineland (one dimension) and Pointland (no dimensions) and ultimately entertains thoughts of visiting a land of four dimensions—a revolutionary idea for which he is returned to his two-dimensional world. Charmingly illustrated by the author, Flatland is not only fascinating reading, it is still a first-rate fictional introduction to the concept of the multiple dimensions of space. "Instructive, entertaining, and stimulating to the imagination." — Mathematics Teacher. (less)', 1),
	(140, 'The Ultimate Religion', 'Gillian Dance', 319, 298, 'English', '2019-07-01', NULL, NULL, 'covers/cover141.png', 'Megan grew up in care and suffered all kinds of abuse, then struggled in adulthood to build a normal life

Hampered by her differences and lack of identity, Megan was lured into the embrace of a fundamentalist Christian group.

Attracted to the church because of her desire to know God and the warmth and inclusivity of the members, their promise of answers and healing, backed up by their deeper than usual knowledge of the bible, Megan experienced genuine miracles and love.

But alongside the religious fanaticism came the cunning, gradual introduction of social control, flagrant sexism and violence.

An engrossing read, inspired by real-life events, investigating topics such as abuse, terminal illness, sexuality and gender roles in relation to faith. A story of the making and breaking of convictions and loyalties and the quest for actual truth.

Quoting biblical scriptures to illuminate the characters’ mindsets, this book will resonate powerfully with those who have experience of such ''churches'' or who wish to understand the mentality of people who lead and join such organisations. (less)', 1),
	(141, 'Oathbringer', 'Brandon Sanderson', 1248, 2642, 'English', '2017-11-14', NULL, 'The Stormlight Archive #3', 'covers/cover142.png', 'In Oathbringer, the third volume of the New York Times bestselling Stormlight Archive, humanity faces a new Desolation with the return of the Voidbringers, a foe with numbers as great as their thirst for vengeance.

Dalinar Kholin''s Alethi armies won a fleeting victory at a terrible cost: The enemy Parshendi summoned the violent Everstorm, which now sweeps the world with destruction, and in its passing awakens the once peaceful and subservient parshmen to the horror of their millennia-long enslavement by humans. While on a desperate flight to warn his family of the threat, Kaladin Stormblessed must come to grips with the fact that the newly kindled anger of the parshmen may be wholly justified.

Nestled in the mountains high above the storms, in the tower city of Urithiru, Shallan Davar investigates the wonders of the ancient stronghold of the Knights Radiant and unearths dark secrets lurking in its depths. And Dalinar realizes that his holy mission to unite his homeland of Alethkar was too narrow in scope. Unless all the nations of Roshar can put aside Dalinar''s blood-soaked past and stand together--and unless Dalinar himself can confront that past--even the restoration of the Knights Radiant will not prevent the end of civilization. (less)', 1),
	(142, 'My Life Next Door', 'Huntley Fitzpatrick', 394, 632, 'English', '2012-06-14', NULL, NULL, 'covers/cover143.png', '"One thing my mother never knew, and would disapprove of most of all, was that I watched the Garretts. All the time."

The Garretts are everything the Reeds are not. Loud, messy, affectionate. And every day from her rooftop perch, Samantha Reed wishes she was one of them . . . until one summer evening, Jase Garrett climbs up next to her and changes everything.

As the two fall fiercely for each other, stumbling through the awkwardness and awesomeness of first love, Jase''s family embraces Samantha - even as she keeps him a secret from her own. Then something unthinkable happens, and the bottom drops out of Samantha''s world. She''s suddenly faced with an impossible decision. Which perfect family will save her? Or is it time she saved herself?

A transporting debut about family, friendship, first romance, and how to be true to one person you love without betraying another. (less)', 1),
	(143, 'The Sword of Summer', 'Rick Riordan', 499, 66, 'English', '2015-10-06', NULL, 'Magnus Chase and the Gods of Asgard #1', 'covers/cover144.png', 'Magnus Chase has seen his share of trouble. Ever since that terrible night two years ago when his mother told him to run, he has lived alone on the streets of Boston, surviving by his wits, staying one step ahead of the police and the truant officers.

One day, Magnus learns that someone else is trying to track him down—his uncle Randolph, a man his mother had always warned him about. When Magnus tries to outmaneuver his uncle, he falls right into his clutches. Randolph starts rambling about Norse history and Magnus''s birthright: a weapon that has been lost for thousands of years.

The more Randolph talks, the more puzzle pieces fall into place. Stories about the gods of Asgard, wolves, and Doomsday bubble up from Magnus''s memory. But he doesn''t have time to consider it all before a fire giant attacks the city, forcing him to choose between his own safety and the lives of hundreds of innocents. . . .

Sometimes, the only way to start a new life is to die. (less)', 1),
	(144, 'Before I Die', 'Jenny Downham', 336, 101, 'English', '2007-07-05', NULL, NULL, 'covers/cover145.png', 'The story of Tessa, a young teenage girl who has only months to live ... a brilliantly crafted novel, heartbreaking yet life-affirming.

Tessa has just months to live. Fighting back against hospital visits, endless tests, drugs with excruciating side-effects, Tessa compiles a list. It’s her To Do Before I Die list. And number one is Sex. Released from the constraints of ‘normal’ life, Tessa tastes new experiences to make her feel alive while her failing body struggles to keep up. Tessa’s feelings, her relationships with her father and brother, her estranged mother, her best friend, and her new boyfriend, all are painfully crystallised in the precious weeks before Tessa’s time finally runs out. (less)', 1),
	(145, 'The Magicians', 'Lev Grossman', 402, 5506, 'English', '2009-08-11', NULL, 'The Magicians #1', 'covers/cover146.png', 'A thrilling and original coming-of-age novel for adults about a young man practicing magic in the real world.

Quentin Coldwater is brilliant but miserable. A senior in high school, he’s still secretly preoccupied with a series of fantasy novels he read as a child, set in a magical land called Fillory. Imagine his surprise when he finds himself unexpectedly admitted to a very secret, very exclusive college of magic in upstate New York, where he receives a thorough and rigorous education in the craft of modern sorcery.

He also discovers all the other things people learn in college: friendship, love, sex, booze, and boredom. Something is missing, though. Magic doesn’t bring Quentin the happiness and adventure he dreamed it would. After graduation he and his friends make a stunning discovery: Fillory is real. But the land of Quentin’s fantasies turns out to be much darker and more dangerous than he could have imagined. His childhood dream becomes a nightmare with a shocking truth at its heart.

At once psychologically piercing and magnificently absorbing, The Magicians boldly moves into uncharted literary territory, imagining magic as practiced by real people, with their capricious desires and volatile emotions. Lev Grossman creates an utterly original world in which good and evil aren’t black and white, love and sex aren’t simple or innocent, and power comes at a terrible price. (less)', 1),
	(146, 'Silver Borne', 'Patricia Briggs', 342, 928, 'English', '2010-03-30', NULL, 'Mercy Thompson #5', 'covers/cover147.png', 'Mercy Thompson, car mechanic and shapeshifter, never knows what the day - or night - may bring in a world where "witches, vampires, werewolves, and shapeshifters live beside ordinary people" (Booklist). But she is about to learn that while some secrets are dangerous whose who seek them are just plain deadly...

Mercy is smart enough to realize that when it comes to the magical fae, the less you know, the better. But you can''t always get what you want. When she attempts to return a powerful fae she previously borrowed in an act of desperation, she finds the bookstore locked up and closed down.

It seems the book contains secrets - and the fae will do just about anything to keep it out of the wrong hands. And if that doesn''t take enough of Mercy''s attention, her friend Samuel is struggling with his wolf side - leaving Mercy to cover for him lest his own father declare Samuel''s life forfeit.

All in all, Mercy has had better days. And if she isn''t careful, she may not have many more... (less)', 1),
	(147, 'Coma', 'Robin Cook', 384, 4437, 'English', '2014-09-23', NULL, NULL, 'covers/cover148.png', 'The blockbuster bestseller that kickstarted a new genre--the medical thriller--is now available in trade paperback for the first time.

They called it "minor surgery," but Nancy Greenly, Sean Berman and a dozen others--all admitted to Boston Memorial Hospital for routine procedures--were victims of the same inexplicable, hideous tragedy on the operating table. They never woke up.


Susan Wheeler is a third-year medical student working as a trainee at Boston Memorial Hospital. Two patients during her residency mysteriously go into comas immediately after their operations due to complications from anesthesia. Susan begins to investigate the causes behind both of these alarming comas and discovers the oxygen line in Operating Room 8 has been tampered with to induce carbon monoxide poisoning.


Then Susan discovers the evil nature of the Jefferson Institute, an intensive care facility where patients are suspended from the ceiling and kept alive until they can be harvested for healthy organs. Is she a participant in--or a victim of--a large-scale black market dealing in human organs? (less)', 1),
	(148, 'Ringworld', 'Larry Niven', 288, 1762, 'English', '2005-06-09', NULL, 'Ringworld #1', 'covers/cover149.png', 'The artefact is a circular ribbon of matter six hundred million miles long and ninety million miles in radius. Pierson''s puppeteers, the aliens who discovered it, are understandably wary of encountering the builders of such an immense structure and have assembled a team of two humans, a mad puppeteer and a kzin, a huge cat-like alien, to explore it. But a crash landing on the vast edifice forces the crew on a desperate and dangerous trek across the Ringworld. (less)', 1),
	(149, 'Book of a Thousand Days', 'Shannon Hale', 306, 5176, 'English', '2007-09-01', NULL, NULL, 'covers/cover150.png', 'When Dashti, a maid, and Lady Saren, her mistress, are shut in a tower for seven years because of Saren''s refusal to marry a man she despises, the two prepare for a very long and dark imprisonment.

As food runs low and the days go from broiling hot to freezing cold, it is all Dashti can do to keep them fed and comfortable. With the arrival outside the tower of Saren''s two suitors--one welcome, the other decidedly less so--the girls are confronted with both hope and great danger, and Dashti must make the desperate choices of a girl whose life is worth more than she knows.

With Shannon Hale''s lyrical language, this little-known classic fairy tale from the Brothers Grimm is reimagined and reset on the central Asian steppes; it is a completely unique retelling filled with adventure and romance, drama and disguise. (less)', 1),
	(150, 'Reason to Breathe', 'Rebecca    Donovan', 377, 5376, 'English', '2011-05-10', NULL, 'Breathing #1', 'covers/cover151.png', '"No one tried to get involved with me, and I kept to myself. This was the place where everything was supposed to be safe and easy. How could Evan Mathews unravel my constant universe in just one day?"

In the affluent town of Weslyn, Connecticut, where most people worry about what to be seen in and who to be seen with, Emma Thomas would rather not be seen at all. She’s more concerned with feigning perfection while pulling down her sleeves to conceal the bruises - not wanting anyone to know how far from perfect her life truly is. Without expecting it, she finds love. It challenges her to recognize her own worth - but at the risk of revealing the terrible secret she’s desperate to hide.

Reason to Breathe is an electrifying page turner from start to finish, a unique tale of life-changing love, unspeakable cruelty, and one girl’s fragile grasp of hope. (less)', 1),
	(151, 'The Vampire Armand', 'Anne Rice', 457, 655, 'English', '2000-10-03', NULL, 'The Vampire Chronicles #6', 'covers/cover152.png', 'In the latest installment of The Vampire Chronicles, Anne Rice summons up dazzling worlds to bring us the story of Armand - eternally young, with the face of a Botticelli angel. Armand, who first appeared in all his dark glory more than twenty years ago in the now-classic Interview with the Vampire, the first of The Vampire Chronicles, the novel that established its author worldwide as a magnificent storyteller and creator of magical realms.

Now, we go with Armand across the centuries to the Kiev Rus of his boyhood - a ruined city under Mongol dominion - and to ancient Constantinople, where Tartar raiders sell him into slavery. And in a magnificent palazzo in the Venice of the Renaissance we see him emotionally and intellectually in thrall to the great vampire Marius, who masquerades among humankind as a mysterious, reclusive painter and who will bestow upon Armand the gift of vampiric blood. As the novel races to its climax, moving through scenes of luxury and elegance, of ambush, fire, and devil worship to nineteenth-century Paris and today''s New Orleans, we see its eternally vulnerable and romantic hero forced to choose between his twilight immortality and the salvation of his immortal soul. (less)', 1),
	(152, 'Abhorsen', 'Garth Nix', 358, 1961, 'English', '2003-01-07', NULL, 'Abhorsen #3', 'covers/cover153.png', 'The Ninth was strong and fought with might
But lone Orannis was put out of the light
Broken in two and buried under hill
Forever to lie there, wishing us ill.

So says the song. But Orannis, the Destroyer, is no longer buried under hill. It has been freed from its subterranean prison and now seeks to escape the silver hemispheres, the final barrier to the unleashing of its terrible powers.

Only Lirael, newly come into her inheritance as the Abhorsen-in-Waiting, has any chance of stopping the Destroyer. She and her companions -- Sam, the Disreputable Dog, and Mogget -- have to take that chance. For the Destroyer is the enemy of all Life, and it must be stopped, though Lirael does not know how.

To make matters worse, Sam''s best friend, Nick, is helping the Destroyer, as are the necromancer Hedge and the Greater Dead Chlorr, and there has been no word from the Abhorsen Sabriel or King Touchstone.

Everything depends upon Lirael. A heavy, perhaps even impossible burden for a young woman who just days ago was merely a Second Assistant Librarian. With only a vision from the Clayr to guide her, and the rather mixed help of her companions, Lirael must search in both Life and Death for some means to defeat the Destroyer.

Before it is too late. . . . (less)', 1),
	(153, 'Suite Française', 'Irène Némirovsky', 431, 3024, 'English', '2007-04-10', NULL, NULL, 'covers/cover154.png', 'The first two stories of a masterwork once thought lost, written by a pre-WWII bestselling author who was deported to Auschwitz and died before her work could be completed.

By the early l940s, when Ukrainian-born Irène Némirovsky began working on what would become Suite Française—the first two parts of a planned five-part novel—she was already a highly successful writer living in Paris. But she was also a Jew, and in 1942 she was arrested and deported to Auschwitz: a month later she was dead at the age of thirty-nine. Two years earlier, living in a small village in central France—where she, her husband, and their two small daughters had fled in a vain attempt to elude the Nazis—she''d begun her novel, a luminous portrayal of a human drama in which she herself would become a victim. When she was arrested, she had completed two parts of the epic, the handwritten manuscripts of which were hidden in a suitcase that her daughters would take with them into hiding and eventually into freedom. Sixty-four years later, at long last, we can read Némirovsky''s literary masterpiece

The first part, "A Storm in June," opens in the chaos of the massive 1940 exodus from Paris on the eve of the Nazi invasion during which several families and individuals are thrown together under circumstances beyond their control. They share nothing but the harsh demands of survival—some trying to maintain lives of privilege, others struggling simply to preserve their lives—but soon, all together, they will be forced to face the awful exigencies of physical and emotional displacement, and the annihilation of the world they know. In the second part, "Dolce," we enter the increasingly complex life of a German-occupied provincial village. Coexisting uneasily with the soldiers billeted among them, the villagers—from aristocrats to shopkeepers to peasants—cope as best they can. Some choose resistance, others collaboration, and as their community is transformed by these acts, the lives of these these men and women reveal nothing less than the very essence of humanity.

Suite Française is a singularly piercing evocation—at once subtle and severe, deeply compassionate, and fiercely ironic—of life and death in occupied France, and a brilliant, profoundly moving work of art. (less)', 1),
	(154, 'Identical', 'Ellen Hopkins', 565, 1288, 'English', '2008-08-26', NULL, NULL, 'covers/cover155.png', 'Do twins begin in the womb?
Or in a better place?

Kaeleigh and Raeanne are identical down to the dimple. As daughters of a district-court judge father and a politician mother, they are an all-American family—on the surface. Behind the facade each sister has her own dark secret, and that''s where their differences begin.

For Kaeleigh, she''s the misplaced focus of Daddy''s love, intended for a mother whose presence on the campaign trail means absence at home. All that Raeanne sees is Daddy playing a game of favorites—and she is losing. If she has to lose, she will do it on her own terms, so she chooses drugs, alcohol, and sex.

Secrets like the ones the twins are harboring are not meant to be kept—from each other or anyone else. Pretty soon it''s obvious that neither sister can handle it alone, and one sister must step up to save the other, but the question is—who? (less)', 1),
	(155, 'The Bridge on the Drina', 'Ivo Andric', 314, 1778, 'English', '1977-01-01', NULL, 'Bosnian Trilogy #1', 'covers/cover156.png', 'A vivid depiction of the suffering history has imposed upon the people of Bosnia from the late sixteenth century to the beginning of World War I, The Bridge on the Drina earned Ivo Andric the Nobel Prize for Literature in 1961.

A great stone bridge built three centuries ago in the heart of the Balkans by a Grand Vezir of the Ottoman Empire dominates the setting of Andric''s stunning novel. Spanning generations, nationalities, and creeds, the bridge stands witness to the countless lives played out upon it: Radisav, the workman, who tries to hinder its construction and is impaled on its highest point; to the lovely Fata, who throws herself from its parapet to escape a loveless marriage; to Milan, the gambler, who risks everything in one last game on the bridge with the devil his opponent; to Fedun, the young soldier, who pays for a moment of spring forgetfulness with his life. War finally destroys the span, and with it the last descendant of that family to which the Grand Vezir confided the care of his pious bequest - the bridge. (less)', 1),
	(156, 'The Year of the Flood', 'Margaret Atwood', 431, 4747, 'English', NULL, NULL, 'MaddAddam #2', 'covers/cover157.png', 'The times and species have been changing at a rapid rate, and the social compact is wearing as thin as environmental stability. Adam One, the kindly leader of the God''s Gardeners--a religion devoted to the melding of science and religion, as well as the preservation of all plant and animal life--has long predicted a natural disaster that will alter Earth as we know it. Now it has occurred, obliterating most human life. Two women have survived: Ren, a young trapeze dancer locked inside the high-end sex club Scales and Tails, and Toby, a God''s Gardener barricaded inside a luxurious spa where many of the treatments are edible.

Have others survived? Ren''s bioartist friend Amanda? Zeb, her eco-fighter stepfather? Her onetime lover, Jimmy? Or the murderous Painballers, survivors of the mutual-elimination Painball prison? Not to mention the shadowy, corrupt policing force of the ruling powers...

Meanwhile, gene-spliced life forms are proliferating: the lion/lamb blends, the Mo''hair sheep with human hair, the pigs with human brain tissue. As Adam One and his intrepid hemp-clad band make their way through this strange new world, Ren and Toby will have to decide on their next move. They can''t stay locked away...

By turns dark, tender, violent, thoughtful, and uneasily hilarious, "The Year of the Flood" is Atwood at her most brilliant and inventive. (less)', 1),
	(157, 'Don''t Close Your Eyes', 'Lynessa James', 326, 1312, 'English', '2020-06-29', NULL, 'Don''t Close Your Eyes #1', 'covers/cover158.png', 'An enemies to lovers series begins.

Bartender, beach bunny and college track star known as Micro Machine, Kinsley Hayes most pressing priorities are having the lowest times on the stopwatch and choosing between internship before graduation.
An encounter with a dicey stranger jolts Kinsley into the real world while she''s left mystified by her magnetism to the edgy rogue.
Who is he? Will she ever see him again?

Klive King reappears in Kinsley''s life as a secret admirer, tempting and teasing, rekindling their irresistible love-hate chemistry at the same time as her high school crush home from war, Jase Taylor, reveals his repressed longing to be more than friends.

What''s a girl to do?

When nefarious biker gang, Inferno, set their sights on the wrong girl, Kinsley inadvertently draws both Klive and Jase into a battle to protect her while also dueling for her heart.

Set in the tropical locales of Florida, this dual POV suspenseful romance follows Klive, Kinsley and Jase into the beginning of their tumultuous love triangle and perilous conflicts between good, evil, love, hate and the bounds they break when pushed to their limits. (less)', 1),
	(158, 'The Runaway Bunny', 'Margaret Wise Brown', 48, 2901, 'English', '2017-01-24', NULL, 'Over the Moon #1', 'covers/cover159.png', 'A little bunny keeps running away from his mother in an imaginative and imaginary game of verbal hide-and-seek; children will be profoundly comforted by this lovingly steadfast mother who finds her child every time.

The Runaway Bunny, first published in 1942 and never out of print, has indeed become a classic. Generations of readers have fallen in love with the gentle magic of its reassuring words and loving pictures. (less)', 1),
	(159, 'A Modest Proposal and Other Satirical Works', 'Jonathan Swift', 64, 343, 'English', '1996-02-02', NULL, NULL, 'covers/cover160.png', 'The originality, concentrated power and ‘fierce indignation’ of his satirical writing have earned Jonathan Swift a reputation as the greatest prose satirist in English literature. Gulliver’s Travels is, of course, his world renowned masterpiece in the genre; however, Swift wrote other, shorter works that also offer excellent evidence of his inspired lampoonery. Perhaps the most famous of these is A Modest Proposal, in which he straight-facedly suggests that Ireland could solve its hunger problems by using its children for food. Also included in this collection are The Battle of Books, A Meditation upon a Broomstick, A Discourse Concerning the Mechanical Operations of the Spirit and An Argument Against Abolishing Christianity in England.
This inexpensive edition will certainly be welcomed by teachers and students of English literature, but its appeal extends to any reader who delights in watching a master satirist wield words as weapons. (less)', 1),
	(160, 'JOURNEY TO THE WEST: A Long March from Eastern Dream to Western Reality', 'Biao  Wang', NULL, 5960, 'English', '2020-12-22', NULL, NULL, 'covers/cover161.png', 'Biao Wang''s memoir ''JOURNEY TO THE WEST'' is a fascinating account of the passage of a poor boy from a small, impoverished rural Chinese village to a brilliant, international commercial career and will read as a truly inspiring example of what can be achieved from the least promising background through determination and imagination.

A potted history of modern China leads seamlessly into the story of a young man who, with a combination of remarkable foresight, dedication and courage, has built several successful businesses and established himself at a remarkably young age as a leader in international commercial co-operation.

Here is somebody who has grasped life eagerly, and what his buoyant tale demonstrates is the importance of seeing opportunity and unhesitatingly pursuing it; the story bursts with energy and practical wisdom without any sense of self-importance, whilst taking us stage by stage through Biao''s interesting life. From his relatively carefree, if impoverished, childhood in a small village, he takes us, unhurriedly through his education and early struggles, to his great leap forward when he bravely sets out for the unknown world of England, determined to immerse himself in its culture rather than retreating into the comfortable familiarity of his compatriots, seizing opportunities as they arise, always aware of his place in the wider scheme of things.

The narrative offers an intriguing picture of life in contemporary China, and on the way explains much about the Chinese character and attitudes. His insights into what makes for success are almost incidental as we follow his journey from grinding poverty to commercial achievement. Those from similar backgrounds in any part of the world can take courage from this eloquent account of the power of determination; readers anywhere can share in his infectious enthusiasm for life and all the opportunities it offers.

“JOURNEY TO THE WEST” is also a timely reminder, at a time when the emerging power of China is seen as a threat to the West, that we are all one species, with the same needs and desires, as through his storytelling Biao Wang gives China and the Chinese a human face.

“JOURNEY TO THE WEST” is a cultural bridge as well as a thoroughly enjoyable and absorbing read.

As Biao Wang most eloquently says “having travelled the world and witnessed many inequalities and the problems such different starting blocks can bring, if I’ve learned anything, it is that success is always possible, whatever your situation and however your life begins.”

So, fasten your seat belts and take note as you travel from one extraordinary chapter to another – it should be an inspiration to us all. (less)', 1),
	(161, '2666', 'Roberto Bolaño', 1128, 3064, 'Spanish', '2004-10-01', NULL, '2666 #1-5', 'covers/cover162.png', 'A cuatro profesores de literatura, Pelletier, Morini, Espinoza y Norton, los une su fascinación por la obra de Beno von Archimboldi, un enigmático escritor alemán cuyo prestigio crece en todo el mundo. La complicidad se vuelve vodevil intelectual y desemboca en un peregrinaje a Santa Teresa (trasunto de Ciudad Juárez), donde hay quien dice que Archimboldi ha sido visto. Ya allí, Pelletier y Espinoza se enteran de que la ciudad es desde años atrás escenario de una larga cadena de crímenes: en los vertederos aparecen cadáveres de mujeres con señales de haber sido violadas y torturadas. Es el primer asomo de la novela a sus procelosos caudales, repletos de personajes memorables cuyas historias, a caballo entre la risa y el horror, abarcan dos continentes e incluyen un vertiginoso travelling por la historia europea del siglo XX. 2666 confirma el veredicto de Susan Sontag: "el más influyente y admirado novelista en lengua española de su generación. Su muerte, a los cincuenta años, es una gran pérdida para la literatura". (less)', 1),
	(162, 'Tatiana and Alexander', 'Paullina Simons', 559, 514, 'English', '2008-01-01', NULL, 'The Bronze Horseman #2', 'covers/cover163.png', 'Tatiana is eighteen years old, pregnant, and widowed when she escapes war-torn Leningrad to find a new life in America. But the ghosts of her past do not rest easily. She becomes consumed by the belief that her husband, Red Army officer Alexander Belov, is still alive and needs her desperately.

Meanwhile, oceans and continents away in the Soviet Union, Alexander barely escapes execution, and is forced to lead a battalion of soldiers considered expendable by the Soviet high command. Yet Alexander is determined to take his men through the ruins of Europe in one last desperate bid to escape Stalin''s death machine and somehow find his way to Tatiana once again. (less)', 1),
	(163, 'The Black Jewels Trilogy: Daughter of the Blood, Heir to the Shadows, Queen of the Darkness', 'Anne Bishop', 1204, 5943, 'English', '2003-12-02', NULL, 'The Black Jewels #1-3', 'covers/cover164.png', 'Seven hundred years ago, a Black Widow witch saw an ancient prophecy come to life in her web of dreams and visions.

Now the Dark Kingdom readies itself for the arrival of its Queen, a Witch who will wield more power than even the High Lord of Hell himself. But she is still young, still open to influence--and corruption.

Whoever controls the Queen controls the darkness. Three men--sworn enemies--know this. And they know the power that hides behind the blue eyes of an innocent young girl. And so begins a ruthless game of politics and intrigue, magic and betrayal, where the weapons are hate and love--and the prize could be terrible beyond imagining...

--back cover (less)', 1),
	(164, 'Eats, Shoots & Leaves: The Zero Tolerance Approach to Punctuation', 'Lynne Truss', 209, 3104, 'English', '2006-04-01', NULL, NULL, 'covers/cover165.png', 'In Eats, Shoots & Leaves, former editor Lynne Truss, gravely concerned about our current grammatical state, boldly defends proper punctuation. She proclaims, in her delightfully urbane, witty, and very English way, that it is time to look at our commas and semicolons and see them as the wonderful and necessary things they are. Using examples from literature, history, neighborhood signage, and her own imagination, Truss shows how meaning is shaped by commas and apostrophes, and the hilarious consequences of punctuation gone awry.

Featuring a foreword by Frank McCourt, and interspersed with a lively history of punctuation from the invention of the question mark in the time of Charlemagne to George Orwell shunning the semicolon, Eats, Shoots & Leaves makes a powerful case for the preservation of proper punctuation. (less)', 1),
	(165, 'Hard Times', 'Charles Dickens', 353, 2071, 'English', '2003-10-09', NULL, NULL, 'covers/cover166.png', '"My satire is against those who see figures and averages, and nothing else," proclaimed Charles Dickens in explaining the theme of this classic novel. Published in 1854, the story concerns one Thomas Gradgrind, a "fanatic of the demonstrable fact," who raises his children, Tom and Louisa, in a stifling and arid atmosphere of grim practicality.

Without a moral compass to guide them, the children sink into lives of desperation and despair, played out against the grim background of Coketown, a wretched community shadowed by an industrial behemoth. Louisa falls into a loveless marriage with Josiah Bouderby, a vulgar banker, while the unscrupulous Tom, totally lacking in principle, becomes a thief who frames an innocent man for his crime. Witnessing the degradation and downfall of his children, Gradgrind realizes that his own misguided principles have ruined their lives.

Considered Dickens'' harshest indictment of mid-19th-century industrial practices and their dehumanizing effects, this novel offers a fascinating tapestry of Victorian life, filled with the richness of detail, brilliant characterization, and passionate social concern that typify the novelist''s finest creations.

Of Dickens'' work, the eminent Victorian critic John Ruskin had this to say: "He is entirely right in his main drift and purpose in every book he has written; and all of them, but especially Hard Times, should be studied with close and earnest care by persons interested in social questions." (less)', 1),
	(166, 'Out of Africa', 'Isak Dinesen', 401, 5995, 'English', '1992-01-01', NULL, NULL, 'covers/cover167.png', '''Out of Africa'' is Isak Dinesen''s memoir of her years in Africa, from 1914 to 1931, on a four-thousand-acre coffee plantation in the hills near Nairobi. She had come to Kenya from Denmark with her husband, and when they separated she stayed on to manage the farm by herself, visited frequently by her lover, the big-game hunter Denys Finch-Hatton, for whom she would make up stories "like Scheherazade." In Africa, "I learned how to tell tales," she recalled many years later. "The natives have an ear still. I told stories constantly to them, all kinds." Her account of her African adventures, written after she had lost her beloved farm and returned to Denmark, is that of a master storyteller, a woman whom John Updike called "one of the most picturesque and flamboyant literary personalities of the century."

Isak Dinesen (1885-1962_ was born Karen Christence Dinesen in Rungsted, Denmark. She wrote poems, plays, and stories from an early age, including ''Seven Gothic Tales'', ''Winter''s Tales'', ''Last Tales'', ''Anecdotes of Destiny'', ''Shadows on the Grass'' and ''Ebrengard''. ''Out of Africa'' is considered her masterpiece. (less)', 1),
	(167, 'The Reptile Room', 'Lemony Snicket', 192, 3802, 'English', '1999-09-30', NULL, 'A Series of Unfortunate Events #2', 'covers/cover168.png', 'Dear Reader,

If you have picked up this book with the hope of finding a simple and cheery tale, I''m afraid you have picked up the wrong book altogether. The story may seem cheery at first, when the Baudelaire children spend time in the company of some interesting reptiles and a giddy uncle, but don''t be fooled. If you know anything at all about the unlucky Baudelaire children, you already know that even pleasant events lead down the same road to misery.

In fact, within the pages you now hold in your hands, the three siblings endure a car accident, a terrible odor, a deadly serpent, a long knife, a large brass reading lamp, and the appearance of a person they''d hoped never to see again.

I am bound to record these tragic events, but you are free to put this book back on the shelf and seek something lighter.

With all due respect,

Lemony Snicket (less)', 1),
	(168, 'Beyond Good and Evil', 'Friedrich Nietzsche', 240, 2505, 'English', '2003-02-27', NULL, NULL, 'covers/cover169.png', 'Friedrich Nietzsche''s Beyond Good and Evil is translated from the German by R.J. Hollingdale with an introduction by Michael Tanner in Penguin Classics.

Beyond Good and Evil confirmed Nietzsche''s position as the towering European philosopher of his age. The work dramatically rejects the tradition of Western thought with its notions of truth and God, good and evil. Nietzsche demonstrates that the Christian world is steeped in a false piety and infected with a ''slave morality''. With wit and energy, he turns from this critique to a philosophy that celebrates the present and demands that the individual imposes their own ''will to power'' upon the world.

This edition includes a commentary on the text by the translator and Michael Tanner''s introduction, which explains some of the more abstract passages in Beyond Good and Evil.

Frederich Nietzsche (1844-1900) became the chair of classical philology at Basel University at the age of 24 until his bad health forced him to retire in 1879. He divorced himself from society until his final collapse in 1899 when he became insane. A powerfully original thinker, Nietzsche''s influence on subsequent writers, such as George Bernard Shaw, D.H. Lawrence, Thomas Mann and Jean-Paul Sartre, was considerable.

If you enjoyed Beyond Good and Evil you might like Nietzsche''s Thus Spoke Zarathustra, also available in Penguin Classics.

"One of the greatest books of a very great thinker." —Michael Tanner (less)', 1),
	(169, 'Rich Dad, Poor Dad', 'Robert T. Kiyosaki', 195, 689, 'English', '2007-12-01', NULL, 'Rich Dad #1', 'covers/cover170.png', 'Rich Dad Poor Dad is Robert''s story of growing up with two dads — his real father and the father of his best friend, his "rich dad" — and the ways in which both men shaped his thoughts about money and investing. The book explodes the myth that you need to earn a high income to be rich and explains the difference between working for money and having your money work for you. (less)', 1),
	(170, 'The Forest of Hands and Teeth', 'Carrie Ryan', 310, 1334, 'English', '2009-07-01', NULL, 'The Forest of Hands and Teeth #1', 'covers/cover171.png', 'In Mary''s world there are simple truths. The Sisterhood always knows best. The Guardians will protect and serve. The Unconsecrated will never relent. And you must always mind the fence that surrounds the village; the fence that protects the village from the Forest of Hands and Teeth. But, slowly, Mary’s truths are failing her. She’s learning things she never wanted to know about the Sisterhood and its secrets, and the Guardians and their power, and about the Unconsecrated and their relentlessness. When the fence is breached and her world is thrown into chaos, she must choose between her village and her future—between the one she loves and the one who loves her. And she must face the truth about the Forest of Hands and Teeth. Could there be life outside a world surrounded by so much death? (less)', 1),
	(171, 'Soulless', 'Gail Carriger', 357, 3546, 'English', '2009-10-01', NULL, 'Parasol Protectorate #1', 'covers/cover172.png', 'Alexia Tarabotti is laboring under a great many social tribulations.

First, she has no soul. Second, she''s a spinster whose father is both Italian and dead. Third, she was rudely attacked by a vampire, breaking all standards of social etiquette.

Where to go from there? From bad to worse apparently, for Alexia accidentally kills the vampire--and then the appalling Lord Maccon (loud, messy, gorgeous, and werewolf) is sent by Queen Victoria to investigate.

With unexpected vampires appearing and expected vampires disappearing, everyone seems to believe Alexia responsible. Can she figure out what is actually happening to London''s high society? Will her soulless ability to negate supernatural powers prove useful or just plain embarrassing? Finally, who is the real enemy, and do they have treacle tart? (less)', 1),
	(172, 'Island', 'Aldous Huxley', 354, 3385, 'English', '2002-07-30', NULL, NULL, 'covers/cover173.png', 'In Island, his last novel, Huxley transports us to a Pacific island where, for 120 years, an ideal society has flourished. Inevitably, this island of bliss attracts the envy and enmity of the surrounding world. A conspiracy is underway to take over Pala, and events begin to move when an agent of the conspirators, a newspaperman named Faranby, is shipwrecked there. What Faranby doesn''t expect is how his time with the people of Pala will revolutionize all his values and—to his amazement—give him hope. (less)', 1),
	(173, 'Medea', 'Euripides', 59, 3243, 'English', '1993-04-19', NULL, NULL, 'covers/cover174.png', 'One of the most powerful and enduring of Greek tragedies, Medea centers on the myth of Jason, leader of the Argonauts, who has won the dragon-guarded treasure of the Golden Fleece with the help of the sorceress Medea. Having married Medea and fathered her two children, Jason abandons her for a more favorable match, never suspecting the terrible revenge she will take.

Euripides'' masterly portrayal of the motives fiercely driving Medea''s pursuit of vengeance for her husband''s insult and betrayal has held theater audiences spellbound for more than twenty centuries. Rex Warner''s authoritative translation brings this great classic of world literature vividly to life.

Reprint of the John Lane, The Bodley Head Limited, London, 1944 edition. (less)', 1),
	(174, 'Beg For Mercy', 'Lucian Bane', 233, 1773, 'English', '2015-08-17', NULL, 'Mercy #3', 'covers/cover175.png', 'The fight is on in this installment, Mercy is holding nothing back in her endeavor to prove to Sade he can experience love and pleasure. Sade,however has other plans and his darkness is front and center in them.

Meanwhile, Father Abraham is still on the loose with a score to settle with them all and no one is safe from his wrath.

Will love conquer all in this story? Can the heart really be used to recondition the brain? Find out what happens in this Dark Conclusion. (less)', 1),
	(175, 'The Communist Manifesto', 'Karl Marx', 288, 1987, 'English', '2002-06-27', NULL, NULL, 'covers/cover176.png', 'A rousing call to arms whose influence is still felt today

Originally published on the eve of the 1848 European revolutions, The Communist Manifesto is a condensed and incisive account of the worldview Marx and Engels developed during their hectic intellectual and political collaboration. Formulating the principles of dialectical materialism, they believed that labor creates wealth, hence capitalism is exploitive and antithetical to freedom.

This new edition includes an extensive introduction by Gareth Stedman Jones, Britain''s leading expert on Marx and Marxism, providing a complete course for students of The Communist Manifesto, and demonstrating not only the historical importance of the text, but also its place in the world today.

For more than seventy years, Penguin has been the leading publisher of classic literature in the English-speaking world. With more than 1,700 titles, Penguin Classics represents a global bookshelf of the best works throughout history and across genres and disciplines. Readers trust the series to provide authoritative texts enhanced by introductions and notes by distinguished scholars and contemporary authors, as well as up-to-date translations by award-winning translators. (less)', 1),
	(176, 'The Young Elites', 'Marie Lu', 355, 459, 'English', '2014-10-07', NULL, 'The Young Elites #1', 'covers/cover177.png', 'I am tired of being used, hurt, and cast aside.

Adelina Amouteru is a survivor of the blood fever. A decade ago, the deadly illness swept through her nation. Most of the infected perished, while many of the children who survived were left with strange markings. Adelina’s black hair turned silver, her lashes went pale, and now she has only a jagged scar where her left eye once was. Her cruel father believes she is a malfetto, an abomination, ruining their family’s good name and standing in the way of their fortune. But some of the fever’s survivors are rumored to possess more than just scars—they are believed to have mysterious and powerful gifts, and though their identities remain secret, they have come to be called the Young Elites.

Teren Santoro works for the king. As Leader of the Inquisition Axis, it is his job to seek out the Young Elites, to destroy them before they destroy the nation. He believes the Young Elites to be dangerous and vengeful, but it’s Teren who may possess the darkest secret of all.

Enzo Valenciano is a member of the Dagger Society. This secret sect of Young Elites seeks out others like them before the Inquisition Axis can. But when the Daggers find Adelina, they discover someone with powers like they’ve never seen.

Adelina wants to believe Enzo is on her side, and that Teren is the true enemy. But the lives of these three will collide in unexpected ways, as each fights a very different and personal battle. But of one thing they are all certain: Adelina has abilities that shouldn’t belong in this world. A vengeful blackness in her heart. And a desire to destroy all who dare to cross her.

It is my turn to use. My turn to hurt. (less)', 1),
	(177, 'Suttree', 'Cormac McCarthy', 471, 3453, 'English', '1992-05-01', NULL, NULL, 'covers/cover178.png', 'This compelling novel has as its protagonist Cornelius Suttree, living alone and in exile in a disintegrating houseboat on the wrong side of the Tennessee River close by Knoxville. He stays at the edge of an outcast community inhabited by eccentrics, criminals and the poverty-stricken. Rising above the physical and human squalor around him, his detachment and wry humour enable him to survive dereliction and destitution with dignity. (less)', 1),
	(178, 'Smaragdgrün', 'Kerstin Gier', 482, 2270, 'German', '2010-12-08', NULL, 'Edelstein-Trilogie #3', 'covers/cover179.png', 'Gwendolyn ist am Boden zerstört. War Gideons Liebesgeständnis nur eine Farce, um ihrem großen Gegenspieler, dem düsteren Graf von Saint Germain, in die Hände zu spielen? Fast sieht es für die junge Zeitreisende so aus.

Doch dann geschieht etwas Unfassbares, das Gwennys Weltbild einmal mehr auf den Kopf stellt. Für sie und Gideon beginnt eine atemberaubende Flucht in die Vergangenheit. Rauschende Ballnächte und wilde Verfolgungsjagden erwarten die Heldin wider Willen und über allem steht die Frage, ob man ein gebrochenes Herz wirklich heilen kann ... (less)', 1),
	(179, 'Doctor Sleep', 'Stephen King', 531, 5730, 'English', '2013-09-24', NULL, 'The Shining #2', 'covers/cover180.png', 'Stephen King returns to the characters and territory of one of his most popular novels ever, The Shining, in this instantly riveting novel about the now middle-aged Dan Torrance (the boy protagonist of The Shining) and the very special 12-year-old girl he must save from a tribe of murderous paranormals.

On highways across America, a tribe of people called The True Knot travel in search of sustenance. They look harmless - mostly old, lots of polyester, and married to their RVs. But as Dan Torrance knows, and spunky 12-year-old Abra Stone learns, The True Knot are quasi-immortal, living off the "steam" that children with the "shining" produce when they are slowly tortured to death.

Haunted by the inhabitants of the Overlook Hotel where he spent one horrific childhood year, Dan has been drifting for decades, desperate to shed his father''s legacy of despair, alcoholism, and violence. Finally, he settles in a New Hampshire town, an AA community that sustains him, and a job at a nursing home where his remnant "shining" power provides the crucial final comfort to the dying. Aided by a prescient cat, he becomes "Doctor Sleep."

Then Dan meets the evanescent Abra Stone, and it is her spectacular gift, the brightest shining ever seen, that reignites Dan''s own demons and summons him to a battle for Abra''s soul and survival. This is an epic war between good and evil, a gory, glorious story that will thrill the millions of hyper-devoted fans of The Shining and wildly satisfy anyone new to the territory of this icon in the King canon. (less)', 1),
	(180, 'The Last Lumenian', 'S.G. Blaise', 328, 4348, 'English', '2020-06-18', NULL, NULL, 'covers/cover181.png', 'Lilla is fighting on the side of the refugees from oppression. But there is a bigger war brewing on the horizon - the Era War between the two ruling archgods. It threatens not only Lilla''s home world, but everyone else''s in the Seven Galaxies. Enemies must become friends and allies in the desperate race to defeat the archgod before He finds her. (less)', 1),
	(181, 'Sliding on the Snow Stone', 'Andy Szpuk', 238, 1523, 'English', '2011-09-21', NULL, NULL, 'covers/cover182.png', 'It is astonishing that anyone lived this story. It is even more astonishing that anyone survived it.

Stefan grows up in the grip of a raging famine. Stalin’s Five Year Plan brings genocide to Ukraine – millions of people starve to death. To free themselves from the daily terrors of Soviet rule, Stefan and his friends fight imaginary battles in nearby woods to defend their land. The games they play are their only escape.

‘Sliding on the Snow Stone’ is the true story of Stefan''s extraordinary journey across a landscape of hunger, fear and devastating loss. With Europe on the brink of World War Two, Stefan and his family pray they''ll survive in their uncertain world. They long to be free.

(In 1932-33, as part of their drive towards industrialisation, the Soviet Union demanded impossibly high requisitions of grain from rural areas in Ukraine. In a deliberate act of genocide, Ukrainian smallholdings were stripped of food, and the population began to perish, with some estimates as high as 10 million deaths, from starvation. In Ukraine, this atrocity became known as the Holodomor (death by hunger). The following years saw Soviet purges and terrors resulting in the elimination of academics and intellectuals, or of anyone who spoke out against Soviet rule. When World War Two arrived on Ukraine’s doorstep, many people viewed the Nazis as liberators – a view that was quickly proved wrong. ‘Sliding on the Snow Stone’ is Stefan’s personal account of a historical period drenched in the blood of a nation, and of his yearning for freedom). (less)', 1),
	(182, 'Tigana', 'Guy Gavriel Kay', 676, 2272, 'English', '1999-12-01', NULL, NULL, 'covers/cover183.png', 'A masterful epic of magic, politics, war, and the power of love and hate — from the renowned author of The Fionavar Tapestry and Children of Earth and Sky.

Tigana is the magical story of a beleaguered land struggling to be free. It is the tale of a people so cursed by the black sorcery of a cruel despotic king that even the name of their once-beautiful homeland cannot be spoken or remembered...

But years after the devastation, a handful of courageous men and women embark upon a dangerous crusade to overthrow their conquerors and bring back to the dark world the brilliance of a long-lost name...Tigana.

Against the magnificently rendered background of a world both sensuous and barbaric, this sweeping epic of a passionate people pursuing their dream is breathtaking in its vision, changing forever the boundaries of fantasy fiction. (less)', 1),
	(183, 'The Power of Six', 'Pittacus Lore', 406, 3984, 'English', '2011-08-23', NULL, 'Lorien Legacies #2', 'covers/cover184.png', 'I''ve seen him on the news. Followed the stories about what happened in Ohio. John Smith, out there, on the run. To the world, he''s a mystery. But to me . . . he''s one of us.

Nine of us came here, but sometimes I wonder if time has changed us—if we all still believe in our mission. How can I know? There are six of us left. We''re hiding, blending in, avoiding contact with one another . . . but our Legacies are developing, and soon we''ll be equipped to fight. Is John Number Four, and is his appearance the sign I''ve been waiting for? And what about Number Five and Six? Could one of them be the raven-haired girl with the stormy eyes from my dreams. The girl with powers that are beyond anything I could ever imagine. The girl who may be strong enough to bring the six of us together?

They caught Number One in Malaysia.
Number Two in England.
And Number Three in Kenya.
They tried to catch Number Four in Ohio—and failed.

I am Number Seven. One of six still alive.

And I''m ready to fight. (less)', 1),
	(184, 'The Invisible Game: Mindset of a Winning Team', 'Zoltan Andrejkovics', 201, 3250, 'English', '2017-09-01', NULL, NULL, 'covers/cover185.png', 'Competitive gaming and eSports among youths became a major theme these days. For a professional gamer, having the best strategy or belonging to a team with the best skills are sometimes not enough for success. Real life tournaments are tougher than we can imagine.

The Invisible Game covers the necessary mental development of eSport players. The book helps to prepare the players'' minds for the challenges, both on the map and in real life.

We overestimate the power of our daily thoughts, and we forget the potential of our inner wisdom. This book guides you with honest life experiences of an eSport team manager on a journey to find the mental balance for peak performance. (less)', 1),
	(185, 'Carpe Corpus', 'Rachel Caine', 241, 5551, 'English', '2009-06-02', NULL, 'The Morganville Vampires #6', 'covers/cover186.png', 'Read Rachel Caine''s posts on the Penguin Blog

In the small college town of Morganville, vampires and humans lived in (relative) peace-until all the rules got rewritten when the evil vampire Bishop arrived, looking for the lost book of vampire secrets. He''s kept a death grip on the town ever since. Now an underground resistance is brewing, and in order to contain it, Bishop must go to even greater lengths. He vows to obliterate the town and all its inhabitants-the living and the undead. Claire Danvers and her friends are the only ones who stand in his way. But even if they defeat Bishop, will the vampires ever be content to go back to the old rules, after having such a taste of power? (less)', 1),
	(186, 'Atlas Shrugged & The Fountainhead', 'Ayn Rand', 0, 1621, NULL, '1997-09-01', NULL, NULL, 'covers/cover187.png', 'The bestselling novels from the foremost philosopher of the modern age, this set includes Atlas Shrugged and The Fountainhead.', 1),
	(187, 'The Silent Patient', 'Alex Michaelides', 325, 5298, 'English', '2019-02-05', NULL, NULL, 'covers/cover188.png', 'The Silent Patient is a shocking psychological thriller of a woman’s act of violence against her husband—and of the therapist obsessed with uncovering her motive.

Alicia Berenson’s life is seemingly perfect. A famous painter married to an in-demand fashion photographer, she lives in a grand house with big windows overlooking a park in one of London’s most desirable areas. One evening her husband Gabriel returns home late from a fashion shoot, and Alicia shoots him five times in the face, and then never speaks another word.

Alicia’s refusal to talk, or give any kind of explanation, turns a domestic tragedy into something far grander, a mystery that captures the public imagination and casts Alicia into notoriety. The price of her art skyrockets, and she, the silent patient, is hidden away from the tabloids and spotlight at the Grove, a secure forensic unit in North London.

Theo Faber is a criminal psychotherapist who has waited a long time for the opportunity to work with Alicia. His determination to get her to talk and unravel the mystery of why she shot her husband takes him down a twisting path into his own motivations—a search for the truth that threatens to consume him.... (less)', 1),
	(188, 'Never Fade', 'Alexandra Bracken', 507, 176, 'English', '2013-10-15', NULL, 'The Darkest Minds #2', 'covers/cover189.png', 'Ruby never asked for the abilities that almost cost her her life. Now she must call upon them on a daily basis, leading dangerous missions to bring down a corrupt government and breaking into the minds of her enemies. Other kids in the Children’s League call Ruby “Leader”, but she knows what she really is: a monster.

When Ruby is entrusted with an explosive secret, she must embark on her most dangerous mission yet: leaving the Children’s League behind. Crucial information about the disease that killed most of America’s children—and turned Ruby and the others who lived into feared and hated outcasts—has survived every attempt to destroy it. But the truth is only saved in one place: a flashdrive in the hands of Liam Stewart, the boy Ruby once believed was her future—and who now wouldn’t recognize her.

As Ruby sets out across a desperate, lawless country to find Liam—and answers about the catastrophe that has ripped both her life and America apart—she is torn between old friends and the promise she made to serve the League. Ruby will do anything to protect the people she loves. But what if winning the war means losing herself? (less)', 1),
	(189, 'The Threat Below', 'Jason Latshaw', 544, 3675, 'English', '2020-02-01', NULL, 'Brathius History #1', 'covers/cover190.png', 'Three hundred years ago, something terrifying arose and pushed humanity to the brink of extinction. Now, a small remnant – the descendants of the few survivors who were able to escape the massacre below – lives above the clouds, on the top of a Mountain.

When they discover that their water supply is being poisoned Down Below, an expedition, including seventeen year-old girl Icelyn Brathius, must descend and face the monsters, the Threat Below, that wiped out civilization centuries ago.

Icelyn quickly learns that all is not what it seems as she uncovers secrets hundreds of years old and struggles to stay alive in a world where no human is fit to survive. (less)', 1),
	(190, 'Demonglass', 'Rachel Hawkins', 359, 3779, 'English', '2011-03-22', NULL, 'Hex Hall #2', 'covers/cover191.png', 'Sophie Mercer thought she was a witch. That was the whole reason she was sent to Hex Hall, a reform school for delinquent Prodigium (a.k.a. witches, shape-shifters, and faeries). But then she discovered the family secret, and the fact that her hot crush, Archer Cross, is an agent for The Eye, a group bent on wiping Prodigium off the face of the earth.

Turns out, Sophie''s a demon, one of only two in the world-the other being her father. What''s worse, she has powers that threaten the lives of everyone she loves. Which is precisely why Sophie decides she must go to London for the Removal, a dangerous procedure that will either destroy her powers for good-or kill her.

But once Sophie arrives, she makes a shocking discovery. Her new housemates? They''re demons too. Meaning, someone is raising demons in secret, with creepy plans to use their powers, and probably not for good. Meanwhile, The Eye is set on hunting Sophie down, and they''re using Archer to do it. But it''s not like she has feelings for him anymore. Does she? (less)', 1),
	(191, 'Let the Great World Spin', 'Colum McCann', 351, 395, 'English', '2009-06-23', NULL, NULL, 'covers/cover192.png', 'In the dawning light of a late-summer morning, the people of lower Manhattan stand hushed, staring up in disbelief at the Twin Towers. It is August 1974, and a mysterious tightrope walker is running, dancing, leaping between the towers, suspended a quarter mile above the ground. In the streets below, a slew of ordinary lives become extraordinary in bestselling novelist Colum McCann’s stunningly intricate portrait of a city and its people.

Let the Great World Spin is the critically acclaimed author’s most ambitious novel yet: a dazzlingly rich vision of the pain, loveliness, mystery, and promise of New York City in the 1970s.

Corrigan, a radical young Irish monk, struggles with his own demons as he lives among the prostitutes in the middle of the burning Bronx. A group of mothers gather in a Park Avenue apartment to mourn their sons who died in Vietnam, only to discover just how much divides them even in grief. A young artist finds herself at the scene of a hit-and-run that sends her own life careening sideways. Tillie, a thirty-eight-year-old grandmother, turns tricks alongside her teenage daughter, determined not only to take care of her family but to prove her own worth.

Elegantly weaving together these and other seemingly disparate lives, McCann’s powerful allegory comes alive in the unforgettable voices of the city’s people, unexpectedly drawn together by hope, beauty, and the “artistic crime of the century.” A sweeping and radical social novel, Let the Great World Spin captures the spirit of America in a time of transition, extraordinary promise, and, in hindsight, heartbreaking innocence. Hailed as a “fiercely original talent” (San Francisco Chronicle), award-winning novelist McCann has delivered a triumphantly American masterpiece that awakens in us a sense of what the novel can achieve, confront, and even heal. (less)', 1),
	(192, 'L''Écume des jours', 'Boris Vian', 351, 5419, 'French', '1997-02-26', NULL, NULL, 'covers/cover193.png', 'Chick, Alise, Chloé et Colin passent leur temps à dire des choses rigolotes, à écouter Duke Ellington et à patiner. Dans ce monde où les pianos sont des mélangeurs à cocktails, la réalité semble ne pas avoir de prise. On se marie à l''église comme on va à la fête foraine et on ignore le travail, qui se réduit à une usine monstrueuse faisant tache sur le paysage.
Pied de nez aux conventions romanesques et à la morale commune, L''Écume des jours est un délice verbal et un festin poétique. Jeux de mots, néologismes, décalages incongrus... Vian surenchérit sans cesse, faisant naître comme un vertige chez le lecteur hébété, qui sourit quand il peut. Mais le véritable malaise vient d''ailleurs : ces adolescents éternels à la sensibilité exacerbée constituent des victimes de choix. L''obsession consumériste de Chick, née d''une idolâtrie frénétique pour un certain Jean-Sol Partre, semble vouloir dire que le bonheur ne saurait durer. En effet, l''asphyxie gagne du terrain, et l''on assiste avec effroi au rétrécissement inexorable des appartements. On en veut presque à Vian d''être aussi lucide et de ne pas s''être contenté d''une expérience ludique sur fond de roman d''amour. --Sana Tang-Léopold Wauters
(less)', 1),
	(193, 'Torn', 'Amanda Hocking', 324, 4520, 'English', '2012-02-28', NULL, 'Trylle #2', 'covers/cover194.png', 'When Wendy Everly first discovers the truth about herself—that she’s a changeling switched at birth—she knows her life will never be the same. Now she’s about to learn that there’s more to the story...

She shares a closer connection to her Vittra rivals than she ever imagined—and they’ll stop at nothing to lure her to their side. With the threat of war looming, her only hope of saving the Trylle is to master her magical powers—and marry an equally powerful royal. But that means walking away from Finn, her handsome bodyguard who’s strictly off limits... and Loki, a Vittra prince with whom she shares a growing attraction.

Torn between her heart and her people, between love and duty, Wendy must decide her fate. If she makes the wrong choice, she could lose everything, and everybody, she’s ever wanted... in both worlds.

As a special gift to readers, this book contains a new, never-before-published bonus story, “One Day, Three Ways,” set in the magical world of the Trylle. (less)', 1),
	(194, 'The Tattooist of Auschwitz', 'Heather   Morris', 272, 396, 'English', '2018-09-04', NULL, 'The Tattooist of Auschwitz #1', 'covers/cover195.png', 'In April 1942, Lale Sokolov, a Slovakian Jew, is forcibly transported to the concentration camps at Auschwitz-Birkenau. When his captors discover that he speaks several languages, he is put to work as a Tätowierer (the German word for tattooist), tasked with permanently marking his fellow prisoners.

Imprisoned for more than two and a half years, Lale witnesses horrific atrocities and barbarism—but also incredible acts of bravery and compassion. Risking his own life, he uses his privileged position to exchange jewels and money from murdered Jews for food to keep his fellow prisoners alive.

One day in July 1942, Lale, prisoner 32407, comforts a trembling young woman waiting in line to have the number 34902 tattooed onto her arm. Her name is Gita, and in that first encounter, Lale vows to somehow survive the camp and marry her.

A vivid, harrowing, and ultimately hopeful re-creation of Lale Sokolov''s experiences as the man who tattooed the arms of thousands of prisoners with what would become one of the most potent symbols of the Holocaust, The Tattooist of Auschwitz is also a testament to the endurance of love and humanity under the darkest possible conditions. (less)', 1),
	(195, 'Lirael', 'Garth Nix', 464, 1122, 'English', '2015-12-30', NULL, 'Abhorsen #2', 'covers/cover196.png', 'Lirael has never felt like a true daughter of the Clayr. Now, two years past the time when she should have received the Sight that is the Clayr''s birthright, she feels alone, abandoned, unsure of who she is. Nevertheless, the fate of the Old Kingdom lies in her hands. With only her faithful companion, the Disreputable Dog, Lirael must undertake a desperate mission under the growing shadow of an ancient evil.

In this sequel to Sabriel, winner of the Aurealis Award for Excellence in Australian Science Fiction, New York Times best-selling author Garth Nix weaves a spellbinding tale of discovery, destiny, and danger. (less)', 1),
	(196, 'P.S. I Still Love You', 'Jenny Han', 337, 1373, 'English', '2015-05-26', NULL, 'To All the Boys I''ve Loved Before #2', 'covers/cover197.png', 'Lara Jean didn’t expect to really fall for Peter.

They were just pretending. Until they weren’t. And now Lara Jean has to learn what it''s like to be in a real relationship and not just a make-believe one.

But when another boy from her past returns to her life, Lara Jean’s feelings for him suddenly return too. Can a girl be in love with two boys at once?

In this charming and heartfelt sequel to the New York Times bestseller To All the Boys I''ve Loved Before, Lara Jean is about to find out that falling in love is the easy part. (less)', 1),
	(197, 'The Kitchen House', 'Kathleen Grissom', 369, 3482, 'English', '2010-02-02', NULL, NULL, 'covers/cover198.png', 'When a white servant girl violates the order of plantation society, she unleashes a tragedy that exposes the worst and best in the people she has come to call her family. Orphaned while onboard ship from Ireland, seven-year-old Lavinia arrives on the steps of a tobacco plantation where she is to live and work with the slaves of the kitchen house. Under the care of Belle, the master''s illegitimate daughter, Lavinia becomes deeply bonded to her adopted family, though she is set apart from them by her white skin.

Eventually, Lavinia is accepted into the world of the big house, where the master is absent and the mistress battles opium addiction. Lavinia finds herself perilously straddling two very different worlds. When she is forced to make a choice, loyalties are brought into question, dangerous truths are laid bare, and lives are put at risk. (less)', 1),
	(198, 'The Demigod Files', 'Rick Riordan', 151, 2968, 'English', '2009-02-10', NULL, 'Percy Jackson and the Olympians #4.5, 4.6, 4.7', 'covers/cover199.png', 'How do you handle an encounter with Medusa on the New Jersey interstate? What''s the best way to take down a minotaur? Become an expert on everything in Percy''s world with this must-have guide to the Percy Jackson and the Olympians series. (less)', 1),
	(199, 'The Rum Diary', 'Hunter S. Thompson', 224, 4826, 'English', '1999-11-01', NULL, NULL, 'covers/cover200.png', 'Begun in 1959 by a twenty-two-year-old Hunter S. Thompson, The Rum Diary is a tangled love story of jealousy, treachery, and violent alcoholic lust in the Caribbean boomtown that was San Juan, Puerto Rico, in the late 1950s. The narrator, freelance journalist Paul Kemp, irresistibly drawn to a sexy, mysterious woman, is soon thrust into a world where corruption and get-rich-quick schemes rule and anything (including murder) is permissible. (less)', 1),
	(200, 'This Man', 'Jodi Ellen Malpas', 448, 472, 'English', '2012-10-20', NULL, 'This Man #1', 'covers/cover201.png', 'Young interior designer Ava O’Shea has an appointment for a first consultation at The Manor with the owner, Mr Jesse Ward. She is expecting nothing more than an overweight, cravat wearing, well-to-do countryman, and on arrival, nothing would suggest otherwise. How wrong could she be? This Man is devastatingly handsome, charming and confident. He is also a conceited, hedonistic playboy, who knows no boundaries. Ava desperately does not want to be attracted to him, but she can’t control the overwhelming effect he has on her. Every instinct is telling her to run, so she does, but Jesse Ward is not so willing to let her go. He wants her and is determined to have her. She knows she is heading for heartbreak, but how can she run when he won’t let her? (less)', 1),
	(201, 'Trouble on Main Street', 'Kirsten Fullmer', 289, 4409, 'English', '2020-03-24', NULL, 'Sugar Mountain #1', 'covers/cover202.png', 'A cozy mountain town, a sweet romance, and a secret society of sneaky women…

The sleepy hamlet of Sugar Mountain harbors a secret society of women. Don’t misunderstand—the society itself is not secret—it’s the true nature of the group that is hush-hush.

Sugar Mountain is the kind of charming village that tourists adore. If you like small-town charm, quirky shops, and local art, this is the place for you. But when a blood smeared package shows up at the post office and it appears to be linked to a scheme that threatens Heidi Collinsworth’s historic home, the town takes on a sinister vibe. Heidi would lay odds that slimy Mayor Winslow is involved, but even with the enquiring skills of The Sugar Mountain Ladies Historical Society at work, proof is scarce.

The new guy in town, Adam Williams, is determined not to get involved in Sugar Mountain’s business. His last job in a big city planning office ruined his life, but Heidi needs his help. No matter how hard he tries to stay detached, Adam finds himself eyeball deep in Heidi’s problems, as well as the needs of her teenage son and a homeless dog.

With conflicting theories abound and tensions running high, it’s up to the ladies of the society to don disguises and go undercover. If they’re not careful, the town may fall to a wrecking ball, Heidi may fall for Adam, and the secret society will be exposed.

Meet the cast of colorful characters in this charming and zany introduction to a whole new series of romantic, cozy mysteries! (less)', 1),
	(202, 'Richard III', 'William Shakespeare', 414, 4898, NULL, '2001-05-17', NULL, 'Wars of the Roses #8', 'covers/cover203.png', 'This edition of Richard III features seven scenes, opening with the Duke of Gloucester’s villainous “Winter of our discontent” speech and followed by his audacious wooing of Lady Anne. Queen Margaret’s chilling curses, Richard’s string of murders, and the haunting chants of his victims’ ghosts are stage drama at its best. The climax is a gripping battle in which the Earl of Richmond slays Richard and becomes King of England. There is also an essay by editor Nick Newlin on how to produce a Shakespeare play with novice actors, and notes about the original production of this abridgement at the Folger Shakespeare Library’s annual Student Shakespeare Festival.

The edition includes a preface by Nick Newlin, containing helpful advice on presenting Shakespeare in a high school setting with novice actors, as well as an appendix with play-specific suggestions and recommendations for further resources. (less)', 1),
	(203, 'Katherine', 'Anya Seton', 500, 524, 'English', '2004-05-01', NULL, NULL, 'covers/cover204.png', 'This classic romance novel tells the true story of the love affair that changed history—that of Katherine Swynford and John of Gaunt, Duke of Lancaster, the ancestors of most of the British royal family. Set in the vibrant 14th century of Chaucer and the Black Death, the story features knights fighting in battle, serfs struggling in poverty, and the magnificent Plantagenets—Edward III, the Black Prince, and Richard II—who ruled despotically over a court rotten with intrigue. Within this era of danger and romance, John of Gaunt, the king’s son, falls passionately in love with the already married Katherine. Their well-documented affair and love persist through decades of war, adultery, murder, loneliness, and redemption. This epic novel of conflict, cruelty, and untamable love has become a classic since its first publication in 1954.
(less)', 1),
	(204, 'Feast of Fools', 'Rachel Caine', 242, 1113, 'English', '2008-06-03', NULL, 'The Morganville Vampires #4', 'covers/cover205.png', 'The wait is over. dig into the feast...

In the town of Morganville, vampires and humans live in relative peace. Student Claire Danvers has never been convinced, though, especially with the arrival of Mr. Bishop, an ancient, old-school vampire who cares nothing about harmony. What he wants from the town''s living and its dead is unthinkably sinister. It''s only at a formal ball, attended by vampires and their human dates, that Claire realizes the elaborately evil trap he''s set for Morganville. (less)', 1),
	(205, 'Uprooted', 'Naomi Novik', 435, 1787, 'English', '2015-05-19', NULL, NULL, 'covers/cover206.png', '“Our Dragon doesn’t eat the girls he takes, no matter what stories they tell outside our valley. We hear them sometimes, from travelers passing through. They talk as though we were doing human sacrifice, and he were a real dragon. Of course that’s not true: he may be a wizard and immortal, but he’s still a man, and our fathers would band together and kill him if he wanted to eat one of us every ten years. He protects us against the Wood, and we’re grateful, but not that grateful.”

Agnieszka loves her valley home, her quiet village, the forests and the bright shining river. But the corrupted Wood stands on the border, full of malevolent power, and its shadow lies over her life.

Her people rely on the cold, driven wizard known only as the Dragon to keep its powers at bay. But he demands a terrible price for his help: one young woman handed over to serve him for ten years, a fate almost as terrible as falling to the Wood.

The next choosing is fast approaching, and Agnieszka is afraid. She knows—everyone knows—that the Dragon will take Kasia: beautiful, graceful, brave Kasia, all the things Agnieszka isn’t, and her dearest friend in the world. And there is no way to save her.

But Agnieszka fears the wrong things. For when the Dragon comes, it is not Kasia he will choose. (less)', 1),
	(206, 'Bully', 'Penelope Douglas', 333, 1359, NULL, '2014-02-18', NULL, 'Fall Away #1', 'covers/cover207.png', 'My name is Tate. He doesn''t call me that, though. He would never refer to me so informally, if he referred to me at all. No, he''ll barely even speak to me.

But he still won''t leave me alone.

We were best friends once. Then he turned on me and made it his mission to ruin my life. I''ve been humiliated, shut out, and gossiped about all through high school. His pranks and rumors got more sadistic as time wore on, and I made myself sick trying to stay out of his way. I even went to France for a year, just to avoid him.

But I''m done hiding from him now, and there''s no way in hell I''ll allow him to ruin my senior year. He might not have changed, but I have. It''s time to fight back.

I''m not going to let him bully me anymore.

***This novel contains adult/mature young adult situations. It is only suitable for ages 18+ due to language, violence, and sexual situations. (less)', 1),
	(207, 'The Illuminatus! Trilogy', 'Robert Shea', 805, 3399, 'English', '1983-12-01', NULL, 'Illuminatus! #1-3', 'covers/cover208.png', 'It was a deadly mistake. Joseph Malik, editor of a radical magazine, had snooped into rumors about an ancient secret society that was still alive and kicking. Now his offices have been bombed, he''s missing, and the case has landed in the lap of a tough, cynical, streetwise New York detective. Saul Goodman knows he''s stumbled onto something big—but even he can''t guess how far into the pinnacles of power this conspiracy of evil has penetrated.

Filled with sex and violence—in and out of time and space—the three books of The Illuminatus! Trilogy are only partly works of the imagination. They tackle all the cover-ups of our time—from who really shot the Kennedys to why there''s a pyramid on a one-dollar bill—and suggest a mind-blowing truth. (less)', 1),
	(208, 'Band of Brothers: E Company, 506th Regiment, 101st Airborne from Normandy to Hitler''s Eagle''s Nest', 'Stephen E. Ambrose', 432, 5188, 'English', '2002-09-01', NULL, NULL, 'covers/cover209.png', 'As good a rifle company as any, Easy Company, 506th Airborne Division, US Army, kept getting tough assignments--responsible for everything from parachuting into France early DDay morning to the capture of Hitler''s Eagle''s Nest at Berchtesgaden. In "Band of Brothers," Ambrose tells of the men in this brave unit who fought, went hungry, froze & died, a company that took 150% casualties & considered the Purple Heart a badge of office. Drawing on hours of interviews with survivors as well as the soldiers'' journals & letters, Stephen Ambrose recounts the stories, often in the men''s own words, of these American heroes.
Foreword
"We wanted those wings"; Camp Toccoa, 7-12/42
"Stand up & hook up"; Benning, Mackall, Bragg, Shanks, 12/42-9/43
"Duties of the latrine orderly"; Aldbourne, 9/43-3/44
"Look out, Hitler! Here we come!"; Slapton Sands, Uppottery, 4/1-6/5/44
"Follow me"; Normandy, 6/6/44
"Move out!"; Carentan, 6/7-7/12/44
Healing wounds & scrubbed missions; Aldbourne, 7/13-9/16/44
"Hell''s highway"; Holland, 9/17-10/1/44
Island; Holland, 10/2-11/25/44
Resting, recovering & refitting: Mourmelon-le-Grand, 11/26-12/18/44
"They got us surrounded-the poor bastards"; Bastogne, 12/19-31/44
Breaking point; Bastogne, 1/1-13/45
Attack; Noville, 1/14-17/45
Patrol: Haguenau, 1/18-2/23/45
"Best feeling in the world": Mourmelon, 2/25-4/2/45
Getting to know the enemy: Germany, 4/2-30/45
Drinking Hitler''s champagne; Berchtesgaden, 5/1-8/45
Soldier''s dream life; Austria, 5/8-7/31/45
Postwar careers; 1945-91
Acknowledgments & Sources
Index (less)', 1),
	(209, 'My Name Is Red', 'Orhan Pamuk', 417, 1000, 'English', '2002-08-27', NULL, NULL, 'covers/cover210.png', 'At once a fiendishly devious mystery, a beguiling love story, and a brilliant symposium on the power of art, My Name Is Red is a transporting tale set amid the splendor and religious intrigue of sixteenth-century Istanbul, from one of the most prominent contemporary Turkish writers.

The Sultan has commissioned a cadre of the most acclaimed artists in the land to create a great book celebrating the glories of his realm. Their task: to illuminate the work in the European style. But because figurative art can be deemed an affront to Islam, this commission is a dangerous proposition indeed. The ruling elite therefore mustn’t know the full scope or nature of the project, and panic erupts when one of the chosen miniaturists disappears. The only clue to the mystery–or crime? –lies in the half-finished illuminations themselves. Part fantasy and part philosophical puzzle, My Name is Red is a kaleidoscopic journey to the intersection of art, religion, love, sex and power. (less)', 1),
	(210, 'Back To You', 'Steve  Bates', 254, 2108, 'English', '2021-01-05', NULL, NULL, 'covers/cover211.png', 'Searching for history’s greatest pastrami on rye, Chris arrives from 1,000 years in the future and hides his time machine in an alley. But Eddie sees through the disguise, takes an unexpected ride, and demonstrates it to his boss at a failing cable TV network. Through a series of adventures, the time machine becomes damaged, friends become stranded, and history gets changed in many ways—some dangerous, all humorous. Two romances—one quite unconventional—blossom along the way. Back to You is a hilarious science fiction romp in the tradition of The Hitchhiker’s Guide to the Galaxy. (less)', 1),
	(211, 'Requiem', 'Lauren Oliver', 391, 5300, 'English', '2013-03-05', NULL, 'Delirium #3', 'covers/cover212.png', 'Now an active member of the resistance, Lena has transformed. The nascent rebellion that was underway in Pandemonium has ignited into an all-out revolution in Requiem, and Lena is at the center of the fight. After rescuing Julian from a death sentence, Lena and her friends fled to the Wilds. But the Wilds are no longer a safe haven. Pockets of rebellion have opened throughout the country, and the government cannot deny the existence of Invalids. Regulators infiltrate the borderlands to stamp out the rebels.

As Lena navigates the increasingly dangerous terrain of the Wilds, her best friend, Hana, lives a safe, loveless life in Portland as the fiancée of the young mayor.Requiem is told from the perspectives of both Lena and her friend Hana. They live side by side in a world that divides them until, at last, their stories converge. (less)', 1),
	(212, 'A Distant Mirror:  The Calamitous 14th Century', 'Barbara W. Tuchman', 677, 2236, 'English', '1987-07-12', NULL, 'A Distant Mirror: The Calamitous 14th Century', 'covers/cover213.png', 'The 14th century gives us back two contradictory images: a glittering time of crusades and castles, cathedrals and chivalry, and a dark time of ferocity and spiritual agony, a world plunged into a chaos of war, fear and the Plague. Barbara Tuchman anatomizes the century, revealing both the great rhythms of history and the grain and texture of domestic life as it was lived.', 1),
	(213, 'The Darkest Night', 'Gena Showalter', 379, 3808, 'English', '2008-05-03', NULL, 'Lords of the Underworld #1', 'covers/cover214.png', 'His powers—Inhuman...

His passion—Beyond immortal...

All her life, Ashlyn Darrow has been tormented by voices from the past. To end the nightmare, she has come to Budapest seeking help from men rumored to have supernatural abilities, not knowing she''ll be swept into the arms of Maddox, their most dangerous member—a man trapped in a hell of his own.

Neither can resist the instant hunger than calms their torments... and ignites an irresistible passion. But every heated touch and burning kiss will edge them closer to destruction—and a soul-shattering test of love...

Though they carry an eternal curse, the Lords of the Underworld are irresistibly seductive—and unimaginably powerful...

Don’t miss this incredible new paranormal series from Gena Showalter! (less)', 1),
	(214, 'The Diving Bell and the Butterfly', 'Jean-Dominique Bauby', 132, 5389, 'English', '1998-06-23', NULL, NULL, 'covers/cover215.png', '‘Locked-in syndrome: paralysed from head to toe, the patient, his mind intact, is imprisoned inside his own body, unable to speak or move. In my case, blinking my left eyelid is my only means of communication.’

In December 1995, Jean-Dominique Bauby, editor-in-chief of French ‘Elle’ and the father of two young children, suffered a massive stroke and found himself paralysed and speechless, but entirely conscious, trapped by what doctors call ‘locked-in syndrome’. Using his only functioning muscle – his left eyelid – he began dictating this remarkable story, painstakingly spelling it out letter by letter.

His book offers a haunting, harrowing look inside the cruel prison of locked-in syndrome, but it is also a triumph of the human spirit. (less)', 1),
	(215, 'Beautiful Bastard', 'Christina Lauren', 272, 5592, 'English', '2013-02-12', NULL, 'Beautiful Bastard #1', 'covers/cover216.png', 'An ambitious intern. A perfectionist executive. And a whole lot of name calling.

Whip-smart, hardworking, and on her way to an MBA, Chloe Mills has only one problem: her boss, Bennett Ryan. He''s exacting, blunt, inconsiderate—and completely irresistible. A Beautiful Bastard.

Bennett has returned to Chicago from France to take a vital role in his family''s massive media business. He never expected that the assistant who''d been helping him from abroad was the gorgeous, innocently provocative—completely infuriating—creature he now has to see every day. Despite the rumors, he''s never been one for a workplace hookup. But Chloe''s so tempting he''s willing to bend the rules—or outright smash them—if it means he can have her. All over the office.

As their appetites for one another increase to a breaking point, Bennett and Chloe must decide exactly what they''re willing to lose in order to win each other.

Originally only available online as The Office by tby789 — and garnering over 2 million reads on fanfiction sites — Beautiful Bastard has been extensively updated for re-release. (less)', 1),
	(216, 'Steve Jobs', 'Walter Isaacson', 627, 2926, 'English', '2011-10-24', NULL, NULL, 'covers/cover217.png', 'Walter Isaacson''s "enthralling" (The New Yorker) worldwide bestselling biography of Apple cofounder Steve Jobs. Based on more than forty interviews with Steve Jobs conducted over two years--as well as interviews with more than 100 family members, friends, adversaries, competitors, and colleagues--Walter Isaacson has written a riveting story of the roller-coaster life and searingly intense personality of a creative entrepreneur whose passion for perfection and ferocious drive revolutionized six industries: personal computers, animated movies, music, phones, tablet computing, and digital publishing. Isaacson''s portrait touched millions of readers. At a time when America is seeking ways to sustain its innovative edge, Jobs stands as the ultimate icon of inventiveness and applied imagination. He knew that the best way to create value in the twenty-first century was to connect creativity with technology. He built a company where leaps of the imagination were combined with remarkable feats of engineering. Although Jobs cooperated with the author, he asked for no control over what was written. He put nothing off-limits. He encouraged the people he knew to speak honestly. He himself spoke candidly about the people he worked with and competed against. His friends, foes, and colleagues offer an unvarnished view of the passions, perfectionism, obsessions, artistry, devilry, and compulsion for control that shaped his approach to business and the innovative products that resulted. His tale is instructive and cautionary, filled with lessons about innovation, character, leadership, and values. Steve Jobs is the inspiration for the movie of the same name starring Michael Fassbender, Kate Winslet, Seth Rogen, and Jeff Daniels, directed by Danny Boyle with a screenplay by Aaron Sorkin. (less)', 1),
	(217, 'The Oedipus Cycle: Oedipus Rex, Oedipus at Colonus, Antigone', 'Sophocles', 259, 3372, 'English', '2002-11-01', NULL, 'The Theban Plays #1–3', 'covers/cover218.png', 'English versions of Sophocles’ three great tragedies based on the myth of Oedipus, translated for a modern audience by two gifted poets.', 1),
	(218, 'Magic Strikes', 'Ilona Andrews', 310, 4190, 'English', '2009-03-31', NULL, 'Kate Daniels #3', 'covers/cover219.png', 'Drafted into working for the Order of Merciful Aid, mercenary Kate Daniels has more paranormal problems than she knows what to do with these days. And in Atlanta, where magic comes and goes like the tide, that’s saying a lot.

But when Kate’s werewolf friend Derek is discovered nearly dead, she must confront her greatest challenge yet. As her investigation leads her to the Midnight Games – an invitation only, no holds barred, ultimate preternatural fighting tournament – she and Curran, the Lord of the Beasts, uncover a dark plot that may forever alter the face of Atlanta’s shapeshifting community… (less)', 1),
	(219, 'Where There''s Smoke', 'Kirsten Fullmer', NULL, 4673, 'English', '2020-05-16', NULL, 'Sugar Mountain #2', 'covers/cover220.png', 'A picturesque mountain town, sparks of romance, a threatening mystery, and a secret society of devious women…

“Wonderful characters, a real mix of women with varied strength and foibles” -Goodreads review 5 stars

“I loved the first book in the Sugar Mountain series so I was really second to read the second installment and get back to investigating with the Sugar Mountain Ladies Historical Society” – Goodreads review 5 stars

The cozy community of Sugar Mountain, NC harbors an underground society of women. The society itself is not secret—it’s the actual mission of the group that is concealed.

Sugar Mountain is a sleepy town bursting with tourists. If you like quirky shops and original artwork, you’ll want to visit. But the local kindergarten teacher, Sarah has a mystery on her hands. All she did was try to help the fire department and now she’s receiving threatening notes. Of course, she takes the frightening messages to her friends in the Sugar Mountain Ladies Historical Society, but even their investigative skills fall short. How will they be able to find the person intent on holding back the fire department and frightening Sarah?

Hugh Brockman, the second in command at the firehouse, is taking extra shifts to cope with the shortage of firefighters. When he visits Sarah’s classroom to talk to her students about fire safety, he gets caught up with the lovely teacher and her cryptic mystery. He’s not happy that someone in town is threatening her with bodily harm, and he intends to find out who it is.

With every lead shot down and tensions running high, it’s up to the ladies of the society to go undercover in their own town to flush out the culprit. If they’re not successful, the fire department will continue to be undermanned, leaving Sugar Mountain is in danger and Sarah in peril.

Join in the continuing antics of the Sugar Mountain Ladies Historical Society and fall in love along with Hugh and Sarah in this heartfelt and comical romantic mystery. (less)', 1),
	(220, 'Red Storm Rising', 'Tom Clancy', NULL, 2035, 'English', '1988-09-13', NULL, NULL, 'covers/cover221.png', '"Allah!"
With that shrill cry, three Muslim terrorists blow up a key Soviet oil complex, creating a critical oil shortage that threatens the stability of the USSR.
To offer the effects of this disaster, members of the Politburo and the KGB devise a brilliant plan of diplomatic trickery - a sequence of events designed to pit the NATO allies against each other - a distraction calculated to enable the Soviets to seize all the oil in the Persian Gulf.
But as this spellbinding story of international intrigue and global politics nears its climax, the Soviets are faced with another prospect, one they hadn''t planned on: a full-scale conflict in which nobody can win.
(less)', 1),
	(221, 'A Gentleman in Moscow', 'Amor Towles', 462, 3559, 'English', '2019-03-26', NULL, NULL, 'covers/cover222.png', 'From the New York Times bestselling author of Rules of Civility—a transporting novel about a man who is ordered to spend the rest of his life inside a luxury hotel

With his breakout debut novel, Rules of Civility, Amor Towles established himself as a master of absorbing, sophisticated fiction, bringing late 1930s Manhattan to life with splendid atmosphere and a flawless command of style. Readers and critics were enchanted; as NPR commented, “Towles writes with grace and verve about the mores and manners of a society on the cusp of radical change.”

A Gentleman in Moscow immerses us in another elegantly drawn era with the story of Count Alexander Rostov. When, in 1922, he is deemed an unrepentant aristocrat by a Bolshevik tribunal, the count is sentenced to house arrest in the Metropol, a grand hotel across the street from the Kremlin. Rostov, an indomitable man of erudition and wit, has never worked a day in his life, and must now live in an attic room while some of the most tumultuous decades in Russian history are unfolding outside the hotel’s doors. Unexpectedly, his reduced circumstances provide him a doorway into a much larger world of emotional discovery.

Brimming with humour, a glittering cast of characters, and one beautifully rendered scene after another, this singular novel casts a spell as it relates the count’s endeavour to gain a deeper understanding of what it means to be a man of purpose. (less)', 1),
	(222, 'World After', 'Susan Ee', 320, 4043, 'English', '2013-11-19', NULL, 'Penryn & the End of Days #2', 'covers/cover223.png', 'In this sequel to the bestselling fantasy thriller, Angelfall, the survivors of the angel apocalypse begin to scrape back together what''s left of the modern world.

When a group of people capture Penryn''s sister Paige, thinking she''s a monster, the situation ends in a massacre. Paige disappears. Humans are terrified. Mom is heartbroken.

Penryn drives through the streets of San Francisco looking for Paige. Why are the streets so empty? Where is everybody? Her search leads her into the heart of the angels'' secret plans where she catches a glimpse of their motivations, and learns the horrifying extent to which the angels are willing to go.

Meanwhile, Raffe hunts for his wings. Without them, he can''t rejoin the angels, can''t take his rightful place as one of their leaders. When faced with recapturing his wings or helping Penryn survive, which will he choose? (less)', 1),
	(223, 'The DUFF: Designated Ugly Fat Friend', 'Kody Keplinger', 280, 1043, 'English', '2010-09-07', NULL, 'Hamilton High #1', 'covers/cover224.png', 'Seventeen-year-old Bianca Piper is cynical and loyal, and she doesn''t think she''s the prettiest of her friends by a long shot. She''s also way too smart to fall for the charms of man-slut and slimy school hottie Wesley Rush. In fact, Bianca hates him. And when he nicknames her "the Duff," she throws her Coke in his face.

But things aren''t so great at home right now, and Bianca is desperate for a distraction. She ends up kissing Wesley. Worse, she likes it. Eager for escape, Bianca throws herself into a closeted enemies-with-benefits relationship with him.
Until it all goes horribly awry. It turns out Wesley isn''t such a bad listener, and his life is pretty screwed up, too. Suddenly Bianca realizes with absolute horror that she’s falling for the guy she thought she hated more than anyone.
(less)', 1),
	(224, 'Diary', 'Chuck Palahniuk', 262, 3891, 'English', '2004-09-14', NULL, NULL, 'covers/cover225.png', 'Misty Wilmot has had it. Once a promising young artist, she’s now stuck on an island ruined by tourism, drinking too much and working as a waitress in a hotel. Her husband, a contractor, is in a coma after a suicide attempt, but that doesn’t stop his clients from threatening Misty with lawsuits over a series of vile messages they’ve found on the walls of houses he remodeled.

Suddenly, though, Misty finds her artistic talent returning as she begins a period of compulsive painting. Inspired but confused by this burst of creativity, she soon finds herself a pawn in a larger conspiracy that threatens to cost hundreds of lives. What unfolds is a dark, hilarious story from America’s most inventive nihilist, and Palahniuk’s most impressive work to date. (less)', 1),
	(225, 'The Bone Collector', 'Jeffery Deaver', 528, 1649, 'English', '1998-04-01', NULL, 'Lincoln Rhyme #1', 'covers/cover226.png', 'Lincoln Rhyme was once a brilliant criminologist, a genius in the field of forensics -- until an accident left him physically and emotionally shattered. But now a diabolical killer is challenging Rhyme to a terrifying and ingenious duel of wits. With police detective Amelia Sachs by his side, Rhyme must follow a labyrinth of clues that reaches back to a dark chapter in New York City''s past -- and reach further into the darkness of the mind of a madman who won''t stop until he has stripped life down to the bone. (less)', 1),
	(226, 'Stargazer', 'Claudia Gray', 329, 595, 'English', '2009-03-24', NULL, 'Evernight #2', 'covers/cover227.png', 'The vampire in me was closer to the surface...

Evernight Academy: an exclusive boarding school for the most beautiful, dangerous students of all—vampires. Bianca, born to two vampires, has always been told her destiny is to become one of them.

But Bianca fell in love with Lucas—a vampire hunter sworn to destroy her kind. They were torn apart when his true identity was revealed, forcing him to flee the school.

Although they may be separated, Bianca and Lucas will not give each other up. She will risk anything for the chance to see him again, even if it means coming face-to-face with the vampire hunters of Black Cross—or deceiving the powerful vampires of Evernight. Bianca''s secrets will force her to live a life of lies.

Yet Bianca isn''t the only one keeping secrets. When Evernight is attacked by an evil force that seems to target her, she discovers the truth she thought she knew is only the beginning.... (less)', 1),
	(227, 'The Savage Detectives', 'Roberto Bolaño', 577, 730, 'English', '2007-04-03', NULL, NULL, 'covers/cover228.png', 'New Year’s Eve, 1975: Arturo Belano and Ulises Lima, founders of the visceral realist movement in poetry, leave Mexico City in a borrowed white Impala. Their quest: to track down the obscure, vanished poet Cesárea Tinajero. A violent showdown in the Sonora desert turns search to flight; twenty years later Belano and Lima are still on the run.

The explosive first long work by “the most exciting writer to come from south of the Rio Grande in a long time” (Ilan Stavans, Los Angeles Times), The Savage Detectives follows Belano and Lima through the eyes of the people whose paths they cross in Central America, Europe, Israel, and West Africa. This chorus includes the muses of visceral realism, the beautiful Font sisters; their father, an architect interned in a Mexico City asylum; a sensitive young follower of Octavio Paz; a foul-mouthed American graduate student; a French girl with a taste for the Marquis de Sade; the great-granddaughter of Leon Trotsky; a Chilean stowaway with a mystical gift for numbers; the anorexic heiress to a Mexican underwear empire; an Argentinian photojournalist in Angola; and assorted hangers-on, detractors, critics, lovers, employers, vagabonds, real-life literary figures, and random acquaintances.

A polymathic descendant of Borges and Pynchon, Roberto Bolaño traces the hidden connection between literature and violence in a world where national boundaries are fluid and death lurks in the shadow of the avant-garde. The Savage Detectives is a dazzling original, the first great Latin American novel of the twenty-first century. (less)', 1),
	(228, 'Fast Food Nation: The Dark Side of the All-American Meal', 'Eric Schlosser', 399, 5585, 'English', '2005-07-05', NULL, NULL, 'covers/cover229.png', 'Fast food has hastened the malling of our landscape, widened the chasm between rich and poor, fueled an epidemic of obesity, and propelled American cultural imperialism abroad. That''s a lengthy list of charges, but here Eric Schlosser makes them stick with an artful mix of first-rate reportage, wry wit, and careful reasoning.

Schlosser''s myth-shattering survey stretches from California''s subdivisions where the business was born to the industrial corridor along the New Jersey Turnpike where many fast food''s flavors are concocted. Along the way, he unearths a trove of fascinating, unsettling truths -- from the unholy alliance between fast food and Hollywood to the seismic changes the industry has wrought in food production, popular culture, and even real estate.
(back cover) (less)', 1),
	(229, 'Wool Omnibus', 'Hugh Howey', 509, 3513, 'English', '2012-01-25', NULL, 'Silo #1', 'covers/cover230.png', 'This Omnibus Edition collects the five Wool books into a single volume.

The first Wool story was released as a standalone short in July of 2011. Due to reviewer demand, the rest of the story was released over the next six months.

This is the story of mankind clawing for survival, of mankind on the edge. The world outside has grown unkind, the view of it limited, talk of it forbidden. But there are always those who hope, who dream. These are the dangerous people, the residents who infect others with their optimism. Their punishment is simple. They are given the very thing they profess to want: They are allowed outside.

Alternate cover for B0071XO8RA (less)', 1),
	(230, 'Firelight', 'Sophie Jordan', 323, 2850, 'English', '2010-09-07', NULL, 'Firelight #1', 'covers/cover231.png', 'A hidden truth.
Mortal enemies.
Doomed love.
Marked as special at an early age, Jacinda knows her every move is watched. But she longs for freedom to make her own choices. When she breaks the most sacred tenet among her kind, she nearly pays with her life. Until a beautiful stranger saves her. A stranger who was sent to hunt those like her. For Jacinda is a draki, a descendant of dragons whose greatest defense is her secret ability to shift into human form.
Forced to flee into the mortal world with her family, Jacinda struggles to adapt to her new surroundings. The only bright light is Will. Gorgeous, elusive Will who stirs her inner draki to life. Although she is irresistibly drawn to him, Jacinda knows Will''s dark secret: He and his family are hunters. She should avoid him at all costs. But her inner draki is slowly slipping away;if it dies she will be left as a human forever. She''ll do anything to prevent that. Even if it means getting closer to her most dangerous enemy.
Mythical powers and breathtaking romance ignite in this story of a girl who defies all expectations and whose love crosses an ancient divide.
(less)', 1),
	(231, '?????? ??????', '???? ?????', 502, 5914, 'Arabic', '2009-01-01', NULL, NULL, 'covers/cover232.png', '?????? ?????? ?? ?????? ?????? ????? ?? ???? ?????? ??????? ??????? ???? ????? ? ?? ??? ???????: ?????? - ????? - ??????.

????? ??????? ?? ????? ?????? ??? ???? ???? ??????? ????????? ?? ???????? ? ???? ????? ???????? ?? ??? 1491?? ??? ????? ???? ???? ??? ?????? ?????? ???????? ???? ????? ???????? (??? ??? ???? ???? ??????) ??? ???? ?????? ?? ???? ????? ?????? ???????? ?????? ??????? ??? ??????? ??????? (????) ????? ????? ???????? ????? ????? ?? ????? ?? ?????? ?? ??????? ? ??? ?? ??????. (less)', 1),
	(232, 'Half of a Yellow Sun', 'Chimamanda Ngozi Adichie', 433, 1210, 'English', '2006-09-12', NULL, NULL, 'covers/cover233.png', 'A masterly, haunting new novel from a writer heralded by The Washington Post Book World as “the 21st-century daughter of Chinua Achebe,” Half of a Yellow Sun re-creates a seminal moment in modern African history: Biafra’s impassioned struggle to establish an independent republic in Nigeria in the 1960s, and the chilling violence that followed.

With astonishing empathy and the effortless grace of a natural storyteller, Chimamanda Ngozi Adichie weaves together the lives of three characters swept up in the turbulence of the decade. Thirteen-year-old Ugwu is employed as a houseboy for a university professor full of revolutionary zeal. Olanna is the professor’s beautiful mistress, who has abandoned her life of privilege in Lagos for a dusty university town and the charisma of her new lover. And Richard is a shy young Englishman in thrall to Olanna’s twin sister, an enigmatic figure who refuses to belong to anyone. As Nigerian troops advance and the three must run for their lives, their ideals are severely tested, as are their loyalties to one another.

Epic, ambitious, and triumphantly realized, Half of a Yellow Sun is a remarkable novel about moral responsibility, about the end of colonialism, about ethnic allegiances, about class and race—and the ways in which love can complicate them all. Adichie brilliantly evokes the promise and the devastating disappointments that marked this time and place, bringing us one of the most powerful, dramatic, and intensely emotional pictures of modern Africa that we have ever had. (less)', 1),
	(233, 'Crossroads and the Dominion of Four', 'C. Toni Graham', 340, 5900, NULL, '2017-11-16', NULL, 'Crossroads #2', 'covers/cover234.png', 'At first glance, Jake, Shayna, Seneca, and Conner seem like average teens. Maybe even like some kids you know. But theyre special. They know that magic, spells, and prophecies are real. In Crossroads and the Dominion of Four, author C. Toni Graham continues the tale introduced in Crossroads and the Himalayan Crystals. The teens have accepted their fate as defenders of the Otherworld. The realms mythical beings have chosen sides in a deadly magical war, but its not always clear to whom they pledge their allegiance. Jake, Shayna, Conner and Seneca must use their new magical abilities to battle treacherous creatures and face life-altering crossroads. Only a powerful druid and her loyal minions stand in their way to fulfilling their destiny of becoming the prophesized Dominion of Four. The Crossroads series brings together creatures and humans as they fight for the common goal of returning harmony to the Otherworld and rid the realm of evil forever. Teen readers and fans of action-packed fantasy genres will enjoy this thrilling saga. (less)', 1),
	(234, 'Animal Dreams', 'Barbara Kingsolver', 342, 3273, 'English', '1991-01-01', NULL, NULL, 'covers/cover235.png', '"Animals dream about the things they do in the day time just like people do. If you want sweet dreams, you''ve got to live a sweet life." So says Loyd Peregrina, a handsome Apache trainman and latter-day philosopher. But when Codi Noline returns to her hometown, Loyd''s advice is painfully out of her reach. Dreamless and at the end of her rope, Codi comes back to Grace, Arizona to confront her past and face her ailing, distant father. What she finds is a town threatened by a silent environmental catastrophe, some startling clues to her own identity, and a man whose view of the world could change the course of her life. Blending flashbacks, dreams, and Native American legends, Animal Dreams is a suspenseful love story and a moving exploration of life''s largest commitments. With this work, the acclaimed author of The Bean Trees and Homeland and Other Stories sustains her familiar voice while giving readers her most remarkable book yet. (less)', 1),
	(235, 'Dragonflight', 'Anne McCaffrey', 299, 5585, 'English', '2005-07-26', NULL, 'Dragonriders of Pern #1', 'covers/cover236.png', 'HOW CAN ONE GIRL SAVE AN ENTIRE WORLD?

To the nobles who live in Benden Weyr, Lessa is nothing but a ragged kitchen girl. For most of her life she has survived by serving those who betrayed her father and took over his lands. Now the time has come for Lessa to shed her disguise—and take back her stolen birthright.

But everything changes when she meets a queen dragon. The bond they share will be deep and last forever. It will protect them when, for the first time in centuries, Lessa’s world is threatened by Thread, an evil substance that falls like rain and destroys everything it touches. Dragons and their Riders once protected the planet from Thread, but there are very few of them left these days. Now brave Lessa must risk her life, and the life of her beloved dragon, to save her beautiful world. . . . (less)', 1),
	(236, 'The Collected Poems of W.B. Yeats', 'W.B. Yeats', 544, 5236, 'English', '1996-09-09', NULL, 'The Collected Works of W.B. Yeats #1', 'covers/cover237.png', 'The Collected Poems of W. B. Yeats includes all of the poems authorized by Yeats for inclusion in his standard canon. Breathtaking in range, it encompasses the entire arc of his career, from luminous reworking of ancient Irish myths and legends, to passionate meditations on the demands and rewards of youth and old age, from exquisite, occasionally whimsical songs of love, nature, and art to somber and angry poems of life in a nation torn by war and uprising. In observing the development of rich and recurring images and themes over the course of his body of work, we can trace the quest of this century''s greatest poet to unite intellect and artistry in a single magnificent vision.

Revised and corrected, this edition includes Yeat''s own notes on his poetry, complemented by explanatory notes from esteemed Yeats scholar Richard J. Finneran. The Collected Poems of W. B. Yeats is the most comprehensive edition of one of the world''s most beloved poets available in paperback. (less)', 1),
	(237, 'Animal, Vegetable, Miracle: A Year of Food Life', 'Barbara Kingsolver', 370, 5366, 'English', '2007-05-01', NULL, NULL, 'covers/cover238.png', 'Bestselling author Barbara Kingsolver returns with her first nonfiction narrative that will open your eyes in a hundred new ways to an old truth: You are what you eat.

"As the U.S. population made an unprecedented mad dash for the Sun Belt, one carload of us paddled against the tide, heading for the Promised Land where water falls from the sky and green stuff grows all around. We were about to begin the adventure of realigning our lives with our food chain.

"Naturally, our first stop was to buy junk food and fossil fuel..."

Hang on for the ride: With characteristic poetry and pluck, Barbara Kingsolver and her family sweep readers along on their journey away from the industrial-food pipeline to a rural life in which they vow to buy only food raised in their own neighborhood, grow it themselves, or learn to live without it. Their good-humored search yields surprising discoveries about turkey sex life and overly zealous zucchini plants, en route to a food culture that''s better for the neighborhood and also better on the table. Part memoir, part journalistic investigation, Animal, Vegetable, Miracle makes a passionate case for putting the kitchen back at the center of family life and diversified farms at the center of the American diet.

"This is the story of a year in which we made every attempt to feed ourselves animals and vegetables whose provenance we really knew . . . and of how our family was changed by our first year of deliberately eating food produced from the same place where we worked, went to school, loved our neighbors, drank the water, and breathed the air." (less)', 1),
	(238, 'Slow Brewing Tea', 'Randy Loubier', NULL, 3213, NULL, '2020-07-11', NULL, NULL, 'covers/cover239.png', 'Slow Brewing Tea is an epic spiritual adventure and a touching love story that will compel you to look deeper at your relationships with your God, your spouse and the path beneath your feet.Isaiah set off on a ten day motorcycle adventure in northern, rural Japan. His quest, at the age of twenty, was to photograph the quiet mysterious culture, meet a beautiful Japanese woman and find The Tao (the way). He took great photographs, fell in love with an extraordinary Japanese woman and found an old man willing to teach him the way, the truth and the narrow gate. Over the next forty years Isaiah finds a path of unconditional love and faith through lessons of pain and redemption, loss and victory. Be transformed by a journey into traditional Japan, a mystical land of tea ceremonies, Japanese gardens, rich culture and unexpected spiritual revelations. (less)', 1),
	(239, 'The Source', 'James A. Michener', 1080, 5183, 'English', '2002-07-09', NULL, NULL, 'covers/cover240.png', 'In the grand storytelling style that is his signature, James Michener sweeps us back through time to the very beginnings of the Jewish faith, thousands of years ago. Through the predecessors of four modern men and women, we experience the entire colorful history of the Jews, including the life of the early Hebrews and their persecutions, the impact of Christianity, the Crusades, and the Spanish Inquisition, all the way to the founding of present-day Israel and the Middle-East conflict.
"A sweeping chronology filled with excitement."
THE PHILADELPHIA INQUIRER (less)', 1),
	(240, 'The Wicked King', 'Holly Black', 336, 3665, 'English', '2019-01-08', NULL, 'The Folk of the Air #2', 'covers/cover241.png', 'The enchanting and bloodthirsty sequel to the New York Times bestselling novel The Cruel Prince.

You must be strong enough to strike and strike and strike again without tiring.

The first lesson is to make yourself strong.

After the jaw-dropping revelation that Oak is the heir to Faerie, Jude must keep her brother safe. To do so, she has bound the wicked king, Cardan, to her, and made herself the power behind the throne. Navigating the constantly shifting political alliances of Faerie would be difficult enough if Cardan were easy to control. But he does everything in his power to humiliate and undermine her even as his fascination with her remains undiminished.

When it becomes all too clear that someone close to Jude means to betray her, threatening her own life and the lives of everyone she loves, Jude must uncover the traitor and fight her own complicated feelings for Cardan to maintain control as a mortal in a Faerie world. (less)', 1),
	(241, 'War and Remembrance', 'Herman Wouk', 1042, 1708, 'English', '2002-02-05', NULL, 'The Henry Family #2', 'covers/cover242.png', 'These two classic works capture the tide of world events even as they unfold the compelling tale of a single American family drawn into the very center of the war''s maelstrom.

The multimillion-copy bestsellers that capture all the drama, romance, heroism, and tragedy of the Second World War -- and that constitute Wouk''s crowning achievement -- are available for the first time in trade paperback. (less)', 1),
	(242, 'Kindred', 'Octavia E. Butler', 287, 4869, 'English', '2004-02-01', NULL, NULL, 'covers/cover243.png', 'The first science fiction written by a black woman, Kindred has become a cornerstone of black American literature. This combination of slave memoir, fantasy, and historical fiction is a novel of rich literary complexity. Having just celebrated her 26th birthday in 1976 California, Dana, an African-American woman, is suddenly and inexplicably wrenched through time into antebellum Maryland. After saving a drowning white boy there, she finds herself staring into the barrel of a shotgun and is transported back to the present just in time to save her life. During numerous such time-defying episodes with the same young man, she realizes the challenge she’s been given... (less)', 1),
	(243, 'The Heir', 'Kiera Cass', 342, 5610, 'English', '2015-05-05', NULL, 'The Selection #4', 'covers/cover244.png', 'Princess Eadlyn has grown up hearing endless stories about how her mother and father met. Twenty years ago, America Singer entered the Selection and won the heart of Prince Maxon - and they lived happily ever after. Eadlyn has always found their fairy-tale story romantic, but she has no interest in trying to repeat it. If it were up to her, she''d put off marriage for as long as possible.

But a princess''s life is never entirely her own, and Eadlyn can''t escape her very own Selection—no matter how fervently she protests.

Eadlyn doesn''t expect her story to end in romance. But as the competition begins, one entry may just capture Eadlyn''s heart, showing her all the possibilities that lie in front of her . . . and proving that finding her own happily ever after isn''t as impossible as she''s always thought. (less)', 1),
	(244, 'Switch! The Lost Kingdoms of Karibu', 'Karen  Prince', 276, 4312, 'English', '2012-09-25', NULL, 'Lost Kingdoms of Karibu #1', 'covers/cover245.png', 'Alternate cover edition for ASIN B009H28446.

Trouble is brewing in Karibu and Gogo Maya and her leopard are about to make matters worse. Their risky ‘switching’ trick has jettisoned them right out of the secret realm, sucking a teenager from the ordinary world into the mess they left behind them.

Ethan Flynn is pretty useless in the African bush but at least he knows how to do CPR . . . and that’s when he finds out you shouldn’t do it on a witch. The one he just rescued from drowning says she switched places with his cousin and now Ethan has sucked up all her magical powers, leaving her too weak to switch back again.

It must be true. Joe has vanished into thin air, Ethan’s feeling all unhinged, and the old woman’s leopard is communicating its thoughts straight into his head.

. . . alarming thoughts about teaming up with fearsome characters and traveling into dark places; disturbing thoughts about Joe in terrible danger unless Ethan learns to use the magic in time to rescue him.

That’s if Ethan himself can survive . . . (less)', 1),
	(245, 'Midnight Alley', 'Rachel Caine', 245, 1092, 'English', '2007-10-02', NULL, 'The Morganville Vampires #3', 'covers/cover246.png', 'MORGANVILLE IS SUCH A NICE PLACE TO LIVE... AND DIE. IF YOU DON''T MIND THAT SORT OF THING. When Claire Danvers learnt that her college town was run by vampires, she did what any intelligent, self-preserving student would do: she applied for a transfer and stocked up on garlic. The transfer is no longer an option, but that garlic may come in handy. Now Claire has pledged herself to Amelie, the most powerful vampire in town. The protection her contract secures does little to reassure her friends. All of a sudden, people are turning up dead, a stalker resurfaces from Claire''s past, and an ancient bloodsucker extends a chilling invitation for private lessons in his secluded home. (less)', 1),
	(246, 'The Fiery Heart', 'Richelle Mead', 420, 452, 'English', '2013-11-19', NULL, 'Bloodlines #4', 'covers/cover247.png', 'Sydney Sage is an Alchemist, one of a group of humans who dabble in magic and serve to bridge the worlds of humans and vampires. They protect vampire secrets and human lives. In The Indigo Spell, Sydney was torn between the Alchemist way of life and what her heart and gut were telling her to do. And in one breathtaking moment that Richelle Mead fans will never forget, she made a decision that shocked even her. . . . But the struggle isn''t over for Sydney. As she navigates the aftermath of her life-changing decision, she still finds herself pulled in too many directions at once. Her sister Zoe has arrived, and while Sydney longs to grow closer to her, there''s still so much she must keep secret. Working with Marcus has changed the way she views the Alchemists, and Sydney must tread a careful path as she harnesses her profound magical ability to undermine the way of life she was raised to defend. Consumed by passion and vengeance, Sydney struggles to keep her secret life under wraps as the threat of exposure and re-education looms larger than ever. Pulses will race throughout this thrilling fourth installment in the New York Times bestselling Bloodlines series, where no secret is safe. (less)', 1),
	(247, 'The Language of Flowers', 'Vanessa Diffenbaugh', 323, 2290, 'English', '2011-08-23', NULL, NULL, 'covers/cover248.png', 'The Victorian language of flowers was used to convey romantic expressions: honeysuckle for devotion, asters for patience, and red roses for love. But for Victoria Jones, it’s been more useful in communicating mistrust and solitude. After a childhood spent in the foster-care system, she is unable to get close to anybody, and her only connection to the world is through flowers and their meanings. Now eighteen and emancipated from the system with nowhere to go, Victoria realizes she has a gift for helping others through the flowers she chooses for them. But an unexpected encounter with a mysterious stranger has her questioning what’s been missing in her life. And when she’s forced to confront a painful secret from her past, she must decide whether it’s worth risking everything for a second chance at happiness.
 
Look for special features inside. Join the Circle for author chats and more. (less)', 1),
	(248, 'Nobody Loves a Bigfoot Like a Bigfoot Babe', 'Simon Okill', 286, 1754, 'English', '2012-12-06', NULL, NULL, 'covers/cover249.png', 'The Northern California town of Big Beaver has become a haven for Bigfoot, alien sightings and is home to The Phantom Bigfoot Bather. One particularly weird Beaverite, Duane, has kept the Bigfoot a secret, but to his utter dismay, a female Bigfoot abducts a teenager. Duane must use all his guile to stop his secret from getting out, especially now that MB, his close friend and crypto-zoologist, is on the trail, along with Sheriff Lou and the FBI. Can Duane keep his Bigfoot friends a secret? And what does MB discover deep in the forest? (less)', 1),
	(249, 'This Side of Paradise', 'F. Scott Fitzgerald', 275, 3589, 'English', '1998-07-14', NULL, NULL, 'covers/cover250.png', 'This Side of Paradise, F. Scott Fitzgerald''s romantic and witty first novel, was written when the author was only twenty-three years old. This semi-autobiographical story of the handsome, indulged, and idealistic Princeton student Amory Blaine received critical raves and catapulted Fitzgerald to instant fame. Now, readers can enjoy the newly edited, authorized version of this early classic of the Jazz Age, based on Fitzgerald''s original manuscript. In this definitive text, This Side of Paradise captures the rhythms and romance of Fitzgerald''s youth and offers a poignant portrait of the "Lost Generation." (less)', 1),
	(250, 'Lord of Misrule', 'Rachel Caine', 246, 3112, 'English', '2009-01-01', NULL, 'The Morganville Vampires #5', 'covers/cover251.png', 'In the college town of Morganville, vampires and humans coexist in (relatively) bloodless harmony. Then comes Bishop, the master vampire who threatens to abolish all order, revive the forces of the evil dead, and let chaos rule. But Bishop isn''t the only threat.

Violent black cyclone clouds hover, promising a storm of devastating proportions as student Claire Danvers and her friends prepare to defend Morganville against elements both natural and unnatural. (less)', 1),
	(251, 'Dead in the Family', 'Charlaine Harris', 311, 5345, 'English', '2010-05-04', NULL, 'Sookie Stackhouse #10', 'covers/cover252.png', 'It''s all about family ...

Sookie Stackhouse is dealing with a whole host of family problems, ranging from her own kin (a non-human fairy and a telepathic second cousin) demanding a place in her life, to her lover Eric''s vampire sire, an ancient being who arrives with Eric''s ''brother'' in tow at a most inopportune moment. And Sookie''s tracking down a distant relation of her ailing neighbour (and ex), Vampire Bill Compton.

In addition to the multitude of family issues complicating her life, the werewolf pack of Shreveport has asked Sookie for a special favour, and since Sookie is an obliging young woman, she agrees. But this favour for the wolves has dire results for Sookie, who is still recovering from the trauma of her abduction during the Fairy War. (less)', 1),
	(252, 'Down and Rising', 'Rohith S. Katbamna', 676, 5566, 'English', '2019-01-12', NULL, NULL, 'covers/cover253.png', 'The debut novel from award-winning filmmaker Rohith S. Katbamna, tells the powerful story of a brave few who venture for truth in the aftermath of a global uprising.

In the year 2027, society has fallen. Mass revolts and warring nations have claimed countless lives and destroyed vast lands. Forced into a dark slumber, the world now draws fewer breaths and hosts infinite graveyards.

In England, ten survivors who have journeyed many miles are on a path ready to converge. With histories soaked in the blood of betrayal, lies and deceit, one common thread binds them. The human instinct to seek a greater truth.

Over six days, these ten souls will come to find that the ruined world around them is reawakening. As a presence emerges, bringing with it a merciless intention to eliminate any and all beating bodies, this company of strangers will confront a series of hardships in a tale of underdogs, oppressors and the human condition.

Down and Rising is an immersive reading experience. An imaginative multi-story arc intricately woven together by striking imagery, reference materials and finely crafted characters. (less)', 1),
	(253, 'The Complete Stories', 'Flannery O''Connor', 555, 4896, 'English', '1971-01-01', NULL, NULL, 'covers/cover254.png', 'This is the original cover edition of ISBN: 0374515360 (ISBN13: 9780374515362

Winner of the National Book Award

The publication of this extraordinary volume firmly established Flannery O''Connor''s monumental contribution to American fiction. There are thirty-one stories here in all, including twelve that do not appear in the only two story collections O''Connor put together in her short lifetime - Everything That Rises Must Converge and A Good Man Is Hard to Find.

O''Connor published her first story, "The Geranium," in 1946, while she was working on her master''s degree at the University of Iowa. Arranged chronologically, this collection shows that her last story, "Judgement Day" - sent to her publisher shortly before her death - is a brilliantly rewritten and transfigured version of "The Geranium." Taken together, these stories reveal a lively, penetrating talent that has given us some of the most powerful and disturbing fiction of the twentieth century. Also included is an introduction by O''Connor''s longtime editor and friend, Robert Giroux.

Contents:
The geranium --
The barber --
Wildcat --
The crop --
The turkey --
The train --
The peeler --
The heart of the park --
A stoke of good fortune --
Enoch and the gorilla --
A good man is hard to find --
A late encounter with the enemy --
The life you save may be your own --
The river --
A circle in the fire --
The displaced person --
A temple of the Holy Ghost --
The artificial nigger --
Good country people --
You can''t be any poorer than dead --
Greenleaf --
A view of the woods --
The enduring chill --
The comforts of home --
Everything that rises must converge --
The partridge festival --
The lame shall enter first --
Why do the heathen rage? --
Revelation --
Parker''s back --
Judgement Day. (less)', 1),
	(254, 'I Am Legend', 'Richard Matheson', 162, 3153, 'English', '2011-05-14', NULL, NULL, 'covers/cover255.png', 'Robert Neville is the last living man on Earth... but he is not alone. Every other man, woman and child on the planet has become a vampire, and they are hungry for Neville''s blood.

By day he is the hunter, stalking the undead through the ruins of civilisation. By night, he barricades himself in his home and prays for the dawn.

How long can one man survive like this?

(less)', 1),
	(255, 'Table 21', 'T. Rafael Cimino', 287, 3979, 'English', '2011-06-11', NULL, NULL, 'covers/cover256.png', 'It’s New York City, December 1999. As one millennium ends and another begins, an erratic chain of events unfold that could change the face of the Italian Mafia forever. In the turmoil, a vacuum is created when one family falls, creating an unprecedented void of power and a subsequent struggle for control of the underworld.

Roman Sabarese is the owner of Evangeline’s, the hottest restaurant in Tribeca. He’s also close with an A – list television star who adores him. After a tawdry cover story in a popular celebrity tabloid, a spotlight illuminates the fact that Roman is the son of an indicted Mob kingpin, and therefore, heir presumptive to his father’s vast criminal enterprise that commands the Tri-State area.

Zoë Greene is young, attractive and enjoying rave reviews in her role on The Prosecutor, a prime time network television series. While on hiatus from her show for the New Year holiday, she visits the restaurant where she worked her way though college. After a quick dinner with her friend Roman, and among the frantic holiday crowd, she disappears.

Captain Stan Fitzgerald is the decorated head of the NYPD’s First Precinct in Lower Manhattan. His hands are full with the upcoming New Year celebration, a personal battle with renal cancer and the rigors of police life. When an old friend appears in his office to ask for help in locating the missing starlet, he is more then reluctant.

As the clock ticks and precious time runs out, the city is turned upside down in a desperate attempt to find that which is lost and answer questions that have been a mystery for over a generation. In the end, secrets will be revealed, alliances will be forged, and friendships will be betrayed. Table 21 will have you guessing to the last page, who will live to see the new millennium and who will not. (less)', 1),
	(256, 'The Eight', 'Katherine Neville', 598, 1477, 'English', '1990-01-14', NULL, 'The Eight #1', 'covers/cover257.png', 'Computer expert Cat Velis is heading for a job to Algeria. Before she goes, a mysterious fortune teller warns her of danger, and an antique dealer asks her to search for pieces to a valuable chess set that has been missing for years...In the South of France in 1790 two convent girls hide valuable pieces of a chess set all over the world, because the game that can be played with them is too powerful.... (less)', 1),
	(257, 'Firefly Lane', 'Kristin Hannah', 479, 2582, 'English', '2008-02-05', NULL, 'Firefly Lane #1', 'covers/cover258.png', 'From the New York Times bestselling author of On Mystic Lake comes a powerful novel of love, loss, and the magic of friendship. . . .

In the turbulent summer of 1974, Kate Mularkey has accepted her place at the bottom of the eighth-grade social food chain. Then, to her amazement, the “coolest girl in the world” moves in across the street and wants to be her friend. Tully Hart seems to have it all---beauty, brains, ambition. On the surface they are as opposite as two people can be: Kate, doomed to be forever uncool, with a loving family who mortifies her at every turn. Tully, steeped in glamour and mystery, but with a secret that is destroying her. They make a pact to be best friends forever; by summer’s end they’ve become TullyandKate. Inseparable.

So begins Kristin Hannah’s magnificent new novel. Spanning more than three decades and playing out across the ever-changing face of the Pacific Northwest, Firefly Lane is the poignant, powerful story of two women and the friendship that becomes the bulkhead of their lives.

From the beginning, Tully is desperate to prove her worth to the world. Abandoned by her mother at an early age, she longs to be loved unconditionally. In the glittering, big-hair era of the eighties, she looks to men to fill the void in her soul. But in the buttoned-down nineties, it is television news that captivates her. She will follow her own blind ambition to New York and around the globe, finding fame and success . . . and loneliness. 

Kate knows early on that her life will be nothing special. Throughout college, she pretends to be driven by a need for success, but all she really wants is to fall in love and have children and live an ordinary life. In her own quiet way, Kate is as driven as Tully. What she doesn’t know is how being a wife and mother will change her . . . how she’ll lose sight of who she once was, and what she once wanted. And how much she’ll envy her famous best friend. . . .

For thirty years, Tully and Kate buoy each other through life, weathering the storms of friendship---jealousy, anger, hurt, resentment. They think they’ve survived it all until a single act of betrayal tears them apart . . . and puts their courage and friendship to the ultimate test.

Firefly Lane is for anyone who ever drank Boone’s Farm apple wine while listening to Abba or Fleetwood Mac. More than a coming-of-age novel, it’s the story of a generation of women who were both blessed and cursed by choices. It’s about promises and secrets and betrayals. And ultimately, about the one person who really, truly knows you---and knows what has the power to hurt you . . . and heal you. Firefly Lane is a story you’ll never forget . . . one you’ll want to pass on to your best friend. (less)', 1),
	(258, 'Night World, No. 3', 'L.J. Smith', 732, 4381, 'English', '2009-04-07', NULL, 'Night World #7-9', 'covers/cover259.png', 'Includes:
Book 7 - Huntress
Book 8 - Black Dawn
Book 9 - Witchlight

Vampires, werewolves, witches, shapeshifters - they live among us without our knowledge. Night World is their secret society, a secret society with very strict rules. And falling in love breaks all the laws of the Night World.

The apocalypse is drawing near. But four Wild Powers can save the world from the impending doom. Circle Daybreak, an underground organization with both Night World and human members, is searching for the four who can stop the darkness.

A vampire hunter - who is half vampire - stalks her own kind to protect humans in Huntress.

In Black Dawn, Maggie stumbles upon an old Night World kingdom where the ruling vampire prince is both an enemy and an ally.

And Circle Daybreak hires Keller, a shapeshifting panther, to guard a new Wild power in Witchlight. But when Keller falls in love with the Wild Power''s soulmate, her love could destroy everything... (less)', 1),
	(259, 'Paranormalcy', 'Kiersten White', 335, 2207, 'English', '2010-08-31', NULL, 'Paranormalcy #1', 'covers/cover260.png', 'Evie’s always thought of herself as a normal teenager, even though she works for the International Paranormal Containment Agency, her ex-boyfriend is a faerie, she’s falling for a shape-shifter, and she’s the only person who can see through supernatural glamours.

She’s also about to find out that she may be at the center of a dark faerie prophecy promising destruction to all paranormal creatures.

So much for normal. (less)', 1),
	(260, 'When Breath Becomes Air', 'Paul Kalanithi', 208, 3612, 'English', '2016-01-19', NULL, NULL, 'covers/cover261.png', 'For readers of Atul Gawande, Andrew Solomon, and Anne Lamott, a profoundly moving, exquisitely observed memoir by a young neurosurgeon faced with a terminal cancer diagnosis who attempts to answer the question ''What makes a life worth living?''

At the age of thirty-six, on the verge of completing a decade''s worth of training as a neurosurgeon, Paul Kalanithi was diagnosed with stage IV lung cancer. One day he was a doctor treating the dying, and the next he was a patient struggling to live. And just like that, the future he and his wife had imagined evaporated. When Breath Becomes Air chronicles Kalanithi''s transformation from a naïve medical student "possessed," as he wrote, "by the question of what, given that all organisms die, makes a virtuous and meaningful life" into a neurosurgeon at Stanford working in the brain, the most critical place for human identity, and finally into a patient and new father confronting his own mortality.

What makes life worth living in the face of death? What do you do when the future, no longer a ladder toward your goals in life, flattens out into a perpetual present? What does it mean to have a child, to nurture a new life as another fades away? These are some of the questions Kalanithi wrestles with in this profoundly moving, exquisitely observed memoir.

Paul Kalanithi died in March 2015, while working on this book, yet his words live on as a guide and a gift to us all. "I began to realize that coming face to face with my own mortality, in a sense, had changed nothing and everything," he wrote. "Seven words from Samuel Beckett began to repeat in my head: ''I can''t go on. I''ll go on.''" When Breath Becomes Air is an unforgettable, life-affirming reflection on the challenge of facing death and on the relationship between doctor and patient, from a brilliant writer who became both. (less)', 1),
	(261, 'The Purpose Driven Life: What on Earth Am I Here for?', 'Rick Warren', 334, 4037, 'English', '2007-02-01', NULL, NULL, 'covers/cover262.png', 'A #1 New York Times bestseller, The Purpose Driven Life will help you understand why you are alive and reveal God''s amazing plan for you both here and now, and for eternity. Rick Warren will guide you through a personal forty-day spiritual journey that will transform your answer to life''s most important question: What on earth am I here for? Knowing God''s purpose for creating you will reduce your stress, focus your energy, simplify your decisions, give meaning to your life, and most important, prepare you for eternity.

Movie stars and political leaders aren''t the only ones turning to Rick Warren for spiritual guidance. Millions of people from NBA and LPGA players to corporate executives to high school students to prison inmates meet regularly to discuss The Purpose Driven Life. (less)', 1),
	(262, 'The Epic of Gilgamesh', 'Anonymous', 120, 4304, 'English', '2006-05-04', NULL, NULL, 'covers/cover263.png', 'Miraculously preserved on clay tablets dating back as much as four thousand years, the poem of Gilgamesh, king of Uruk, is the world’s oldest epic, predating Homer by many centuries. The story tells of Gilgamesh’s adventures with the wild man Enkidu, and of his arduous journey to the ends of the earth in quest of the Babylonian Noah and the secret of immortality. Alongside its themes of family, friendship and the duties of kings, the Epic of Gilgamesh is, above all, about mankind’s eternal struggle with the fear of death.

The Babylonian version has been known for over a century, but linguists are still deciphering new fragments in Akkadian and Sumerian. (less)', 1),
	(263, 'Long Walk to Freedom', 'Nelson Mandela', 656, 1255, 'English', '1995-10-01', NULL, 'Long Walk to Freedom #1-2', 'covers/cover264.png', 'Nelson Mandela is one of the great moral and political leaders of our time: an international hero whose lifelong dedication to the fight against racial oppression in South Africa won him the Nobel Peace Prize and the presidency of his country.

Since his triumphant release in 1990 from more than a quarter-century of imprisonment, Mandela has been at the center of the most compelling and inspiring political drama in the world. As president of the African National Congress and head of South Africa''s anti-apartheid movement, he was instrumental in moving the nation toward multiracial government and majority rule. He is revered everywhere as a vital force in the fight for human rights and racial equality.

The foster son of a Thembu chief, Mandela was raised in the traditional, tribal culture of his ancestors, but at an early age learned the modern, inescapable reality of what came to be called apartheid, one of the most powerful and effective systems of oppression ever conceived. In classically elegant and engrossing prose, he tells of his early years as an impoverished student and law clerk in a Jewish firm in Johannesburg, of his slow political awakening, and of his pivotal role in the rebirth of a stagnant ANC and the formation of its Youth League in the 1950s.

He describes the struggle to reconcile his political activity with his devotion to his family, the anguished breakup of his first marriage, and the painful separations from his children. He brings vividly to life the escalating political warfare in the fifties between the ANC and the government, culminating in his dramatic escapades as an underground leader and the notorious Rivonia Trial of 1964, at which he was sentenced to life imprisonment. Herecounts the surprisingly eventful twenty-seven years in prison and the complex, delicate negotiations that led both to his freedom and to the beginning of the end of apartheid. Finally he provides the ultimate inside account. (less)', 1),
	(264, 'A Castle of Doomsday', 'Michael G. Kramer', 280, 4178, 'English', '2010-09-17', NULL, NULL, 'covers/cover265.png', 'A Castle of Doomsday, is historical fiction closely based on fact and it is also the story of the castles inside the city walls of York.

William the First built two castles within the walls of York. One at Bailey Hill and the other one was York Castle which has since become known as "Clifford''s Tower." The original castles were constructed of timber. They were burned down by the people around York and their Danish Viking allies.

Richard the First was the son of King Henry II and gained fame by his courage, becoming known as Richard the Lion Heart and who presided over the apparent massacre of Jews at the keep of York Castle in England.

The Normans replaced it with a second timber castle keep which was destroyed in a storm in 1228. After that, the stone structure was built, and that still stands today. It was built of stone and is called Clifford''s Tower because King Edward II had Baron de Clifford hanged from the battlements of the Keep of York Castle for treason in 1322 A.D.... [From the back cover] (less)', 1),
	(265, 'Master of the Game', 'Sidney Sheldon', 489, 3874, 'English', '1993-01-01', NULL, 'The Game #1', 'covers/cover266.png', 'One of Sidney Sheldon''s most popular and bestselling titles, repackaged and reissued for a new generation of fans. Kate Blackwell is one of the richest and most powerful women in the world. She is an enigma, a woman surrounded by a thousand unanswered questions. Her father was a diamond prospector who struck it rich beyond his wildest dreams. Her mother was the daughter of a crooked Afrikaaner merchant. Her conception was itself an act of hate-filled vengeance. At the extravagent celebrations of her ninetieth birthday, there are toasts from a Supreme Court Judge and a telegram from the White House. And for Kate there are ghosts, ghosts of absent friends and of enemies. Ghosts from a life of blackmail and murder. Ghosts from an empire spawned by naked ambition! Sidney Sheldon is one of the most popular storytellers in the world. This is one of his best-loved novels, a compulsively readable thriller, packed with suspense, intrigue and passion. It will recruit a new generation of fans to his writing. (less)', 1),
	(266, 'The Demon King', 'Cinda Williams Chima', 506, 1471, 'English', '2009-10-06', NULL, 'Seven Realms #1', 'covers/cover267.png', 'Times are hard in the mountain city of Fellsmarch. Reformed thief Han Alister will do almost anything to eke out a living for his family. The only thing of value he has is something he can''t sell—the thick silver cuffs he''s worn since birth. They''re clearly magicked—as he grows, they grow, and he''s never been able to get them off.

One day, Han and his clan friend, Dancer, confront three young wizards setting fire to the sacred mountain of Hanalea. Han takes an amulet from Micah Bayar, son of the High Wizard, to keep him from using it against them. Soon Han learns that the amulet has an evil history—it once belonged to the Demon King, the wizard who nearly destroyed the world a millennium ago. With a magical piece that powerful at stake, Han knows that the Bayars will stop at nothing to get it back.

Meanwhile, Raisa ana''Marianna, princess heir of the Fells, has her own battles to fight. She''s just returned to court after three years of freedom in the mountains—riding, hunting, and working the famous clan markets. Raisa wants to be more than an ornament in a glittering cage. She aspires to be like Hanalea—the legendary warrior queen who killed the Demon King and saved the world. But her mother has other plans for her...

The Seven Realms tremble when the lives of Hans and Raisa collide, fanning the flames of the smoldering war between clans and wizards. (less)', 1),
	(267, 'Tooth for Tooth', 'J.K. Franko', NULL, 4936, 'English', '2020-04-04', NULL, 'Talion #2', 'covers/cover268.png', '“A thrilling sequel... Franko has me hooked.” – Independent Book Review

What would you do if you got away with murder? Would you stop there? Could you?

Susie and Roy thought that they committed the perfect crime.

Their planning was meticulous. Their execution was flawless.

But, there is always a loose end, isn’t there? Always a singing bone.

Now, while enemies multiply and suspicions abound, their perfect world begins to crumble.

The hunters have become the hunted.

"...one of the most intricate, well thought out and executed crime novels I''ve ever read..." - Amazon Top 100 Reviewer (less)', 1),
	(268, 'Sons and Lovers', 'D.H. Lawrence', 654, 3028, 'English', '1999-08-17', NULL, NULL, 'covers/cover269.png', '"She was a brazen hussy."

"She wasn''t. And she was pretty, wasn''t she?"

"I didn''t look ... And tell your girls, my son, that when they''re running after you, they''re not to come and ask your mother for you - tell them that - brazen baggages you meet at dancing classes"

The marriage of Gertrude and Walter Morel has become a battleground. Repelled by her uneducated and sometimes violent husband, delicate Gertrude devotes her life to her children, especially to her sons, William and Paul - determined they will not follow their father into working down the coal mines. But conflict is evitable when Paul seeks to escape his mother''s suffocating grasp through relationships with women his own age. Set in Lawrence''s native Nottinghamshire, Sons and Lovers is a highly autobiographical and compelling portrayal of childhood, adolescence and the clash of generations. (less)', 1),
	(269, 'I Am Malala: The Story of the Girl Who Stood Up for Education and Was Shot by the Taliban', 'Malala Yousafzai', 327, 2865, 'English', '2013-10-08', NULL, NULL, 'covers/cover270.png', 'I come from a country that was created at midnight. When I almost died it was just after midday.

When the Taliban took control of the Swat Valley in Pakistan, one girl spoke out. Malala Yousafzai refused to be silenced and fought for her right to an education.

On Tuesday, October 9, 2012, when she was fifteen, she almost paid the ultimate price. She was shot in the head at point-blank range while riding the bus home from school, and few expected her to survive.

Instead, Malala''s miraculous recovery has taken her on an extraordinary journey from a remote valley in northern Pakistan to the halls of the United Nations in New York. At sixteen, she has become a global symbol of peaceful protest and the youngest-ever Nobel Peace Prize laureate.

I Am Malala is the remarkable tale of a family uprooted by global terrorism, of the fight for girls'' education, of a father who, himself a school owner, championed and encouraged his daughter to write and attend school, and of brave parents who have a fierce love for their daughter in a society that prizes sons. (less)', 1),
	(270, 'Insomnia', 'Stephen King', 890, 183, 'Spanish', '2005-02-28', NULL, NULL, 'covers/cover271.png', 'This is an alternate cover edition for ISBN 9780451184962.
Since his wife died, Ralph Roberts has been having trouble sleeping. Each night he awakens a little earlier until he''s barely sleeping at all. During his late night vigils and walks, he observes some strange things going on in Derry, Maine. He sees colored ribbons streaming from people''s heads. He witnesses two strange little men wandering the city under cover of night. He begins to suspect that these visions are something more than hallucinations brought about by sleep deprivation. Ralph and his friend, widow Lois Chasse, become enmeshed in events of cosmic significance. (less)', 1),
	(271, 'The Raven', 'Edgar Allan Poe', 64, 2177, 'English', '1996-04-25', NULL, NULL, 'covers/cover272.png', 'In Gustave Doré, one of the most prolific and successful book illustrators of the late 19h century, Edgar Allan Poe''s renowned poem The Raven found perhaps its most perfect artistic interpreter. Doré''s dreamlike, otherworldly style, tinged with melancholy, seems ideally matched to the bleak despair of Poe''s celebrated work, among the most popular American poems ever written.
This volume reprints all 26 of Doré''s detailed, masterly engravings from a rare 19th-century edition of the poem. Relevant lines from the poem are printed on facing pages and the complete text is also included. Admirers of Doré will find ample evidence here of his characteristic ability to capture the mood and meaning of a work of literature in striking imagery; lovers of The Raven will delight in seeing its mournful musing on love and loss given dramatic pictorial form. (less)', 1),
	(272, 'Eleanor Oliphant Is Completely Fine', 'Gail Honeyman', 336, 1682, 'English', '2017-05-09', NULL, NULL, 'covers/cover273.png', 'Librarian''s note: An alternative cover edition can be found here

No one’s ever told Eleanor that life should be better than fine

Meet Eleanor Oliphant: she struggles with appropriate social skills and tends to say exactly what she’s thinking. Nothing is missing in her carefully timetabled life of avoiding unnecessary human contact, where weekends are punctuated by frozen pizza, vodka, and phone chats with Mummy.

But everything changes when Eleanor meets Raymond, the bumbling and deeply unhygienic IT guy from her office. When she and Raymond together save Sammy, an elderly gentleman who has fallen, the three rescue one another from the lives of isolation that they had been living. Ultimately, it is Raymond’s big heart that will help Eleanor find the way to repair her own profoundly damaged one. If she does, she''ll learn that she, too, is capable of finding friendship—and even love—after all.

Smart, warm, uplifting, Eleanor Oliphant Is Completely Fine is the story of an out-of-the-ordinary heroine whose deadpan weirdness and unconscious wit make for an irresistible journey as she realizes. . .

the only way to survive is to open your heart. (less)', 1),
	(273, 'Dueling Fates', 'Stephanie M. Allen', NULL, 2821, NULL, '2020-06-30', NULL, NULL, 'covers/cover274.png', 'In the world of Erez, three kingdoms share a tentative peace. In the far west, Princess Isemay yearns for much more than frilly dresses and etiquette classes. While her twin sister, Alena, prepares for life as a monarch in a neighboring kingdom, Isemay roams the woods with her loyal cheetah, hunting dagger strapped to her belt. It''s only when two surprising visitors arrive at the castle that Isemay must come to terms with her royal future - and a secret magical heritage. Now engaged to the king of the east, Isemay prepares for a position she never wanted.

After saying good-bye to all that she loves, Princess Alena travels north in trepidation - fully prepared to marry a spoiled prince she does not desire and usurp the throne from his insane father who does not deserve it. But when tragedy strikes at her wedding ceremony and she is wrongfully imprisoned, she can only hope that her hurried plea for help will reach her father in time.

Frantic to save her sister - and against the wishes of her betrothed - Isemay joins the army sent to free Alena. A mysterious encounter with a dragon in disguise leaves her with a warning that her life is in danger - but can it save her from the battle to come? (less)', 1),
	(274, 'Angels'' Blood', 'Nalini Singh', 339, 3043, 'English', '2009-03-03', NULL, 'Guild Hunter #1', 'covers/cover275.png', 'USA Today bestselling author Nalini Singh introduces a world of beauty and bloodlust, where angels hold sway over vampires…

Vampire hunter Elena Deveraux knows she’s the best—but she doesn’t know if she’s good enough for this job. Hired by the dangerously beautiful Archangel Raphael, a being so lethal that no mortal wants his attention, only one thing is clear—failure is not an option…even if the task is impossible.

Because this time, it’s not a wayward vamp she has to track. It’s an archangel gone bad.

The job will put Elena in the midst of a killing spree like no other…and pull her to the razor’s edge of passion. Even if the hunt doesn’t destroy her, succumbing to Raphael’s seductive touch just may. For when archangels play, mortals break… (less)', 1),
	(275, 'Franz Kafka''s The Castle (Dramatization)', 'David Fishelson', 59, 3275, 'English', '2003-06-01', NULL, NULL, 'covers/cover276.png', 'Note - This is not the novel by Franz Kafka! For the novel see The Castle (less)', 1),
	(276, 'On the Island', 'Tracey Garvis Graves', 368, 4939, 'English', '2012-08-16', NULL, 'On the Island #1', 'covers/cover277.png', 'When thirty-year-old English teacher Anna Emerson is offered a job tutoring T.J. Callahan at his family''s summer rental in the Maldives, she accepts without hesitation; a working vacation on a tropical island trumps the library any day.

T.J. Callahan has no desire to leave town, not that anyone asked him. He''s almost seventeen and if having cancer wasn''t bad enough, now he has to spend his first summer in remission with his family—and a stack of overdue assignments—instead of his friends.

Anna and T.J. are en route to join T.J.''s family in the Maldives when the pilot of their seaplane suffers a fatal heart attack and crash-lands in the Indian Ocean. Adrift in shark-infested waters, their life jackets keep them afloat until they make it to the shore of an uninhabited island. Now Anna and T.J. just want to survive and they must work together to obtain water, food, fire, and shelter.

Their basic needs might be met but as the days turn to weeks, and then months, the castaways encounter plenty of other obstacles, including violent tropical storms, the many dangers lurking in the sea, and the possibility that T.J.''s cancer could return. As T.J. celebrates yet another birthday on the island, Anna begins to wonder if the biggest challenge of all might be living with a boy who is gradually becoming a man. (less)', 1),
	(277, 'Station Eleven', 'Emily St. John Mandel', 333, 2976, 'English', '2014-09-09', NULL, NULL, 'covers/cover278.png', 'Set in the days of civilization''s collapse, Station Eleven tells the story of a Hollywood star, his would-be savior, and a nomadic group of actors roaming the scattered outposts of the Great Lakes region, risking everything for art and humanity.

One snowy night a famous Hollywood actor slumps over and dies onstage during a production of King Lear. Hours later, the world as we know it begins to dissolve. Moving back and forth in time—from the actor''s early days as a film star to fifteen years in the future, when a theater troupe known as the Traveling Symphony roams the wasteland of what remains—this suspenseful, elegiac, spellbinding novel charts the strange twists of fate that connect five people: the actor, the man who tried to save him, the actor''s first wife, his oldest friend, and a young actress with the Traveling Symphony, caught in the crosshairs of a dangerous self-proclaimed prophet. (less)', 1),
	(278, 'The Surgeon', 'Tess Gerritsen', 416, 1065, 'English', '2005-01-01', NULL, 'Rizzoli & Isles #1', 'covers/cover279.png', 'IN BOSTON, THERE''S A KILLER ON THE LOOSE...

A killer who targets lone women, who breaks into their apartments and performs terrifying ritualistic acts of torture on them before finishing them off. His surgical skills lead police to suspect he is a physician - a physician who, instead of saving lives, takes them.

But as homicide detective Thomas Moore and his partner Jane Rizzoli begin their investigation, they make a startling discovery. Closely linked to these killings is Catherine Cordell, a beautiful doctor with a mysterious past. Two years ago she was subjected to a horrifying rape and shot her attacker dead.

Now the man she believes she killed seems to be stalking her once again, and this time he knows exactly where to find her... (less)', 1),
	(279, 'Ana Rocha: Shadows of Justice', 'Ammar Habib', 218, 2605, 'English', '2018-02-23', NULL, NULL, 'covers/cover280.png', 'Available in paperback, Kindle, and Kindle Unlimited!
#1 Bestseller in Crime Thrillers!

Co-written by award-winning author Ammar Habib and an accomplished police detective comes this riveting crime novel!

Ana Rocha is a woman on fire. Being talented and from a well-off family, Ana could have become anything. But driven by her sister''s murder, Ana chose the path of an undercover narcotics officer. Ana has made a vow to help clean up the streets of Houston. The journey her duty takes her on forces her to confront her worst nightmares and face the city’s most ruthless criminals. The further she goes down this path, the more the line between her two lives begins to blur. And soon, this journey brings her face-to-face with a monster from her past.

What readers are saying:
"Fans of James Patterson and Lee Child will fall in love with Ana Rocha!"
"This is a great story that gives a great perspective of what police officers and Texas Rangers go through and the sacrifices many of them make."
"This story has it all: emotions, drama, thrills, and action!" (less)', 1),
	(280, 'Gathering Blue', 'Lois Lowry', 240, 1560, 'English', '2000-09-25', NULL, 'The Giver  #2', 'covers/cover281.png', 'In her strongest work to date, Lois Lowry once again creates a mysterious but plausible future world. It is a society ruled by savagery and deceit that shuns and discards the weak. Left orphaned and physically flawed, young Kira faces a frightening, uncertain future. Blessed with an almost magical talent that keeps her alive, she struggles with ever broadening responsibilities in her quest for truth, discovering things that will change her life forever.

As she did in The Giver, Lowry challenges readers to imagine what our world could become, and what will be considered valuable. Every reader will be taken by Kira''s plight and will long ponder her haunting world and the hope for the future.

(less)', 1),
	(281, 'Pedro Páramo', 'Juan Rulfo', 128, 2172, 'English', '1994-03-10', NULL, NULL, 'covers/cover282.png', 'A classic of Mexican modern literature about a haunted village.

As one enters Juan Rulfo''s legendary novel, one follows a dusty road to a town of death. Time shifts from one consciousness to another in a hypnotic flow of dreams, desires, and memories, a world of ghosts dominated by the figure of Pedro Páramo - lover, overlord, murderer.

Rulfo''s extraordinary mix of sensory images, violent passions, and unfathomable mysteries has been a profound influence on a whole generation of Latin American writers, including Carlos Fuentes, Mario Vargas Llosa, and Gabriel García Márquez. To read Pedro Páramo today is as overwhelming an experience as when it was first published in Mexico back in 1955. (less)', 1),
	(282, 'The Alexandria Quartet', 'Lawrence Durrell', 884, 2047, 'English', '1991-12-01', NULL, 'Alexandria Quartet #1-4', 'covers/cover283.png', 'Lawrence Durrell''s series of four novels set in Alexandria, Egypt during the 1940s. The lush and sensuous series consists of Justine(1957) Balthazar(1958) Mountolive(1958) Clea(1960).
Justine, Balthazar and Mountolive use varied viewpoints to relate a series of events in Alexandria before World War II. In Clea, the story continues into the years during the war.
One L.G. Darley is the primary observer of the events, which include events in the lives of those he loves, and those he knows. In Justine, Darley attempts to recover from and put into perspective his recently ended affair with a woman. Balthazar reinterprets the romantic perspective he placed on the affair and its aftermath in Justine, in more philosophical and intellectual terms.
Mountolive tells a story minus interpretation, and Clea reveals Darley''s healing, and coming to love another woman.
(less)', 1),
	(283, 'Martin Eden', 'Jack London', 480, 5978, 'English', '1994-02-01', NULL, NULL, 'covers/cover284.png', 'Alternate cover edition of ISBN 9780140187724

The semiautobiographical Martin Eden is the most vital and original character Jack London ever created. Set in San Francisco, this is the story of Martin Eden, an impoverished seaman who pursues, obsessively and aggressively, dreams of education and literary fame. London, dissatisfied with the rewards of his own success, intended Martin Eden as an attack on individualism and a criticism of ambition; however, much of its status as a classic has been conferred by admirers of its ambitious protagonist.

Andrew Sinclair''s wide-ranging introduction discusses the conflict between London''s support of socialism and his powerful self-will. Sinclair also explores the parallels and divergences between the life of Martin Eden and that of his creator, focusing on London''s mental depressions and how they affected his depiction of Eden. (less)', 1),
	(284, 'Karolina Dalca, Dark Eyes', 'M.R. Noble', NULL, 704, 'English', '2020-12-16', NULL, NULL, 'covers/cover285.png', 'Blindsided by an attack that destroys her home and blamed for murder, Karolina Dalca, a half-vampire, escapes, only to plunge into the magical societies from which she was sheltered.

Betrayed by those around her, she abandons her dreams of becoming an investigator and flees, trusting only herself. Her police internship would never prove more useful. Hoofing it through the wilderness, she makes it to her university dorm, disheveled but delightfully deflowered.

Enter a full vampire: one wielding dark magic and a ride out of Canada. A fugitive from the law, Karo complies with his demands to escape, unsure whether his requests are bewitched. She vows to clear her name and avenge her mother''s death, but Karo''s family secrets aren''t so easily left behind. (less)', 1),
	(285, 'The Last Temptation of Christ', 'Nikos Kazantzakis', 506, 5736, 'English', '1998-03-01', NULL, NULL, 'covers/cover286.png', 'The internationally renowned novel about the life and death of Jesus Christ.

Hailed as a masterpiece by critics worldwide, The Last Temptation of Christ is a monumental reinterpretation of the Gospels that brilliantly fleshes out Christ’s Passion. This literary rendering of the life of Jesus Christ has courted controversy since its publication by depicting a Christ far more human than the one seen in the Bible. He is a figure who is gloriously divine but earthy and human, a man like any other—subject to fear, doubt, and pain.

In elegant, thoughtful prose Nikos Kazantzakis, one of the greats of modern literature, follows this Jesus as he struggles to live out God’s will for him, powerfully suggesting that it was Christ’s ultimate triumph over his flawed humanity, when he gave up the temptation to run from the cross and willingly laid down his life for mankind, that truly made him the venerable redeemer of men.

“Spiritual dynamite.” —San Francisco Chronicle

“A searing, soaring, shocking novel.” —Time (less)', 1),
	(286, 'Eye for Eye', 'J.K. Franko', 432, 87, 'English', '2019-06-22', NULL, 'Talion #1', 'covers/cover287.png', 'What would YOU do if someone hurt the one you love?

Roy and Susie are the perfect couple, an ideal family living a fairy-tale life... until their teenage daughter is senselessly killed.

Just as they’re managing to put that tragic loss behind them, a complete stranger approaches Roy in a bar with a drunken proposal—he invokes their daughter’s memory to ask Roy to kill a man.

All is not as it seems, however, and Roy and Susie soon find themselves navigating an intricate web of deception, betrayal, and revenge.

Can Roy and Susie outwit their hidden enemies? And what secrets lie buried in their past that could destroy them?


Eye for Eye is the pulse-pounding Book One of the Talion crime thriller series which begins with the Eye for Eye Trilogy.

Eye for Eye
Tooth for Tooth
Life for Life

If you like smart, fast-paced thrillers with unexpected twists, then you’ll love J.K. Franko’s ride on the dark side. (less)', 1),
	(287, 'Doomsday Book', 'Connie Willis', 578, 176, 'English', '1992-07-01', NULL, 'Oxford Time Travel #1', 'covers/cover288.png', 'For Kivrin, preparing an on-site study of one of the deadliest eras in humanity''s history was as simple as receiving inoculations against the diseases of the fourteenth century and inventing an alibi for a woman traveling alone. For her instructors in the twenty-first century, it meant painstaking calculations and careful monitoring of the rendezvous location where Kivrin would be received.

But a crisis strangely linking past and future strands Kivrin in a bygone age as her fellows try desperately to rescue her. In a time of superstition and fear, Kivrin--barely of age herself--finds she has become an unlikely angel of hope during one of history''s darkest hours.

Connie Willis draws upon her understanding of the universalities of human nature to explore the ageless issues of evil, suffering, and the indomitable will of the human spirit. (less)', 1),
	(288, 'Persepolis: The Story of a Childhood', 'Marjane Satrapi', 153, 1273, 'English', '2004-06-01', NULL, 'Persepolis #1-2', 'covers/cover289.png', 'A New York Times Notable Book
A Time Magazine “Best Comix of the Year”
A San Francisco Chronicle and Los Angeles Times Best-seller

Wise, funny, and heartbreaking, Persepolis is Marjane Satrapi’s memoir of growing up in Iran during the Islamic Revolution. In powerful black-and-white comic strip images, Satrapi tells the story of her life in Tehran from ages six to fourteen, years that saw the overthrow of the Shah’s regime, the triumph of the Islamic Revolution, and the devastating effects of war with Iraq. The intelligent and outspoken only child of committed Marxists and the great-granddaughter of one of Iran’s last emperors, Marjane bears witness to a childhood uniquely entwined with the history of her country.

Persepolis paints an unforgettable portrait of daily life in Iran and of the bewildering contradictions between home life and public life. Marjane’s child’s-eye view of dethroned emperors, state-sanctioned whippings, and heroes of the revolution allows us to learn as she does the history of this fascinating country and of her own extraordinary family. Intensely personal, profoundly political, and wholly original, Persepolis is at once a story of growing up and a reminder of the human cost of war and political repression. It shows how we carry on, with laughter and tears, in the face of absurdity. And, finally, it introduces us to an irresistible little girl with whom we cannot help but fall in love. (less)', 1),
	(289, 'Sybil: The Classic True Story of a Woman Possessed by Sixteen Personalities', 'Flora Rheta Schreiber', 481, 4317, 'English', '1989-05-25', NULL, NULL, 'covers/cover290.png', 'Here is the unbelievable yet true story of Sybil Dorsett, a survivor of terrible childhood abuse who as an adult was a victim of sudden and mysterious blackouts. What happened during those blackouts has made Sybil''s experience one of the most famous psychological cases in the world. (less)', 1),
	(290, 'The Magicians'' Guild', 'Trudi Canavan', 467, 2133, 'English', '2004-01-31', NULL, 'The Black Magician Trilogy #1', 'covers/cover291.png', '"We should expect this young woman to be more powerful than our average novice, possibly even more powerful than the average magician."

This year, like every other, the magicians of Imardin gather to purge the city of undesirables. Cloaked in the protection of their sorcery, they move with no fear of the vagrants and miscreants who despise them and their work-—until one enraged girl, barely more than a child, hurls a stone at the hated invaders...and effortlessly penetrates their magical shield.

What the Magicians'' Guild has long dreaded has finally come to pass. There is someone outside their ranks who possesses a raw power beyond imagining, an untrained mage who must be found and schooled before she destroys herself and her city with a force she cannot yet control. (less)', 1),
	(291, 'Weaveworld', 'Clive Barker', 721, 1448, 'English', '2001-08-20', NULL, NULL, 'covers/cover292.png', 'Clive Barker has made his mark on modern fiction by exposing all that is surreal and magical in the ordinary world --- and exploring the profound and overwhelming terror that results. With its volatile mix of the fantastical and the contemporary, the everyday and the otherworldly, Weaveworld is an epic work of dark fantasy and horror -- a tour de force from one of today''s most forceful and imaginative artists.

Barker turns from his usual horror to epic-length fantasy for this account of the Fugue, a magical land inhabited by descendants of supernatural beings who once shared the earth with humans. The Fugue has been woven into a carpet for protection against those who would destroy it; the death of its guardian occasions a battle between good and particularly repulsive evil forces for control of the Fugue. Weaveworld is rich with memorable characters, exciting situations, and pockets of Barker''s trademark horror. (less)', 1),
	(292, 'Succubus Blues', 'Richelle Mead', 343, 5745, 'English', '2007-03-01', NULL, 'Georgina Kincaid #1', 'covers/cover293.png', 'When it comes to jobs in hell, being a succubus seems pretty glamorous. A girl can be anything she wants, the wardrobe is killer, and mortal men will do anything just for a touch. Granted, they often pay with their souls, but why get technical?

But Seattle succubus Georgina Kincaid''s life is far less exotic. At least there''s her day job at a local bookstore--free books; all the white chocolate mochas she can drink; and easy access to bestselling, sexy writer, Seth Mortensen, aka He Whom She Would Give Anything to Touch but Can''t.

But dreaming about Seth will have to wait. Something wicked is at work in Seattle''s demon underground. And for once, all of her hot charms and drop-dead one-liners won''t help because Georgina''s about to discover there are some creatures out there that both heaven and hell want to deny. . . (less)', 1),
	(293, 'Warm Bodies', 'Isaac Marion', 256, 4121, 'English', '2012-12-25', NULL, 'Warm Bodies #1', 'covers/cover294.png', 'Now a major motion picture from Summit Entertainment.

R is having a no-life crisis—he is a zombie. He has no memories, no identity, and no pulse, but he is a little different from his fellow Dead. He may occasionally eat people, but he’d rather be riding abandoned airport escalators, listening to Sinatra in the cozy 747 he calls home, or collecting souvenirs from the ruins of civilization.

And then he meets a girl.

First as his captive, then his reluctant guest, Julie is a blast of living color in R’s gray landscape, and something inside him begins to bloom. He doesn''t want to eat this girl—although she looks delicious—he wants to protect her. But their unlikely bond will cause ripples they can’t imagine, and their hopeless world won’t change without a fight. (less)', 1),
	(294, 'Portnoy''s Complaint', 'Philip Roth', 274, 1407, 'English', '1995-05-18', NULL, NULL, 'covers/cover295.png', 'The famous confession of Alexander Portnoy, who is thrust through life by his unappeasable sexuality, yet held back at the same time by the iron grip of his unforgettable childhood. Hilariously funny, boldly intimate, startlingly candid, Portnoy’s Complaint was an immediate bestseller upon its publication in 1969, and is perhaps Roth’s best-known book.

Portnoy''s Complaint n. [after Alexander Portnoy (1933-)] A disorder in which strongly-felt ethical and altruistic impulses are perpetually warring with extreme sexual longings, often of a perverse nature. Spielvogel says: ''Acts of exhibitionism, voyeurism, fetishism, auto-eroticism and oral coitus are plentiful; as a consequence of the patient''s "morality," however, neither fantasy nor act issues in genuine sexual gratification, but rather in overriding feelings of shame and the dread of retribution, particularly in the form of castration.'' (Spielvogel, O. ''The Puzzled Penis'', Internationale Zeitschrift fur Psychoanalyse, Vol. XXIV, p. 909.) it is believed by Spielvogel that many of the symptoms can be traced to the bonds obtaining in the mother-child relationship. (less)', 1),
	(295, 'Captive in the Dark', 'C.J. Roberts', 276, 3230, 'English', '2011-07-20', NULL, 'The Dark Duet #1', 'covers/cover296.png', 'Caleb is a man with a singular interest in revenge. Kidnapped as a young boy and sold into slavery by a power-hungry mobster, he has thought of nothing but vengeance. For twelve years he has immersed himself in the world of pleasure slaves searching for the one man he holds ultimately responsible. Finally, the architect of his suffering has emerged with a new identity, but not a new nature. If Caleb is to get close enough to strike, he must become the very thing he abhors and kidnap a beautiful girl to train her to be all that he once was.

Eighteen-year-old Olivia Ruiz has just woken up in a strange place. Blindfolded and bound, there is only a calm male voice to welcome her. His name is Caleb, though he demands to be called Master. Olivia is young, beautiful, naïve and willful to a fault. She has a dark sensuality that cannot be hidden or denied, though she tries to accomplish both. Although she is frightened by the strong, sadistic, and arrogant man who holds her prisoner, what keeps Olivia awake in the dark is her unwelcome attraction to him.

WARNING: This book contains very disturbing situations, dubious consent, strong language, and graphic violence. (less)', 1),
	(296, 'Christine', 'Stephen King', 411, 1483, 'French', '2001-06-13', NULL, NULL, 'covers/cover297.png', 'Master storyteller Stephen King presents the classic #1 national bestseller of the ultimate vehicle of terror!

“This is the story of a lover’s triangle…It was bad from the start. And it got worse in a hurry.”

It’s love at first sight for high school student Arnie Cunningham when he and his best friend Dennis Guilder spot the dilapidated 1958 red-and-white Plymouth Fury for sale—dubbed “Christine” by its original cantankerous owner—rusting away on a front lawn of their suburban Pennsylvania neighborhood. Dennis knows that Arnie’s never had much luck in the looks or popularity department, or really taken an interest in owning a car . . . but Christine quickly changes all that. Arnie suddenly has the newfound confidence to stick up for himself, going as far as dating the most beautiful girl at Libertyville High—transfer student Leigh Cabot—even as a mysteriously restored Christine systematically and terrifyingly consumes every aspect of Arnie’s life. Dennis and Leigh soon realize that they must uncover the awful truth behind a car with a horrifying and murderous history. Hell hath no fury like a woman scorned, and heaven help anyone who gets in Christine’s way… (less)', 1),
	(297, 'Bossypants', 'Tina Fey', 283, 3811, 'English', '2011-04-05', NULL, NULL, 'covers/cover298.png', 'Before Liz Lemon, before "Weekend Update," before "Sarah Palin," Tina Fey was just a young girl with a dream: a recurring stress dream that she was being chased through a local airport by her middle-school gym teacher. She also had a dream that one day she would be a comedian on TV.

She has seen both these dreams come true.

At last, Tina Fey''s story can be told. From her youthful days as a vicious nerd to her tour of duty on Saturday Night Live; from her passionately halfhearted pursuit of physical beauty to her life as a mother eating things off the floor; from her one-sided college romance to her nearly fatal honeymoon—from the beginning of this paragraph to this final sentence.

Tina Fey reveals all, and proves what we''ve all suspected: you''re no one until someone calls you bossy. (less)', 1),
	(298, 'North and South', 'John Jakes', 812, 2631, 'English', '2000-06-01', NULL, 'North and South #1', 'covers/cover299.png', 'Part history, part novel, this book chronicles two great American dynasties over three generations. Though brought together in a friendship that neither jealousy nor violence could shatter, the Hazards and the Mains are torn apart by the storm of events that has divided the nation.', 1),
	(299, 'Paradox Effect: Time Travel and Purified DNA Merge to Halt the Collapse of Human Existence', 'Gabriel F.W. Koch', 284, 3646, NULL, '2015-09-27', NULL, NULL, 'covers/cover300.png', 'In 2554, the World is Coming to its End, unless an impossible mission through 600 years of time travel succeeds. Maternal instinct knows no boundaries, including the nano-neural-net intravenously installed in Dannia Weston''s mind to repress her identity, allowing her to perform a mission 300 years before her time. Transported to the year 1954, Dannia becomes a woman with a mid-twentieth century persona, college educated with an aptitude for mechanical invention. Due to her work during the war, she is employed by the U.S. government on a secret project. But what no one knows-including Dannia or those who sent her back to tinker with the mechanical past to reduce future pollution-is what might happen should she become emotionally involved in 1954. The 2254 science team programmed the nano-net to prevent the possibility of pregnancy, but each person reacts to strong emotional stimuli differently, and using birth control not available in 1954 is out of the question. When Dannia falls in love with Peter Hersh and becomes pregnant, her hormones erode a small section of the nano-chained network that stabilizes her new identity, triggering a mild memory rebirth...and threatening her mission and the fate of the world. (less)', 1),
	(300, 'Post Office', 'Charles Bukowski', 162, 3550, 'English', '2009-10-13', NULL, NULL, 'covers/cover301.png', '"It began as a mistake." By middle age, Henry Chinaski has lost more than twelve years of his life to the U.S. Postal Service. In a world where his three true, bitter pleasures are women, booze, and racetrack betting, he somehow drags his hangover out of bed every dawn to lug waterlogged mailbags up mud-soaked mountains, outsmart vicious guard dogs, and pray to survive the day-to-day trials of sadistic bosses and certifiable coworkers.

This classic 1971 novel--the one that catapulted its author to national fame--is the perfect introduction to the grimly hysterical world of legendary writer, poet, and Dirty Old Man Charles Bukowski and his fictional alter ego, Chinaski. (less)', 1),
	(301, 'Lover Unleashed', 'J.R. Ward', 512, 5782, 'English', '2011-03-29', NULL, 'Black Dagger Brotherhood #9', 'covers/cover302.png', 'Number-one New York Times best-selling author J.R. Ward''s thrilling new novel in the Black Dagger Brotherhood series.

Payne, twin sister of Vishous, is cut from the same dark, seductive cloth as her brother. Imprisoned for eons by their mother, the Scribe Virgin, she finally frees herself - only to face a devastating injury.

Manuel Manello, M.D., is drafted by the Brotherhood to save her as only he can - but when the human surgeon and the vampire warrior meet, their two worlds collide in the face of their undeniable passion. With so much working against them, can love prove stronger than the birthright and the biology that separates them?

18 hours and 37 minutes. (less)', 1),
	(302, 'Hometown Girl at Heart', 'Kirsten Fullmer', 321, 1539, 'English', '2016-03-30', NULL, 'Hometown #1', 'covers/cover303.png', 'Tara has always been too engrossed in her work - refurbishing the historical homes in Smithville. She keeps a tight rein on her jobs and her emotions buried, but she’s losing control of both since that ridiculous city boy investor showed up.

New in town, Justin is confident that his ultra modern resorts will bring Smithville into the twenty-first century. If only the local-yokels and their ringleader, the gorgeous and peculiar Tara, would stop interfering.

With her quirky and protective hometown behind her, will Tara confront Justin and the town’s long buried secrets to take on the financial and emotional risk of a lifetime? (less)', 1),
	(303, 'Fang', 'James Patterson', 309, 4634, 'English', '2010-03-15', NULL, 'Maximum Ride #6', 'covers/cover304.png', 'Being a kid with wings -- constantly on the run -- has never been easy, and Max and her flock are getting tenser than ever. First, on a trip to Africa, they meet a mysterious billionaire whose intense scrutiny of the Flock makes her fear the worst. And as if an impending apocalypse weren''t bad enough, canny birdkid Angel makes a dire prophecy about Max''s soul mate: Fang will be the first to die. Max''s desperate desire to protect Fang brings the two closer than ever. But can the team weather the storm, or will the turmoil rip them apart for the last time? (less)', 1),
	(304, 'The Wee Free Men', 'Terry Pratchett', 375, 3501, 'English', '2004-01-01', NULL, 'Discworld #30', 'covers/cover305.png', 'Librarian''s Note: For an alternate cover edition of the same ISBN, click here.

"Another world is colliding with this one," said the toad. "All the monsters are coming back."

"Why?" said Tiffany.

"There''s no one to stop them."

There was silence for a moment.

Then Tiffany said, "There''s me."

Armed only with a frying pan and her common sense, Tiffany Aching, a young witch-to-be, is all that stands between the monsters of Fairyland and the warm, green Chalk country that is her home. Forced into Fairyland to seek her kidnapped brother, Tiffany allies herself with the Chalk''s local Nac Mac Feegle - aka the Wee Free Men - a clan of sheep-stealing, sword-wielding, six-inch-high blue men who are as fierce as they are funny. Together they battle through an eerie and ever-shifting landscape, fighting brutal flying fairies, dream-spinning dromes, and grimhounds - black dogs with eyes of fire and teeth of razors - before ultimately confronting the Queen of the Elves, absolute ruler of a world in which reality intertwines with nightmare. And in the final showdown, Tiffany must face her cruel power alone...

In a riveting narrative that is equal parts suspense and humor, Carnegie Medalist Terry Pratchett returns to his internationally popular Discworld with a breathtaking tale certain to leave fans, new and old, enthralled. (less)', 1),
	(305, 'American Pastoral', 'Philip Roth', 432, 5690, 'English', '1998-03-05', NULL, 'Complete Nathan Zuckerman #6', 'covers/cover306.png', 'Pulitzer Prize Winner (1998)

In American Pastoral, Philip Roth gives us a novel of unqualified greatness that is an elegy for all the twentieth century''s promises of prosperity, civic order, and domestic bliss. Roth''s protagonist is Seymour ''Swede'' Levov—a legendary high school athlete, a devoted family man, a hard worker, the prosperous inheritor of his father''s Newark glove factory—comes of age in thriving, triumphant post-war America. And then one day in 1968, Swede''s beautiful American luck deserts him.

For Swede''s adored daughter, Merry, has grown from a loving, quick-witted girl into a sullen, fanatical teenager—a teenager capable of an outlandishly savage act of political terrorism. And overnight Swede is wrenched out of the longed-for American pastoral and into the indigenous American berserk. Compulsively readable, propelled by sorrow, rage, and a deep compassion for its characters, this is Roth''s masterpiece. (less)', 1),
	(306, 'Yertle the Turtle and Other Stories', 'Dr. Seuss', 80, 914, 'English', '1958-04-12', NULL, NULL, 'covers/cover307.png', 'In this hilarious book, featuring three timeless fables, Dr. Seuss explores the pitfalls of growing too big for your boots!

With his unique combination of hilarious stories, zany pictures and riotous rhymes, Dr. Seuss has been delighting young children and helping them learn to read for over fifty years. Creator of the wonderfully anarchic Cat in the Hat, and ranking among the UK’s top ten favourite children’s authors, Seuss is firmly established as a global best-seller, with nearly half a million books sold worldwide.

This delightful book forms part of the third stage in HarperCollins’ major Dr. Seuss rebrand programme. With the relaunch of six more titles in January 2004, such all-time favourites as The Lorax, The Foot Book and Yertle the Turtle boast bright new covers that incorporate much needed guidance on reading levels: Blue Back Books are for parents to share with young children, Green Back Books are for budding readers to tackle on their own, and Yellow Back Books are for older, more fluent readers to enjoy. Yertle the Turtle and other stories belongs to the Yellow Back Book range. (less)', 1),
	(307, 'Crossing the Seas: A Diary of My Thoughts', 'Yuehai Xiao', 328, 3004, NULL, '2012-10-08', NULL, NULL, 'covers/cover308.png', 'About the book (A teaser) "Crossing the Seas: A Diary of My Thoughts" "We can forgive a child who is afraid of the dark; the real tragedy of life is when men are afraid of the light." -- Plato "A dream you dream alone is only a dream. A dream you dream together is reality." ---John Lennon " Reason and judgment are the qualities of a leader. " - Tacitus As long as you are alive, and I am alive, our dreams will remain alive. Even after Dr. Martin Luther King was shot, his dreams are still alive and have been passed to the next generation to pursue freedom, democracy, equality, justice, peace, and prosperity. Thanks to his wake-up call and pains-taking efforts, modern society is much more open-minded and tolerant towards differences. A good leader should be a good reader; A good reader can become a good leader. Reading minds can be as challenging as reading books. This book documents my book reading experience and my reflections upon politics, education, psychology, communication, religion, and philosophy...etc. as well as my mind reading experience. It is a collection of my posts on my blog and on Facebook, where I have been sharing my thoughts and interacting with top political and business leaders, celebrities, and scholars in America, Europe, and Asia, implicitly and explicitly during the past two years (Sept.2010 through Sept.2012). It is possible that my Facebook posts might have inspired lots of creative celebrities who produced stunning songs, movies, and TV shows. Here are some songs: "Born this way," "The Edge of Glory," "Hair," "You and I," "Government Hooker," "Princess Die,""Princess High," "So Happy I Could Die," "Bloody Mary," "Highway Unicorn"--- by Lady Gaga "I Love You This Big" by Scotty McCreery, American Idol 2011 winner "Brighter Than the Sun" by Colbie Caillat "I Wanna Go" by Brittney Spears "Options" by Gomez "Firework" by Katy Perry "Love You Like a Love Song" by Selina Gomez "Year of 4" by Beyonce "Princess of China" by Coldplay "International Love" by Pit Bull "Mr. Know-It-All," "Stronger" by Kelly Clarkson "Mr. President " by Coco Jambo WE CAN BE ANYTHING by Apl.de.ap "I Am Your Leader" by Nicki Minaj "Triumph" by Mariah Carey "Give Your Heart A Break," "Sky Scraper" by Demi Lovato "My Hair Song" by Rhett & Link " There''s A Place For Us" by Carrie Underwood "One Thing," "Take Me Home" by One Direction "Let Go," "Chasing Satellite" by Tomas Fiss "Rolling in the Deep" by Adele "Your Body" by Christina Aguilera "Somebody to Love""Turn to You" "As Long as You Love Me" "Believe""Boyfriend" "Dr.Bieber" by Justin Bieber ...among others. Movies and TV shows: The King''s Speech, The Master, Magic Mike, Dr. Who, The Who, The Paper Boy, Killing Them Softly, Captain America, Captain China, Captain Planet, The Dictator, The Hunger Game, The Man with Iron Fists, A Gifted Man, Think Like a Man, Master Class, Big Brother, Under-Covered Boss, Train the Dragon...and so forth. Others: Tedx, SpaceX, MITx, HarvardX, Milk X... It feels good to be approved, appreciated, and accepted by so many intelligent people. I hope to reach out to more people and make more connections, which are vital. (less)', 1),
	(308, 'As You Like It', 'William Shakespeare', 263, 4840, 'English', '2011-08-23', NULL, NULL, 'covers/cover309.png', 'Readers and audiences have long greeted As You Like It with delight. Its characters are brilliant conversationalists, including the princesses Rosalind and Celia and their Fool, Touchstone. Soon after Rosalind and Orlando meet and fall in love, the princesses and Touchstone go into exile in the Forest of Arden, where they find new conversational partners. Duke Frederick, younger brother to Duke Senior, has overthrown his brother and forced him to live homeless in the forest with his courtiers, including the cynical Jaques. Orlando, whose older brother Oliver plotted his death, has fled there, too.

Recent scholars have also grounded the play in the issues of its time. These include primogeniture, passing property from a father to his oldest son. As You Like It depicts intense conflict between brothers, exposing the human suffering that primogeniture entails. Another perspective concerns cross-dressing. Most of Orlando’s courtship of Rosalind takes place while Rosalind is disguised as a man, “Ganymede.” At her urging, Orlando pretends that Ganymede is his beloved Rosalind. But as the epilogue reveals, the sixteenth-century actor playing Rosalind was male, following the practice of the time. In other words, a boy played a girl playing a boy pretending to be a girl. (less)', 1),
	(309, 'The Final Warning', 'James Patterson', 256, 4901, 'English', '2008-03-17', NULL, 'Maximum Ride #4', 'covers/cover310.png', 'In this breathtaking new story from the astonishing imagination of James Patterson, a girl has to save herself from an army assembled just to capture her -- and maybe save the planet while she''s at it.

Maximum Ride is a perfectly normal teenager who just happens to be able to fly, the result of an out-of-control government experiment.

Max and the other members of the Flock -- six kids who share her remarkable ability -- have been asked to aid a group of environmental scientists studying the causes of global warming. The expedition seems like a perfect combination of adventure, activism -- and escaping government forces who watch the Flock like a hawk.

But even in Antarctica, trapped in the harshest weather on our planet, Maximum Ride is an irresistible target in constant danger. For whoever controls her powers could also control the world. Maximum Ride is James Patterson''s greatest character, a heroine who manages to be human and fearless at once. (less)', 1),
	(310, 'Archibald Finch and the Lost Witches', 'Michel Guyon', 350, 3567, 'English', NULL, NULL, NULL, 'covers/cover311.png', 'What happened 500 years ago was never supposed to resurface.
Exploring his Grandma’s scary manor, Archibald stumbles upon a dark family secret, linked to a time of great fears and superstitions. Key to that mystery: an ancient terrestrial globe, populated by the most fantastic creatures.
When he unlocks the storm inside by accident, the risk-averse boy gets whisked into the underworld of Lemurea, where a battle started in the Middle Ages has yet to be settled. Down here, it’s light versus darkness, magic versus fire, witches versus dragons. But not any kind of witches —an army of young girls, with the most magical weapons. And not any kind of dragons —Marodors, enigmatic monsters, part beast, part human, which will make you rethink everything you thought you knew about dragons.
While Archibald is thrust into an amazing adventure that will test his survival skills, on the flip side of the Earth, his sister Hailee faces her own challenges. Seeking to solve Archibald’s disappearance, she uncovers the grim plans of a dark priest.
Two breathtaking stories, running parallel with one another, but tightly intertwined. Two worlds, on a dangerous collision course...
---
The first installment in a phenomenal series, The Lost Witches reads like an addicting thriller —and sets the stage for more adventures to come for Archibald Finch. (less)', 1),
	(311, 'Mrs. Frisby and the Rats of NIMH', 'Robert C. O''Brien', 240, 4601, 'English', '2003-05-01', NULL, 'Rats of NIMH #1', 'covers/cover312.png', 'Mrs. Frisby, a widowed mouse with four small children, must move her family to their summer quarters immediately, or face almost certain death. But her youngest son, Timothy, lies ill with pneumonia and must not be moved. Fortunately, she encounters the rats of NIMH, an extraordinary breed of highly intelligent creatures, who come up with a brilliant solution to her dilemma. (less)', 1),
	(312, 'Four: A Divergent Story Collection', 'Veronica Roth', 208, 1747, 'English', '2014-07-08', NULL, 'Divergent #0.1-0.4', 'covers/cover313.png', 'Two years before Beatrice Prior made her choice, the sixteen-year-old son of Abnegation’s faction leader did the same. Tobias’s transfer to Dauntless is a chance to begin again. Here, he will not be called the name his parents gave him. Here, he will not let fear turn him into a cowering child.

Newly christened “Four,” he discovers during initiation that he will succeed in Dauntless. Initiation is only the beginning, though; Four must claim his place in the Dauntless hierarchy. His decisions will affect future initiates as well as uncover secrets that could threaten his own future—and the future of the entire faction system.

Two years later, Four is poised to take action, but the course is still unclear. The first new initiate who jumps into the net might change all that. With her, the way to righting their world might become clear. With her, it might become possible to be Tobias once again.

From #1 New York Times bestselling author Veronica Roth comes a companion volume to the worldwide bestselling DIVERGENT series, told from the per-spective of the immensely popular character Tobias. The four pieces included here—THE TRANSFER, THE INITIATE, THE SON, and THE TRAITOR—plus three additional exclusive scenes, give readers an electrifying glimpse into the history and heart of Tobias, and set the stage for the epic saga of the DIVERGENT trilogy. (less)', 1),
	(313, 'The High Lord', 'Trudi Canavan', 644, 1874, 'English', '2004-11-04', NULL, 'The Black Magician Trilogy #3', 'covers/cover314.png', 'In the city of Imardin, where those who wield magic wield power, a young street-girl, adopted by the Magician''s Guild, finds herself at the centre of a terrible plot that may destroy the entire world...

Sonea has learned much at the magicians'' guild and the other novices now treat her with a grudging respect. But she cannot forget what she witnessed in the High Lord''s underground room - or his warning that the realm''s ancient enemy is growing in power once more. As Sonea learns more, she begins to doubt her guildmaster''s word. Could the truth really be as terrifying as Akkarin claims, or is he trying to trick her into assisting in some unspeakably dark scheme? (less)', 1),
	(314, 'The Kill Order', 'James Dashner', 327, 5810, 'English', '2012-08-14', NULL, 'The Maze Runner #4', 'covers/cover315.png', 'Before WICKED was formed, before the Glade was built, before Thomas entered the Maze, sun flares hit the earth and mankind fell to disease.

Mark and Trina were there when it happened, and they survived. But surviving the sun flares was easy compared to what came next. Now a disease of rage and lunacy races across the eastern United States, and there’s something suspicious about its origin. Worse yet, it’s mutating, and all evidence suggests that it will bring humanity to its knees.

Mark and Trina are convinced there’s a way to save those left living from descending into madness. And they’re determined to find it—if they can stay alive. Because in this new, devastated world, every life has a price. And to some, you’re worth more dead than alive. (less)', 1),
	(315, 'Royal Assassin', 'Robin Hobb', 675, 3788, 'English', '2002-11-05', NULL, 'The Farseer Trilogy #2', 'covers/cover316.png', 'Fitz has survived his first hazardous mission as king’s assassin, but is left little more than a cripple. Battered and bitter, he vows to abandon his oath to King Shrewd, remaining in the distant mountains. But love and events of terrible urgency draw him back to the court at Buckkeep, and into the deadly intrigues of the royal family.

Renewing their vicious attacks on the coast, the Red-Ship Raiders leave burned-out villages and demented victims in their wake. The kingdom is also under assault from within, as treachery threatens the throne of the ailing king. In this time of great danger, the fate of the kingdom may rest in Fitz’s hands—and his role in its salvation may require the ultimate sacrifice. (less)', 1),
	(316, 'Bone Crossed', 'Patricia Briggs', 300, 1672, 'English', '2009-02-05', NULL, 'Mercy Thompson #4', 'covers/cover317.png', 'By day, Mercy is a car mechanic in the sprawling Tri-Cities of Eastern Washington. By night, she explores her preternatural side. As a shapeshifter with some unique talents, Mercy has often found herself having to maintain a tenuous harmony between the human and the not so human. This time she may get more than she bargained for.

Marsilia, the local Vampire Queen, has learned that Mercy crossed her by slaying a member of her clan—and she''s out for blood. But since Mercy is protected from direct reprisal by the werewolf pack (and her close relationship with its sexy Alpha), it won''t be Mercy''s blood Marsilia is after.

It''ll be her friends''. (less)', 1),
	(317, 'The Light Between Oceans', 'M.L. Stedman', 362, 3447, 'English', '2012-07-31', NULL, NULL, 'covers/cover318.png', 'Librarian''s note: An alternate cover edition can be found here

Australia, 1926. After four harrowing years fighting on the Western Front, Tom Sherbourne returns home to take a job as the lighthouse keeper on Janus Rock, nearly half a day''s journey from the coast. To this isolated island, where the supply boat comes once a season and shore leaves are granted every other year at best, Tom brings a young, bold, and loving wife, Isabel. Years later, after two miscarriages and one stillbirth, the grieving Isabel hears a baby''s cries on the wind. A boat has washed up onshore carrying a dead man and a living baby.

Tom, whose records as a lighthouse keeper are meticulous and whose moral principles have withstood a horrific war, wants to report the man and infant immediately. But Isabel has taken the tiny baby to her breast. Against Tom''s judgment, they claim her as their own and name her Lucy. When she is two, Tom and Isabel return to the mainland and are reminded that there are other people in the world. Their choice has devastated one of them.

M. L. Stedman''s mesmerizing, beautifully written debut novel seduces us into accommodating Isabel''s decision to keep this "gift from God." And we are swept into a story about extraordinarily compelling characters seeking to find their North Star in a world where there is no right answer, where justice for one person is another''s tragic loss. (less)', 1),
	(318, 'About a Boy', 'Nick Hornby', 307, 5505, 'English', '2000-01-01', NULL, NULL, 'covers/cover319.png', '''How cool was Will Freeman?''

Too cool! At thirty-six, he''s as hip as a teenager. He''s single, child-free, goes to the right clubs and knows which trainers to wear. He''s also found a great way to score with women: attend single parents'' groups full of available (and grateful) mothers, all hoping to meet a Nice Guy.

Which is how Will meets Marcus, the oldest twelve-year-old on the planet. Marcus is a bit strange: he listens to Joni Mitchell and Mozart, looks after his mum and has never owned a pair of trainers. But Marcus latches on to Will - and won''t let go. Can Will teach Marcus how to grow up cool? And can Marcus help Will just to grow up? (less)', 1),
	(319, 'The Great Book of Amber', 'Roger Zelazny', 1258, 1601, 'English', '1999-12-01', NULL, 'The Chronicles of Amber #1-10 ', 'covers/cover320.png', 'Alternate cover edition can be found here

Roger Zelazny''s chronicles of Amber have earned their place as all-time classics of imaginative literature. Now, here are all ten novels, together in one magnificent omnibus volume. Witness the titanic battle for supremacy waged on Earth, in the Courts of Chaos, and on a magical world of mystery, adventure and romance.
--back cover (less)', 1),
	(320, 'The Gathering Storm', 'Robert Jordan', 783, 1174, 'English', '2009-10-27', NULL, 'The Wheel of Time #12', 'covers/cover321.png', 'The Wheel of Time turns and Ages come and go, leaving memories that become legend. Legend fades to myth, and even myth is long forgotten when the Age that gave it birth returns again. In the Third Age, an Age of Prophecy, the World and Time themselves hang in the balance. What was, what will be, and what is, may yet fall under the Shadow.

Tarmon Gai''don, the Last Battle, looms. And mankind is not ready.

The final volume of the Wheel of Time, A Memory of Light, was partially written by Robert Jordan before his untimely passing in 2007. Brandon Sanderson, New York Times bestselling author of the Mistborn books, and now Stormlight Archive, among others, was chosen by Jordan''s editor--his wife, Harriet McDougal--to complete the final volume, later expanded to three books.

In this epic novel, Robert Jordan''s international bestselling series begins its dramatic conclusion. Rand al''Thor, the Dragon Reborn, struggles to unite a fractured network of kingdoms and alliances in preparation for the Last Battle. As he attempts to halt the Seanchan encroachment northward--wishing he could form at least a temporary truce with the invaders--his allies watch in terror the shadow that seems to be growing within the heart of the Dragon Reborn himself.

Egwene al''Vere, the Amyrlin Seat of the rebel Aes Sedai, is a captive of the White Tower and subject to the whims of their tyrannical leader. As days tick toward the Seanchan attack she knows is imminent, Egwene works to hold together the disparate factions of Aes Sedai while providing leadership in the face of increasing uncertainty and despair. Her fight will prove the mettle of the Aes Sedai, and her conflict will decide the future of the White Tower--and possibly the world itself. (less)', 1),
	(321, '"Surely You''re Joking, Mr. Feynman!": Adventures of a Curious Character', 'Richard P. Feynman', 400, 5917, NULL, '2018-02-06', NULL, 'Feynman #1', 'covers/cover322.png', 'A New York Times bestseller—the outrageous exploits of one of this century''s greatest scientific minds and a legendary American original.

Richard Feynman, winner of the Nobel Prize in physics, thrived on outrageous adventures. Here he recounts in his inimitable voice his experience trading ideas on atomic physics with Einstein and Bohr and ideas on gambling with Nick the Greek; cracking the uncrackable safes guarding the most deeply held nuclear secrets; accompanying a ballet on his bongo drums; painting a naked female toreador. In short, here is Feynman''s life in all its eccentric—a combustible mixture of high intelligence, unlimited curiosity, and raging chutzpah. (less)', 1),
	(322, 'The Demon-Haunted World: Science as a Candle in the Dark', 'Carl Sagan', 459, 4734, 'English', '1997-02-25', NULL, NULL, 'covers/cover323.png', 'How can we make intelligent decisions about our increasingly technology-driven lives if we don’t understand the difference between the myths of pseudoscience and the testable hypotheses of science? Pulitzer Prize-winning author and distinguished astronomer Carl Sagan argues that scientific thinking is critical not only to the pursuit of truth but to the very well-being of our democratic institutions.

Casting a wide net through history and culture, Sagan examines and authoritatively debunks such celebrated fallacies of the past as witchcraft, faith healing, demons, and UFOs. And yet, disturbingly, in today''s so-called information age, pseudoscience is burgeoning with stories of alien abduction, channeling past lives, and communal hallucinations commanding growing attention and respect. As Sagan demonstrates with lucid eloquence, the siren song of unreason is not just a cultural wrong turn but a dangerous plunge into darkness that threatens our most basic freedoms. (less)', 1),
	(323, 'Americanah', 'Chimamanda Ngozi Adichie', 477, 5795, 'English', '2013-05-14', NULL, NULL, 'covers/cover324.png', 'Ifemelu and Obinze are young and in love when they depart military-ruled Nigeria for the West. Beautiful, self-assured Ifemelu heads for America, where despite her academic success, she is forced to grapple with what it means to be black for the first time. Quiet, thoughtful Obinze had hoped to join her, but with post-9/11 America closed to him, he instead plunges into a dangerous, undocumented life in London. Fifteen years later, they reunite in a newly democratic Nigeria, and reignite their passion—for each other and for their homeland. (less)', 1),
	(324, 'Women', 'Charles Bukowski', 291, 2707, 'English', '2014-07-29', NULL, NULL, 'covers/cover325.png', 'Alternate cover for this ISBN can be found here

Low-life writer and unrepentant alcoholic Henry Chinaski was born to survive. After decades of slacking off at low-paying dead-end jobs, blowing his cash on booze and women, and scrimping by in flea-bitten apartments, Chinaski sees his poetic star rising at last. Now, at fifty, he is reveling in his sudden rock-star life, running three hundred hangovers a year, and maintaining a sex life that would cripple Casanova.

With all of Bukowski''s trademark humor and gritty, dark honesty, this 1978 follow-up to Post Office and Factotum is an uncompromising account of life on the edge. (less)', 1),
	(325, 'The Eyes of the Dragon', 'Stephen King', 427, 139, 'English', '1993-05-13', NULL, NULL, 'covers/cover326.png', 'A kingdom is in turmoil as the old king dies, murdered by a strange and horrible poison. While the land of Delain mourns, the evil wizard Flagg, hatches an unscrupulous plot, which sees the King''s eldest son Peter imprisoned for his father''s murder, and the youngest son inherit the throne. Only Peter knows the truth about his own innocence and the evil that is Flagg. Only Peter can save Delain from the horror that Flagg has in store. But first, he must escape from the high tower. (less)', 1),
	(326, 'Die for Me', 'Amy Plum', 341, 1495, 'English', '2011-05-10', NULL, 'Revenants #1', 'covers/cover327.png', 'In the City of Lights, two star-crossed lovers battle a fate that is destined to tear them apart again and again for eternity.

When Kate Mercier''s parents die in a tragic car accident, she leaves her life--and memories--behind to live with her grandparents in Paris. For Kate, the only way to survive her pain is escaping into the world of books and Parisian art. Until she meets Vincent.

Mysterious, charming, and devastatingly handsome, Vincent threatens to melt the ice around Kate''s guarded heart with just his smile. As she begins to fall in love with Vincent, Kate discovers that he''s a revenant--an undead being whose fate forces him to sacrifice himself over and over again to save the lives of others. Vincent and those like him are bound in a centuries-old war against a group of evil revenants who exist only to murder and betray. Kate soon realizes that if she follows her heart, she may never be safe again. (less)', 1),
	(327, 'The Rosie Project', 'Graeme Simsion', 295, 5063, 'English', '2013-10-01', NULL, 'Don Tillman #1', 'covers/cover328.png', 'An international sensation, this hilarious, feel-good novel is narrated by an oddly charming and socially challenged genetics professor on an unusual quest: to find out if he is capable of true love.

Don Tillman, professor of genetics, has never been on a second date. He is a man who can count all his friends on the fingers of one hand, whose lifelong difficulty with social rituals has convinced him that he is simply not wired for romance. So when an acquaintance informs him that he would make a “wonderful” husband, his first reaction is shock. Yet he must concede to the statistical probability that there is someone for everyone, and he embarks upon The Wife Project. In the orderly, evidence-based manner with which he approaches all things, Don sets out to find the perfect partner. She will be punctual and logical—most definitely not a barmaid, a smoker, a drinker, or a late-arriver.

Yet Rosie Jarman is all these things. She is also beguiling, fiery, intelligent—and on a quest of her own. She is looking for her biological father, a search that a certain DNA expert might be able to help her with. Don''s Wife Project takes a back burner to the Father Project and an unlikely relationship blooms, forcing the scientifically minded geneticist to confront the spontaneous whirlwind that is Rosie—and the realization that love is not always what looks good on paper.

The Rosie Project is a moving and hilarious novel for anyone who has ever tenaciously gone after life or love in the face of overwhelming challenges. (less)', 1),
	(328, 'The Sunne in Splendour', 'Sharon Kay Penman', 936, 365, 'English', '1990-01-14', NULL, NULL, 'covers/cover329.png', 'A glorious novel of the controversial Richard III - a monarch betrayed in life by his allies and betrayed in death by history.

In this beautifully rendered modern classic, Sharon Kay Penman redeems Richard III - vilified as the bitter, twisted, scheming hunchback who murdered his nephews, the princes in the Tower - from his maligned place in history with a dazzling combination of research and storytelling. 

Born into the treacherous courts of fifteenth-century England, in the midst of what history has called The War of the Roses, Richard was raised in the shadow of his charismatic brother, King Edward IV. Loyal to his friends and passionately in love with the one woman who was denied him, Richard emerges as a gifted man far more sinned against than sinning. 

This magnificent retelling of his life is filled with all of the sights and sounds of battle, the customs and lore of the fifteenth century, the rigors of court politics, and the passions and prejudices of royalty. (less)', 1),
	(329, 'Grendel', 'John Gardner', 174, 3922, 'English', '2010-06-02', NULL, NULL, 'covers/cover330.png', 'The first and most terrifying monster in English literature, from the great early epic Beowulf, tells his side of the story in a book William Gass called "one of the finest of our contemporary fictions." (less)', 1),
	(330, 'Contact', 'Carl Sagan', 580, 1479, 'French', '1997-08-28', NULL, NULL, 'covers/cover331.png', 'Jeune astronome convaincue de l''existence d''une vie extraterrestre intelligente, Ellie Arroway doit faire face au scepticisme de la communauté scientifique à l''égard du projet "Argus", un programme d''écoute spatiale installé au Nouveau-Mexique qu''elle et son équipe tentent par tous les moyens de sauver. Jusqu''au jour où leurs ordinateurs captent un message rationnel émis non pas depuis la Terre, mais depuis Véga, une lointaine étoile. Ellie se lance alors à coeur perdu dans son déchiffrage, pour découvrir qu''il s''agit des plans d''un véhicule censé permettre à des humains de voyager dans l''espace afin de rencontrer ceux qui nous les ont adressés. Or ces êtres
semblent à présent impatients d''établir le contact : ils nous surveillent depuis longtemps, et le moment est peut-être venu pour eux de nous juger... (less)', 1),
	(331, 'The Boy Who Sneaks in My Bedroom Window', 'Kirsty Moseley', 256, 4434, 'English', '2012-04-28', NULL, 'The Boy Who Sneaks in My Bedroom Window #1', 'covers/cover332.png', 'Liam James, boy next door and total douchebag, is my brother’s best friend. I can’t stand him. Well, that’s not strictly true, at night I see a side of him that no one else does. Every night Liam becomes my safe haven, my protector, the one to chase the demons of my abusive childhood away and hold all the broken pieces of me together.

He’s cocky, he’s arrogant, and he’s also some sort of playboy in training. With his ‘hit it and quit it’ mentality, he’s the last person you’d want to fall in love with. I only wish someone had told my heart that…

The international bestselling novel, and finalist of the Goodreads choice awards YA fiction 2012. (less)', 1),
	(332, 'Monsters of Men', 'Patrick Ness', 643, 817, 'English', '2014-07-22', NULL, 'Chaos Walking #3', 'covers/cover333.png', 'As a world-ending war surges to life around them, Todd and Viola face monstrous decisions. The indigenous Spackle, thinking and acting as one, have mobilized to avenge their murdered people. Ruthless human leaders prepare to defend their factions at all costs, even as a convoy of new settlers approaches. And as the ceaseless Noise lays all thoughts bare, the projected will of the few threatens to overwhelm the desperate desire of the many. The consequences of each action, each word, are unspeakably vast: To follow a tyrant or a terrorist? To save the life of the one you love most or thousands of strangers? To believe in redemption or assume it is lost? Becoming adults amid the turmoil, Todd and Viola question all they have known, racing through horror and outrage toward a shocking finale. (less)', 1),
	(333, 'Only the Good Spy Young', 'Ally Carter', 265, 1970, 'English', '2010-06-29', NULL, 'Gallagher Girls #4', 'covers/cover334.png', 'When Cammie Morgan enrolled at the Gallagher Academy, she knew she was preparing for the dangerous life of a spy. What she didn’t know was that the serious, real-life danger would start during her junior year of high school. But that’s exactly what happened two months ago when Cammie faced off against an ancient terrorist organization dead set on kidnapping her.

Now the danger follows her everywhere, and even Cammie “The Chameleon” can’t hide. When a terrifying encounter in London reveals that one of her most-trusted allies is actually a rogue double-agent, Cammie no longer knows if she can trust her classmates, her teachers—or even her own heart.

In this fourth installment of the New York Times best-selling series, the Gallagher Girls must hack, spy, steal, and lie their way to the truth.as they go searching for answers, recognizing that the key to Cammie’s future may lie deep in the past. (less)', 1),
	(334, 'The Moonstone', 'Wilkie Collins', 528, 2929, 'English', '2001-09-11', NULL, NULL, 'covers/cover335.png', '"The Moonstone is a page-turner", writes Carolyn Heilbrun. "It catches one up and unfolds its amazing story through the recountings of its several narrators, all of them enticing and singular." Wilkie Collins’s spellbinding tale of romance, theft, and murder inspired a hugely popular genre–the detective mystery. Hinging on the theft of an enormous diamond originally stolen from an Indian shrine, this riveting novel features the innovative Sergeant Cuff, the hilarious house steward Gabriel Betteridge, a lovesick housemaid, and a mysterious band of Indian jugglers.

This Modern Library Paperback Classic is set from the definitive 1871 edition. (less)', 1),
	(335, 'The Brothers K', 'David James Duncan', 645, 1866, 'English', '1996-06-01', NULL, NULL, 'covers/cover336.png', 'Duncan took almost 10 years to follow up the publication of his much-praised first novel, The River Why, but this massive second effort is well worth the wait. It is a stunning work: a complex tapestry of family tensions, baseball, politics and religion, by turns hilariously funny and agonizingly sad. Highly inventive formally, the novel is mainly narrated by Kincaid Chance, the youngest son in a family of four boys and identical twin girls, the children of Hugh Chance, a discouraged minor-league ballplayer whose once-promising career was curtained by an industrial accident, and his wife Laura, an increasingly fanatical Seventh-Day Adventist. The plot traces the working-out of the family''s fate from the beginning of the Eisenhower years through the traumas of Vietnam. (less)', 1),
	(336, 'In Our Bones', 'Pernell Plath Meier', 266, 1947, 'English', '2020-10-06', NULL, NULL, 'covers/cover337.png', 'Powerful and unapologetic exploration of one woman''s journey as democracy fails and authoritarianism takes hold

Lauren’s happy childhood on a farm in Minnesota is shattered after an assault during her teen years, and she retreats into her own world as America falls apart. Hers was the last generation to grow up before the economic collapse that followed the Corona pandemic. Amidst roiling climate chaos, the government has been taken over by extremists, incompetents, and con-men who tear the country apart while clinging to power. Lauren is swept up in the madness when she falls for the wrong man. She’s looking for love and safety, but Bryan becomes distant and abusive as he obsesses over White Sharia and deepens his ties to the racist patriot militia group. Lauren worries about the safety of her sister and nephew, who is mixed-race. Will Lauren escape from Bryan and keep her nephew safe from danger? In a world where values are tested and morality is unsettlingly murky, Lauren must break free from the constraints in her mind to protect her family. (less)', 1),
	(337, 'Magic Bleeds', 'Ilona Andrews', 349, 1674, 'English', '2010-05-25', NULL, 'Kate Daniels #4', 'covers/cover338.png', 'Kate Daniels works for the Order of the Knights of Merciful Aid, officially as a liaison with the mercenary guild. Unofficially, she cleans up the paranormal problems no one else wants to handle—especially if they involve Atlanta’s shapeshifting community.

When she’s called in to investigate a fight at the Steel Horse, a bar midway between the territories of the shapeshifters and the necromancers, Kate quickly discovers there’s a new player in town. One who’s been around for thousands of years—and rode to war at the side of Kate’s father.

This foe may be too much even for Kate and Curran, the Lord of the Beasts, to handle. Because this time, Kate will be taking on family… (less)', 1),
	(338, 'For the Love of Armin', 'Michael G. Kramer', 325, 4825, NULL, '2017-05-26', NULL, NULL, 'covers/cover339.png', 'In September of the year 9 A.D., the young Germanic warrior known as Armin to his friends and Arminius to his Roman enemies, successfully took on and defeated three entire Roman legions. This resulted in the deaths of over twenty thousand Roman soldiers. This in turn resulted in the Roman emperor called Tiberius recalling all Roman military units from Germania. The Germanic tribes would associate for their common good, often meeting and forming up for offensive or defensive war, but they were always separate and very independent. Armin knew that the best way to ensure that his country was not bothered by outside invaders again was to become a single country complete with it own army and navy. In this he crossed swords with the independent temper of his own people. They did not want any king from anywhere telling them what to do. In due course, this resulted in even the members of his own family taking up arms against him in order to make sure that the tribes of Germania remained independent and free. Such was the concern of the ancient Germanic tribesmen that this might not be the case, that Armin was murdered by the members of his own family. (less)', 1),
	(339, 'The Heart Is a Lonely Hunter', 'Carson McCullers', 359, 959, 'English', '2000-09-08', NULL, NULL, 'covers/cover340.png', 'Carson McCullers’ prodigious first novel was published to instant acclaim when she was just twenty-three. Set in a small town in the middle of the deep South, it is the story of John Singer, a lonely deaf-mute, and a disparate group of people who are drawn towards his kind, sympathetic nature. The owner of the café where Singer eats every day, a young girl desperate to grow up, an angry drunkard, a frustrated black doctor: each pours their heart out to Singer, their silent confidant, and he in turn changes their disenchanted lives in ways they could never imagine. (less)', 1),
	(340, 'The Last Wish', 'Andrzej Sapkowski', 360, 1135, 'English', '2008-12-14', NULL, 'The Witcher #0.5', 'covers/cover341.png', 'Geralt the Witcher—revered and hated—is a man whose magic powers, enhanced by long training and a mysterious elixir, have made him a brilliant fighter and a merciless assassin. Yet he is no ordinary murderer: his targets are the multifarious monsters and vile fiends that ravage the land and attack the innocent.

But not everything monstrous-looking is evil and not everything fair is good... and in every fairy tale there is a grain of truth.

Librarian''s Note: Alternate cover edition of ASIN B0010SIPT4 (less)', 1),
	(341, 'The Art of Happiness', 'Dalai Lama XIV', 336, 4247, 'English', '1998-10-26', NULL, NULL, 'covers/cover342.png', 'Nearly every time you see him, he''s laughing, or at least smiling. And he makes everyone else around him feel like smiling. He''s the Dalai Lama, the spiritual and temporal leader of Tibet, a Nobel Prize winner, and an increasingly popular speaker and statesman. What''s more, he''ll tell you that happiness is the purpose of life, and that "the very motion of our life is towards happiness." How to get there has always been the question. He''s tried to answer it before, but he''s never had the help of a psychiatrist to get the message across in a context we can easily understand. Through conversations, stories, and meditations, the Dalai Lama shows us how to defeat day-to-day anxiety, insecurity, anger, and discouragement. Together with Dr. Cutler, he explores many facets of everyday life, including relationships, loss, and the pursuit of wealth, to illustrate how to ride through life''s obstacles on a deep and abiding source of inner peace. (less)', 1),
	(342, 'Blood Bound', 'Patricia Briggs', 292, 5611, 'English', '2007-01-30', NULL, 'Mercy Thompson #2', 'covers/cover343.png', 'Under the rule of science, there are no witch burnings allowed, no water trials or public lynchings. In return, the average law-abiding, solid citizen has little to worry about from the things that go bump in the night. Sometimes I wish I was an average citizen...

Mechanic Mercy Thompson has friends in low places-and in dark ones. And now she owes one of them a favor. Since she can shapeshift at will, she agrees to act as some extra muscle when her vampire friend Stefan goes to deliver a message to another of his kind.

But this new vampire is hardly ordinary-and neither is the demon inside of him. (less)', 1),
	(343, 'The Power and the Glory', 'Graham Greene', 222, 920, 'English', '2003-02-25', NULL, NULL, 'covers/cover344.png', 'In a poor, remote section of Southern Mexico, the paramilitary group, The Red Shirts have taken control. God has been outlawed, and the priests have been systematically hunted down and killed. Now, the last priest is on the run. Too human for heroism, too humble for martyrdom, the nameless little worldly “whiskey priest” is nevertheless impelled toward his squalid Calvary as much by his own compassion for humanity as by the efforts of his pursuers.
 
In his introduction, John Updike calls The Power and the Glory, “Graham Greene’s masterpiece…. The energy and grandeur of his finest novel derive from the will toward compassion, an ideal communism even more Christian than Communist.” (less)', 1),
	(344, 'Lola and the Boy Next Door', 'Stephanie Perkins', 338, 1509, 'English', '2011-09-29', NULL, 'Anna and the French Kiss #2', 'covers/cover345.png', 'Alternate Cove edition for ISBN 9780525423287

Lola Nolan is a budding costume designer, and for her, the more outrageous, sparkly, and fun the outfit, the better. And everything is pretty perfect in her life (right down to her hot rocker boyfriend) until the Bell twins, Calliope and Cricket, return to the neighborhood. When Cricket, a gifted inventor, steps out from his twin sister''s shadow and back into Lola''s life, she must finally reconcile a lifetime of feelings for the boy next door. (less)', 1),
	(345, 'Boy''s Life', 'Robert R. McCammon', 580, 2047, 'English', '1992-05-01', NULL, NULL, 'covers/cover346.png', 'In me are the memories of a boy''s life, spent in that realm of enchantments. These are the things I want to tell you....

Robert McCammon delivers "a tour de force of storytelling" (BookPage) in his award-winning masterpiece, a novel of Southern boyhood, growing up in the 1960s, that reaches far beyond that evocative landscape to touch readers universally.

Boy''s Life is a richly imagined, spellbinding portrait of the magical worldview of the young -- and of innocence lost.

Zephyr, Alabama, is an idyllic hometown for eleven-year-old Cory Mackenson -- a place where monsters swim the river deep and friends are forever. Then, one cold spring morning, Cory and his father witness a car plunge into a lake -- and a desperate rescue attempt brings his father face-to-face with a terrible, haunting vision of death. As Cory struggles to understand his father''s pain, his eyes are slowly opened to the forces of good and evil that surround him. From an ancient mystic who can hear the dead and bewitch the living, to a violent clan of moonshiners, Cory must confront the secrets that hide in the shadows of his hometown -- for his father''s sanity and his own life hang in the balance.... (less)', 1),
	(346, 'Body In The Woods A Jack Ludefance Novel', 'Behcet Kaya', 389, 5895, 'English', '2019-09-19', NULL, NULL, 'covers/cover347.png', 'Award-winning author Behcet Kaya has once again brought his PI protagonist Jack Ludefance to life in a novel of suspense and mystery, filled with indelible characters, and laced with threads of credible circumstances, in his latest book titled Body in the Woods.Set in the hills in Malibu, California, Jack is asked by his friend, a wealthy businessman in the military defense industry, to come to his aid to help solve a murder; because it seems his business partner’s body has turned up murdered and the police have pegged him as the prime suspect. Although not yet formally charged, he needs Jack’s help to find the real killer and thus secure his freedom, while solving the crime of who actually killed his partner. Jack obliges and travels from his home in Florida to Los Angeles to pick up the case. What begins as a step-by-step private investigation into the evidence surrounding the death of the notoriously cunning, smart and cleverly manipulating business partner of Jack’s client, turns into an international quagmire of intrigue, scientific secrets, and vast amounts of money. People with power, influence and fortunes are all jockeying for a once–in-a-lifetime business deal, while death surrounds the periphery of their involvement. (less)', 1),
	(347, 'Kiss the Girls', 'James Patterson', 481, 3784, 'English', '2000-07-01', NULL, 'Alex Cross #2', 'covers/cover348.png', 'In Los Angeles, a reporter investigating a series of murders is killed. In Chapel Hill, North Carolina, a beautiful medical intern suddenly disappears. In Washington D.C. Alex Cross is back to solve the most baffling and terrifying murder case ever. Two clever pattern killers are collaborating, cooperating, competing - and they are working coast to coast.', 1),
	(348, 'Les Liaisons dangereuses', 'Pierre Choderlos de Laclos', 448, 1367, 'English', '1999-03-18', NULL, NULL, 'covers/cover349.png', 'The complex moral ambiguities of seduction and revenge make Les Liaisons dangereuses (1782) one of the most scandalous and controversial novels in European literature. The subject of major film and stage adaptations, the novel''s prime movers, the Vicomte de Valmont and the Marquise de Merteuil, form an unholy alliance and turn seduction into a game - a game which they must win. This new translation gives Laclos a modern voice, and readers will be able a judge whether the novel is as "diabolical" and "infamous" as its critics have claimed, or whether it has much to tell us about the kind of world we ourselves live in. David Coward''s introduction explodes myths about Laclos''s own life and puts the book in its literary and cultural context. (less)', 1),
	(349, 'Bird by Bird: Some Instructions on Writing and Life', 'Anne Lamott', 237, 5352, NULL, '1995-09-01', NULL, NULL, 'covers/cover350.png', '"Thirty years ago my older brother, who was ten years old at the time, was trying to get a report on birds written that he''d had three months to write. [It] was due the next day. We were out at our family cabin in Bolinas, and he was at the kitchen table close to tears, surrounded by binder paper and pencils and unopened books on birds, immobilized by the hugeness of the task ahead. Then my father sat down beside him, put his arm around my brother''s shoulder, and said. ''Bird by bird, buddy. Just take it bird by bird.''"
With this basic instruction always in mind, Anne Lamott returns to offer us a new gift: a step-by-step guide on how to write and on how to manage the writer''s life. From "Getting Started,'' with "Short Assignments," through "Shitty First Drafts," "Character," "Plot," "Dialogue." all the way from "False Starts" to "How Do You Know When You''re Done?" Lamott encourages, instructs, and inspires. She discusses "Writers Block," "Writing Groups," and "Publication." Bracingly honest, she is also one of the funniest people alive.
If you have ever wondered what it takes to be a writer, what it means to be a writer, what the contents of your school lunches said about what your parents were really like, this book is for you. From faith, love, and grace to pain, jealousy, and fear, Lamott insists that you keep your eyes open, and then shows you how to survive. And always, from the life of the artist she turns to the art of life.
(less)', 1),
	(350, 'Adhaata Asao''s Liege', 'Afroz  Alam', 174, 4290, 'English', '2020-02-12', NULL, NULL, 'covers/cover351.png', 'A long time ago... He had imprisoned them in the caverns of Mt. Hemil. They who ravaged the city of Kushlam...The golden capital... The Gods spoke of a Prophecy then... And now it has come to pass. The dark enemy of yore rises. Only an incarnation of Lord Vishnu has the power to defeat and destroy the enemy of Kushlam. A farmer from Bamiyan, unaware of what destiny has in store for him, is pushed into circumstances beyond his control. Will he accept that he is the prophesised Avatar? Will he save Kushlam from its enemies and free the world from the fear of the trapped monsters who have found a way out of their infallible trap? (less)', 1),
	(351, 'The Beach', 'Alex Garland', 436, 3488, 'English', '1998-02-01', NULL, NULL, 'covers/cover352.png', 'After discovering a seemingly Edenic paradise on an island in a Thai national park, Richard soon finds that since civilized behavior tends to dissolve without external restraints, the utopia is hard to maintain. (Nancy Pearl)', 1),
	(352, 'Masquerade', 'Melissa de la Cruz', 307, 913, 'English', '2007-05-01', NULL, 'Blue Bloods #2', 'covers/cover353.png', 'Schuyler Van Alen is starting to get more comfortable with her newfound vampire powers, but she still has many unanswered questions. A trip to Italy in search of her grandfather only serves to make things more confusing. What secrets are the leaders of The Committee hiding? Meanwhile, back in New York, preparations are feverishly underway for the famous Four Hundred Ball. In true Blue Blood fashion, the ball is totally fab, complete with masksâ€”and hidden behind this masquerade is a revelation that will change the course of a young vampireâ€™s destiny.

The thrilling sequel in Melissa de la Cruzâ€™s vampire mythology has all the glamour, attitude, and vampire lore that made the first book a hit.
(less)', 1),
	(353, 'Tomorrow, When the War Began', 'John Marsden', 276, 4700, 'English', '2006-05-01', NULL, 'Tomorrow #1', 'covers/cover354.png', 'When Ellie and her friends return from a camping trip in the Australian bush, they find things hideously wrong — their families are gone. Gradually they begin to comprehend that their country has been invaded and everyone in their town has been taken prisoner. As the reality of the situation hits them, they must make a decision — run and hide, give themselves up and be with their families, or fight back. (less)', 1),
	(354, 'Wolf Hall', 'Hilary Mantel', 604, 622, 'English', '2010-08-31', NULL, 'Thomas Cromwell #1', 'covers/cover355.png', 'England in the 1520s is a heartbeat from disaster. If the king dies without a male heir, the country could be destroyed by civil war. Henry VIII wants to annul his marriage of twenty years and marry Anne Boleyn. The pope and most of Europe opposes him. Into this impasse steps Thomas Cromwell: a wholly original man, a charmer and a bully, both idealist and opportunist, astute in reading people, and implacable in his ambition. But Henry is volatile: one day tender, one day murderous. Cromwell helps him break the opposition, but what will be the price of his triumph? (less)', 1),
	(355, 'The Book of Negroes', 'Lawrence Hill', 512, 3663, 'English', '2015-01-12', NULL, NULL, 'covers/cover356.png', 'Based on a true story, "The Book of Negroes" tells the story of Aminata, a young girl abducted from her village in Mali aged 11 in 1755, and who, after a deathly journey on a slave ship where she witnesses the brutal repression of a slave revolt, is sold to a plantation owner in South Carolina, who rapes her. She is brought to New York, where she escapes her owner, and finds herself helping the British by recording all the freed slaves on the British side in the Revolutionary War in The Book of Negroes (a real historical document that can be found today at the National Archives at Kew).Aminata is sent to Nova Scotia to start a new life, but finds more hostility, oppression and tragedy. Separated from her one true love, and suffering the unimaginable loss of both her children who are taken away from her, she eventually joins a group of freed slaves on a harrowing odyssey back to Africa, and ends up in London as a living icon for Wilberforce and the other Abolitionists. "The Book of Negroes" is a pageturning narrative that manages to use Aminata''s heart-rending personal story to bring to life a harrowing chapter in our history. (less)', 1),
	(356, 'Daughter of Fortune', 'Isabel Allende', 432, 5042, 'English', '2006-05-02', NULL, 'Del Valle #1', 'covers/cover357.png', 'Orphaned at birth, Eliza Sommers is raised in the British colony of Valparaíso, Chile, by the well-intentioned Victorian spinster Miss Rose and her more rigid brother Jeremy. Just as she meets and falls in love with the wildly inappropriate Joaquín Andieta, a lowly clerk who works for Jeremy, gold is discovered in the hills of northern California. By 1849, Chileans of every stripe have fallen prey to feverish dreams of wealth. Joaquín takes off for San Francisco to seek his fortune, and Eliza, pregnant with his child, decides to follow him.

As we follow her spirited heroine on a perilous journey north in the hold of a ship to the rough-and-tumble world of San Francisco and northern California, we enter a world whose newly arrived inhabitants are driven mad by gold fever. A society of single men and prostitutes among whom Eliza moves--with the help of her good friend and savior, the Chinese doctor Tao Chien--California opens the door to a new life of freedom and independence for the young Chilean. Her search for the elusive Joaquín gradually turns into another kind of journey that transforms her over time, and what began as a search for love ends up as the conquest of personal freedom. (less)', 1),
	(357, 'Noughts & Crosses', 'Malorie Blackman', 479, 2061, 'English', '2006-08-08', NULL, 'Noughts and Crosses #1', 'covers/cover358.png', 'Two young people are forced to make a stand in this thought-provoking look at racism and prejudice in an alternate society.

Sephy is a Cross -- a member of the dark-skinned ruling class. Callum is a Nought -- a “colourless” member of the underclass who were once slaves to the Crosses. The two have been friends since early childhood, but that’s as far as it can go. In their world, Noughts and Crosses simply don’t mix. Against a background of prejudice and distrust, intensely highlighted by violent terrorist activity, a romance builds between Sephy and Callum -- a romance that is to lead both of them into terrible danger. Can they possibly find a way to be together? (less)', 1),
	(358, 'The Ask and the Answer', 'Patrick Ness', 553, 3917, 'English', '2014-07-22', NULL, 'Chaos Walking #2', 'covers/cover359.png', 'We were in the square, in the square where I''d run, holding her, carrying her, telling her to stay alive, stay alive till we got safe, till we got to Haven so I could save her - But there weren''t no safety, no safety at all, there was just him and his men...

Fleeing before a relentless army, Todd has carried a desperately wounded Viola right into the hands of their worst enemy, Mayor Prentiss. Immediately separated from Viola and imprisoned, Todd is forced to learn the ways of the Mayor''s new order. But what secrets are hiding just outside of town? And where is Viola? Is she even still alive? And who are the mysterious Answer? And then, one day, the bombs begin to explode...

"The Ask and the Answer" is a tense, shocking and deeply moving novel of resistance under the most extreme pressure. This is the second title in the "Chaos Walking" trilogy. (less)', 1),
	(359, 'The Constitution of the United States of America', 'Founding Fathers', 30, 3080, 'English', '1970-01-01', NULL, NULL, 'covers/cover360.png', 'The complete text of the United States Constitution, including all of the amendments. This inexpesnive pamphlet edition is sure to be prized by Americans of all ages.', 1),
	(360, 'Honor and Polygamy', 'Omar Farhad', 132, 3001, NULL, '2014-05-07', NULL, NULL, 'covers/cover361.png', 'Heartbreaking and timely novel by Afghan-American author follows one man''s journey from New York to the clutches of the Taliban and into an unintentional polygamist union. "He is picking up the same bags with the same clothes Lisa packed and folded a year ago. He wishes he were like his clothes, untouched by external forces." Family man Nick Blake is living in New York City and working for the United Nations. Born and raised in the United States with broad knowledge of the Afghan culture, he is living the All-American life with his wife, Lisa, and their children. His life is turned upside down when, while on a diplomatic mission to Afghanistan, Nick is kidnapped and finds himself in the clutches of the Taliban. Omar Farhad''s debut novel Honor and Polygamy follows Nick throughout his eighteen months in Afghanistan and the devastating and unexpected turns his life takes, as he learns the true meanings of home, history and culture. After being held captive for several months, Nick is forced to marry the sixteen-year-old Shaista. Although he cannot forget his beloved wife and children back home, he finds himself falling in love with his second wife and, overwhelmed with guilt, is torn between his old life and his new one. Honor and Polygamy is far from simply a captivating fiction story, but is also a brilliant commentary on the United States'' situation with Afghanistan. Farhad expresses his views on both the political and the cultural sides of Afghanistan. Politically, he is predicting how he feels the war will ultimately end, while culturally, he shows readers not familiar with Afghanistan that the 35-year-old war has created a population, which is uneducated, disloyal, and without identity. The United States and many other nations have continuously disrupted Afghanistan with no clear political objectives, and, in his novel, Farhad explores the consequences of these actions. The story of Nick Blake represents the reality of the Afghan culture and the results and disappointments of the political realities in Afghanistan, and shows readers just how unaware we all are of other cultures. Written by an author who has lived both the American and Afghan ways of life, Honor and Polygamy is a harrowing, haunting and deeply moving tale for our times. (less)', 1),
	(361, 'Where the Sidewalk Ends', 'Shel Silverstein', 176, 3101, 'English', '2002-11-01', NULL, NULL, 'covers/cover362.png', 'Where the Sidewalk Ends turns forty! Celebrate with this anniversary edition that features an eye-catching commemorative red sticker. This classic poetry collection, which is both outrageously funny and profound, has been the most beloved of Shel Silverstein''s poetry books for generations.

Where the sidewalk ends, Shel Silverstein''s world begins. There you''ll meet a boy who turns into a TV set and a girl who eats a whale. The Unicorn and the Bloath live there, and so does Sarah Cynthia Sylvia Stout who will not take the garbage out. It is a place where you wash your shadow and plant diamond gardens, a place where shoes fly, sisters are auctioned off, and crocodiles go to the dentist.

Shel Silverstein''s masterful collection of poems and drawings is one of Parent & Child magazine''s 100 Greatest Books for Kids. School Library Journal said, "Silverstein has an excellent sense of rhythm and rhyme and a good ear for alliteration and assonance that make these poems a pleasure to read aloud."

Shel Silverstein''s incomparable career as a children''s book author and illustrator began with Lafcadio, the Lion Who Shot Back. In 1964, Shel''s creativity continued to flourish as four more books were published in the same year—Don''t Bump the Glump!, A Giraffe and a Half, Who Wants a Cheap Rhinoceros?, and the beloved classic The Giving Tree. Later he continued to build his remarkable body of work with Where the Sidewalk Ends, A Light in the Attic, Falling Up, Every Thing On It, The Missing Piece, The Missing Piece Meets the Big O, and Runny Babbit. (less)', 1),
	(362, 'Ahab''s Wife, or The Star-Gazer', 'Sena Jeter Naslund', 704, 4151, 'English', '2005-08-02', NULL, NULL, 'covers/cover363.png', 'A magnificent, vast, and enthralling saga, Sena Jeter Naslund''s Ahab''s Wife is a remarkable epic spanning a rich, eventful, and dramatic life. Inspired by a brief passage in Moby Dick, it is the story of Una, exiled as a child to live in a lighthouse, removed from the physical and emotional abuse of a religion-mad father. It is the romantic adventure of a young woman setting sail in a cabin boy''s disguise to encounter darkness, wonder, and catastrophe; the story of a devoted wife who witnesses her husband''s destruction by obsession and madness. Ultimately it is the powerful and moving story of a woman''s triumph over tragedy and loss through her courage, creativity, and intelligence. (less)', 1),
	(363, 'Quidditch Through the Ages', 'Kennilworthy Whisp', 56, 5485, 'English', '2001-06-01', NULL, 'Hogwarts Library', 'covers/cover364.png', 'The most checked-out book in the Hogwarts Library, and a volume no Quidditch player or Harry Potter fan should be without!

If you have ever asked yourself where the Golden Snitch came from, how the Bludgers came into existence, or why the Wigtown Wanderers have pictures of meat cleavers on their robes, you need QUIDDITCH THROUGH THE AGES. This invaluable volume is consulted by young Quidditch fans on an almost daily basis.

Proceeds from the sale of this book will go to Comic Relief, who will use your money to continue improving and changing lives -- work that is even more important and astonishing than the three-and-a-half-second capture of the Golden Snitch by Roderick Plumpton in 1921. (less)', 1),
	(364, 'Wild: From Lost to Found on the Pacific Crest Trail', 'Cheryl Strayed', 315, 258, 'English', '2012-03-20', NULL, NULL, 'covers/cover365.png', 'An alternate cover for this ISBN can be found here.

At twenty-two, Cheryl Strayed thought she had lost everything. In the wake of her mother’s death, her family scattered and her own marriage was soon destroyed. Four years later, with nothing more to lose, she made the most impulsive decision of her life. With no experience or training, driven only by blind will, she would hike more than a thousand miles of the Pacific Crest Trail from the Mojave Desert through California and Oregon to Washington State — and she would do it alone.
Told with suspense and style, sparkling with warmth and humor, Wild powerfully captures the terrors and pleasures of one young woman forging ahead against all odds on a journey that maddened, strengthened, and ultimately healed her. (less)', 1),
	(365, 'Tinker, Tailor, Soldier, Spy', 'John le Carré', 381, 4468, 'English', '2011-06-07', NULL, 'George Smiley #5', 'covers/cover366.png', 'A modern classic in which John le Carré expertly creates a total vision of a secret world, Tinker, Tailor, Soldier, Spy begins George Smiley''s chess match of wills and wits with Karla, his Soviet counterpart.

It is now beyond a doubt that a mole, implanted decades ago by Moscow Centre, has burrowed his way into the highest echelons of British Intelligence. His treachery has already blown some of its most vital operations and its best networks. It is clear that the double agent is one of its own kind. But which one? George Smiley is assigned to identify him. And once identified, the traitor must be destroyed. (less)', 1),
	(366, 'Wallbanger', 'Alice Clayton', 384, 4143, 'English', '2012-11-27', NULL, 'Cocktail #1', 'covers/cover367.png', 'The first night after Caroline moves into her fantastic new San Francisco apartment, she realizes she''s gaining an intimate knowledge of her new neighbor''s nocturnal adventures. Thanks to paper-thin walls and the guy''s athletic prowess, she can hear not just his bed banging against the wall but the ecstatic response of what seems (as loud night after loud night goes by) like an endless parade of women. And since Caroline is currently on a self-imposed dating hiatus, and her neighbor is clearly lethally attractive to women, she finds her fantasies keep her awake even longer than the noise. So when the wallbanging threatens to literally bounce her out of bed, Caroline, clad in sexual frustration and a pink baby-doll nightie, confronts Simon Parker, her heard-but-never-seen neighbor. The tension between them is as thick as the walls are thin, and the results just as mixed. Suddenly, Caroline is finding she may have discovered a whole new definition of neighborly...

In a delicious mix of silly and steamy, Alice Clayton dishes out a hot and hilarious tale of exasperation at first sight... (less)', 1),
	(367, 'Quiet: The Power of Introverts in a World That Can''t Stop Talking', 'Susan Cain', 352, 2608, 'English', '2012-01-24', NULL, 'Quiet', 'covers/cover368.png', 'The book that started the Quiet Revolution

At least one-third of the people we know are introverts. They are the ones who prefer listening to speaking; who innovate and create but dislike self-promotion; who favor working on their own over working in teams. It is to introverts—Rosa Parks, Chopin, Dr. Seuss, Steve Wozniak—that we owe many of the great contributions to society. 

In Quiet, Susan Cain argues that we dramatically undervalue introverts and shows how much we lose in doing so. She charts the rise of the Extrovert Ideal throughout the twentieth century and explores how deeply it has come to permeate our culture. She also introduces us to successful introverts—from a witty, high-octane public speaker who recharges in solitude after his talks, to a record-breaking salesman who quietly taps into the power of questions. Passionately argued, superbly researched, and filled with indelible stories of real people, Quiet has the power to permanently change how we see introverts and, equally important, how they see themselves.

Now with Extra Libris material, including a reader’s guide and bonus content. (less)', 1),
	(368, 'Crossed', 'Ally Condie', 367, 3086, 'English', '2013-03-12', NULL, 'Matched #2', 'covers/cover369.png', 'The Society chooses everything.

The books you read.
The music you listen to.
The person you love.

Yet for Cassia the rules have changed. Ky has been taken and she will sacrifice everything to find him.

And when Cassia discovers Ky has escaped to the wild frontiers beyond the Society there is hope.

But on the edge of society nothing is as it seems...

A rebellion is rising.

And a tangled web of lies and double-crosses could destroy everything. (less)', 1),
	(369, 'Scythe', 'Neal Shusterman', 435, 858, 'English', '2016-11-22', NULL, 'Arc of a Scythe #1', 'covers/cover370.png', 'Thou shalt kill.

A world with no hunger, no disease, no war, no misery. Humanity has conquered all those things, and has even conquered death. Now scythes are the only ones who can end life—and they are commanded to do so, in order to keep the size of the population under control.

Citra and Rowan are chosen to apprentice to a scythe—a role that neither wants. These teens must master the “art” of taking life, knowing that the consequence of failure could mean losing their own. (less)', 1),
	(370, 'Cloudy With a Chance of Meatballs', 'Judi Barrett', 32, 1019, 'English', '1982-04-01', NULL, 'Cloudy with a Chance of Meatballs #1', 'covers/cover371.png', 'An imaginative story of amazing food weather that inspired the hit movie, Cloudy with a Chance of Meatballs is a favorite of grown-ups and children everywhere.

The tiny town of Chewandswallow was very much like any other tiny town—except for its weather which came three times a day, at breakfast, lunch, and dinner.

But it never rained rain and it never snowed snow and it never blew just wind. It rained things like soup and juice. It snowed things like mashed potatoes. And sometimes the wind blew in storms of hamburgers.

Life for the townspeople was delicious until the weather took a turn for the worse. The food got larger and larger and so did the portions. Chewandswallow was plagued by damaging floods and storms of huge food. The town was a mess and the people feared for their lives.

Something had to be done, and in a hurry. (less)', 1),
	(371, 'Eragon, Eldest & Brisingr', 'Christopher Paolini', 1952, 1844, 'English', '2008-09-20', NULL, 'The Inheritance Cycle #1-3', 'covers/cover372.png', 'WITH THE HIGHLY anticipated publication of Book Three in the Inheritance cycle, the hardcover editions of all three books will be available in a handsome boxed set!', 1),
	(372, 'Midwives', 'Chris Bohjalian', 384, 5597, 'English', '1998-11-08', NULL, NULL, 'covers/cover373.png', 'The time is 1981, and Sibyl Danforth has been a dedicated midwife in the rural community of Reddington, Vermont, for fifteen years. But one treacherous winter night, in a house isolated by icy roads and failed telephone lines, Sibyl takes desperate measures to save a baby''s life. She performs an emergency Caesarean section on its mother, who appears to have died in labor. But what if—as Sibyl''s assistant later charges—the patient wasn''t already dead, and it was Sibyl who inadvertently killed her?

As recounted by Sibyl''s precocious fourteen-year-old daughter, Connie, the ensuing trial bears the earmarks of a witch hunt except for the fact that all its participants are acting from the highest motives—and the defendant increasingly appears to be guilty. As Sibyl Danforth faces the antagonism of the law, the hostility of traditional doctors, and the accusations of her own conscience, Midwives engages, moves, and transfixes us as only the very best novels ever do. (less)', 1),
	(373, 'Think and Grow Rich', 'Napoleon Hill', 233, 4605, 'English', '2016-04-01', NULL, NULL, 'covers/cover374.png', 'This is the original 1937 version of Napoleon Hill''s Classic Book: Think and Grow Rich. To the greatest extent possible, the text and formatting have been kept exactly the same as in the original release with the exception of some minor formatting changes. (less)', 1),
	(374, 'Heaven is for Real: A Little Boy''s Astounding Story of His Trip to Heaven and Back', 'Todd Burpo', 162, 4034, 'English', '2010-01-01', NULL, 'Heaven is For Real', 'covers/cover375.png', 'When Colton Burpo made it through an emergency appendectomy, his family was overjoyed at his miraculous survival. What they weren''t expecting, though, was the story that emerged in the months that followed--a story as beautiful as it was extraordinary, detailing their little boy''s trip to heaven and back.

Colton, not yet four years old, told his parents he left his body during the surgery--and authenticated that claim by describing exactly what his parents were doing in another part of the hospital while he was being operated on. He talked of visiting heaven and relayed stories told to him by people he met there whom he had never met in life, sharing events that happened even before he was born. He also astonished his parents with descriptions and obscure details about heaven that matched the Bible exactly, though he had not yet learned to read.

With disarming innocence and the plainspoken boldness of a child, Colton tells of meeting long-departed family members. He describes Jesus, the angels, how "really, really big" God is, and how much God loves us. Retold by his father, but using Colton''s uniquely simple words, "Heaven is for Real" offers a glimpse of the world that awaits us, where as Colton says, "Nobody is old and nobody wears glasses."

"Heaven is for Real" will forever change the way you think of eternity, offering you the chance to see, and believe, like a child. (less)', 1),
	(375, 'A Suitable Boy', 'Vikram Seth', 1474, 1433, 'English', '2005-10-04', NULL, 'A Bridge of Leaves #1', 'covers/cover376.png', 'Vikram Seth''s novel is, at its core, a love story: Lata and her mother, Mrs. Rupa Mehra, are both trying to find—through love or through exacting maternal appraisal—a suitable boy for Lata to marry. Set in the early 1950s, in an India newly independent and struggling through a time of crisis, A Suitable Boy takes us into the richly imagined world of four large extended families and spins a compulsively readable tale of their lives and loves. A sweeping panoramic portrait of a complex, multiethnic society in flux, A Suitable Boy remains the story of ordinary people caught up in a web of love and ambition, humor and sadness, prejudice and reconciliation, the most delicate social etiquette and the most appalling violence. (less)', 1),
	(376, 'Complicate Me', 'M.  Robinson', 397, 935, 'English', '2015-09-12', NULL, 'The Good Ol'' Boys #1', 'covers/cover377.png', 'It was complicated, it was also just the beginning.
A decision.
A simple choice.
There is always that one moment in life where things could have been different. That one moment where you could have chosen a path that would lead you down a certain road.
A different life.
It was easier to pretend that we were still best friends, and that she was my girl and I was her boy.
Pretending was better than knowing the truth...
I. Ruined. Us.
I had her.
I lost her.
I love her.
All I did was complicate us.

STANDALONE series. New Adult Contemporary Romance: Strong language and sexual content, not intended for readers under 18. (less)', 1),
	(377, 'The Opportunist', 'Tarryn Fisher', 278, 1019, 'English', '2011-11-14', NULL, 'Love Me with Lies #1', 'covers/cover378.png', 'Olivia Kaspen has just discovered that her ex-boyfriend, Caleb Drake, has lost his memory. With an already lousy reputation for taking advantage of situations, Olivia must decide how far she is willing to go to get Caleb back. Wrestling to keep her true identity and their sordid past under wraps, Olivia’s greatest obstacle is Caleb’s wicked, new girlfriend; Leah Smith. It is a race to the finish as these two vipers engage in a vicious tug of war to possess a man who no longer remembers them. But, soon enough Olivia must face the consequences of her lies, and in the process discover that sometimes love falls short of redemption. (less)', 1),
	(378, 'Betrayal of Faith', 'Mark M. Bello', 496, 1844, NULL, '2017-07-11', NULL, 'Zachary Blake Legal Thriller #1', 'covers/cover379.png', 'How can one have faith when faith itself is corrupt? When Jennifer Tracey discovers that her new parish priest has harmed her two sons, she seeks justice. Standing in her way? The Coalition-a secret church organization tasked with the responsibility of taking care of these types of incidents quickly and quietly and by any means necessary. Jennifer decides to file a lawsuit against the priest and the church and seeks out an attorney, Zachary Blake, who handled her late husband''s industrial death case. However, through an unfortunate series of events, Zachary has gone from the penthouse to the poorhouse, working out of a dingy one-room office, handling traffic cases. Although Jennifer has misgivings, she reluctantly retains him and, together, they embark on a "David vs. Goliath" legal battle against an organization hell-bent on thwarting their efforts. Zachary hires an investigator, the infamous Micah Love, who travels to Ohio, where he discovers that two families have disappeared after an encounter with the same priest-and the one person who may provide some answers has died under mysterious circumstances. Religion, law, betrayal, mystery, intrigue, faith, and love converge in Michigan for the trial of the century. Will Zachary resurrect his troubled career and obtain the justice Jennifer seeks for her kids? Or will the church and the Coalition and its mysterious leader prevail in covering up the decadent acts of the priest and circumvent justice once again? Will the truth prevail? (less)', 1),
	(379, 'Preludes & Nocturnes', 'Neil Gaiman', 233, 5184, 'English', '1998-12-01', NULL, 'The Sandman #1', 'covers/cover380.png', 'Librarian Note: If you''re looking for the Audible adaptation of the first three volumes it is here.

New York Times best-selling author Neil Gaiman''s transcendent series SANDMAN is often hailed as the definitive Vertigo title and one of the finest achievements in graphic storytelling. Gaiman created an unforgettable tale of the forces that exist beyond life and death by weaving ancient mythology, folklore and fairy tales with his own distinct narrative vision.

In PRELUDES & NOCTURNES, an occultist attempting to capture Death to bargain for eternal life traps her younger brother Dream instead. After his 70 year imprisonment and eventual escape, Dream, also known as Morpheus, goes on a quest for his lost objects of power. On his arduous journey, Morpheus encounters Lucifer, John Constantine, and an all-powerful madman.

This book also includes the story "The Sound of Her Wings," which introduces us to the pragmatic and perky goth girl Death.

Includes issues 1-8 of the original series. (less)', 1),
	(380, 'Pope Joan', 'Donna Woolfolk Cross', 422, 3798, 'English', '2009-06-09', NULL, NULL, 'covers/cover381.png', 'A world-wide bestseller, major motion picture and upcoming "Director''s Cut" TV mini-series exclusively for the U.S!

For a thousand years her existence has been denied. She is the legend that will not die–Pope Joan, the ninth-century woman who disguised herself as a man and rose to become the only female ever to sit on the throne of St. Peter. Now in this riveting novel, Donna Woolfolk Cross paints a sweeping portrait of an unforgettable heroine who struggles against restrictions her soul cannot accept.

Brilliant and talented, young Joan rebels against medieval social strictures forbidding women to learn. When her brother is brutally killed during a Viking attack, Joan takes up his cloak–and his identity–and enters the monastery of Fulda. As Brother John Anglicus, Joan distinguishes herself as a great scholar and healer. Eventually, she is drawn to Rome, where she becomes enmeshed in a dangerous web of love, passion, and politics. Triumphing over appalling odds, she finally attains the highest office in Christendom–wielding a power greater than any woman before or since. But such power always comes at a price . . .

In this international bestseller, Cross brings the Dark Ages to life in all their brutal splendor and shares the dramatic story of a woman whose strength of vision led her to defy the social restrictions of her day. (less)', 1),
	(381, 'The Iron Knight', 'Julie Kagawa', 400, 4636, 'English', '2011-10-26', NULL, 'The Iron Fey #4', 'covers/cover382.png', 'My name - my True Name - is Ashallayn’ darkmyr Tallyn. I am the last remaining son of Mab, Queen of the Unseelie Court. And I am dead to her. My fall began, as many stories do, with a girl…
To cold faery prince Ash, love was a weakness for mortals and fools. His own love had died a horrible death, killing any gentler feelings the Winter prince might have had. Or so he thought.
Then Meghan Chase - a half human, half fey slip of a girl - smashed through his barricades, binding him to her irrevocably with his oath to be her knight. And when all of Faery nearly fell to the Iron fey, she severed their bond to save his life. Meghan is now the Iron Queen, ruler of a realm where no Winter or Summer fey can survive.
With the unwelcome company of his archrival, Summer Court prankster Puck, and the infuriating cait sith Grimalkin, Ash begins a journey he is bound to see through to its end - a quest to find a way to honor his vow to stand by Meghan''s side.
To survive in the Iron Realm, Ash must have a soul and a mortal body. But the tests he must face to earn these things are impossible. And along the way Ash learns something that changes everything. A truth that challenges his darkest beliefs and shows him that, sometimes, it takes more than courage to make the ultimate sacrifice.
(less)', 1),
	(382, 'People of the Book', 'Geraldine Brooks', 372, 3498, 'English', '2008-10-01', NULL, NULL, 'covers/cover383.png', 'From the Pulitzer Prize–winning author of March, the journey of a rare illuminated manuscript through centuries of exile and war

In 1996, Hanna Heath, an Australian rare-book expert, is offered the job of a lifetime: analysis and conservation of the famed Sarajevo Haggadah, which has been rescued from Serb shelling during the Bosnian war. Priceless and beautiful, the book is one of the earliest Jewish volumes ever to be illuminated with images. When Hanna, a caustic loner with a passion for her work, discovers a series of tiny artifacts in its ancient binding—an insect wing fragment, wine stains, salt crystals, a white hair—she begins to unlock the book’s mysteries. The reader is ushered into an exquisitely detailed and atmospheric past, tracing the book’s journey from its salvation back to its creation.

In Bosnia during World War II, a Muslim risks his life to protect it from the Nazis. In the hedonistic salons of fin-de-siècle Vienna, the book becomes a pawn in the struggle against the city’s rising anti-Semitism. In inquisition-era Venice, a Catholic priest saves it from burning. In Barcelona in 1492, the scribe who wrote the text sees his family destroyed by the agonies of enforced exile. And in Seville in 1480, the reason for the Haggadah’s extraordinary illuminations is finally disclosed. Hanna’s investigation unexpectedly plunges her into the intrigues of fine art forgers and ultra-nationalist fanatics. Her experiences will test her belief in herself and the man she has come to love.

Inspired by a true story, People of the Book is at once a novel of sweeping historical grandeur and intimate emotional intensity, an ambitious, electrifying work by an acclaimed and beloved author. (less)', 1),
	(383, 'Flipped', 'Wendelin Van Draanen', 212, 4591, 'English', '2003-05-13', NULL, NULL, 'covers/cover384.png', 'Flipped is a romance told in two voices. The first time Juli Baker saw Bryce Loski, she flipped. The first time Bryce saw Juli, he ran. That''s pretty much the pattern for these two neighbors until the eighth grade, when, just as Juli is realizing Bryce isn''t as wonderful as she thought, Bryce is starting to see that Juli is pretty amazing. How these two teens manage to see beyond the surface of things and come together makes for a comic and poignant romance. (less)', 1),
	(384, 'Even Cowgirls Get the Blues', 'Tom Robbins', 366, 5971, 'English', '2001-10-11', NULL, NULL, 'covers/cover385.png', 'Sissy Hankshaw, dotée de deux pouces immenses, devient la plus grande auto-stoppeuse des Etats-Unis. Elle quitte ainsi Richmond pour partir à la découverte de nouveaux horizons, multipliant les rencontres étonnantes.--[Memento].', 1),
	(385, 'Entwined with You', 'Sylvia Day', 356, 4564, 'English', '2013-06-04', NULL, 'Crossfire #3', 'covers/cover386.png', 'From the moment I first met Gideon Cross, I recognized something in him that I needed. Something I couldn''t resist. I saw the dangerous and damaged soul inside--so much like my own. I was drawn to it. I needed him as surely as I needed my heart to beat.

No one knows how much he risked for me. How much I''d been threatened, or just how dark and desperate the shadow of our pasts would become.

Entwined by our secrets, we tried to defy the odds. We made our own rules and surrendered completely to the exquisite power of possession... (less)', 1),
	(386, 'The Cuckoo''s Calling', 'Robert Galbraith', 456, 521, 'English', '2013-04-28', NULL, 'Cormoran Strike #1', 'covers/cover387.png', 'After losing his leg to a land mine in Afghanistan, Cormoran Strike is barely scraping by as a private investigator. Then John Bristow walks through his door with an amazing story: His sister, the legendary supermodel Lula Landry, famously fell to her death a few months earlier. The police ruled it a suicide, but John refuses to believe that. The case plunges Strike into the world of multimillionaire beauties, rock-star boyfriends, and desperate designers, and it introduces him to every variety of pleasure, enticement, seduction, and delusion known to man. (less)', 1),
	(387, 'Caraval', 'Stephanie Garber', 407, 292, 'English', '2017-01-31', NULL, 'Caraval #1', 'covers/cover388.png', 'A legendary competition.
A mesmerizing romance.
An unbreakable bond
between two sisters.

Scarlett Dragna has never left the tiny island where she and her sister, Tella, live with their powerful, and cruel, father. Now Scarlett’s father has arranged a marriage for her, and Scarlett thinks her dreams of seeing Caraval—the faraway, once-a-year performance where the audience participates in the show—are over.

But this year, Scarlett’s long-dreamt-of invitation finally arrives. With the help of a mysterious sailor, Tella whisks Scarlett away to the show. Only, as soon as they arrive, Tella is kidnapped by Caraval’s mastermind organizer, Legend. It turns out that this season’s Caraval revolves around Tella, and whoever finds her first is the winner.

Scarlett has been told that everything that happens during Caraval is only an elaborate performance. Nevertheless she becomes enmeshed in a game of love, heartbreak, and magic. And whether Caraval is real or not, Scarlett must find Tella before the five nights of the game are over or a dangerous domino effect of consequences will be set off, and her beloved sister will disappear forever.

Welcome, welcome to Caraval . . . beware of getting swept too far away. (less)', 1),
	(388, 'Hunger', 'Knut Hamsun', 134, 1027, 'English', '2003-11-17', NULL, NULL, 'covers/cover389.png', 'One of the most important and controversial writers of the 20th century, Knut Hamsun made literary history with the publication in 1890 of this powerful, autobiographical novel recounting the abject poverty, hunger and despair of a young writer struggling to achieve self-discovery and its ultimate artistic expression. The book brilliantly probes the psychodynamics of alienation, obsession, and self-destruction, painting an unforgettable portrait of a man driven by forces beyond his control to the edge of the abyss. Hamsun influenced many of the major 20th-century writers who followed him, including Kafka, Joyce and Henry Miller. Required reading in world literature courses, the highly influential, landmark novel will also find a wide audience among lovers of books that probe the "unexplored crannies in the human soul" (George Egerton). (less)', 1),
	(389, 'Narcissus and Goldmund', 'Hermann Hesse', 320, 569, 'English', '1997-01-01', NULL, NULL, 'covers/cover390.png', 'Narcissus and Goldmund tells the story of two medieval men whose characters are diametrically opposite: Narcissus, an ascetic monk firm in his religious commitment, and Goldmund, a romantic youth hungry for knowledge and worldly experience. First published in 1930, Hesse''s novel remains a moving and pointed exploration of the conflict between the life of the spirit and the life of the flesh. It is a theme that transcends all time. (less)', 1),
	(390, 'Demons', 'Fyodor Dostoyevsky', 733, 1321, 'English', '1995-08-01', NULL, NULL, 'covers/cover391.png', 'Alternate Cover Edition ISBN 0679734511. (ISBN13: 9780679734512)

Inspired by the true story of a political murder that horrified Russians in 1869, Fyodor Dostoevsky conceived of Demons as a "novel-pamphlet" in which he would say everything about the plague of materialist ideology that he saw infecting his native land. What emerged was a prophetic and ferociously funny masterpiece of ideology and murder in pre-revolutionary Russia. (less)', 1),
	(391, 'The Scorpio Races', 'Maggie Stiefvater', 409, 3131, 'English', '2011-10-18', NULL, NULL, 'covers/cover392.png', 'It happens at the start of every November: the Scorpio Races. Riders attempt to keep hold of their water horses long enough to make it to the finish line. Some riders live. Others die.

At age nineteen, Sean Kendrick is the returning champion. He is a young man of few words, and if he has any fears, he keeps them buried deep, where no one else can see them.

Puck Connolly is different. She never meant to ride in the Scorpio Races. But fate hasn’t given her much of a chance. So she enters the competition — the first girl ever to do so. She is in no way prepared for what is going to happen. (less)', 1),
	(392, 'Shadow of Night', 'Deborah Harkness', 584, 5236, 'English', '2012-07-10', NULL, 'All Souls  #2', 'covers/cover393.png', 'Picking up from A Discovery of Witches’ cliffhanger ending, Shadow of Night takes Diana and Matthew on a trip through time to Elizabethan London, where they are plunged into a world of spies, magic, and a coterie of Matthew’s old friends, the School of Night. As the search for Ashmole 782 deepens and Diana seeks out a witch to tutor her in magic, the net of Matthew’s past tightens around them, and they embark on a very different—and vastly more dangerous—journey. (less)', 1),
	(393, 'The Wishing Spell', 'Chris Colfer', 438, 2923, 'English', '2012-07-17', NULL, 'The Land of Stories #1', 'covers/cover394.png', 'Alex and Conner Bailey''s world is about to change, in this fast-paced adventure that uniquely combines our modern day world with the enchanting realm of classic fairy tales.
The Land of Stories tells the tale of twins Alex and Conner. Through the mysterious powers of a cherished book of stories, they leave their world behind and find themselves in a foreign land full of wonder and magic where they come face-to-face with the fairy tale characters they grew up reading about.

But after a series of encounters with witches, wolves, goblins, and trolls alike, getting back home is going to be harder than they thought. (less)', 1),
	(394, 'The Mayor of Casterbridge', 'Thomas Hardy', 445, 903, 'English', '2003-03-27', NULL, NULL, 'covers/cover395.png', '‘I’ve not always been what I am now’

In a fit of drunken anger, Michael Henchard sells his wife and baby daughter for five guineas at a country fair. Over the course of the following years, he manages to establish himself as a respected and prosperous pillar of the community of Casterbridge, but behind his success there always lurk the shameful secret of his past and a personality prone to self-destructive pride and temper. Subtitled ‘A Story of a Man of Character’, Hardy’s powerful and sympathetic study of the heroic but deeply flawed Henchard is also an intensely dramatic work, tragically played out against the vivid backdrop of a close-knit Dorsetshire town. (less)', 1),
	(395, 'Endurance: Shackleton''s Incredible Voyage', 'Alfred Lansing', 282, 5940, 'English', '1959-01-01', NULL, NULL, 'covers/cover396.png', 'The harrowing tale of British explorer Ernest Shackleton''s 1914 attempt to reach the South Pole, one of the greatest adventure stories of the modern age.

In August 1914, polar explorer Ernest Shackleton boarded the Endurance became locked in an island of ice. Thus began the legendary ordeal of Shackleton and his crew of twenty-seven men. When their ship was finally crushed between two ice floes, they attempted a near-impossible journey over 850 miles of the South Atlantic''s heaviest seas to the closest outpost of civilization.

In Endurance, the definitive account of Ernest Shackleton''s fateful trip, Alfred Lansing brilliantly narrates the harrowing and miraculous voyage that has defined heroism for the modern age. (less)', 1),
	(396, 'Centennial', 'James A. Michener', 1056, 1257, 'English', '1987-02-12', NULL, NULL, 'covers/cover397.png', 'Written to commemorate the Bicentennial in 1976, James A. Michener’s magnificent saga of the West is an enthralling celebration of the frontier. Brimming with the glory of America’s past, the story of Colorado—the Centennial State—is manifested through its people: Lame Beaver, the Arapaho chieftain and warrior, and his Comanche and Pawnee enemies; Levi Zendt, fleeing with his child bride from the Amish country; the cowboy, Jim Lloyd, who falls in love with a wealthy and cultured Englishwoman, Charlotte Seccombe. In Centennial, trappers, traders, homesteaders, gold seekers, ranchers, and hunters are brought together in the dramatic conflicts that shape the destiny of the legendary West—and the entire country. (less)', 1),
	(397, 'The Sword of Shannara', 'Terry Brooks', 726, 1730, 'English', '1999-04-01', NULL, 'The Original Shannara Trilogy #1', 'covers/cover398.png', 'Living in peaceful Shady Vale, Shea Ohmsford knew little of the troubles that plagued the rest of the world. Then the giant, forbidding Allanon revealed that the supposedly dead Warlock Lord was plotting to destroy the world. The sole weapon against this Power of Darkness was the Sword of Shannara, which could only be used by a true heir of Shannara--Shea being the last of the bloodline, upon whom all hope rested. Soon a Skull Bearer, dread minion of Evil, flew into the Vale, seeking to destroy Shea. To save the Vale, Shea fled, drawing the Skull Bearer after him.... (less)', 1),
	(398, 'The Third Policeman', 'Flann O''Brien', 200, 4967, 'English', '1999-03-01', NULL, NULL, 'covers/cover399.png', 'The Third Policeman is Flann O''Brien''s brilliantly dark comic novel about the nature of time, death, and existence. Told by a narrator who has committed a botched robbery and brutal murder, the novel follows him and his adventures in a two-dimensional police station where, through the theories of the scientist/philosopher de Selby, he is introduced to "Atomic Theory" and its relation to bicycles, the existence of eternity (which turns out to be just down the road), and de Selby''s view that the earth is not round but "sausage-shaped." With the help of his newly found soul named "Joe," he grapples with the riddles and
contradictions that three eccentric policeman present to him.
The last of O''Brien''s novels to be published, The Third Policeman joins O''Brien''s other fiction (At Swim-Two-Birds, The Poor Mouth, The Hard Life, The Best of Myles, The Dalkey Archive) to ensure his place, along with James Joyce and Samuel Beckett, as one of Ireland''s great comic geniuses. (less)', 1),
	(399, 'A Voice in the Wind', 'Francine Rivers', 520, 2181, 'English', '1998-03-01', NULL, 'Mark of the Lion #1', 'covers/cover400.png', '“The city was silently bloating in the hot sun, rotting like the thousands of bodies that lay where they had fallen in street battles.” With this opening sentence, A Voice in the Wind transports readers back to Jerusalem during the first Jewish-Roman War, some seventy years after the death of Christ. Following the prides and passions of a group of Jews, Romans and Barbarians living at the time of the siege, the narrative is centered on an ill-fated romance between a steadfast slave girl, Hadassah, and Marcus, the brother of her owner and a handsome aristocrat. After surviving the massacre of her family and the destruction of Jerusalem by the Romans, Hadassah is captured and sold to a well-to-do merchant’s family. Brought to Rome, she is pressed into service as a personal slave to hedonistic Julia Valerian. Hadassah struggles to walk in the footsteps of Jesus and to treat her masters in a manner in keeping with His teachings, but she is forced to keep her religious identity a secret in order to survive. Confused and alone, she has only her faith to cling to as she tries to subtly bring God into the lives of her captors. Reckless, impulsive, and villainous, Julia tries to undermine Hadassah at every turn. But Julia’s brother, Marcus, is a different sort altogether. Is it possible for a love between Hadassah and Marcus to flourish considering not only their differing stations in life, but also the gap between Hadassah’s unrelenting faith and Marcus’ lack of belief in anything? Simultaneously, Atretes, a captured soldier from Germania, is forced to become a gladiator. This is the time of Rome’s decline and the decadence of a civilization on the verge of self-destruction serves as a powerful backdrop to the Barbarian’s struggle for survival in the arena. (less)', 1),
	(400, 'A Good Man is Hard to Find and Other Stories', 'Flannery O''Connor', 252, 5976, 'English', '1992-10-15', NULL, NULL, 'covers/cover401.png', 'This now classic book revealed Flannery O''Connor as one of the most original and provocative writers to emerge from the South. Her apocalyptic vision of life is expressed through grotesque, often comic situations in which the principal character faces a problem of salvation: the grandmother, in the title story, confronting the murderous Misfit; a neglected four-year-old boy looking for the Kingdom of Christ in the fast-flowing waters of the river; General Sash, about to meet the final enemy. Stories include:

"A Good Man Is Hard to Find"
"The River"
"The Life You Save May Be Your Own"
"A Stroke of Good Fortune"
"A Temple of the Holy Ghost"
"The Artificial Nigger"
"A Circle in the Fire"
"A Late Encounter with the Enemy"
"Good Country People"
"The Displaced Person"
©1955 Flannery O''Connor; 1954, 1953, 1948 by Flannery O''Connor; renewed 1983, 1981 by Regina O''Connor; renewed 1976 by Mrs. Edward F. O''Connor; (P)2010 Blackstone Audio, Inc. (less)', 1),
	(401, 'Dead Souls', 'Nikolai Gogol', 464, 2516, 'English', '2004-07-29', NULL, NULL, 'covers/cover402.png', 'Dead Souls is eloquent on some occasions, lyrical on others, and pious and reverent elsewhere. Nicolai Gogol was a master of the spoof. The American students of today are not the only readers who have been confused by him. Russian literary history records more divergent interpretations of Gogol than perhaps of any other classic.

In a new translation of the comic classic of Russian literature, Chichikov, an enigmatic stranger and conniving schemer, buys deceased serfs'' names from their landlords'' poll tax lists hoping to mortgage them for profit and to reinvent himself as a likeable gentleman. (less)', 1),
	(402, 'Three Comrades', 'Erich Maria Remarque', 496, 4989, 'English', '1998-01-27', NULL, NULL, 'covers/cover403.png', 'The year is 1928. On the outskirts of a large German city, three young men are earning a thin and precarious living. Fully armed young storm troopers swagger in the streets. Restlessness, poverty, and violence are everywhere. For these three, friendship is the only refuge from the chaos around them. Then the youngest of them falls in love, and brings into the group a young woman who will become a comrade as well, as they are all tested in ways they can never have imagined. . . .

Written with the same overwhelming simplicity and directness that made All Quiet on the Western Front a classic, Three Comrades portrays the greatness of the human spirit, manifested through characters who must find the inner resources to live in a world they did not make, but must endure. (less)', 1),
	(403, 'Rendezvous with Rama', 'Arthur C. Clarke', 243, 2624, 'English', '2000-01-01', NULL, 'Rama #1', 'covers/cover404.png', 'At first, only a few things are known about the celestial object that astronomers dub Rama. It is huge, weighing more than ten trillion tons. And it is hurtling through the solar system at an inconceivable speed. Then a space probe confirms the unthinkable: Rama is no natural object. It is, incredibly, an interstellar spacecraft. Space explorers and planet-bound scientists alike prepare for mankind''s first encounter with alien intelligence. It will kindle their wildest dreams... and fan their darkest fears. For no one knows who the Ramans are or why they have come. And now the moment of rendezvous awaits — just behind a Raman airlock door. (less)', 1),
	(404, 'A Storm of Swords 2: Blood and Gold', 'George R.R. Martin', 639, 269, 'English', '2011-09-01', NULL, 'A Song of Ice and Fire (1-in-2) #6', 'covers/cover405.png', 'The Starks are scattered.

Robb Stark may be King in the North, but he must bend to the will of the old tyrant Walder Frey if he is to hold his crown. And while his youngest sister, Arya, has escaped the clutches of the depraved Cersei Lannister and her son, the capricious boy-king Joffrey, Sansa Stark remains their captive.

Meanwhile, across the ocean, Daenerys Stormborn, the last heir of the Dragon King, delivers death to the slave-trading cities of Astapor and Yunkai as she approaches Westeros with vengeance in her heart. (less)', 1),
	(405, 'Real', 'Katy Evans', 293, 4653, 'English', '2013-04-08', NULL, 'Real #1', 'covers/cover406.png', 'A fallen boxer.
A woman with a broken dream.
A competition...

He even makes me forget my name. One night was all it took, and I forgot everything and anything except the sexy fighter in the ring who sets my mind ablaze and my body on fire with wanting...

Remington Tate is the strongest, most confusing man I''ve ever met in my life.

He’s the star of the dangerous underground fighting circuit, and I’m drawn to him as I''ve never been drawn to anything in my life. I forget who I am, what I want, with just one look from him. When he’s near, I need to remind myself that I am strong—but he is stronger. And now it’s my job to keep his body working like a perfect machine, his taut muscles primed and ready to break the bones of his next opponents...

But the one he’s most threatening to, now, is me.

I want him. I want him without fear. Without reservations.

If only I knew for sure what it is that he wants from me? (less)', 1),
	(406, 'Girl, Interrupted', 'Susanna Kaysen', 169, 3703, 'English', '1994-04-19', NULL, NULL, 'covers/cover407.png', 'In 1967, after a session with a psychiatrist she''d never seen before, eighteen-year-old Susanna Kaysen was put in a taxi and sent to McLean Hospital. She spent most of the next two years on the ward for teenage girls in a psychiatric hospital as renowned for its famous clientele--Sylvia Plath, Robert Lowell, James Taylor, and Ray Charles--as for its progressive methods of treating those who could afford its sanctuary.

Kaysen''s memoir encompasses horror and razor-edged perception while providing vivid portraits of her fellow patients and their keepers. It is a brilliant evocation of a "parallel universe" set within the kaleidoscopically shifting landscape of the late sixties. Girl, Interrupted is a clear-sighted, unflinching documnet that gives lasting and specific dimension to our definitions of sane and insane, mental illness and recovery. (less)', 1),
	(407, 'Vampire Academy Collection', 'Richelle Mead', 1120, 1085, 'English', '2009-10-13', NULL, 'Vampire Academy #1-3', 'covers/cover408.png', 'Tear into the utterly addictive Vampire Academy series this holiday season! Now you can have the first three novels in the New York Times bestselling series in a special edition box set!

Find out where it all began for Guardian Rose Hathaway and her bloodthirsty best friend Lissa in Vampire Academy, watch all the delicious drama unfold in Frostbite, and fall in love with Shadow Kiss - for the first time, or all over again!

Includes the later edition printings by Razorbill:
* Vampire Academy (ISBN: 9781595141743)
* Frostbite (ISBN: 9781595141750)
* Shadow Kiss (ISBN: 9781595141972) (less)', 1),
	(408, 'All Things Bright and Beautiful', 'James Herriot', 378, 4137, 'English', '2004-08-01', NULL, 'All Creatures Great and Small #3-4', 'covers/cover409.png', '"A very warm, very engaging read. . . . The reader falls totally under his spell."
—Associated Press

The second volume in the multimillion copy bestselling series

Millions of readers have delighted in the wonderful storytelling and everyday miracles of James Herriot in the over thirty years since his delightful animal stories were first introduced to the world.

Now in a new edition for the first time in a decade, All Things Bright and Beautiful is the beloved sequel to Herriot''s first collection, All Creatures Great and Small, and picks up as Herriot, now newly married, journeys among the remote hillside farms and valley towns of the Yorkshire Dales, caring for their inhabitants—both two- and four-legged. Throughout, Herriot''s deep compassion, humor, and love of life shine out as we laugh, cry, and delight in his portraits of his many, varied animal patients and their equally varied owners.

"Humor, realism, sensitivity, earthiness; animals comic and tragic; and people droll, pathetic, courageous, eccentric—all of whom he views with the same gentle compassion and a lively sense of the sad, the ridiculous, and the admirable."
—Columbus Dispatch (less)', 1),
	(409, 'Making Hearts', 'Jack Getze', 148, 4474, NULL, '2020-12-06', NULL, NULL, 'covers/cover410.png', 'Interrupting the Soria family’s holiday feast, childish teenager Emily requires the hospital emergency room for an apparent attack of appendicitis. But a blunt nurse explains the truth: Emily is giving birth. The seventeen-year-old has tricked her mind and body into believing she isn’t pregnant, when the baby is full term and already being born.

A life-affirming, feel-good story of love, family and the special way new babies can inspire, Making Hearts introduces a character readers will strongly care about and root for. Noelle wins the hearts of all with her loving enthusiasm for life, her wit, and by personally defeating the villain’s lowdown scheme in an astonishing climax readers will never forget. (less)', 1),
	(410, 'The Day of the Jackal', 'Frederick Forsyth', 358, 1257, 'English', '1979-09-01', NULL, NULL, 'covers/cover411.png', 'Librarian note: an alternate cover for this edition can be found here.

The Jackal. A tall, blond Englishman with opaque, gray eyes. A killer at the top of his profession. A man unknown to any secret service in the  world. An assassin with a contract to kill the world''s most heavily guarded man.

One  man with a rifle who can change the course of history. One man whose mission is so secretive not even his employers know his name. And as the minutes count down to the final act of execution, it seems that there is no power on earth that can stop the Jackal. (less)', 1),
	(411, 'Kissed by an Angel/The Power of Love/Soulmates', 'Elizabeth Chandler', 690, 1462, 'English', '1998-08-01', NULL, 'Kissed by an Angel #1-3', 'covers/cover412.png', 'An angelic romantic suspense trilogy in one volume!

Kissed by an Angel: Ivy and Tristan have the love of a lifetime--until Tristan dies in a car accident. Now Tristan returns as an angel, but Ivy is unable to feel his presence.

The Power of Love: Tristan has learned that the person responsible for the car crash is after Ivy. Can he cross the boundaries of life and death to warn Ivy that she is in trouble?

Soulmates: Tristan must rescue Ivy, but if he does so his mission will be finished and he will have to leave his true love forever. (less)', 1),
	(412, 'Skulduggery Pleasant', 'Derek Landy', 392, 1689, 'English', '2007-04-03', NULL, 'Skulduggery Pleasant #1', 'covers/cover413.png', 'Meet Skulduggery Pleasant

Ace Detective
Snappy Dresser
Razor–tongued Wit
Crackerjack Sorcerer
and
Walking, Talking,
Fire-throwing Skeleton

—as well as ally, protector, and mentor of Stephanie Edgley, a very unusual and darkly talented twelve-year-old.

These two alone must defeat an all-consuming ancient evil.

The end of the world?

Over his dead body.', 1),
	(413, 'The New York Trilogy', 'Paul Auster', 308, 4290, 'English', '2006-03-28', NULL, 'New York Trilogy #1-3', 'covers/cover414.png', 'The remarkable, acclaimed series of interconnected detective novels – from the author of 4 3 2 1: A Novel

The New York Review of Books has called Paul Auster’s work “one of the most distinctive niches in contemporary literature.” Moving at the breathless pace of a thriller, this uniquely stylized triology of detective novels begins with City of Glass, in which Quinn, a mystery writer, receives an ominous phone call in the middle of the night. He’s drawn into the streets of New York, onto an elusive case that’s more puzzling and more deeply-layered than anything he might have written himself. In Ghosts, Blue, a mentee of Brown, is hired by White to spy on Black from a window on Orange Street. Once Blue starts stalking Black, he finds his subject on a similar mission, as well. In The Locked Room, Fanshawe has disappeared, leaving behind his wife and baby and nothing but a cache of novels, plays, and poems.

This Penguin Classics Deluxe Edition includes an introduction from author and professor Luc Sante, as well as a pulp novel-inspired cover from Art Spiegelman, Pulitzer Prize-winning graphic artist of Maus and In the Shadow of No Towers. (less)', 1),
	(414, 'Wintergirls', 'Laurie Halse Anderson', 278, 5158, 'English', '2009-03-19', NULL, NULL, 'covers/cover415.png', 'Lia and Cassie are best friends, wintergirls frozen in fragile bodies, competitors in a deadly contest to see who can be the thinnest. But then Cassie suffers the ultimate loss—her life—and Lia is left behind, haunted by her friend''s memory, and feeling guilty for not being able to help save her.

In her most powerfully moving novel since Speak, award-winning author, Laurie Halse Anderson explores Lia''s struggle, her painful path to recovery, and her desperate attempts to hold on to the most important thing of all—hope. (less)', 1),
	(415, 'Impulse', 'Ellen Hopkins', 666, 2693, 'English', '2007-01-23', NULL, 'Impulse #1', 'covers/cover416.png', 'Sometimes you don''t wake up. But if you happen to, you know things will never be the same.

Three lives, three different paths to the same destination: Aspen Springs, a psychiatric hospital for those who have attempted the ultimate act—suicide.

Vanessa is beautiful and smart, but her secrets keep her answering the call of the blade.

Tony, after suffering a painful childhood, can only find peace through pills.

And Conner, outwardly, has the perfect life. But dig a little deeper and find a boy who is in constant battle with his parents, his life, himself.

In one instant each of these young people decided enough was enough. They grabbed the blade, the bottle, the gun—and tried to end it all. Now they have a second chance, and just maybe, with each other''s help, they can find their way to a better life—but only if they''re strong and can fight the demons that brought them here in the first place. (less)', 1),
	(416, 'The Crystal Cave', 'Mary  Stewart', 494, 3866, 'English', '2003-05-01', NULL, 'Arthurian Saga #1', 'covers/cover417.png', 'Fifth century Britain is a country of chaos and division after the Roman withdrawal. This is the world of young Merlin, the illegitimate child of a South Wales princess who will not reveal to her son his father''s true identity. Yet Merlin is an extraordinary child, aware at the earliest age that he possesses a great natural gift - the Sight. Against a background of invasion and imprisonment, wars and conquest, Merlin emerges into manhood, and accepts his dramatic role in the New Beginning - the coming of King Arthur. (less)', 1),
	(417, 'The Shadow Rising', 'Robert Jordan', 1007, 1385, 'English', '1993-10-15', NULL, 'The Wheel of Time #4', 'covers/cover418.png', 'The seals of Shayol Ghul are weak now, and the Dark One reaches out. The Shadow is rising to cover humankind.

In Tar Valon, Min sees portents of hideous doom. Will the White Tower itself be broken?

In the Two Rivers, the Whitecloaks ride in pursuit of a man with golden eyes, and in pursuit of the Dragon Reborn.

In Cantorin, among the Sea Folk, High Lady Suroth plans the return of the Seanchan armies to the mainland.

In the Stone of Tear, the Lord Dragon considers his next move. It will be something no one expects, not the Black Ajah, not Tairen nobles, not Aes Sedai, not Egwene or Elayne or Nynaeve.

Against the Shadow rising stands the Dragon Reborn..... (less)', 1),
	(418, 'Freedom', 'Jonathan Franzen', 562, 4171, 'English', '2010-08-31', NULL, NULL, 'covers/cover419.png', 'Patty and Walter Berglund were the new pioneers of old St. Paul—the gentrifiers, the hands-on parents, the avant-garde of the Whole Foods generation. Patty was the ideal sort of neighbor, who could tell you where to recycle your batteries and how to get the local cops to actually do their job. She was an enviably perfect mother and the wife of Walter''s dreams. Together with Walter—environmental lawyer, commuter cyclist, total family man—she was doing her small part to build a better world.

But now, in the new millennium, the Berglunds have become a mystery. Why has their teenage son moved in with the aggressively Republican family next door? Why has Walter taken a job working with Big Coal? What exactly is Richard Katz—outré rocker and Walter''s college best friend and rival—still doing in the picture? Most of all, what has happened to Patty? Why has the bright star of Barrier Street become "a very different kind of neighbor," an implacable Fury coming unhinged before the street''s attentive eyes?

In his first novel since The Corrections, Jonathan Franzen has given us an epic of contemporary love and marriage. Freedom comically and tragically captures the temptations and burdens of liberty: the thrills of teenage lust, the shaken compromises of middle age, the wages of suburban sprawl, the heavy weight of empire. In charting the mistakes and joys of Freedom''s characters as they struggle to learn how to live in an ever more confusing world, Franzen has produced an indelible and deeply moving portrait of our time.
(jacket) (less)', 1),
	(419, 'Life As We Knew It', 'Susan Beth Pfeffer', 337, 5036, 'English', '2006-10-01', NULL, 'Last Survivors #1', 'covers/cover420.png', 'Miranda’s disbelief turns to fear in a split second when a meteor knocks the moon closer to the earth. How should her family prepare for the future when worldwide tsunamis wipe out the coasts, earthquakes rock the continents, and volcanic ash blocks out the sun? As summer turns to Arctic winter, Miranda, her two brothers, and their mother retreat to the unexpected safe haven of their sunroom, where they subsist on stockpiled food and limited water in the warmth of a wood-burning stove.

Told in journal entries, this is the heart-pounding story of Miranda’s struggle to hold on to the most important resource of all--hope--in an increasingly desperate and unfamiliar world. (less)', 1),
	(420, 'Aesop''s Fables', 'Aesop', 306, 5552, 'English', '2003-04-10', NULL, NULL, 'covers/cover421.png', 'The fables of Aesop have become one of the most enduring traditions of European culture, ever since they were first written down nearly two millennia ago. Aesop was reputedly a tongue-tied slave who miraculously received the power of speech; from his legendary storytelling came the collections of prose and verse fables scattered throughout Greek and Roman literature. First published in English by Caxton in 1484, the fables and their morals continue to charm modern readers: who does not know the story of the tortoise and the hare, or the boy who cried wolf? (less)', 1),
	(421, 'The Painted Bird', 'Jerzy Kosinski', 234, 5215, 'English', '1995-08-09', NULL, NULL, 'covers/cover422.png', 'Originally published in 1965, The Painted Bird established Jerzy Kosinski as a major literary figure. Called by the Los Angeles Times "one of the most imposing novels of the decade," it was eventually translated into more than thirty languages.

A harrowing story that follows the wanderings of a boy abandoned by his parents during World War II, The Painted Bird is a dark novel that examines the proximity of terror and savagery to innocence and love. It is the first, and the most famous, novel by a writer who is now discredited. (less)', 1),
	(422, 'The Prime of Miss Jean Brodie', 'Muriel Spark', 150, 334, 'English', '1999-02-03', NULL, NULL, 'covers/cover423.png', 'At the staid Marcia Blaine School for Girls in Edinburgh, Scotland, teacher extraordinaire Miss Jean Brodie is unmistakably, and outspokenly, in her prime. She is passionate in the application of her unorthodox teaching methods and strives to bring out the best in each one of her students. Determined to instill in them independence, passion, and ambition, Miss Brodie advises them, "Safety does not come first. Goodness, Truth, and Beauty come first. Follow me." And they do--but one of them will betray her. (less)', 1),
	(423, 'The Children of Húrin', 'J.R.R. Tolkien', 313, 3603, 'English', '2007-04-16', NULL, 'Middle-earth Universe', 'covers/cover424.png', 'This tale of Middle-earth''s First Age, which appeared in incomplete forms in the posthumously published The Silmarillion and Unfinished Tales , also edited by Tolkien''s son, Christopher, only hinted at the depth and power of the tragic story of Túrin and Niënor, the children of Húrin, the lord of Dor-lómin, who achieved renown for having confronted Morgoth, who was the master of Sauron, the manifestation of evil in the Lord of the Rings.

Six thousand years before the One Ring is destroyed, Middle-earth lies under the shadow of the Dark Lord Morgoth. The greatest warriors among elves and men have perished, and all is in darkness and despair. But a deadly new leader rises, Túrin, son of Húrin, and with his grim band of outlaws begins to turn the tide in the war for Middle-earth -- awaiting the day he confronts his destiny and the deadly curse laid upon him. (less)', 1),
	(424, 'The Traitor''s Emblem', 'Juan Gomez-Jurado', 317, 3988, 'English', '2011-07-19', NULL, NULL, 'covers/cover425.png', 'Based on a true story: A Spanish sea captain rescues four German castaways during a treacherous storm in 1940. He doesn’t know who they are or where they came from, but one of them gives him a mysterious gold-and-diamond emblem before disembarking. Decades later, the captain’s son receives a substantial offer for it and is told an astounding story behind the object: it holds the key to Paul Reiner’s lifelong quest. . . .

Munich, 1919. After his family falls into disgrace, fifteen-year-old Paul dreams of the heroic father he never knew. But one night, seconds before committing suicide, Paul’s cousin reveals a terrible secret about his father’s death. This discovery turns Paul’s world upside down and leads him on a hunt in Nazi Germany to uncover the mystery surrounding his father’s death.

The Traitor’s Emblem is an epic novel spanning decades of family betrayal, impossible love, and the high price of vengeance. Set against the menacing streets of Depression-era Munich and the cruel rise of Nazism, Gómez-Jurado’s spellbinding thriller proves again that he is a master of narration. (less)', 1),
	(425, 'Dolores Claiborne', 'Stephen King', 384, 2373, 'English', '1993-12-01', NULL, NULL, 'covers/cover426.png', 'Suspected of killing Vera Donovan, her wealthy employer, Dolores Claiborne tells police the story of her life, harkening back to her disintegrating marriage and the suspicious death of her violent husband, Joe St. George, thirty years earlier. Dolores also tells of Vera''s physical and mental decline and of her loyalty to an employer who has become emotionally demanding in recent years. (less)', 1),
	(426, 'Harry Potter and the Cursed Child: Parts One and Two', 'John Tiffany', 343, 2249, 'English', '2016-07-31', NULL, 'Harry Potter #8', 'covers/cover427.png', 'Based on an original new story by J.K. Rowling, Jack Thorne and John Tiffany, a new play by Jack Thorne, Harry Potter and the Cursed Child is the eighth story in the Harry Potter series and the first official Harry Potter story to be presented on stage. The play will receive its world premiere in London’s West End on July 30, 2016.

It was always difficult being Harry Potter and it isn’t much easier now that he is an overworked employee of the Ministry of Magic, a husband and father of three school-age children.

While Harry grapples with a past that refuses to stay where it belongs, his youngest son Albus must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and son learn the uncomfortable truth: sometimes, darkness comes from unexpected places. (less)', 1),
	(427, 'Who Moved My Cheese?', 'Spencer Johnson', 96, 3186, 'English', '2002-02-07', NULL, 'Who Moved My Cheese? #1', 'covers/cover428.png', 'It is the amusing and enlightening story of four characters who live in a maze and look for cheese to nourish them and make them happy. Cheese is a metaphor for what you want to have in life, for example a good job, a loving relationship, money or possessions, health or spiritual peace of mind. The maze is where you look for what you want, perhaps the organisation you work in, or the family or community you live in. The problem is that the cheese keeps moving.

In the story, the characters are faced with unexpected change in their search for the cheese. One of them eventually deals with change successfully and writes what he has learned on the maze walls for you to discover. (less)', 1),
	(428, 'Glass Sword', 'Victoria Aveyard', 444, 1708, 'English', '2016-02-09', NULL, 'Red Queen #2', 'covers/cover429.png', 'If there’s one thing Mare Barrow knows, it’s that she’s different.

Mare Barrow’s blood is red—the color of common folk—but her Silver ability, the power to control lightning, has turned her into a weapon that the royal court tries to control.

The crown calls her an impossibility, a fake, but as she makes her escape from Maven, the prince—the friend—who betrayed her, Mare uncovers something startling: she is not the only one of her kind.

Pursued by Maven, now a vindictive king, Mare sets out to find and recruit other Red-and-Silver fighters to join in the struggle against her oppressors.

But Mare finds herself on a deadly path, at risk of becoming exactly the kind of monster she is trying to defeat.

Will she shatter under the weight of the lives that are the cost of rebellion? Or have treachery and betrayal hardened her forever?

The electrifying next installment in the Red Queen series escalates the struggle between the growing rebel army and the blood-segregated world they’ve always known—and pits Mare against the darkness that has grown in her soul. (less)', 1),
	(429, 'The Death of Ivan Ilych', 'Leo Tolstoy', 86, 1666, 'English', '2006-08-03', NULL, NULL, 'covers/cover430.png', 'Hailed as one of the world''s supreme masterpieces on the subject of death and dying, The Death of Ivan Ilyich is the story of a worldly careerist, a high court judge who has never given the inevitability of his dying so much as a passing thought. But one day, death announces itself to him, and to his shocked surprise, he is brought face to face with his own mortality.

How, Tolstoy asks, does an unreflective man confront his one and only moment of truth?

This short novel was an artistic culmination of a profound spiritual crisis in Tolstoy''s life, a nine-year period following the publication of Anna Karenina during which he wrote not a word of fiction.
A thoroughly absorbing, and, at times, terrifying glimpse into the abyss of death, it is also a strong testament to the possibility of finding spiritual salvation. (less)', 1),
	(430, 'Need', 'Carrie Jones', 306, 826, 'English', '2008-12-23', NULL, 'Need #1', 'covers/cover431.png', 'Pain shoots through my head. Fireworks. Explosions. All inside my brain. The white world goes dark and I know what''s about to happen.


Zara White suspects there''s a freaky guy semi-stalking her. She''s also obsessed with phobias. And it''s true, she hasn''t exactly been herself since her stepfather died. But exiling her to shivery Maine to live with her grandmother? That seems a bit extreme. The move is supposed to help her stay sane...but Zara''s pretty sure her mom just can''t deal with her right now.

She couldn''t be more wrong. Turns out the semi-stalker is not a figment of Zara''s overactive imagination. In fact, he''s still following her, leaving behind an eerie trail of gold dust. There''s something not right - not human - in this sleepy Maine town, and all signs point to Zara.

In this creepy, compelling breakout novel, Carrie Jones delivers romance, suspense, and a creature you never thought you''d have to fear. (less)', 1),
	(431, 'Vicious', 'V.E. Schwab', 366, 3637, 'English', '2013-09-24', NULL, 'Villains  #1', 'covers/cover432.png', 'A masterful tale of ambition, jealousy, desire, and superpowers.

Victor and Eli started out as college roommates—brilliant, arrogant, lonely boys who recognized the same sharpness and ambition in each other. In their senior year, a shared research interest in adrenaline, near-death experiences, and seemingly supernatural events reveals an intriguing possibility: that under the right conditions, someone could develop extraordinary abilities. But when their thesis moves from the academic to the experimental, things go horribly wrong.

Ten years later, Victor breaks out of prison, determined to catch up to his old friend (now foe), aided by a young girl whose reserved nature obscures a stunning ability. Meanwhile, Eli is on a mission to eradicate every other super-powered person that he can find—aside from his sidekick, an enigmatic woman with an unbreakable will. Armed with terrible power on both sides, driven by the memory of betrayal and loss, the archnemeses have set a course for revenge—but who will be left alive at the end?

In Vicious, V. E. Schwab brings to life a gritty comic-book-style world in vivid prose: a world where gaining superpowers doesn''t automatically lead to heroism, and a time when allegiances are called into question. (less)', 1),
	(432, 'The Scopas Factor', 'Vincent Panettiere', 326, 1325, NULL, '2018-11-05', NULL, NULL, 'covers/cover433.png', 'A Hmong "story cloth," a Revolutionary War battle flag, forged Picassos and a Russian drug dealer—finding the link between these disparate elements is the challenge Mike Hegan faces in The Scopas Factor, the latest mystery from Vincent Panettiere.

After his last investigation ends tragically, Detective Mike Hegan returns to Chicago from St. Kitts, hoping to put everything behind him. But his girlfriend, Diana, has other plans, and although he has no interest in the job opportunity she presents him—in a small northern California town, no less—he wants to please her. Upon his arrival in Weedley, he''s caught up in a kidnapping and two murders. A visit to Diana''s family in San Francisco only serves to deepen the mystery, as her father might be the link to a gang of antiquities thieves that might have something to do with the crimes in Weedley. And when Diana''s father disappears, Hegan takes off for Antibes in southern France, where he discovers that the mystery has only just begun. (less)', 1),
	(433, 'Gabriel''s Rapture', 'Sylvain Reynard', 386, 2488, 'English', '2012-05-22', NULL, 'Gabriel''s Inferno  #2', 'covers/cover434.png', 'Professor Gabriel Emerson has embarked on a passionate, yet clandestine affair with his former student, Julia Mitchell. Sequestered on a romantic holiday in Italy, he tutors her in the sensual delights of the body and the raptures of sex. But when they return, their happiness is threatened by conspiring students, academic politics, and a jealous ex-lover. When Gabriel is confronted by the university administration, will he succumb to Dante''s fate? Or will he fight to keep Julia, his Beatrice, forever? In Gabriel''s Rapture, the brilliant sequel to the wildly successful debut novel, Gabriel''s Inferno, Sylvain Reynard weaves an exquisite love story that will touch the reader''s mind, body, and soul, forever. (less)', 1),
	(434, 'The Miraculous Journey of Edward Tulane', 'Kate DiCamillo', 200, 1984, 'English', '2006-02-14', NULL, NULL, 'covers/cover435.png', 'A timeless tale by the incomparable Kate DiCamillo, complete with stunning full-color plates by Bagram Ibatoulline, honors the enduring power of love.

"Someone will come for you, but first you must open your heart. . . ."

Once, in a house on Egypt Street, there lived a china rabbit named Edward Tulane. The rabbit was very pleased with himself, and for good reason: he was owned by a girl named Abilene, who treated him with the utmost care and adored him completely.

And then, one day, he was lost.

Kate DiCamillo takes us on an extraordinary journey, from the depths of the ocean to the net of a fisherman, from the top of a garbage heap to the fireside of a hoboes'' camp, from the bedside of an ailing child to the bustling streets of Memphis. And along the way, we are shown a true miracle — that even a heart of the most breakable kind can learn to love, to lose, and to love again. (less)', 1),
	(435, 'Tell No One', 'Harlan Coben', 370, 5685, 'English', '2009-08-25', NULL, NULL, 'covers/cover436.png', 'For Dr. David Beck, the loss was shattering. And every day for the past eight years, he has relived the horror of what happened. The gleaming lake. The pale moonlight. The piercing screams. The night his wife was taken. The last night he saw her alive.

Everyone tells him it''s time to move on, to forget the past once and for all. But for David Beck, there can be no closure. A message has appeared on his computer, a phrase only he and his dead wife know. Suddenly Beck is taunted with the impossible- that somewhere, somehow, Elizabeth is alive.

Beck has been warned to tell no one. And he doesn''t. Instead, he runs from the people he trusts the most, plunging headlong into a search for the shadowy figure whose messages hold out a desperate hope.

But already Beck is being hunted down. He''s headed straight into the heart of a dark and deadly secret- and someone intends to stop him before he gets there. (less)', 1),
	(436, 'Big Little Lies', 'Liane Moriarty', 460, 5663, 'English', '2017-02-09', NULL, NULL, 'covers/cover437.png', 'From the author of Truly Madly Guilty and The Husband s Secret comes a novel about the dangerous little lies we tell ourselves just to survive.

A murder...A tragic accident...Or just parents behaving badly? What’s indisputable is that someone is dead.

Madeline is a force to be reckoned with. She’s funny, biting, and passionate; she remembers everything and forgives no one. Celeste is the kind of beautiful woman who makes the world stop and stare but she is paying a price for the illusion of perfection. New to town, single mom Jane is so young that another mother mistakes her for a nanny. She comes with a mysterious past and a sadness beyond her years. These three women are at different crossroads, but they will all wind up in the same shocking place.

Big Little Lies is a brilliant take on ex-husbands and second wives, mothers and daughters, schoolyard scandal, and the little lies that can turn lethal. (less)', 1),
	(437, 'Pushing the Limits', 'Katie McGarry', 392, 3655, 'English', '2012-07-31', NULL, 'Pushing the Limits #1', 'covers/cover438.png', '"I won''t tell anyone, Echo. I promise." Noah tucked a curl behind my ear. It had been so long since someone touched me like he did. Why did it have to be Noah Hutchins? His dark brown eyes shifted to my covered arms. "You didn''t do that-did you? It was done to you?" No one ever asked that question. They stared. They whispered. They laughed. But they never asked.

So wrong for each other...and yet so right.

No one knows what happened the night Echo Emerson went from popular girl with jock boyfriend to gossiped-about outsider with "freaky" scars on her arms. Even Echo can''t remember the whole truth of that horrible night. All she knows is that she wants everything to go back to normal. But when Noah Hutchins, the smoking-hot, girl-using loner in the black leather jacket, explodes into her life with his tough attitude and surprising understanding, Echo''s world shifts in ways she could never have imagined. They should have nothing in common. And with the secrets they both keep, being together is pretty much impossible. Yet the crazy attraction between them refuses to go away. And Echo has to ask herself just how far they can push the limits and what she''ll risk for the one guy who might teach her how to love again... (less)', 1),
	(438, 'The Power of Now: A Guide to Spiritual Enlightenment', 'Eckhart Tolle', 229, 899, 'English', '2004-08-19', NULL, NULL, 'covers/cover439.png', 'Eckhart Tolle''s message is simple: living in the now is the truest path to happiness and enlightenment. And while this message may not seem stunningly original or fresh, Tolle''s clear writing, supportive voice and enthusiasm make this an excellent manual for anyone who''s ever wondered what exactly "living in the now" means. Foremost, Tolle is a world-class teacher, able to explain complicated concepts in concrete language. More importantly, within a chapter of reading this book, readers are already holding the world in a different container--more conscious of how thoughts and emotions get in the way of their ability to live in genuine peace and happiness.
Tolle packs a lot of information and inspirational ideas into The Power of Now. (Topics include the source of Chi, enlightened relationships, creative use of the mind, impermanence and the cycle of life.) Thankfully, he''s added markers that symbolise "break time". This is when readers should close the book and mull over what they just read. As a result, The Power of Now reads like the highly acclaimed A Course in Miracles--a spiritual guidebook that has the potential to inspire just as many study groups and change just as many lives for the better. --Gail Hudson
(less)', 1),
	(439, 'The Illustrated Man', 'Ray Bradbury', 186, 4757, 'English', '2002-08-01', NULL, NULL, 'covers/cover440.png', 'That The Illustrated Man has remained in print since being published in 1951 is fair testimony to the universal appeal of Ray Bradbury''s work. Only his second collection (the first was Dark Carnival, later reworked into The October Country), it is a marvelous, if mostly dark, quilt of science fiction, fantasy, and horror. In an ingenious framework to open and close the book, Bradbury presents himself as a nameless narrator who meets the Illustrated Man--a wanderer whose entire body is a living canvas of exotic tattoos. What''s even more remarkable, and increasingly disturbing, is that the illustrations are themselves magically alive, and each proceeds to unfold its own story, such as "The Veldt," wherein rowdy children take a game of virtual reality way over the edge. Or "Kaleidoscope," a heartbreaking portrait of stranded astronauts about to reenter our atmosphere--without the benefit of a spaceship. Or "Zero Hour," in which invading aliens have discovered a most logical ally--our own children. Even though most were written in the 1940s and 1950s, these 18 classic stories will be just as chillingly effective 50 years from now. --Stanley Wiater

Contents:

· Prologue: The Illustrated Man · ss *
· The Veldt [“The World the Children Made”] · ss The Saturday Evening Post Sep 23 ’50
· Kaleidoscope · ss Thrilling Wonder Stories Oct ’49
· The Other Foot · ss New Story Magazine Mar ’51
· The Highway [as by Leonard Spalding] · ss Copy Spr ’50
· The Man · ss Thrilling Wonder Stories Feb ’49
· The Long Rain [“Death-by-Rain”] · ss Planet Stories Sum ’50
· The Rocket Man · ss Maclean’s Mar 1 ’51
· The Fire Balloons [“‘In This Sign...’”] · ss Imagination Apr ’51
· The Last Night of the World · ss Esquire Feb ’51
· The Exiles [“The Mad Wizards of Mars”] · ss Maclean’s Sep 15 ’49; F&SF Win ’50
· No Particular Night or Morning · ss *
· The Fox and the Forest [“To the Future”] · ss Colliers May 13 ’50
· The Visitor · ss Startling Stories Nov ’48
· The Concrete Mixer · ss Thrilling Wonder Stories Apr ’49
· Marionettes, Inc. [Marionettes, Inc.] · ss Startling Stories Mar ’49
· The City [“Purpose”] · ss Startling Stories Jul ’50
· Zero Hour · ss Planet Stories Fll ’47
· The Rocket [“Outcast of the Stars”] · ss Super Science Stories Mar ’50
· Epilogue · aw * (less)', 1),
	(440, 'China Blues', 'Ki Longfellow', 456, 2738, 'English', '2012-01-24', NULL, NULL, 'covers/cover441.png', 'The Roaring Twenties, Chinatown, San Francisco: back-street blues and bathtub gin… hardball mobsters and hardheaded cops… seductive speakeasies and sizzling scandals. As the young Louis Armstrong blows his horn in the infamous Blue Canary, impetuous Nob Hill Socialite Elizabeth Stafford Hamilton plunges into a reckless affair with mysterious Li Kwan Won. Unknown to Lizzie, Li is the overlord of the city’s vast bootlegging empire—and archenemy of her powerful husband, the San Francisco district attorney. Suddenly Lizzie’s privileged, upper-crust life is shadowed by danger and intrigue—as she’s trapped between her lover and her husband while they battle for control of the city.

Eio Books has reissued Ki Longfellow''s first novel, published by Harper Collins in England in 1989. (less)', 1),
	(441, 'The Dead Girls'' Dance', 'Rachel Caine', 248, 4494, 'English', '2007-04-03', NULL, 'The Morganville Vampires #2', 'covers/cover442.png', 'Claire Danvers has her share of challenges---like being a genius in a school that favors beauty over brains, dealing with the homicidal girls in her dorm, and above all, finding out that her college town is overrun with vampires. On the up side, she has a great roommate (who tends to disappear at sunup) and a new boyfriend named Shane, whose vampire-hunting dad has called in backup: cycle punks who like the idea of killing just about anything.

Now a fraternity is throwing its annual Dead Girls'' Dance and---surprise!---Claire and her equally outcast best friend, Eve, have been invited. When they find out why, all hell is going to break loose. Because this time both the living and the dead are coming out---and everybody''s hungry for blood. (less)', 1),
	(442, 'Reaper Man', 'Terry Pratchett', 352, 3166, 'English', '2005-04-01', NULL, 'Discworld #11', 'covers/cover443.png', '''Death has to happen. That''s what bein'' alive is all about. You''re alive, and then you''re dead. It can''t just stop happening.''

But it can. And it has. So what happens after death is now less of a philosophical question than a question of actual reality. On the Disc, as here, they need Death. If Death doesn''t come for you, then what are you supposed to do in the meantime? You can''t have the undead wandering about like lost souls. There''s no telling what might happen, particularly when they discover that life really is only for the living... (less)', 1),
	(443, 'Fathers and Sons', 'Ivan Turgenev', 244, 1526, 'English', '2005-02-01', NULL, NULL, 'covers/cover444.png', 'Bazarov—a gifted, impatient, and caustic young man—has journeyed from school to the home of his friend Arkady Kirsanov. But soon Bazarov’s outspoken rejection of authority and social conventions touches off quarrels, misunderstandings, and romantic entanglements that will utterly transform the Kirsanov household and reflect the changes taking place across all of nineteenth-century Russia.

Fathers and Sons enraged the old and the young, reactionaries, romantics, and radicals alike when it was first published. At the same time, Turgenev won the acclaim of Flaubert, Maupassant, and Henry James for his craftsmanship as a writer and his psychological insight. Fathers and Sons is now considered one of the greatest novels of the nineteenth century.

A timeless depiction of generational conflict during social upheaval, it vividly portrays the clash between the older Russian aristocracy and the youthful radicalism that foreshadowed the revolution to come—and offers modern-day readers much to reflect upon as they look around at their own tumultuous, ever changing world.

Introduction by Jane Costlow (less)', 1),
	(444, 'Killing Floor', 'Lee Child', 524, 4044, 'English', '2006-04-25', NULL, 'Jack Reacher #1', 'covers/cover445.png', 'Ex-military policeman Jack Reacher is a drifter. He''s just passing through Margrave, Georgia, and in less than an hour, he''s arrested for murder. Not much of a welcome. All Jack knows is that he didn''t kill anybody. At least not here. Not lately. But he doesn''t stand a chance of convincing anyone. not in Margrave, Georgia. Not a chance in hell. (less)', 1),
	(445, 'If Tomorrow Comes', 'Sidney Sheldon', 501, 2577, 'English', '1985-01-01', NULL, 'Tracy Whitney #1', 'covers/cover446.png', 'This is a story of intrigue and revenge. Tracy Whitney is young, beautiful and intelligent - and about to marry into wealth and glamour. Until, suddenly, she is betrayed, framed by a ruthless Mafia gang, abandoned by the man she loves. Only her ingenuity saves her and helps her fight back.', 1),
	(446, 'Among the Hidden', 'Margaret Peterson Haddix', 153, 795, 'English', '2006-06-01', NULL, 'Shadow Children #1', 'covers/cover447.png', 'SHADOW CHILDREN

Luke has never been to school. He''s never had a birthday party, or gone to a friend''s house for an overnight. In fact, Luke has never had a friend.

Luke is one of the shadow children, a third child forbidden by the Population Police. He''s lived his entire life in hiding, and now, with a new housing development replacing the woods next to his family''s farm, he is no longer even allowed to go outside.

Then, one day Luke sees a girl''s face in the window of a house where he knows two other children already live. Finally, he''s met a shadow child like himself. Jen is willing to risk everything to come out of the shadows - does Luke dare to become involved in her dangerous plan? Can he afford not to? (less)', 1),
	(447, 'A Long Way Gone: Memoirs of a Boy Soldier', 'Ishmael Beah', 229, 5912, 'English', '2007-02-13', NULL, NULL, 'covers/cover448.png', 'The devastating story of war through the eyes of a child soldier. Beah tells how, at the age of twelve, he fled attacking rebels and wandered a land rendered unrecognizable by violence. By thirteen, he’d been picked up by the government army, and became a soldier.

My new friends have begun to suspect I haven’t told them the full story of my life.
“Why did you leave Sierra Leone?”
“Because there is a war.”
“You mean, you saw people running around with guns and shooting each other?”
“Yes, all the time.”
“Cool.”
I smile a little.
“You should tell us about it sometime.”
“Yes, sometime.”

This is how wars are fought now: by children, hopped-up on drugs and wielding AK-47s. Children have become soldiers of choice. In the more than fifty conflicts going on worldwide, it is estimated that there are some 300,000 child soldiers. Ishmael Beah used to be one of them.

What is war like through the eyes of a child soldier? How does one become a killer? How does one stop? Child soldiers have been profiled by journalists, and novelists have struggled to imagine their lives. But until now, there has not been a first-person account from someone who came through this hell and survived.

In A Long Way Gone, Beah, now twenty-five years old, tells a riveting story: how at the age of twelve, he fled attacking rebels and wandered a land rendered unrecognizable by violence. By thirteen, he’d been picked up by the government army, and Beah, at heart a gentle boy, found that he was capable of truly terrible acts.

This is a rare and mesmerizing account, told with real literary force and heartbreaking honesty. (less)', 1),
	(448, 'The Ancestor', 'Lee Matthew Goldberg', 348, 5638, 'English', '2020-08-21', NULL, NULL, 'covers/cover449.png', 'A man wakes up in present-day Alaskan wilderness with no idea who he is, nothing on him save an empty journal with the date 1898 and a mirror. He sees another man hunting nearby, astounded that they look exactly alike. After following this other man home, he witnesses a wife and child that brings forth a rush of memories of his own wife and child, except he''s certain they do not exist in modern times-but from his life in the late 1800s. After recalling his name is Wyatt, he worms his way into his doppelganger Travis Barlow''s life. Memories become unearthed the more time he spends, making him believe that he''d been frozen after coming to Alaska during the Gold Rush and that Travis is his great-great grandson. Wyatt is certain gold still exists in the area and finding it with Travis will ingratiate himself to the family, especially with Travis''s wife Callie, once Wyatt falls in love. This turns into a dangerous obsession affecting the Barlows and everyone in their small town, since Wyatt can''t be tamed until he also discovers the meaning of why he was able to be preserved on ice for over a century.

A meditation on love lost and unfulfilled dreams, The Ancestor is a thrilling page-turner in present day Alaska and a historical adventure about the perilous Gold Rush expeditions where prospectors left behind their lives for the promise of hope and a better future. The question remains whether it was all worth the sacrifice…. (less)', 1),
	(449, 'The Storyteller', 'Jodi Picoult', 461, 2650, 'English', '2013-02-26', NULL, NULL, 'covers/cover450.png', 'Some stories live forever . . .

Sage Singer is a baker. She works through the night, preparing the day’s breads and pastries, trying to escape a reality of loneliness, bad memories, and the shadow of her mother’s death. When Josef Weber, an elderly man in Sage’s grief support group, begins stopping by the bakery, they strike up an unlikely friendship. Despite their differences, they see in each other the hidden scars that others can’t, and they become companions.

Everything changes on the day that Josef confesses a long-buried and shameful secret—one that nobody else in town would ever suspect—and asks Sage for an extraordinary favor. If she says yes, she faces not only moral repercussions, but potentially legal ones as well. With her own identity suddenly challenged, and the integrity of the closest friend she’s ever had clouded, Sage begins to question the assumptions and expectations she’s made about her life and her family. When does a moral choice become a moral imperative? And where does one draw the line between punishment and justice, forgiveness and mercy?

In this searingly honest novel, Jodi Picoult gracefully explores the lengths we will go in order to protect our families and to keep the past from dictating the future (less)', 1),
	(450, 'Burned', 'Ellen Hopkins', 431, 5095, 'English', '2006-04-01', NULL, 'Burned #1', 'covers/cover451.png', 'I do know things really began to spin out of control after my first sex dream.

It all started with a dream. Nothing exceptional, just a typical fantasy about a boy, the kind of dream that most teen girls experience. But Pattyn Von Stratten is not like most teen girls. Raised in a religious—yet abusive—family, a simple dream may not be exactly a sin, but it could be the first step toward hell and eternal damnation.

This dream is a first step for Pattyn. But is it to hell or to a better life? For the first time Pattyn starts asking questions. Questions seemingly without answers—about God, a woman''s role, sex, love—mostly love. What is it? Where is it? Will she ever experience it? Is she deserving of it?

It''s with a real boy that Pattyn gets into real trouble. After Pattyn''s father catches her in a compromising position, events spiral out of control until Pattyn ends up suspended from school and sent to live with an aunt she doesn''t know.

Pattyn is supposed to find salvation and redemption during her exile to the wilds of rural Nevada. Yet what she finds instead is love and acceptance. And for the first time she feels worthy of both—until she realizes her old demons will not let her go. Pattyn begins down a path that will lead her to a hell—a hell that may not be the one she learned about in sacrament meetings, but it is hell all the same.

In this riveting and masterful novel told in verse, Ellen Hopkins takes readers on an emotional roller-coaster ride. From the highs of true love to the lows of abuse, Pattyn''s story will have readers engrossed until the very last word. (less)', 1),
	(451, 'The Invisible Man', 'H.G. Wells', 192, 464, 'English', '2002-09-03', NULL, NULL, 'covers/cover452.png', 'This masterpiece of science fiction is the fascinating story of Griffin, a scientist who creates a serum to render himself invisible, and his descent into madness that follows.', 1),
	(452, 'Darkness at Noon', 'Arthur Koestler', 216, 3123, 'English', '1984-03-01', NULL, NULL, 'covers/cover453.png', 'Darkness at Noon (from the German: Sonnenfinsternis) is a novel by the Hungarian-born British novelist Arthur Koestler, first published in 1940. His best-known work tells the tale of Rubashov, a Bolshevik 1917 revolutionary who is cast out, imprisoned and tried for treason by the Soviet government he''d helped create.

Darkness at Noon stands as an unequaled fictional portrayal of the nightmare politics of our time. Its hero is an aging revolutionary, imprisoned and psychologically tortured by the Party to which he has dedicated his life. As the pressure to confess preposterous crimes increases, he relives a career that embodies the terrible ironies and human betrayals of a totalitarian movement masking itself as an instrument of deliverance. Almost unbearably vivid in its depiction of one man''s solitary agony, it asks questions about ends and means that have relevance not only for the past but for the perilous present. It is —- as the Times Literary Supplement has declared —- "A remarkable book, a grimly fascinating interpretation of the logic of the Russian Revolution, indeed of all revolutionary dictatorships, and at the same time a tense and subtly intellectualized drama." (less)', 1),
	(453, 'The Summer I Turned Pretty', 'Jenny Han', 276, 2327, 'English', '2009-05-05', NULL, 'Summer #1', 'covers/cover454.png', 'Belly measures her life in summers. Everything good, everything magical happens between the months of June and August. Winters are simply a time to count the weeks until the next summer, a place away from the beach house, away from Susannah, and most importantly, away from Jeremiah and Conrad. They are the boys that Belly has known since her very first summer—they have been her brother figures, her crushes, and everything in between. But one summer, one terrible and wonderful summer, the more everything changes, the more it all ends up just the way it should have been all along. (less)', 1),
	(454, 'Kingdom of Ash', 'Sarah J. Maas', 984, 3100, 'English', '2018-10-23', NULL, 'Throne of Glass #7', 'covers/cover455.png', 'Aelin Galathynius has vowed to save her people - but at a tremendous cost. Locked within an iron coffin by the Queen of the Fae, Aelin must draw upon her fiery will as she endures months of torture. The knowledge that yielding to Maeve will doom those she loves keeps her from breaking, but her resolve is unraveling with each passing day…

With Aelin captured, friends and allies are scattered to different fates. Some bonds will grow even deeper, while others will be severed forever. As destinies weave together at last, all must fight if Erilea is to have any hope of salvation.

Years in the making, Sarah J. Maas''s New York Times bestselling Throne of Glass series draws to an explosive conclusion as Aelin fights to save herself-and the promise of a better world. (less)', 1),
	(455, 'Pawn of Prophecy', 'David Eddings', 304, 5269, 'English', '2004-06-01', NULL, 'The Belgariad #1', 'covers/cover456.png', 'A magnificent epic set against a history of seven thousand years of the struggles of Gods and Kings and men - of strange lands and events - of fate and a prophecy that must be fulfilled! THE BELGARIAD

Long ago, so the Storyteller claimed, the evil God Torak sought dominion and drove men and Gods to war. But Belgarath the Sorcerer led men to reclaim the Orb that protected men of the West. So long as it lay at Riva, the prophecy went, men would be safe.

But that was only a story, and Garion did not believe in magic dooms, even though the dark man without a shadow had haunted him for years. Brought up on a quiet farm by his Aunt Pol, how could he know that the Apostate planned to wake dread Torak, or that he would be led on a quest of unparalleled magic and danger by those he loved - but did not know? For a while his dreams of innocence were safe, untroubled by knowledge of his strange heritage. For a little while... THUS BEGINS BOOK ONE OF THE BELGARIAD'' (less)', 1),
	(456, 'River God', 'Wilbur Smith', 664, 2355, 'English', '1995-02-15', NULL, 'Ancient Egypt #1', 'covers/cover457.png', 'For Tanus, the fair-haired young lion of a warrior, the gods have decreed that he will lead Egypt''s army in a bold attempt to reunite the Kingdom''s shared halves. But Tanus will have to defy the same gods to attain the reward they have forbidden him, an object more prized than battle''s glory: possession of the Lady Lostris, a rare beauty with skin the color of oiled ceder--destined for the adoration of a nation, and the love of one extraordinary man. (less)', 1),
	(457, 'Solaris', 'Stanislaw Lem', 204, 4779, 'English', '2002-11-20', NULL, NULL, 'covers/cover458.png', 'A classic work of science fiction by renowned Polish novelist and satirist Stanislaw Lem.

When Kris Kelvin arrives at the planet Solaris to study the ocean that covers its surface, he finds a painful, hitherto unconscious memory embodied in the living physical likeness of a long-dead lover. Others examining the planet, Kelvin learns, are plagued with their own repressed and newly corporeal memories. The Solaris ocean may be a massive brain that creates these incarnate memories, though its purpose in doing so is unknown, forcing the scientists to shift the focus of their quest and wonder if they can truly understand the universe without first understanding what lies within their hearts. (less)', 1),
	(458, 'The Casual Vacancy', 'J.K. Rowling', 503, 190, 'English', '2012-09-27', NULL, NULL, 'covers/cover459.png', 'A BIG NOVEL ABOUT A SMALL TOWN ...

When Barry Fairbrother dies in his early forties, the town of Pagford is left in shock.

Pagford is, seemingly, an English idyll, with a cobbled market square and an ancient abbey, but what lies behind the pretty façade is a town at war.

Rich at war with poor, teenagers at war with their parents, wives at war with their husbands, teachers at war with their pupils ... Pagford is not what it first seems.

And the empty seat left by Barry on the parish council soon becomes the catalyst for the biggest war the town has yet seen. Who will triumph in an election fraught with passion, duplicity and unexpected revelations? (less)', 1),
	(459, 'Labyrinths:  Selected Stories and Other Writings', 'Jorge Luis Borges', 256, 956, 'Multiple languages', '1964-01-01', NULL, NULL, 'covers/cover460.png', 'Although his work has been restricted to the short story, the essay, and poetry, Jorge Luis Borges of Argentina is recognized all over the world as one of the most original and significant figures in modern literature. In his preface, Andre Maurois writes: "Borges is a great writer who has composed only little essays or short narratives. Yet they suffice for us to call him great because of their wonderful intelligence, their wealth of invention, and their tight, almost mathematical style."

Labyrinths is a representative selection of Borges'' writing, some forty pieces drawn from various books of his published over the years. The translations are by Harriet de Onis, Anthony Kerrigan, and others, including the editors, who have provided a biographical and critical introduction, as well as an extensive bibliography. (less)', 1),
	(460, 'The Fury / Dark Reunion', 'L.J. Smith', 520, 1981, 'English', '2007-12-26', NULL, 'The Vampire Diaries #3-4', 'covers/cover461.png', 'LOVE CAN KILL

Elena: transformed, the golden girl has become what she once feared and desired.

Stefan: tormented by losing Elena, he''s determined to end his feud with Damon once and for all - whatever the cost. But slowly he begins to realize that his brother is not his only enemy.

Damon: at last, he possesses Elena. But will his thirst for revenge against Stefan poison his triumph? Or can they come together to face one final battle?

Collected here in one edition are the third and fourth volumes of The Vampire Diaries, a riveting conclusion to the tale of two vampire brothers and the beautiful girl torn between them. (less)', 1),
	(461, 'Don''t Judge a Girl by Her Cover', 'Ally Carter', 263, 950, 'English', '2009-06-09', NULL, 'Gallagher Girls #3', 'covers/cover462.png', 'When Cammie "The Chameleon" Morgan visits her roommate Macey in Boston, she thinks she''s in for an exciting end to her summer break. After all, she''s there to watch Macey''s father accept the nomination for vice president of the United States. But when you go to the world''s best school (for spies), "exciting" and "deadly" are never far apart. Cammie and Macey soon find themselves trapped in a kidnappers'' plot, with only their espionage skills to save them.

As her junior year begins, Cammie can''t shake the memory of what happened in Boston, and even the Gallagher Academy for Exceptional Young Women doesn''t feel like the safe haven it once did. Shocking secrets and old flames seem to lurk around every one of the mansion''s corners as Cammie and her friends struggle to answer the questions, Who is after Macey? And how can the Gallagher Girls keep her safe?

Soon Cammie is joining Bex and Liz as Macey''s private security team on the campaign trail. The girls must use their spy training at every turn as the stakes are raised, and Cammie gets closer and closer to the shocking truth. . . . (less)', 1),
	(462, 'Tiger''s Voyage', 'Colleen Houck', 560, 5655, 'English', '2011-11-01', NULL, 'The Tiger''s Curse Series #3', 'covers/cover463.png', 'With the head-to-head battle against the villainous Lokesh behind her, Kelsey confronts a new heartbreak: in the wake of his traumatic experience, her beloved Ren no longer remembers who she is. As the trio continues their quest by challenging five cunning and duplicitous dragons, Ren and Kishan once more vie for her affections--leaving Kelsey more confused than ever.', 1),
	(463, 'The Winter of Our Discontent', 'John Steinbeck', 291, 4227, 'English', '2008-08-26', NULL, NULL, 'covers/cover464.png', 'Ethan Allen Hawley, the protagonist of Steinbeck’s last novel, works as a clerk in a grocery store that his family once owned. With Ethan no longer a member of Long Island’s aristocratic class, his wife is restless, and his teenage children are hungry for the tantalizing material comforts he cannot provide. Then one day, in a moment of moral crisis, Ethan decides to take a holiday from his own scrupulous standards.

Set in Steinbeck’s contemporary 1960 America, the novel explores the tenuous line between private and public honesty that today ranks it alongside his most acclaimed works of penetrating insight into the American condition. This edition features an introduction and notes by Steinbeck scholar Susan Shillinglaw. (less)', 1),
	(464, 'Days of Blood & Starlight', 'Laini Taylor', 517, 5247, 'English', '2012-11-06', NULL, 'Daughter of Smoke & Bone #2', 'covers/cover465.png', 'Once upon a time, an angel and a devil fell in love and dared to imagine a world free of bloodshed and war.

This is not that world.

Art student and monster''s apprentice Karou finally has the answers she has always sought. She knows who she is—and what she is. But with this knowledge comes another truth she would give anything to undo: She loved the enemy and he betrayed her, and a world suffered for it.

In this stunning sequel to the highly acclaimed Daughter of Smoke & Bone, Karou must decide how far she''ll go to avenge her people. Filled with heartbreak and beauty, secrets and impossible choices, Days of Blood & Starlight finds Karou and Akiva on opposing sides as an age-old war stirs back to life.

While Karou and her allies build a monstrous army in a land of dust and starlight, Akiva wages a different sort of battle: a battle for redemption. For hope.

But can any hope be salvaged from the ashes of their broken dream? (less)', 1),
	(465, 'The 100-Year-Old Man Who Climbed Out the Window and Disappeared', 'Jonas Jonasson', 396, 1282, 'English', '2012-09-11', NULL, 'The Hundred-Year-Old Man #1', 'covers/cover466.png', 'After a long and eventful life, Allan Karlsson ends up in a nursing home, believing it to be his last stop. The only problem is that he’s still in good health. A big celebration is in the works for his 100th birthday, but Allan really isn’t interested (and he’d like a bit more control over his alcohol consumption), so he decides to escape. He climbs out the window in his slippers and embarks on a hilarious and entirely unexpected journey. It would be the adventure of a lifetime for anyone else, but Allan has a larger-than-life backstory: he has not only witnessed some of the most important events of the 20th century, but actually played a key role in them. Quirky and utterly unique, The 100-Year-Old Man Who Climbed Out the Window and Disappeared has charmed readers across the world. (less)', 1),
	(466, 'The Warded Man', 'Peter V. Brett', 416, 436, 'English', '2009-03-10', NULL, 'The Demon Cycle #1', 'covers/cover467.png', 'As darkness falls after sunset, the corelings rise—demons who possess supernatural powers and burn with a consuming hatred of humanity. For hundreds of years the demons have terrorized the night, slowly culling the human herd that shelters behind magical wards—symbols of power whose origins are lost in myth and whose protection is terrifyingly fragile. It was not always this way. Once, men and women battled the corelings on equal terms, but those days are gone. Night by night the demons grow stronger, while human numbers dwindle under their relentless assault. Now, with hope for the future fading, three young survivors of vicious demon attacks will dare the impossible, stepping beyond the crumbling safety of the wards to risk everything in a desperate quest to regain the secrets of the past. Together, they will stand against the night. (less)', 1),
	(467, 'Imajica', 'Clive Barker', 823, 3797, 'English', '1997-08-01', NULL, NULL, 'covers/cover468.png', 'Imajica is an epic beyond compare: vast in conception, obsessively detailed in execution, and apocalyptic in its resolution. At its heart lies the sensualist and master art forger, Gentle, whose life unravels when he encounters Judith Odell, whose power to influence the destinies of men is vaster than she knows, and Pie ''oh'' pah, an alien assassin who comes from a hidden dimension.

That dimension is one of five in the great system called Imajica. They are worlds that are utterly unlike our own, but are ruled, peopled, and haunted by species whose lives are intricately connected with ours. As Gentle, Judith, and Pie ''oh'' pah travel the Imajica, they uncover a trail of crimes and intimate betrayals, leading them to a revelation so startling that it changes reality forever. (less)', 1),
	(468, 'Lullaby', 'Chuck Palahniuk', 260, 1842, 'English', '2003-06-05', NULL, NULL, 'covers/cover469.png', 'Carl Streator is a reporter investigating Sudden Infant Death Syndrome for a soft-news feature. After responding to several calls with paramedics, he notices that all the dead children were read the same poem from the same library book the night before they died. It''s a ''culling song'' - an ancient African spell for euthanising sick or old people. Researching it, he meets a woman who killed her own child with it accidentally. He himself accidentally killed his own wife and child with the same poem twenty years earlier. Together, the man and the woman must find and destroy all copies of this book, and try not to kill every rude sonofabitch that gets in their way. Lullaby is a comedy/drama/tragedy. In that order. It may also be Chuck Palahniuk''s best book yet. (less)', 1),
	(469, 'After Dark', 'Haruki Murakami', 191, 2627, 'English', '2007-05-08', NULL, NULL, 'covers/cover470.png', 'A short, sleek novel of encounters set in Tokyo during the witching hours between midnight and dawn, and every bit as gripping as Haruki Murakami’s masterworks The Wind-Up Bird Chronicle and Kafka on the Shore.

At its center are two sisters—Eri, a fashion model slumbering her way into oblivion, and Mari, a young student soon led from solitary reading at an anonymous Denny’s toward people whose lives are radically alien to her own: a jazz trombonist who claims they’ve met before, a burly female “love hotel” manager and her maid staff, and a Chinese prostitute savagely brutalized by a businessman. These “night people” are haunted by secrets and needs that draw them together more powerfully than the differing circumstances that might keep them apart, and it soon becomes clear that Eri’s slumber—mysteriously tied to the businessman plagued by the mark of his crime—will either restore or annihilate her.

After Dark moves from mesmerizing drama to metaphysical speculation, interweaving time and space as well as memory and perspective into a seamless exploration of human agency—the interplay between self-expression and empathy, between the power of observation and the scope of compassion and love. Murakami’s trademark humor, psychological insight, and grasp of spirit and morality are here distilled with an extraordinary, harmonious mastery. (less)', 1),
	(470, 'The White Tiger', 'Aravind Adiga', 276, 3890, 'English', '2008-01-01', NULL, NULL, 'covers/cover471.png', 'Introducing a major literary talent, The White Tiger offers a story of coruscating wit, blistering suspense, and questionable morality, told by the most volatile, captivating, and utterly inimitable narrator that this millennium has yet seen.

Balram Halwai is a complicated man. Servant. Philosopher. Entrepreneur. Murderer. Over the course of seven nights, by the scattered light of a preposterous chandelier, Balram tells us the terrible and transfixing story of how he came to be a success in life—having nothing but his own wits to help him along.

Born in the dark heart of India, Balram gets a break when he is hired as a driver for his village''s wealthiest man, two house Pomeranians (Puddles and Cuddles), and the rich man''s (very unlucky) son. From behind the wheel of their Honda City car, Balram''s new world is a revelation. While his peers flip through the pages of Murder Weekly ("Love -- Rape -- Revenge!"), barter for girls, drink liquor (Thunderbolt), and perpetuate the Great Rooster Coop of Indian society, Balram watches his employers bribe foreign ministers for tax breaks, barter for girls, drink liquor (single-malt whiskey), and play their own role in the Rooster Coop. Balram learns how to siphon gas, deal with corrupt mechanics, and refill and resell Johnnie Walker Black Label bottles (all but one). He also finds a way out of the Coop that no one else inside it can perceive.

Balram''s eyes penetrate India as few outsiders can: the cockroaches and the call centers; the prostitutes and the worshippers; the ancient and Internet cultures; the water buffalo and, trapped in so many kinds of cages that escape is (almost) impossible, the white tiger. And with a charisma as undeniable as it is unexpected, Balram teaches us that religion doesn''t create virtue, and money doesn''t solve every problem -- but decency can still be found in a corrupt world, and you can get what you want out of life if you eavesdrop on the right conversations.

The White Tiger recalls The Death of Vishnu and Bangkok 8 in ambition, scope, and narrative genius, with a mischief and personality all its own. Amoral, irreverent, deeply endearing, and utterly contemporary, this novel is an international publishing sensation —and a startling, provocative debut. (less)', 1),
	(471, 'Mere Christianity', 'C.S. Lewis', 168, 1526, NULL, '2018-07-02', NULL, NULL, 'covers/cover472.png', 'Mere Christianity is C.S. Lewis''s forceful and accessible doctrine of Christian belief. First heard as informal radio broadcasts and then published as three separate books - The Case for Christianity, Christian Behavior, and Beyond Personality - Mere Christianity brings together what Lewis saw as the fundamental truths of the religion. Rejecting the boundaries that divide Christianity''s many denominations, C.S. Lewis finds a common ground on which all those who have Christian faith can stand together, proving that "at the centre of each there is something, or a Someone, who against all divergences of belief, all differences of temperament, all memories of mutual persecution, speaks the same voice." (less)', 1),
	(472, 'Diary of a Wimpy Kid', 'Jeff Kinney', 226, 3507, 'English', '2007-04-01', NULL, 'Diary of a Wimpy Kid #1', 'covers/cover473.png', 'Greg Heffley finds himself thrust into a new year and a new school where undersize weaklings share the corridors with kids who are taller, meaner and already shaving.

Desperate to prove his new found maturity, which only going up a grade can bring, Greg is happy to have his not-quite-so-cool sidekick, Rowley, along for the ride. But when Rowley''s star starts to rise, Greg tries to use his best friend''s popularity to his own advantage. Recorded in his diary with comic pictures and his very own words, this test of Greg and Rowley''s friendship unfolds with hilarious results. (less)', 1),
	(473, 'Cat''s Eye', 'Margaret Atwood', 462, 1555, 'English', '1998-01-01', NULL, NULL, 'covers/cover474.png', 'Cat''s Eye is the story of Elaine Risley, a controversial painter who returns to Toronto, the city of her youth, for a retrospective of her art. Engulfed by vivid images of the past, she reminisces about a trio of girls who initiated her into the fierce politics of childhood and its secret world of friendship, longing, and betrayal. Elaine must come to terms with her own identity as a daughter, a lover, and artist, and woman—but above all she must seek release from her haunting memories. Disturbing, hilarious, and compassionate, Cat''s Eye is a breathtaking novel of a woman grappling with the tangled knots of her life. (less)', 1),
	(474, 'Black Like Me', 'John Howard Griffin', 208, 5779, 'English', '2003-05-06', NULL, NULL, 'covers/cover475.png', 'In the Deep South of the 1950s, journalist John Howard Griffin decided to cross the color line. Using medication that darkened his skin to deep brown, he exchanged his privileged life as a Southern white man for the disenfranchised world of an unemployed black man. His audacious, still chillingly relevant eyewitness history is a work about race and humanity-that in this new millennium still has something important to say to every American. (less)', 1),
	(475, 'Ham on Rye', 'Charles Bukowski', 288, 2173, 'English', '2014-07-29', NULL, NULL, 'covers/cover476.png', 'In what is widely hailed as the best of his many novels, Charles Bukowski details the long, lonely years of his own hardscrabble youth in the raw voice of alter ego Henry Chinaski. From a harrowingly cheerless childhood in Germany through acne-riddled high school years and his adolescent discoveries of alcohol, women, and the Los Angeles Public Library''s collection of D. H. Lawrence, "Ham on Rye" offers a crude, brutal, and savagely funny portrait of an outcast''s coming-of-age during the desperate days of the Great Depression. (less)', 1),
	(476, 'The Thief Lord', 'Cornelia Funke', 350, 2672, 'English', '2002-07-17', NULL, NULL, 'covers/cover477.png', 'Two orphaned children are on the run, hiding among the crumbling canals and misty alleyways of the city of Venice.

Befriended by a gang of street children and their mysterious leader, the Thief Lord, they shelter in an old, disused cinema. On their trail is a bungling detective, obsessed with disguises and the health of his pet tortoises. But a greater threat to the boys'' new-found freedom is something from a forgotten past – a beautiful magical treasure with the power to spin time itself. (less)', 1),
	(477, 'Hiroshima', 'John Hersey', 152, 3036, 'English', '1989-03-04', NULL, NULL, 'covers/cover478.png', 'On August 6, 1945, Hiroshima was destroyed by the first atom bomb ever dropped on a city. This book, John Hersey''s journalistic masterpiece, tells what happened on that day. Told through the memories of survivors, this timeless, powerful and compassionate document has become a classic "that stirs the conscience of humanity" (The New York Times).

Almost four decades after the original publication of this celebrated book, John Hersey went back to Hiroshima in search of the people whose stories he had told.  His account of what he discovered about them is now the eloquent and moving final chapter of Hiroshima . (less)', 1),
	(478, 'The Forever War', 'Joe Haldeman', 278, 1913, 'English', '2003-09-02', NULL, 'The Forever War #1', 'covers/cover479.png', 'The Earth''s leaders have drawn a line in the interstellar sand—despite the fact that the fierce alien enemy that they would oppose is inscrutable, unconquerable, and very far away. A reluctant conscript drafted into an elite Military unit, Private William Mandella has been propelled through space and time to fight in the distant thousand-year conflict; to perform his duties without rancor and even rise up through military ranks. Pvt. Mandella is willing to do whatever it takes to survive the ordeal and return home. But "home" may be even more terrifying than battle, because, thanks to the time dilation caused by space travel, Mandella is aging months while the Earth he left behind is aging centuries. (less)', 1),
	(479, 'If You Give a Mouse a Cookie', 'Laura Joffe Numeroff', 40, 2013, 'English', '2015-10-06', NULL, 'If You Give...', 'covers/cover480.png', 'If a hungry little traveler shows up at your house, you might want to give him a cookie. If you give him a cookie, he''s going to ask for a glass of milk. He''ll want to look in a mirror to make sure he doesn''t have a milk mustache, and then he''ll ask for a pair of scissors to give himself a trim....

The consequences of giving a cookie to this energetic mouse run the young host ragged, but young readers will come away smiling at the antics that tumble like dominoes through the pages of this delightful picture book. (less)', 1),
	(480, 'Cheaper by the Dozen', 'Frank B. Gilbreth Jr.', 292, 4968, 'English', '2013-11-05', NULL, 'Cheaper by the Dozen #1', 'covers/cover481.png', 'Adapted into two classic motion pictures, this bestselling memoir is the unforgettable story of two parents, twelve kids, and a world of laughter and love.

Translated into more than fifty languages, Cheaper by the Dozen is the unforgettable story of the Gilbreth clan as told by two of its members. In this endearing, amusing memoir, siblings Frank Jr. and Ernestine capture the hilarity and heart of growing up in an oversized family.

Mother and Dad are world-renowned efficiency experts, helping factories fine-tune their assembly lines for maximum output at minimum cost. At home, the Gilbreths themselves have cranked out twelve kids, and Dad is out to prove that efficiency principles can apply to family as well as the workplace.

The heartwarming and comic stories of the jumbo-size Gilbreth clan have delighted generations of readers, and will keep you and yours laughing for years. (less)', 1),
	(481, 'Old Man''s War', 'John Scalzi', 332, 783, 'English', '2007-04-01', NULL, 'Old Man''s War #1', 'covers/cover482.png', 'John Perry did two things on his 75th birthday. First he visited his wife''s grave. Then he joined the army.

The good news is that humanity finally made it into interstellar space. The bad news is that planets fit to live on are scarce-- and alien races willing to fight us for them are common. So: we fight. To defend Earth, and to stake our own claim to planetary real estate. Far from Earth, the war has been going on for decades: brutal, bloody, unyielding.

Earth itself is a backwater. The bulk of humanity''s resources are in the hands of the Colonial Defense Force. Everybody knows that when you reach retirement age, you can join the CDF. They don''t want young people; they want people who carry the knowledge and skills of decades of living. You''ll be taken off Earth and never allowed to return. You''ll serve two years at the front. And if you survive, you''ll be given a generous homestead stake of your own, on one of our hard-won colony planets.

John Perry is taking that deal. He has only the vaguest idea what to expect. Because the actual fight, light-years from home, is far, far harder than he can imagine--and what he will become is far stranger. (less)', 1),
	(482, 'The False Prince', 'Jennifer A. Nielsen', 342, 4986, 'English', '2012-04-01', NULL, 'Ascendance #1', 'covers/cover483.png', 'In a discontent kingdom, civil war is brewing. To unify the divided people, Conner, a nobleman of the court, devises a cunning plan to find an impersonator of the king''s long-lost son and install him as a puppet prince. Four orphans are recruited to compete for the role, including a defiant boy named Sage. Sage knows that Conner''s motives are more than questionable, yet his life balances on a sword''s point—he must be chosen to play the prince or he will certainly be killed. But Sage''s rivals have their own agendas as well.

As Sage moves from a rundown orphanage to Conner''s sumptuous palace, layer upon layer of treachery and deceit unfold, until finally, a truth is revealed that, in the end, may very well prove more dangerous than all of the lies taken together. (less)', 1),
	(483, 'Less Than Zero', 'Bret Easton Ellis', 208, 5594, 'English', '2010-06-09', NULL, NULL, 'covers/cover484.png', 'Set in Los Angeles in the early 1980''s, this coolly mesmerizing novel is a raw, powerful portrait of a lost generation who have experienced sex, drugs, and disaffection at too early an age, in a world shaped by casual nihilism, passivity, and too much money a place devoid of feeling or hope.

Clay comes home for Christmas vacation from his Eastern college and re-enters a landscape of limitless privilege and absolute moral entropy, where everyone drives Porches, dines at Spago, and snorts mountains of cocaine. He tries to renew feelings for his girlfriend, Blair, and for his best friend from high school, Julian, who is careering into hustling and heroin. Clay''s holiday turns into a dizzying spiral of desperation that takes him through the relentless parties in glitzy mansions, seedy bars, and underground rock clubs and also into the seamy world of L.A. after dark. (less)', 1),
	(484, 'The Great Hunt', 'Robert Jordan', 705, 5324, 'English', '1991-10-15', NULL, 'The Wheel of Time #2', 'covers/cover485.png', 'The Wheel of Time turns and Ages come and pass. What was, what will be, and what is, may yet fall under the Shadow.

Let the Dragon ride again on the winds of time.', 1),
	(485, 'The Blue Sword', 'Robin McKinley', 256, 4015, 'English', '1987-03-01', NULL, 'Damar #1', 'covers/cover486.png', 'This is the story of Corlath, golden-eyed king of the Free Hillfolk, son of the sons of the Lady Aerin.

And this is the story of Harry Crewe, the Homelander orphan girl who became Harimad-sol, King''s Rider, and heir to the Blue Sword, Gonturan, that no woman had wielded since the Lady Aerin herself bore it into battle.

And this is the song of the kelar of the Hillfolk, the magic of the blood, the weaver of destinies... (less)', 1),
	(486, 'The Pandarus File', 'Kyle Keyes', 348, 5472, 'English', '2010-01-08', NULL, NULL, 'covers/cover487.png', 'Helena Hollister was a New York City gold digger who latched onto her father-in-law''s fortune by seducing a Hobbs Creek 24 yr old who suffered from motor slowness. Helena got away with murder and the money, while two backwoods lawmen failed to unravel the mystery of who killed Elmer Kane. The case went unsolved from 1958 until early in the cyberspace age, when Helena Hollister surfaced in Right Bank, Paris as Anna Ward. (less)', 1),
	(487, 'An American Tragedy', 'Theodore Dreiser', 859, 3906, 'English', '2000-09-01', NULL, NULL, 'covers/cover488.png', '''An American Tragedy'' is the story of Clyde Griffiths, who spends his life in the desperate pursuit of success. On a deeper, more profound level, it is the masterful portrayal of the society whose values both shape Clyde''s ambitions and seal his fate; it is an unsurpassed depiction of the harsh realities of American life and of the dark side of the American dream. Extraordinary in scope and power, vivid in its sense of wholesale human waste, unceasing in its rich compassion, ''An American Tragedy'' stands as Theodore Dreiser''s supreme achievement.

Based on an actual criminal case, ''An American Tragedy'' was the inspiration for the film ''A Place in the Sun'', which won six Academy Awards and starred Elizabeth Taylor and Montgomery Cliff. (less)', 1),
	(488, 'The Book of Lost Things', 'John Connolly', 339, 4261, 'English', '2006-11-07', NULL, NULL, 'covers/cover489.png', 'High in his attic bedroom, twelve-year-old David mourns the death of his mother, with only the books on his shelf for company. But those books have begun to whisper to him in the darkness. Angry and alone, he takes refuge in his imagination and soon finds that reality and fantasy have begun to meld. While his family falls apart around him, David is violently propelled into a world that is a strange reflection of his own -- populated by heroes and monsters and ruled by a faded king who keeps his secrets in a mysterious book, The Book of Lost Things.

Taking readers on a vivid journey through the loss of innocence into adulthood and beyond, New York Times bestselling author John Connolly tells a dark and compelling tale that reminds us of the enduring power of stories in our lives. (less)', 1),
	(489, 'Three Men in a Boat', 'Jerome K. Jerome', 185, 1378, 'English', '1994-10-01', NULL, 'Three Men #1', 'covers/cover490.png', 'A comic masterpiece that has never been out of print since it was first published in 1889, Jerome K. Jerome''s Three Men in a Boat includes an introduction and notes by Jeremy Lewis in Penguin Classics.

Martyrs to hypochondria and general seediness, J. and his friends George and Harris decide that a jaunt up the Thames would suit them to a ''T''. But when they set off, they can hardly predict the troubles that lie ahead with tow-ropes, unreliable weather forecasts and tins of pineapple chunks - not to mention the devastation left in the wake of J.''s small fox-terrier Montmorency. Three Men in a Boat was an instant success when it appeared in 1889, and, with its benign escapism, authorial discursions and wonderful evocation of the late-Victorian ''clerking classes'', it hilariously captured the spirit of its age.

In his introduction, Jeremy Lewis examines Jerome K. Jerome''s life and times, and the changing world of Victorian England he depicts - from the rise of a new mass-culture of tabloids and bestselling novels to crazes for daytripping and bicycling. (less)', 1),
	(490, '????? ??????', 'Naguib Mahfouz', 600, 4318, 'Arabic', '2006-05-01', NULL, NULL, 'covers/cover491.png', '?????

???? ???????? ?? ???? ?????? ?????? ???????? ??????? ??????? ??? ???? ?????? ????? ???????? ?????? ??? ????? ????? ??????? ?????? ????? ?? ???? ??????? ??? ?????? ????? ???? ????? ????? ??????? ??????? ?? ????? ??? ???? ?? ???? ?? ?????? ??? ???? ???????? ????? ????? ????? ????? ????? ??????? ?? ??? ??????? ????? ????? ??? ??????? ????? ?? ?? ??? ??? ?????? ????? ????? ?? ????? ??????? ??? ?? ???????? ???? ????? ?????? ?????? ?? ??? ?????? ??? ?? ???? ???? ??????? ????? ????? ????????? ?????? ???? ?? ??? ???.
??? ????? ?? ??? ??????? ??????? ????? ???? ????? ??? ?????? ?? ??????? ???? ?? ??????? ???? ?? ????? ?????? ?????? ???????? ???? ?? ??????? ?????? ??? ??? ?? ?????? ?????????.
??? ??? ??????? ?? ???? ?????? ????? ?????? ??????? ??????? ??? ???? ????????? ???????? ??? ????? ???? ???? ????? ????? ???? ??????. (less)', 1),
	(491, 'The Tipping Point: How Little Things Can Make a Big Difference', 'Malcolm Gladwell', 301, 5520, 'English', '2002-01-07', NULL, NULL, 'covers/cover492.png', 'An alternate cover edition exists here.

The tipping point is that magic moment when an idea, trend, or social behavior crosses a threshold, tips, and spreads like wildfire. Just as a single sick person can start an epidemic of the flu, so too can a small but precisely targeted push cause a fashion trend, the popularity of a new product, or a drop in the crime rate. This widely acclaimed bestseller, in which Malcolm Gladwell explores and brilliantly illuminates the tipping point phenomenon, is already changing the way people throughout the world think about selling products and disseminating ideas.

Gladwell introduces us to the particular personality types who are natural pollinators of new ideas and trends, the people who create the phenomenon of word of mouth. He analyzes fashion trends, smoking, children''s television, direct mail, and the early days of the American Revolution for clues about making ideas infectious, and visits a religious commune, a successful high-tech company, and one of the world''s greatest salesmen to show how to start and sustain social epidemics. (less)', 1),
	(492, 'Milk and Honey', 'Rupi Kaur', 204, 1744, 'English', '2014-11-04', NULL, NULL, 'covers/cover493.png', 'Milk and honey'' is a collection of poetry and prose about survival. About the experience of violence, abuse, love, loss, and femininity. It is split into four chapters, and each chapter serves a different purpose. Deals with a different pain. Heals a different heartache. ''milk and honey'' takes readers through a journey of the most bitter moments in life and finds sweetness in them because there is sweetness everywhere if you are just willing to look. (less)', 1),
	(493, 'Rapture', 'Lauren Kate', 466, 3321, 'English', '2012-06-12', NULL, 'Fallen #4', 'covers/cover494.png', 'When evil triumphs… when the world ends… trust your love.

The sky is dark with wings… . Like sand in an hourglass, time is running out for Luce and Daniel. To stop Lucifer from erasing the past, they must find the place where the angels fell to earth. Dark forces are after them, and Daniel doesn’t know if he can do this—live only to lose Luce again and again. Yet together they will face an epic battle that will end with lifeless bodies… and angel dust. Great sacrifices are made. Hearts are destroyed. And suddenly Luce knows what must happen. For she was meant to be with someone other than Daniel. The curse they’ve borne has always and only been about her—and the love she cast aside. The choice she makes now will be the only one that truly matters. In the fight for Luce, who will win? The astonishing conclusion to the Fallen series. Heaven can’t wait any longer. (less)', 1),
	(494, 'Hollow City', 'Ransom Riggs', 428, 2063, 'English', '2015-02-24', NULL, 'Miss Peregrine''s Peculiar Children #2', 'covers/cover495.png', 'This second novel begins in 1940, immediately after the first book ended. Having escaped Miss Peregrine’s island by the skin of their teeth, Jacob and his new friends must journey to London, the peculiar capital of the world. Along the way, they encounter new allies, a menagerie of peculiar animals, and other unexpected surprises.

Complete with dozens of newly discovered (and thoroughly mesmerising) vintage photographs, this new adventure will delight readers of all ages. (less)', 1),
	(495, 'The Life and Opinions of Tristram Shandy, Gentleman', 'Laurence Sterne', 735, 2222, 'English', '2003-01-01', NULL, NULL, 'covers/cover496.png', 'No one description will fit this strange, eccentric, endlessly complex masterpiece. It is a fiction about fiction-writing in which the invented world is as much infused with wit and genius as the theme of inventing it. It is a joyful celebration of the infinite possibilities of the art of fiction, and a wry demonstration of its limitations. This Penguin Classic contains Christopher Ricks''s introductory essay, itself a classic of English literary criticism, together with a new introduction on the recent critical history and influence of Tristram Shandy by Melvyn New. The text and notes are based on the acclaimed Florida Edition, making the scholarship of the Florida editors readily available for the first time. (less)', 1),
	(496, 'The Diamond Age: Or, a Young Lady''s Illustrated Primer', 'Neal Stephenson', 499, 4857, 'English', '2000-05-02', NULL, NULL, 'covers/cover497.png', 'The Diamond Age: Or, a Young Lady''s Illustrated Primer is a postcyberpunk novel by Neal Stephenson. It is to some extent a science fiction coming-of-age story, focused on a young girl named Nell, and set in a future world in which nanotechnology affects all aspects of life. The novel deals with themes of education, social class, ethnicity, and the nature of artificial intelligence. (less)', 1),
	(497, 'Ink Exchange', 'Melissa Marr', 325, 4749, 'English', '2008-04-24', NULL, 'Wicked Lovely #2', 'covers/cover498.png', 'Unbeknownst to mortals, a power struggle is unfolding in a world of shadows and danger. After centuries of stability, the balance among the Faery Courts has altered, and Irial, ruler of the Dark Court, is battling to hold his rebellious and newly vulnerable fey together. If he fails, bloodshed and brutality will follow.

Seventeen-year-old Leslie knows nothing of faeries or their intrigues. When she is attracted to an eerily beautiful tattoo of eyes and wings, all she knows is that she has to have it, convinced it is a tangible symbol of changes she desperately craves for her own life.

The tattoo does bring changes, but not the kind Leslie has dreamed of, but sinister, compelling changes that are more than symbolic. Those changes will bind Leslie and Irial together, drawing Leslie deeper and deeper into the faery world, unable to resist its allures, and helpless to withstand its perils. . . (less)', 1),
	(498, 'Perdido Street Station', 'China Miéville', 623, 2757, 'English', '2003-08-01', NULL, 'New Crobuzon #1', 'covers/cover499.png', 'Beneath the towering bleached ribs of a dead, ancient beast lies the city of New Crobuzon, where the unsavory deal is stranger to no one--not even to Isaac, a gifted and eccentric scientist who has spent a lifetime quietly carrying out his unique research. But when a half-bird, half-human creature known as the Garuda comes to him from afar, Isaac is faced with challenges he has never before encountered. Though the Garuda''s request is scientifically daunting, Isaac is sparked by his own curiosity and an uncanny reverence for this curious stranger. Soon an eerie metamorphosis will occur that will permeate every fiber of New Crobuzon--and not even the Ambassador of Hell will challenge the malignant terror it evokes. (less)', 1),
	(499, 'The Serpent''s Shadow', 'Rick Riordan', 406, 4978, 'English', '2012-05-01', NULL, 'The Kane Chronicles #3', 'covers/cover500.png', 'He''s b-a-a-ack! Despite their best efforts, Carter and Sadie Kane can''t seem to keep Apophis, the chaos snake, down. Now Apophis is threatening to plunge the world into eternal darkness, and the Kanes are faced with the impossible task of having to destroy him once and for all. Unfortunately, the magicians of the House of Life are on the brink of civil war, the gods are divided, and the young initiates of Brooklyn House stand almost alone against the forces of chaos. The Kanes'' only hope is an ancient spell that might turn the serpent''s own shadow into a weapon, but the magic has been lost for a millennia. To find the answer they need, the Kanes must rely on the murderous ghost of a powerful magician who might be able to lead them to the serpent''s shadow . . . or might lead them to their deaths in the depths of the underworld. Nothing less than the mortal world is at stake when the Kane family fulfills its destiny in this thrilling conclusion to the Kane Chronicles. (less)', 1),
	(500, 'Ragtime', 'E.L. Doctorow', 320, 4000, 'English', '2010-11-17', NULL, NULL, 'covers/cover501.png', 'Published in 1975, Ragtime changed our very concept of what a novel could be. An extraordinary tapestry, Ragtime captures the spirit of America in the era between the turn of the century & the First World War. The story opens in 1906 in New Rochelle, NY, at the home of an affluent American family. One lazy Sunday afternoon, the famous escape artist Harry Houdini swerves his car into a telephone pole outside their house. Almost magically, the line between fantasy & historical fact, between real & imaginary characters, disappears. Henry Ford, Emma Goldman, J.P. Morgan, Evelyn Nesbit, Sigmund Freud & Emiliano Zapata slip in & out of the tale, crossing paths with Doctorow''s imagined family & other fictional characters, including an immigrant peddler & a ragtime musician from Harlem whose insistence on a point of justice drives him to revolutionary violence. (less)', 1),
	(501, 'Iron Kissed', 'Patricia Briggs', 287, 4311, 'English', '2008-01-02', NULL, 'Mercy Thompson #3', 'covers/cover502.png', 'I could smell her fear, and it satisfied something deep inside me that had been writhing under her cool, superior gaze. I curled my upper lip so she could get a good look at my sharp teeth. I might only weigh thirty or so pounds in my coyote shape, but I was a predator...

Mechanic Mercy Thompson can shift her shape - but not her loyalty. When her former boss and mentor is arrested for murder and left to rot behind bars by his own kind, it''s up to Mercy to clear his name, whether he wants her to or not.

Mercy''s loyalty is under pressure from other directions, too. Werewolves are not known for their patience, and if Mercy can''t decide between the two she cares for, Sam and Adam may make the choice for her... (less)', 1),
	(502, 'Extras', 'Scott Westerfeld', 417, 3512, 'English', '2007-10-02', NULL, 'Uglies  #4', 'covers/cover503.png', 'A few years after rebel Tally Youngblood takes down the Specials regime, a cultural renaissance sweeps the world. “Tech-heads” flaunt their latest gadgets, “kickers” spread gossip and trends, and “surge monkeys” are hooked on extreme plastic surgery. Popularity rules, and everyone craves fame.

Fifteen-year-old Aya Fuse is no exception. But Aya’s face rank is so low, she’s a total nobody. An extra. Her only chance at stardom is to kick a wild and unexpected story.

Then she stumbles upon a big secret. Aya knows she is on the cusp of celebrity. But the information she is about to disclose will change both her fate…and that of the brave new world (less)', 1),
	(503, 'The Dharma Bums', 'Jack Kerouac', 244, 493, 'English', '1986-01-01', NULL, 'Duluoz Legend', 'covers/cover504.png', 'Two ebullient young men search for Truth the Zen way: from marathon wine-drinking bouts, poetry jam sessions, and "yabyum" in San Francisco''s Bohemia, to solitude in the high Sierras and a vigil atop Desolation Peak in Washington State. Published just a year after On the Road put the Beat Generation on the map, The Dharma Bums is sparked by Kerouac''s expansiveness, humor, and a contagious zest for life. (less)', 1),
	(504, 'Notes from Underground', 'Fyodor Dostoyevsky', 136, 5840, 'English', '1994-09-01', NULL, NULL, 'covers/cover505.png', 'Dostoevsky’s most revolutionary novel, Notes from Underground marks the dividing line between nineteenth- and twentieth-century fiction, and between the visions of self each century embodied. One of the most remarkable characters in literature, the unnamed narrator is a former official who has defiantly withdrawn into an underground existence. In complete retreat from society, he scrawls a passionate, obsessive, self-contradictory narrative that serves as a devastating attack on social utopianism and an assertion of man’s essentially irrational nature.

Richard Pevear and Larissa Volokhonsky, whose Dostoevsky translations have become the standard, give us a brilliantly faithful edition of this classic novel, conveying all the tragedy and tormented comedy of the original. (less)', 1),
	(505, 'The Complete Fairy Tales', 'Hans Christian Andersen', 803, 1995, 'English', '1996-01-01', NULL, NULL, 'covers/cover506.png', 'This book contains the complete Andersen''s fairy tales and stories hardcopy format.

Hans Christian Andersen was a Danish author and poet. Although a prolific writer of plays, travelogues, novels, and poems, Andersen is best remembered for his fairy tales, a literary genre he so mastered that he himself has become as mythical as the tales he wrote. Andersen''s popularity is not limited to children; his stories - called eventyrs, or "fantastic tales" - express themes that transcend age and nationality.

During his lifetime he was acclaimed for having delighted children worldwide and was feted by royalty. Andersen''s fairy tales, which have been translated into more than 125 languages, have become culturally embedded in the West''s collective consciousness, readily accessible to children, but presenting lessons of virtue and resilience in the face of adversity for mature listeners/readers as well. They have inspired motion pictures, plays, ballets, and animated films. (less)', 1),
	(506, 'The Sky Is Everywhere', 'Jandy Nelson', 275, 2322, 'English', '2010-03-09', NULL, NULL, 'covers/cover507.png', 'Adrift after her sister Bailey''s sudden death, Lennie finds herself torn between quiet, seductive Toby—Bailey''s boyfriend who shares her grief—and Joe, the new boy in town who bursts with life and musical genius. Each offers Lennie something she desperately needs... though she knows if the two of them collide her whole world will explode.

Join Lennie on this heartbreaking and hilarious journey of profound sorrow and mad love, as she makes colossal mistakes and colossal discoveries, as she traipses through band rooms and forest bedrooms and ultimately right into your heart.

As much a celebration of love as a poignant portrait of loss, Lennie''s struggle to sort her own melody out of the noise around her is always honest, often uproarious, and absolutely unforgettable. (less)', 1),
	(507, 'Broken Promises (Past Imperfect Mystery Book 1)', 'Anne  Willow', 229, 4590, 'English', '2018-05-13', NULL, NULL, 'covers/cover508.png', 'Julia needed a new start. The unexpected death of her favorite aunt sends Julia to the artist town of Grand Marais. There she starts to weave tattered threads into a new tapestry while rediscovering her love of sketching and running the antique shop, Past Imperfect. Everything is just starting to go right when a mysterious package arrives bearing an antique letter opener arrives. Julia''s natural curiosity is piqued but before she can untangle the mystery it''s found embedded in Tom Peterson''s chest. The tapestry of her new life begins to unravel as she is named a prime suspect. Now, left with few clues and a past not willing to let her go, Julia works to solve the mystery and the murder. Infidelity through time and a curse that only she can break - once she figures out how.

(less)', 1),
	(508, 'Can You Keep a Secret?', 'Sophie Kinsella', 374, 838, 'English', '2005-12-27', NULL, NULL, 'covers/cover509.png', 'Meet Emma Corrigan, a young woman with a huge heart, an irrepressible spirit, and a few little secrets: Secrets from her boyfriend: I''ve always thought Connor looks a bit like Ken. As in Barbie and Ken. Secrets from her mother: I lost my virginity in the spare bedroom with Danny Nussbaum while Mum and Dad were downstairs watching Ben-Hur. Secrets she wouldn''t share with anyone in the world: I have no idea what NATO stands for. Or even what it is. Until she spills them all to a handsome stranger on a plane. At least, she thought he was a stranger.…Until Emma comes face-to-face with Jack Harper, the company''s elusive CEO, a man who knows every single humiliating detail about her... (less)', 1),
	(509, 'Just So Stories', 'Rudyard Kipling', 210, 870, 'English', '2003-08-05', NULL, NULL, 'covers/cover510.png', 'Librarian''s Note: Alternate cover edition can be found here.

Twelve stories about animals, insects, and other subjects include How the Camel Got His Hump. The Butterfly That Stamped, and How the Alphabet Was Made.. (less)', 1),
	(510, 'The Tenant of Wildfell Hall', 'Anne Brontë', 576, 2722, 'English', '1996-04-16', NULL, NULL, 'covers/cover511.png', 'Note: Editions of The Tenant that start with: "You must go back with me..." are incomplete. Actual opening line of the novel is: "To J. Halford, Esq. Dear Halford, when we were together last..."

This is the story of a woman''s struggle for independence. Helen "Graham" has returned to Wildfell Hall in flight from a disastrous marriage. Exiled to the desolate moorland mansion, she adopts an assumed name and earns her living as a painter. (less)', 1),
	(511, 'Old Yeller', 'Fred Gipson', 132, 2439, 'English', '2001-05-15', NULL, 'Old Yeller #1', 'covers/cover512.png', 'At first, Travis couldn''t stand the sight of Old Yeller.

The stray dog was ugly, and a thieving rascal, too. But he sure was clever, and a smart dog could be a big help on the wild Texas frontier, especially with Papa away on a long cattle drive up to Abilene.

Strong and courageous, Old Yeller proved that he could protect Travis''s family from any sort of danger. But can Travis do the same for Old Yeller? (less)', 1),
	(512, 'Born at Midnight', 'C.C. Hunter', 398, 4427, 'English', '2011-03-29', NULL, 'Shadow Falls #1', 'covers/cover513.png', 'Don’t miss this spectacular new series that will steal your heart and haunt your dreams, Welcome to Shadow Falls camp, nestled deep in the woods of a town called Fallen…

One night Kylie Galen finds herself at the wrong party, with the wrong people, and it changes her life forever. Her mother ships her off to Shadow Falls—a camp for troubled teens, and within hours of arriving, it becomes painfully clear that her fellow campers aren’t just “troubled.” Here at Shadow Falls, vampires, werewolves, shapeshifters, witches and fairies train side by side—learning to harness their powers, control their magic and live in the normal world.

Kylie’s never felt normal, but surely she doesn’t belong here with a bunch of paranormal freaks either. Or does she? They insist Kylie is one of them, and that she was brought here for a reason. As if life wasn’t complicated enough, enter Derek and Lucas. Derek’s a half-fae who’s determined to be her boyfriend, and Lucas is a smokin’ hot werewolf with whom Kylie shares a secret past. Both Derek and Lucas couldn’t be more different, but they both have a powerful hold on her heart.

Even though Kylie feels deeply uncertain about everything, one thing is becoming painfully clear—Shadow Falls is exactly where she belongs… (less)', 1),
	(513, 'Stolen: A Letter to My Captor', 'Lucy Christopher', 304, 3052, 'English', '2009-05-04', NULL, NULL, 'covers/cover514.png', 'It happened like this. I was stolen from an airport. Taken from everything I knew, everything I was used to. Taken to sand and heat, dirt and danger. And he expected me to love him.

This is my story.

A letter from nowhere.

Sixteen-year-old Gemma is kidnapped from Bangkok airport and taken to the Australian Outback. This wild and desolate landscape becomes almost a character in the book, so vividly is it described. Ty, her captor, is no stereotype. He is young, fit and completely gorgeous. This new life in the wilderness has been years in the planning. He loves only her, wants only her. Under the hot glare of the Australian sun, cut off from the world outside, can the force of his love make Gemma love him back?

The story takes the form of a letter, written by Gemma to Ty, reflecting on those strange and disturbing months in the outback. Months when the lines between love and obsession, and love and dependency, blur until they don''t exist—almost. (less)', 1),
	(514, 'Fantastic Beasts and Where to Find Them', 'Newt Scamander', 128, 4804, 'English', '2001-06-01', NULL, 'Hogwarts Library', 'covers/cover515.png', 'An approved textbook at Hogwarts School of Witchcraft and Wizardry since publication, Newt Scamander''s masterpiece has entertained wizarding families through the generations. Fantastic Beasts and Where to Find Them is an indispensable introduction to the magical beasts of the Wizarding World. Scamander''s years of travel and research have created a tome of unparalleled importance. Some of the beasts will be familiar to readers of the Harry Potter books - the Hippogriff, the Basilisk, the Hungarian Horntail ... Others will surprise even the most ardent amateur Magizoologist. This is an essential companion to the Harry Potter stories, and includes a new foreword from J.K. Rowling (writing as Newt Scamander) and six new beasts! (less)', 1),
	(515, 'Haunted', 'Chuck Palahniuk', 419, 5081, 'English', '2006-04-11', NULL, NULL, 'covers/cover516.png', 'Haunted is a novel made up of stories: twenty-three of the most horrifying, hilarious, mind-blowing, stomach-churning tales you''ll ever encounter.

The stories are told by people who have all answered an ad headlined ''Artists Retreat: Abandon your life for three months''. They are led to believe that here they will leave behind all the distractions of ''real life'' that are keeping them from creating the masterpiece that is in them.

But ''here'' turns out to be a cavernous and ornate old theater where they are utterly isolated from the outside world - and where heat and power and, most importantly, food are in increasingly short supply. And the more desperate the circumstances become, the more desperate the stories they tell - and the more devious their machinations to make themselves the hero of the inevitable play/movie/non-fiction blockbuster that will certainly be made from their plight. (less)', 1),
	(516, 'The House of the Scorpion', 'Nancy Farmer', 380, 2826, 'English', '2004-05-01', NULL, 'Matteo Alacran #1', 'covers/cover517.png', 'With undertones of vampires, Frankenstein, dragons'' hoards, and killing fields, Matt''s story turns out to be an inspiring tale of friendship, survival, hope, and transcendence. A must-read for teenage fantasy fans.

At his coming-of-age party, Matteo Alacrán asks El Patrón''s bodyguard, "How old am I?...I know I don''t have a birthday like humans, but I was born."

"You were harvested," Tam Lin reminds him. "You were grown in that poor cow for nine months and then you were cut out of her."

To most people around him, Matt is not a boy, but a beast. A room full of chicken litter with roaches for friends and old chicken bones for toys is considered good enough for him. But for El Patrón, lord of a country called Opium—a strip of poppy fields lying between the U.S. and what was once called Mexico—Matt is a guarantee of eternal life. El Patrón loves Matt as he loves himself for Matt is himself. They share identical DNA. (less)', 1),
	(517, 'Max', 'James Patterson', 309, 3740, 'English', '2009-03-16', NULL, 'Maximum Ride #5', 'covers/cover518.png', 'James Patterson''s bestselling Maximum Ride series is back, with Max and the gang as The Protectors. Someone--or something--is decimating ships and sea life off Hawaii''s coast, and Max and her flock find themselves sucked into the Navy''s top-secret investigation of the catastrophe. Their objective: Rescue Max''s activist mom from a wicked subterranean enemy. The hitch: They must dive deep into dark waters, where gruesome evil dwells... and for high-flying Maximum Ride, could there be anything more terrifying than being trapped in the great abyss? This soaring new adventure takes Maximum Ride and the Flock into terrifying new territory--fans, hold your breath! (less)', 1),
	(518, 'Educated', 'Tara Westover', 334, 3825, 'English', '2018-02-20', NULL, NULL, 'covers/cover519.png', 'A newer edition of ISBN 9780399590504 can be found here.

Tara Westover was 17 the first time she set foot in a classroom. Born to survivalists in the mountains of Idaho, she prepared for the end of the world by stockpiling home-canned peaches and sleeping with her "head-for-the-hills bag". In the summer she stewed herbs for her mother, a midwife and healer, and in the winter she salvaged in her father''s junkyard.

Her father forbade hospitals, so Tara never saw a doctor or nurse. Gashes and concussions, even burns from explosions, were all treated at home with herbalism. The family was so isolated from mainstream society that there was no one to ensure the children received an education and no one to intervene when one of Tara''s older brothers became violent.

Then, lacking any formal education, Tara began to educate herself. She taught herself enough mathematics and grammar to be admitted to Brigham Young University, where she studied history, learning for the first time about important world events like the Holocaust and the civil rights movement. Her quest for knowledge transformed her, taking her over oceans and across continents, to Harvard and to Cambridge. Only then would she wonder if she''d traveled too far, if there was still a way home.

Educated is an account of the struggle for self-invention. It is a tale of fierce family loyalty and of the grief that comes with severing the closest of ties. With the acute insight that distinguishes all great writers, Westover has crafted a universal coming-of-age story that gets to the heart of what an education is and what it offers: the perspective to see one''s life through new eyes and the will to change it. (less)', 1),
	(519, 'Elantris', 'Brandon Sanderson', 638, 3667, 'English', '2006-05-30', NULL, 'Elantris #1', 'covers/cover520.png', 'Elantris was the capital of Arelon: gigantic, beautiful, literally radiant, filled with benevolent beings who used their powerful magical abilities for the benefit of all. Yet each of these demigods was once an ordinary person until touched by the mysterious transforming power of the Shaod. Ten years ago, without warning, the magic failed. Elantrians became wizened, leper-like, powerless creatures, and Elantris itself dark, filthy, and crumbling.

Arelon''s new capital, Kae, crouches in the shadow of Elantris. Princess Sarene of Teod arrives for a marriage of state with Crown Prince Raoden, hoping -- based on their correspondence -- to also find love. She finds instead that Raoden has died and she is considered his widow. Both Teod and Arelon are under threat as the last remaining holdouts against the imperial ambitions of the ruthless religious fanatics of Fjordell. So Sarene decides to use her new status to counter the machinations of Hrathen, a Fjordell high priest who has come to Kae to convert Arelon and claim it for his emperor and his god.

But neither Sarene nor Hrathen suspect the truth about Prince Raoden. Stricken by the same curse that ruined Elantris, Raoden was secretly exiled by his father to the dark city. His struggle to help the wretches trapped there begins a series of events that will bring hope to Arelon, and perhaps reveal the secret of Elantris itself.

A rare epic fantasy that doesn''t recycle the classics and that is a complete and satisfying story in one volume, Elantris is fleet and fun, full of surprises and characters to care about. It''s also the wonderful debut of a welcome new star in the constellation of fantasy. (less)', 1),
	(520, 'Arrangement in Black and White', 'Fred Misurella', 368, 4820, NULL, '2014-05-22', NULL, NULL, 'covers/cover521.png', 'She''s white; he''s black. But their conflicts are more than racial. Margy''s from Iowa, an artist, the product of an abusive mother and neglectful father. Everet''s from Connecticut, a civil rights lawyer on the rise toward greater recognition, and their lives take a tense turn when he decides to run for political office just as Margy moves forward in her own career. Arrangement in Black and White captures the conflicts that give edge and interest to all meaningful love stories, yet it does so with an eye toward modern women, interracial politics, and the human inability to balance passion with social, public life. It is a powerful story for contemporary readers. (less)', 1),
	(521, 'The Octunnumi Fosbit Files Prologue', 'Trevor Alan Foris', 520, 1400, 'English', '2019-01-01', NULL, NULL, 'covers/cover522.png', 'Publishers note:

The Octunnumi does not exist.

Fosbit and any files relating to a Fosbit do not exist.

The Tarelen peoples that protect and provide sanctuary for the Avitens of Fethrist are not real.

The abilities of the Tarelen peoples with their heightened skills, living in their Utopian world are myth, their purpose here mere tales; rumours of their reincarnations enabling them to live many lives… ridiculous!

And there is definitely no magic.

None at all.

No, really, there isn’t.

Magic is not a thing.

There are also no hidden worlds or mythical beings coexisting just out of sight.

Equally, there are no secret access points to these hidden worlds that don’t exist, and there is no, ''unfinished business from the past'' that is set to destroy, well, anything.

There is no disaster looming.

Anyway, regardless of any potential threat that may or may not be present, this publication, The Octunnumi and any reference to any other beings is a work of fiction.

And for the record, Scariodintts, should they exist, are perfectly lovely beings whose purpose in life is grossly misunderstood. (less)', 1),
	(522, 'America''s Daughter', 'Maria Nhambu', 367, 538, 'English', '2017-08-19', NULL, 'Dancing Soul Trilogy', 'covers/cover523.png', 'In America’s Daughter, the second book of the trilogy, the author arrives in the United States in the company of Catherine Murray, an American high-school teacher. Her adjustment to a new culture includes shocking doses of American-style racial discrimination and Nhambu’s discovery that she must learn to be a Black American. She graduates from college, thus fulfilling her dream of becoming a teacher, and teaches high school in the inner city. She marries, has two children, and establishes herself in the American way of life. Then a visit to Africa, and especially to Tanzania, reawakens the drumbeats and dancing that she carries in her soul. On her return home, she teaches Swahili and African Studies, performs African dance at schools, and creates Aerobics With Soul®, a fitness workout based on African dance. She both finds and creates the family she longed for as a child and connects with her unknown background. The first book of the trilogy, Africa’s Child, was released in 2016. The final book of her memoir series—Drum Beats, Heart Beats—reveals more of Nhambu’s life as she searches for her father. (less)', 1),
	(523, 'Quo Vadis', 'Henryk Sienkiewicz', 589, 3413, 'English', '2006-01-01', NULL, NULL, 'covers/cover524.png', 'This glorious saga unfolds against the backdrop of ancient Rome--from the Forum to the Coliseum, from banquet halls to summer retreats in Naples, from the luxurious houses of the nobility to the hovels of the poor, Quo Vadis richly depicts a place and time still captivating to the modern imagination. This radiant translation by W.S. Kuniczak restores the original glory and richness of master storyteller Henryk Sienkiewicz''s epic tale.

Set at a turning point in history (A.D. 54-68), as Christianity replaces the era of corruption and immorality that marked Nero''s Rome, Quo Vadis abounds with compelling characters, including:


Vinicius, the proud centurion who has fallen deeply in love with a mysterious young woman who disappears the night they meet;Ligia, the elusive beauty. Vinicius will not easily win her love, for she is a Christian, one of the group of dedicated believers led by the apostle Peter. Christians are rare in pagan, hedonistic Rome, and suffer great persecution;

Petronius, uncle to Vinicius, an elegant, witty courtier who scoffs at love and religion but finds his nephew''s passion charming; and

Nero himself, enemy of all Christians, a despotic emperor who plunges Rome deeper and deeper into depravity. The decadence of his banquets is staggering; and even worse, his mad laughter is heard echoing in the amphitheater as gladiators duel to the death.

As Nero''s appalling plans for the Christians become ever clearer, time appears to be running out for the young lovers. Vinicius must come to understand the true meaning of Ligia''s religion before it is too late.

Grand in scope and ambition, Quo Vadis explores the themes of love, desire and profound moral courage. Lavish descriptions, vivid dialogue and brilliantly drawn characters make this one of the world''s greatest epics. Beloved by children and adults the world over, Quo Vadis has been the subject of five films, two of them in English. (less)', 1),
	(524, 'New Moon', 'Stephenie Meyer', 563, 5884, 'English', '2006-09-06', NULL, 'The Twilight Saga #2', 'covers/cover525.png', 'There is an alternate cover edition for ISBN13 9780316160193 here.

I knew we were both in mortal danger. Still, in that instant, I felt well. Whole. I could feel my heart racing in my chest, the blood pulsing hot and fast through my veins again. My lungs filled deep with the sweet scent that came off his skin. It was like there had never been any hole in my chest. I was perfect - not healed, but as if there had never been a wound in the first place.

I FELT LIKE I WAS TRAPPED IN ONE OF THOSE TERRIFYING NIGHTMARES, the one where you have to run, run till your lungs burst, but you can''t make your body move fast enough.... But this was no dream, and, unlike the nightmare, I wasn''t running for my life; I was racing to save something infinitely more precious. My own life meant little to me today.

FOR BELLA SWAN THERE IS ONE THING more important than life itself: Edward Cullen. But being in love with a vampire is even more dangerous than Bella could ever have imagined. Edward has already rescued Bella from the clutches of one evil vampire, but now, as their daring relationship threatens all that is near and dear to them, they realize their troubles may be just beginning....

LEGIONS OF READERS ENTRANCED BY THE New York Times bestseller Twilight are hungry for the continuing story of star-crossed lovers Bell and Edward. In New Moon, Stephanie Meyer delivers another irresistible combination of romance and suspense with a supernatural spin. passionate, riveting, and full of surprising twists and turns, this vampire love saga is well on its way to literary immortality. (less)', 1),
	(525, 'Beautiful Darkness', 'Kami Garcia', 503, 3332, 'English', '2010-10-12', NULL, 'Caster Chronicles #2', 'covers/cover526.png', 'Fall under the spell of the Beautiful Darkness, the sequel to the instant NYT bestselling gothic fantasy, Beautiful Creatures!



There were no surprises in Gatlin County. At least, that''s what I thought. Turns out, I couldn''t have been more wrong.

Ethan Wate used to think of Gatlin as a place where nothing ever changed. Then mysterious newcomer Lena Duchannes revealed a secret world of curses and Supernaturals with terrifying abilities. Lena showed him a Gatlin where impossible, magical, life-altering events happen. Sometimes life-ending.

And now that Ethan''s eyes have been opened to the darker side of Gatlin, there''s no going back. Haunted by strange visions only he can see, Ethan is pulled deeper into his town''s tangled history and finds himself caught up in the dangerous network of underground passageways endlessly crisscrossing the South, where nothing is as it seems. (less)', 1),
	(526, 'The Waste Lands', 'Stephen King', 422, 4482, 'English', '2003-06-23', NULL, 'The Dark Tower #3', 'covers/cover527.png', 'Several months have passed, and Roland’s two new tet-mates have become proficient gunslingers. Eddie Dean has given up heroin, and Odetta’s two selves have joined, becoming the stronger and more balanced personality of Susannah Dean. But while battling The Pusher in 1977 New York, Roland altered ka by saving the life of Jake Chambers, a boy who—in Roland’s where and when—has already died. Now Roland and Jake exist in different worlds, but they are joined by the same madness: the paradox of double memories. Roland, Susannah, and Eddie must draw Jake into Mid-World then follow the Path of the Beam all the way to the Dark Tower. But nothing is easy in Mid-World. Along the way our tet stumbles into the ruined city of Lud, and are caught between the warring gangs of the Pubes and the Grays. The only way out of Lud is to wake Blaine the Mono, an insane train that has a passion for riddling, and for suicidal journeys. (less)', 1),
	(527, 'The Blue Castle', 'L.M. Montgomery', 218, 3117, 'English', '1989-04-01', NULL, NULL, 'covers/cover528.png', 'An unforgettable story of courage and romance. Will Valancy Stirling ever escape her strict family and find true love?

Valancy Stirling is 29, unmarried, and has never been in love. Living with her overbearing mother and meddlesome aunt, she finds her only consolation in the "forbidden" books of John Foster and her daydreams of the Blue Castle--a place where all her dreams come true and she can be who she truly wants to be. After getting shocking news from the doctor, she rebels against her family and discovers a surprising new world, full of love and adventures far beyond her most secret dreams. (less)', 1),
	(528, 'Metamorphoses', 'Ovid', 723, 4095, 'English', '2004-08-03', NULL, NULL, 'covers/cover529.png', 'Prized through the ages for its splendor and its savage, sophisticated wit, The Metamorphoses is a masterpiece of Western culture--the first attempt to link all the Greek myths, before and after Homer, in a cohesive whole, to the Roman myths of Ovid''s day. Horace Gregory, in this modern translation, turns his poetic gifts toward a deft reconstruction of Ovid''s ancient themes, using contemporary idiom to bring today''s reader all the ageless drama and psychological truths vividly intact.

--From the book jacket (less)', 1),
	(529, 'Alexander and the Terrible, Horrible, No Good, Very Bad Day', 'Judith Viorst', 32, 305, 'English', '1987-07-15', NULL, 'Alexander', 'covers/cover530.png', 'The perennially popular tale of Alexander''s worst day is a storybook that belongs on every child''s bookshelf.

Alexander knew it was going to be a terrible day when he woke up with gum in this hair.

And it got worse...

His best friend deserted him. There was no dessert in his lunch bag. And, on top of all that, there were lima beans for dinner and kissing on TV!

This handsome new edition of Judith Viorst''s classic picture book is sure to charm readers of all ages. (less)', 1),
	(530, 'A New Earth: Awakening to Your Life''s Purpose', 'Eckhart Tolle', 316, 5643, 'English', '2006-08-29', NULL, NULL, 'covers/cover531.png', 'The highly anticipated follow-up to the 2,000,000 copy bestselling inspirational book, "The Power of Now"
With his bestselling spiritual guide "The Power of Now," Eckhart Tolle inspired millions of readers to discover the freedom and joy of a life lived ?in the now.? In "A New Earth," Tolle expands on these powerful ideas to show how transcending our ego-based state of consciousness is not only essential to personal happiness, but also the key to ending conflict and suffering throughout the world. Tolle describes how our attachment to the ego creates the dysfunction that leads to anger, jealousy, and unhappiness, and shows readers how to awaken to a new state of consciousness and follow the path to a truly fulfilling existence. "The Power of Now" was a question-and-answer handbook. "A New Earth" has been written as a traditional narrative, offering anecdotes and philosophies in a way that is accessible to all. Illuminating, enlightening, and uplifting, "A New Earth" is a profoundly spiritual manifesto for a better way of life?and for building a better world. (less)', 1),
	(531, 'Keeper of the Lost Cities', 'Shannon Messenger', 496, 1279, 'English', '2012-10-02', NULL, 'Keeper of the Lost Cities #1', 'covers/cover532.png', 'Twelve-year-old Sophie Foster has a secret. She’s a Telepath—someone who hears the thoughts of everyone around her. It’s a talent she’s never known how to explain.

Everything changes the day she meets Fitz, a mysterious boy who appears out of nowhere and also reads minds. She discovers there’s a place she does belong, and that staying with her family will place her in grave danger. In the blink of an eye, Sophie is forced to leave behind everything and start a new life in a place that is vastly different from anything she has ever known.

Sophie has new rules to learn and new skills to master, and not everyone is thrilled that she has come “home.”
There are secrets buried deep in Sophie’s memory—secrets about who she really is and why she was hidden among humans—that other people desperately want. Would even kill for.

In this page-turning debut, Shannon Messenger creates a riveting story where one girl must figure out why she is the key to her brand-new world, before the wrong person finds the answer first. (less)', 1),
	(532, 'The End of the Affair', 'Graham Greene', 160, 3210, 'English', '2004-10-07', NULL, NULL, 'covers/cover533.png', '"A story has no beginning or end: arbitrarily one chooses a moment of experience from which to look ahead..."

"This is a record of hate far more than of love," writes Maurice Bendrix in the opening passages of The End of the Affair, and it is a strange hate indeed that compels him to set down the retrospective account of his adulterous affair with Sarah Miles.

Now, a year after Sarah''s death, Bendrix seeks to exorcise the persistence of his passion by retracing its course from obsessive love to love-hate. At first, he believes he hates Sarah and her husband, Henry. Yet as he delves deeper into his emotional outlook, Bendrix''s hatred shifts to the God he feels has broken his life, but whose existence at last comes to recognize. (less)', 1),
	(533, 'The Satanic Verses', 'Salman Rushdie', 561, 5685, 'English', '1997-01-01', NULL, NULL, 'covers/cover534.png', 'Just before dawn one winter''s morning, a hijacked jetliner explodes above the English Channel. Through the falling debris, two figures, Gibreel Farishta, the biggest star in India, and Saladin Chamcha, an expatriate returning from his first visit to Bombay in fifteen years, plummet from the sky, washing up on the snow-covered sands of an English beach, and proceed through a series of metamorphoses, dreams, and revelations.
--back cover (less)', 1),
	(534, 'What Is the What', 'Dave Eggers', 475, 5741, 'English', '2006-10-18', NULL, NULL, 'covers/cover535.png', 'From the bestselling author of A Heartbreaking Work of Staggering Genius, What Is the What is the epic novel based on the life of Valentino Achak Deng who, along with thousands of other children —the so-called Lost Boys—was forced to leave his village in Sudan at the age of seven and trek hundreds of miles by foot, pursued by militias, government bombers, and wild animals, crossing the deserts of three countries to find freedom. When he finally is resettled in the United States, he finds a life full of promise, but also heartache and myriad new challenges. Moving, suspenseful, and unexpectedly funny, What Is the What is an astonishing novel that illuminates the lives of millions through one extraordinary man.
-back cover (less)', 1),
	(535, 'Naked in Death', 'J.D. Robb', 306, 2163, 'English', '1995-07-01', NULL, 'In Death #1', 'covers/cover536.png', 'Here is the novel that started it all- the first book in J.D. Robb''s number-one New York Times-bestselling In Death series, featuring New York homicide detective Lieutenant Eve Dallas and Roarke.

It is the year 2058, and technology now completely rules the world. But New York City Detective Eve Dallas knows that the irresistible impulses of the human heart are still ruled by just one thing: passion.

When a senator''s daughter is killed, the secret life of prostitution she''d been leading is revealed. The high-profile case takes Lieutenant Eve Dallas into the rarefied circles of Washington politics and society. Further complicating matters is Eve''s growing attraction to Roarke, who is one of the wealthiest and most influential men on the planet, devilishly handsome... and the leading suspect in the investigation. (less)', 1),
	(536, 'Cross My Heart and Hope to Spy', 'Ally Carter', 236, 2918, 'English', '2007-10-02', NULL, 'Gallagher Girls #2', 'covers/cover537.png', 'Cammie Morgan is back, and it''s clear that her life hasn''t calmed down since the events of I''d Tell You I Love You, But Then I''d Have to Kill You. At first, giddy anticipation is in the air. Gallagher Academy, Cammie''s elite spy school, is hosting a visit from a covert training center for boys. Soon after the boys'' arrival, though, everything goes dangerously awry when a series of security breaches are discovered at the academy. Worse yet, teenage agent-in-training Cammie is being blamed for the penetration. With the school''s top-secret status at risk, the Gallagher Girls have to work quickly to save their beloved school. (less)', 1),
	(537, 'Gilead', 'Marilynne Robinson', 247, 4067, 'English', '2006-01-10', NULL, 'Gilead #1', 'covers/cover538.png', 'The 2005 Pulitzer Prize winning novel
A New York Times Top-Ten Book of 2004
Winner of the National Book Critics Circle Award for Fiction

Nearly 25 years after Housekeeping, Marilynne Robinson returns with an intimate tale of three generations, from the Civil War to the 20th century: a story about fathers and sons and the spiritual battles that still rage at America''s heart. In the words of Kirkus, it is a novel "as big as a nation, as quiet as thought, and moving as prayer. Matchless and towering." GILEAD tells the story of America and will break your heart. (less)', 1),
	(538, 'Something Borrowed', 'Emily Giffin', 322, 4218, 'English', '2004-06-01', NULL, 'Darcy & Rachel #1', 'covers/cover539.png', 'Something Borrowed tells the story of Rachel, a young attorney living and working in Manhattan.

Rachel has always been the consummate good girl—until her thirtieth birthday, when her best friend, Darcy, throws her a party. That night, after too many drinks, Rachel ends up in bed with Darcy''s fiancé. Although she wakes up determined to put the one-night fling behind her, Rachel is horrified to discover that she has genuine feelings for the one guy she should run from. As the September wedding date nears, Rachel knows she has to make a choice. In doing so, she discovers that the lines between right and wrong can be blurry, endings aren''t always neat, and sometimes you have to risk all to win true happiness.

Something Borrowed is a phenomenal debut novel that will have you laughing, crying, and calling your best friend.
(less)', 1),
	(539, 'The Shadow Girl', 'Misty Mount', 300, 4888, NULL, '2017-12-28', NULL, NULL, 'covers/cover540.png', 'Shy, thirteen-year-old Zylia has always known she was different. Most teenagers feel unnoticed and unseen, but for Zylia, it''s something much worse. She''s disappearing from this world and doesn''t know how to stop it. At times, she''s not sure she wants to. Until she stumbles across a family mystery surrounding the disappearance of her great-aunt Angelica years earlier. During her quest to unravel the mystery, Zylia discovers she''s able to cross the boundary and enter the "in between" world. Now, it''s up to Zylia to save herself before she''s trapped "in between" forever. (less)', 1),
	(540, 'Missing Wings (Aranysargas, #1)', 'Andrea Luhman', 411, 4699, 'English', '2018-08-21', NULL, NULL, 'covers/cover541.png', 'Born with an ability the Veilede people of Madar believe make her, ‘one of the first to be blessed by God’, Katrina’s destiny unravels when her father is poisoned and her mother steals her into the human world to hide among those who hate her kind.
In a near fatal attempt to return home, Katrina’s stripped of her wings. The poison meant to kill her father leaves him in a degenerative state. When her eldest brother discovers she has survived, he orders her to stay in hiding. She must wait, concealed in the human world, until the danger of their father’s uncontrolled rages is contained.
Grown and adapted to the human world, Katrina encounters one of her kind. The promise of home and first love leads her into a situation capable of starting war among the Veilede. Will a human upbringing, mistakes, and the loss of her abilities bar her from reclaiming her heritage? Will unraveling the mystery of her mother’s betrayal lead her family into even greater danger? (less)', 1),
	(541, 'Magic Bites', 'Ilona Andrews', 261, 2437, 'English', '2007-03-27', NULL, 'Kate Daniels #1', 'covers/cover542.png', 'Ilona Andrews invites you to experience the first novel in the #1 New York Times bestselling series featuring the intriguing fantasy world of mercenary Kate Daniels…

When the magic is up, rogue mages cast their spells and monsters appear, while guns refuse to fire and cars fail to start. But then technology returns, and the magic recedes as unpredictably as it arose, leaving all kinds of paranormal problems in its wake.

Kate Daniels is a down-on-her-luck mercenary who makes her living cleaning up these magical problems. But when Kate’s guardian is murdered, her quest for justice draws her into a power struggle between two strong factions within Atlanta’s magic circles.

The Masters of the Dead, necromancers who can control vampires, and the Pack, a paramilitary clan of shapechangers, blame each other for a series of bizarre killings—and the death of Kate’s guardian may be part of the same mystery. Pressured by both sides to find the killer, Kate realizes she’s way out of her league—but she wouldn’t have it any other way… (less)', 1),
	(542, 'El Diablo', 'M.  Robinson', 469, 5124, 'English', '2016-08-30', NULL, 'El Diablo #1', 'covers/cover543.png', 'FROM WALL STREET JOURNAL & USA BESTSELLING AUTHOR M. ROBINSON

I was ruthless.
I was feared.
I had sacrificed. Myself. Her. Everything...

Living in a world where I was worth more dead than alive was a choice. I was a bad man, never claimed to be anything else. I’ve done things I’m not proud of. Seen things that can’t be unseen. I’ve caused pain that I can’t undo.
It was all my choice.
Every decision.
Every order.
Right and wrong never mattered.
Until her.
She was under my protection, until she became my obsession.
But who was going to save her...

From. Me. The devil himself.

Fate brought us together. Destiny destroyed us.

STANDALONE: Romance Suspense full-length novel. (less)', 1),
	(543, 'Villette', 'Charlotte Brontë', 573, 2102, 'English', '2001-10-09', NULL, NULL, 'covers/cover544.png', 'With her final novel, Villette, Charlotte Brontë reached the height of her artistic power. First published in 1853, Villette is Brontë''s most accomplished and deeply felt work, eclipsing even Jane Eyre in critical acclaim. Her narrator, the autobiographical Lucy Snowe, flees England and a tragic past to become an instructor in a French boarding school in the town of Villette. There she unexpectedly confronts her feelings of love and longing as she witnesses the fitful romance between Dr. John, a handsome young Englishman, and Ginerva Fanshawe, a beautiful coquette. The first pain brings others, and with them comes the heartache Lucy has tried so long to escape. Yet in spite of adversity and disappointment, Lucy Snowe survives to recount the unstinting vision of a turbulent life''s journey - a journey that is one of the most insightful fictional studies of a woman''s consciousness in English literature. (less)', 1),
	(544, 'The French Lieutenant''s Woman', 'John Fowles', 470, 2268, 'English', '2009-01-01', NULL, NULL, 'covers/cover545.png', 'The scene is the village of Lyme Regis on Dorset''s Lyme Bay..."the largest bite from the underside of England''s out-stretched southwestern leg." The major characters in the love-intrigue triangle are Charles Smithson, 32, a gentleman of independent means & vaguely scientific bent; his fiancée, Ernestina Freeman, a pretty heiress daughter of a wealthy & pompous dry goods merchant; & Sarah Woodruff, mysterious & fascinating...deserted after a brief affair with a French naval officer a short time before the story begins. Obsessed with an irresistible fascination for the enigmatic Sarah, Charles is hurtled by a moment of consummated lust to the brink of the existential void. Duty dictates that his engagement to Tina must be broken as he goes forth once again to seek the woman who has captured his Victorian soul & gentleman''s heart. (less)', 1),
	(545, 'Chasing the Red Queen', 'Karen Glista', 277, 4809, NULL, '2018-02-02', NULL, NULL, 'covers/cover546.png', 'Donja Bellanger, suffering after the death of her father, finds herself in dire straits when her mom takes a new husband. Forced not only to move to a strange city, but to share a room with her glamorous, new stepsister, Makayla Hampton, her life spirals out of control.

Makayla lures her from goth to glam, straight into an exclusive club, not only for wealthy elites but Immortal Descendants. Donja crosses paths with Torin Mancini and he’s too damn handsome to be real.

Torin, who has concealed his identity as a powerful ancient sprit for eight hundred years, sets his eyes on Donja; there’s something about her blood, something he can’t walk away from. He’s not alone. A deadly predator has picked up her scent.

Stalked, she reaches out to Torin, but the lure of her blood has him on edge. As Torin battles his heart desires and feelings he thought buried and gone, one thing is clear: they have as much, if not more to fear of each other than the predator who would have her life.

Is love enough? Can she accept him for what he is and better yet, can he control his hungry, hungry eyes?

A beautiful love story with relentless action, elite battles and steamy moments… unforgettable! (less)', 1),
	(546, 'The Heart of Aleppo: A Story of the Syrian Civil War', 'Ammar Habib', 252, 3624, 'English', '2018-07-26', NULL, NULL, 'covers/cover547.png', '#1 Bestseller in Asian-American Literature!
Available in paperback, Kindle, and Kindle Unlimited!
Winner of the 2019 Independent Press Award

From the ashes of the Syrian Civil War comes this story of hope, love, and courage...

After standing for over 7,000 years, Aleppo''s ruin came overnight. Separated from his family during the night the rebels attacked the city, 13-year-old Zaid Kadir is lost in the middle of a war zone. Alongside his friends, he is forced to survive the dangers of a civil war he does not even fully understand.

Zaid witnesses the destruction of the brutal Syrian Civil War as it grows more deadly by the day and rips his city apart. However, as he braves this destruction, as he desperately tries to survive this catastrophe, he discovers something. Zaid realizes that it is in the darkest hours when humanity''s spirit of hope burns brightest.

What readers are saying:
"The Heart of Aleppo does for Syria what The Kite Runner did for Afghanistan."
"Heart-wrenching, powerful story that portrays heroism and hope under the worst circumstances!"
"As a fan of The Book Thief, I really enjoyed this read."
"Moving tale of how war effects children! I have seen the war reported on the news, but this book really brings it home how it has affected families on a day to day basis." (less)', 1),
	(547, 'Rant', 'Chuck Palahniuk', 320, 2551, 'English', '2007-05-01', NULL, NULL, 'covers/cover548.png', 'Buster “Rant” Casey just may be the most efficient serial killer of our time. A high school rebel, Rant Casey escapes from his small town home for the big city where he becomes the leader of an urban demolition derby called Party Crashing. Rant Casey will die a spectacular highway death, after which his friends gather the testimony needed to build an oral history of his short, violent life. (less)', 1),
	(548, 'Effortless', 'S.C. Stephens', 487, 4747, 'English', '2013-01-08', NULL, 'Thoughtless #2', 'covers/cover549.png', 'After being caught in the middle of a love triangle that led to a devastating betrayal, Kiera pledged to learn from the mistakes she made. She was determined to never again inflict that kind of pain on anyone, especially the soulful, talented man who held her heart. But life offers new challenges for every relationship, and when Kiera''s love is put to the ultimate test, will it survive? Love is easy ... trust is hard. (less)', 1),
	(549, 'The Princess Diaries', 'Meg Cabot', 283, 3956, 'English', '2001-07-01', NULL, 'The Princess Diaries #1', 'covers/cover550.png', 'Mia Thermopolis is pretty sure there''s nothing worse than being a five-foot-nine, flat-chested freshman, who also happens to be flunking Algebra.

Is she ever in for a surprise.

First mom announces that she''s dating Mia''s Algebra teacher. Then Dad has to go and reveal that he is the crown prince of Genovia. And guess who still doesn''t have a date for the Cultural Diversity Dance? (less)', 1),
	(550, 'Out of My Mind', 'Sharon M. Draper', 295, 1450, 'English', '2010-03-09', NULL, NULL, 'covers/cover551.png', 'Melody is not like most people. She cannot walk or talk, but she has a photographic memory; she can remember every detail of everything she has ever experienced. She is smarter than most of the adults who try to diagnose her and smarter than her classmates in her integrated classroom - the very same classmates who dismiss her as mentally challenged because she cannot tell them otherwise. But Melody refuses to be defined by cerebral palsy. And she''s determined to let everyone know it - somehow.

In this breakthrough story, reminiscent of The Diving Bell and the Butterfly, from multiple Coretta Scott King Award-winner Sharon Draper, readers will come to know a brilliant mind and a brave spirit who will change forever how they look at anyone with a disability. (less)', 1),
	(551, 'Losing Hope', 'Colleen Hoover', 321, 5237, 'English', '2013-07-08', NULL, 'Hopeless #2', 'covers/cover552.png', 'In the follow-up to Colleen Hoover’s #1 New York Times bestseller Hopeless, the charming and irresistible Dean Holder tells the passionate story that has melted thousands of hearts.

In Hopeless, Sky left no secret unearthed, no feeling unshared, and no memory forgotten, but Holder’s past remained a mystery.

Still haunted by the little girl he let walk away, Holder has spent his entire life searching for her in an attempt to finally rid himself of the crushing guilt he has felt for years. But he could not have anticipated that the moment they reconnect, even greater remorse would overwhelm him…

Sometimes in life, if we wish to move forward, we must first dig deep into our past and make amends. In Losing Hope, bestselling author Colleen Hoover reveals what was going on inside Holder’s head during all those hopeless moments—and whether he can gain the peace he desperately needs. (less)', 1),
	(552, '????????', 'Naguib Mahfouz', 599, 1055, 'Arabic', '2006-01-01', NULL, NULL, 'covers/cover553.png', '??? ??? ???? ????? ??? ????? ??????? ?????? ??? ????? ??????? ??? ????? ???? ????? ??????? ??????? ?????? ????? ??? ?????? ??????? ?? ??? ????? ??????? ?????? ????? ????? ??? ?????? ?????????? ????????? ???? ???? ????? ????? ???? ????? ??? ????? ??? ????? ??? ??? ???????? ?????? ?? ?????? ?? ?????? ?????? ??????? ????????? ??? ??? ??? ?????? ????? ???? ???? ????? ?? ???? ????? ?? ?????? ?????? ??? ????? ??????? ?? ?????? ?? ?????? ? ?????? ????? ?? ?????? ??? ??? ???? ????? ?? ????? ????? ???? ????? ????? ?? ??????? ???? ??? ??? ?? ???? ??????? ?? ????. ?? ??? ?? ????? ????? ???? ???? ????? ?????? ??? ??? ????? ?? ?????? ?? ???? ??? ??? ?????? ???? ???? ??????? ??????? ???? ???. (less)', 1),
	(553, 'The Selfish Gene', 'Richard Dawkins', 360, 704, 'English', '2006-05-25', NULL, NULL, 'covers/cover554.png', 'Inheriting the mantle of revolutionary biologist from Darwin, Watson, and Crick, Richard Dawkins forced an enormous change in the way we see ourselves and the world with the publication of The Selfish Gene. Suppose, instead of thinking about organisms using genes to reproduce themselves, as we had since Mendel''s work was rediscovered, we turn it around and imagine that "our" genes build and maintain us in order to make more genes. That simple reversal seems to answer many puzzlers which had stumped scientists for years, and we haven''t thought of evolution in the same way since. Drawing fascinating examples from every field of biology, he paved the way for a serious re-evaluation of evolution. He also introduced the concept of self-reproducing ideas, or memes, which (seemingly) use humans exclusively for their propagation. If we are puppets, he says, at least we can try to understand our strings. (less)', 1),
	(554, 'Les Fleurs du Mal', 'Charles Baudelaire', 365, 666, 'English', '1983-10-01', NULL, NULL, 'covers/cover555.png', 'Presents the first American translation of the complete text of Baudelaire''s 1857 masterwork and includes the complete original French texts for easy comparison. (less)', 1),
	(555, 'Halo', 'Alexandra Adornetto', 485, 5573, 'English', '2010-08-31', NULL, 'Halo #1', 'covers/cover556.png', 'An angel is sent to Earth on a mission.
But falling in love is not part of the plan.

Three angels – Gabriel, the warrior; Ivy, the healer; and Bethany, the youngest and most human – are sent by Heaven to bring good to a world falling under the influence of darkness. They work hard to conceal their luminous glow, superhuman powers, and, most dangerous of all, their wings, all the while avoiding all human attachments.

Then Bethany meets Xavier Woods, and neither of them is able to resist the attraction between them. Gabriel and Ivy do everything in their power to intervene, but the bond between Xavier and Bethany seems too strong.

The angel’s mission is urgent, and dark forces are threatening. Will love ruin Bethany or save her? (less)', 1),
	(556, 'Tai-Pan', 'James Clavell', 734, 1521, 'English', '2009-09-01', NULL, 'Asian Saga: Chronological Order #2', 'covers/cover557.png', 'An Alternate Cover of this edition can be found here.

Set in the turbulent days of the founding of Hong Kong in the 1840s, Tai-Pan is the story of Dirk Struan, the ruler - the Tai-Pan - of the most powerful trading company in the Far East. He is also a pirate, an opium smuggler, and a master manipulator of men. This is the story of his fight to establish himself and his dynasty as the undisputed masters of the Orient. (less)', 1),
	(557, 'Wait for You', 'J. Lynn', 332, 4268, 'English', '2013-04-02', NULL, 'Wait for You #1', 'covers/cover558.png', 'Some things are worth waiting for…

Traveling thousands of miles from home to enter college is the only way nineteen-year-old Avery Morgansten can escape what happened at the Halloween party five years ago—an event that forever changed her life. All she needs to do is make it to her classes on time, make sure the bracelet on her left wrist stays in place, not draw any attention to herself, and maybe—please God—make a few friends, because surely that would be a nice change of pace. The one thing she didn’t need and never planned on was capturing the attention of the one guy who could shatter the precarious future she’s building for herself.

Some things are worth experiencing…

Cameron Hamilton is six feet and three inches of swoon-worthy hotness, complete with a pair of striking blue eyes and a remarkable ability to make her want things she believed were irrevocably stolen from her. She knows she needs to stay away from him, but Cam is freaking everywhere, with his charm, his witty banter, and that damn dimple that’s just so… so lickable. Getting involved with him is dangerous, but when ignoring the simmering tension that sparks whenever they are around each other becomes impossible, he brings out a side of her she never knew existed.

Some things should never be kept quiet…

But when Avery starts receiving threatening emails and phone calls forcing her to face a past she wants silenced, she’s has no other choice but to acknowledge that someone is refusing to allow her to let go of that night when everything changed. When the devastating truth comes out, will she resurface this time with one less scar? And can Cam be there to help her or will he be dragged down with her?

And some things are worth fighting for… (less)', 1),
	(558, 'City of Thieves', 'David Benioff', 258, 457, 'English', '2008-06-01', NULL, NULL, 'covers/cover559.png', 'From the critically acclaimed author of The 25th Hour, a captivating novel about war, courage, survival — and a remarkable friendship that ripples across a lifetime.

During the Nazis’ brutal siege of Leningrad, Lev Beniov is arrested for looting and thrown into the same cell as a handsome deserter named Kolya. Instead of being executed, Lev and Kolya are given a shot at saving their own lives by complying with an outrageous directive: secure a dozen eggs for a powerful Soviet colonel to use in his daughter’s wedding cake. In a city cut off from all supplies and suffering unbelievable deprivation, Lev and Kolya embark on a hunt through the dire lawlessness of Leningrad and behind enemy lines to find the impossible.

By turns insightful and funny, thrilling and terrifying, City of Thieves is a gripping, cinematic World War II adventure and an intimate coming-of-age story with an utterly contemporary feel for how boys become men. (less)', 1),
	(559, 'Fifty Shades Trilogy', 'E.L. James', 1859, 1623, 'English', '2012-04-17', NULL, 'Fifty Shades #1-3', 'covers/cover560.png', 'Now available in a single volume, E L James''s New York Times #1 bestselling trilogy has been hailed by Entertainment Weekly as being "in a class by itself." Beginning with the GoodReads Choice Award Romance Finalist Fifty Shades of Grey, the Fifty Shades Trilogy will obsess you, possess you, and stay with you forever.


This bundle includes the following novels:

FIFTY SHADES OF GREY: When college student Anastasia Steele goes to interview young entrepreneur Christian Grey, she encounters a man who is beautiful, brilliant, and intimidating. The unworldly Ana realizes she wants this man, and Grey admits he wants her, too - but on his own terms. When the couple embarks on a daring, passionately physical affair, Ana discovers Christian''s secrets and explores her own desires.

FIFTY SHADES DARKER: Daunted by Christian''s dark secrets and singular tastes, Ana has broken off their relationship to start a new career. But desire for Christian still dominates her every waking thought. They rekindle their searing sensual affair, and while Christian wrestles with his inner demons, Ana is forced to make the most important decision of her life.

FIFTY SHADES FREED: Now, Ana and Christian have it all - love, passion, intimacy, wealth, and a world of possibilities for their future. But Ana knows that loving her Fifty Shades will not be easy, and that being together will pose challenges that neither of them would anticipate. Just when it seems that their strength together will eclipse any obstacle, misfortune, malice, and fate conspire to turn Ana''s deepest fears into reality.


This book is intended for mature audiences. (less)', 1),
	(560, 'The Outlands', 'Tyler Edwards', 452, 1397, 'English', '2020-12-14', NULL, NULL, 'covers/cover561.png', 'In the ruins of the world that was lies the city of Dios, a haven protected from the hostile environment known as The Outlands. Ruled by an oppressive Patriarch, the people of Dios are conditioned in fear. The smallest infraction could result in banishment to the Outlands, a fate worse than death.

With his make-shift family of “Undesirables”, Jett Lasting struggles to find his place in a world where drawing attention to yourself can get you killed. His very existence is considered a crime. To survive, he must avoid guards, beggar gangs, and an ever-growing tension that could drag the whole city into chaos.

Jett unwittingly becomes entwined in a plot to overthrow the government where his choices could lead to freedom or the death of everyone he’s ever known or cared about. (less)', 1),
	(561, 'Guards! Guards!', 'Terry Pratchett', 376, 2165, 'English', '2001-08-01', NULL, 'Discworld #8', 'covers/cover562.png', 'This is where the dragons went. They lie ... not dead, not asleep, but ... dormant. And although the space they occupy isn''t like normal space, nevertheless they are packed in tightly. They could put you in mind of a can of sardines, if you thought sardines were huge and scaly. And presumably, somewhere, there''s a key...

GUARDS! GUARDS! is the eighth Discworld novel - and after this, dragons will never be the same again! (less)', 1),
	(562, 'It Ends with Us', 'Colleen Hoover', 385, 4383, 'English', '2016-08-02', NULL, NULL, 'covers/cover563.png', 'Sometimes it is the one who loves you who hurts you the most.

Lily hasn’t always had it easy, but that’s never stopped her from working hard for the life she wants. She’s come a long way from the small town in Maine where she grew up
— she graduated from college, moved to Boston, and started her own business. So when she feels a spark with a gorgeous neurosurgeon named Ryle Kincaid, everything in Lily’s life suddenly seems almost too good to be true.

Ryle is assertive, stubborn, maybe even a little arrogant. He’s also sensitive, brilliant, and has a total soft spot for Lily. And the way he looks in scrubs certainly doesn’t hurt. Lily can’t get him out of her head. But Ryle’s complete aversion to relationships is disturbing. Even as Lily finds herself becoming the exception to his “no dating” rule, she can’t help but wonder what made him that way in the first place.

As questions about her new relationship overwhelm her, so do thoughts of Atlas Corrigan — her first love and a link to the past she left behind. He was her kindred spirit, her protector. When Atlas suddenly reappears, everything Lily has built with Ryle is threatened. (less)', 1),
	(563, 'The Celestine Prophecy', 'James Redfield', 247, 3931, 'English', '1995-01-01', NULL, 'Celestine Prophecy #1', 'covers/cover564.png', 'Are three decades of interest in modern physics, ecology, mystical religion and interpersonal psychology finally synthesizing into a new spiritual "common sense"? Are we now beginning to live this new common sense? Can it become the dominant paradigm of the next century?

When James Redfield first published this extraordinary book -- an adventure in pursuit of a spiritual mystery -- people picked it up, read it, and were stunned by its contents. They told their friends about it, and friends in turn told their friends. By word of mouth alone, news of this magical, moving work spread throughout the country, until -- within months of its first printing -- over hundred thousand readers had become excited by its predictions and touched by the way it made sense of what was happening in their lives.

Now you can discover for yourself the insights, the vision, and the uncanny accuracy of "The Celestine Prophecy". A parable filled with vital truth that reads like a gripping adventure-tale, it begins with the disappearance of an ancient Peruvian manuscript. Although few Westerners know of its existence and a government wants to suppress it, this precious document contains an important secret: the 9 insights the human race is predicted to grasp as we enter an era of true spiritual awareness.

To find the manuscript -- and its hidden treasures -- you will join one person''s search. It is a quest that will carry you high into the Andes mountains, to ancient ruins deep in old-growth forest, and to a startling discovery. You will quickly recognize the truth of the First Insight: in each of our lives occur mysterious coincidences -- sudden, synchronistic events that, once interpreted, lead us into our true destiny.

When you find and understand all 9 of the insights, you will have an exciting new image of human life, and a positive vision of how we will save this planet, its creatures, and its beauty. "The Celestine Prophecy" will give you hope…and chills…as you begin to perceive its predictions unfolding all around you in intimate relationships and international affairs. And you will suddenly recognize the quantum leap forward humankind is preparing to make as we approach the new millennium. Important works such as Carlos Castaneda''s "The Teachings of Don Juan" and the prophecies of Nostradamus have helped prepare the way for the revelations you will find in James Redfield''s life-changing words. The time is right to hear them, and to discover the personal journey that is opening in your life. (less)', 1),
	(564, 'Hopscotch', 'Julio Cortázar', 564, 4268, 'English', '1987-02-12', NULL, NULL, 'covers/cover565.png', 'Horacio Oliveira is an Argentinian writer who lives in Paris with his mistress, La Maga, surrounded by a loose-knit circle of bohemian friends who call themselves "the Club." A child''s death and La Maga''s disappearance put an end to his life of empty pleasures and intellectual acrobatics, and prompt Oliveira to return to Buenos Aires, where he works by turns as a salesman, a keeper of a circus cat which can truly count, and an attendant in an insane asylum. Hopscotch is the dazzling, freewheeling account of Oliveira''s astonishing adventures.

The book is highly influenced by Henry Miller’s reckless and relentless search for truth in post-decadent Paris and Daisetz Teitaro Suzuki’s modal teachings on Zen Buddhism.

Cortázar''s employment of interior monologue, punning, slang, and his use of different languages is reminiscent of Modernist writers like Joyce, although his main influences were Surrealism and the French New Novel, as well as the "riffing" aesthetic of jazz and New Wave Cinema.

In 1966, Gregory Rabassa won the first National Book Award to recognize the work of a translator, for his English-language edition of Hopscotch. Julio Cortázar was so pleased with Rabassa''s translation of Hopscotch that he recommended the translator to Gabriel García Márquez when García Márquez was looking for someone to translate his novel One Hundred Years of Solitude into English. "Rabassa''s One Hundred Years of Solitude improved the original," according to García Márquez. (less)', 1),
	(565, 'Inkdeath', 'Cornelia Funke', 699, 905, 'English', '2007-09-28', NULL, 'Inkworld #3', 'covers/cover566.png', 'The masterful conclusion to the epic, award-winning, bestselling INKHEART trilogy by internationally acclaimed author Cornelia Funke.

The Adderhead--his immortality bound in a book by Meggie''s father, Mo--has ordered his henchmen to plunder the villages. The peasants'' only defense is a band of outlaws led by the Bluejay--Mo''s fictitious double, whose identity he has reluctantly adopted. But the Book of Immortality is unraveling, and the Adderhead again fears the White Women of Death. To bring the renegade Bluejay back to repair the book, the Adderhead kidnaps all the children in the kingdom, dooming them to slavery in his silver mines unless Mo surrends. First Dustfinger, now Mo: Can anyone save this cursed story? (less)', 1),
	(566, 'Under the Never Sky', 'Veronica Rossi', 374, 610, 'English', '2012-02-07', NULL, 'Under the Never Sky #1', 'covers/cover567.png', 'WORLDS KEPT THEM APART.

DESTINY BROUGHT THEM TOGETHER.

Aria has lived her whole life in the protected dome of Reverie. Her entire world confined to its spaces, she''s never thought to dream of what lies beyond its doors. So when her mother goes missing, Aria knows her chances of surviving in the outer wasteland long enough to find her are slim.

Then Aria meets an outsider named Perry. He''s searching for someone too. He''s also wild—a savage—but might be her best hope at staying alive.

If they can survive, they are each other''s best hope for finding answers. (less)', 1),
	(567, 'The Gormenghast Novels', 'Mervyn Peake', 1173, 2694, 'English', '1995-12-01', NULL, 'Gormenghast #1-3', 'covers/cover568.png', 'A doomed lord, an emergent hero, and a dazzling array of bizarre creatures inhabit the magical world of the Gormenghast novels which, along with Tolkien''s Lord of the Rings, reign as one of the undisputed fantasy classics of all time. At the center of it all is the seventy-seventh Earl, Titus Groan, who stands to inherit the miles of rambling stone and mortar that form Gormenghast Castle and its kingdom, unless the conniving Steerpike, who is determined to rise above his menial position and control the House of Groan, has his way.

In these extraordinary novels, Peake has created a world where all is like a dream - lush, fantastical, and vivid. Accompanying the text are Peake''s own drawings, illustrating the whole assembly of strange and marvelous creatures that inhabit Gormenghast.

Also featuring:
Introductory essays by Anthony Burgess and Quentin Crisp
Twelve critical essays, curated by Peake scholar Peter G. Winnington
Fragment of the unpublished novel, Titus Awakes

(less)', 1),
	(568, 'Hawaii', 'James A. Michener', 1136, 3478, 'English', '2002-07-09', NULL, NULL, 'covers/cover569.png', 'An alternate cover edition for this ISBN can be found here.

Pulitzer Prize–winning author James A. Michener brings Hawaii’s epic history vividly to life in a classic saga that has captivated readers since its initial publication in 1959. As the volcanic Hawaiian Islands sprout from the ocean floor, the land remains untouched for centuries—until, little more than a thousand years ago, Polynesian seafarers make the perilous journey across the Pacific, flourishing in this tropical paradise according to their ancient traditions. Then, in the early nineteenth century, American missionaries arrive, bringing with them a new creed and a new way of life. Based on exhaustive research and told in Michener’s immersive prose, Hawaii is the story of disparate peoples struggling to keep their identity, live in harmony, and, ultimately, join together. (less)', 1),
	(569, 'The Immortal Rules', 'Julie Kagawa', 485, 4608, 'English', '2012-04-24', NULL, 'Blood of Eden #1', 'covers/cover570.png', 'To survive in a ruined world, she must embrace the darkness?

Allison Sekemoto survives in the Fringe, the outermost circle of a walled-in city. By day, she and her crew scavenge for food. By night, any one of them could be eaten. Some days, all that drives Allie is her hatred of them—the vampires who keep humans as blood cattle. Until the night Allie herself dies and becomes one of the monsters.

Forced to flee her city, Allie must pass for human as she joins a ragged group of pilgrims seeking a legend—a place that might have a cure for the disease that killed off most of civilization and created the rabids, the bloodthirsty creatures who threaten human and vampire alike. And soon Allie will have to decide what and who is worth dying for? again.

Enter Julie Kagawa''s dark and twisted world as an unforgettable journey begins. (less)', 1),
	(570, 'On the Jellicoe Road', 'Melina Marchetta', 290, 3023, 'English', '2006-08-28', NULL, NULL, 'covers/cover571.png', 'I''m dreaming of the boy in the tree. I tell him stories. About the Jellicoe School and the Townies and the Cadets from a school in Sydney. I tell him about the war between us for territory. And I tell him about Hannah, who lives in the unfinished house by the river. Hannah, who is too young to be hiding away from the world. Hannah, who found me on the Jellicoe Road six years ago.

Taylor is leader of the boarders at the Jellicoe School. She has to keep the upper hand in the territory wars and deal with Jonah Griggs—the enigmatic leader of the cadets, and someone she thought she would never see again.

And now Hannah, the person Taylor had come to rely on, has disappeared. Taylor''s only clue is a manuscript about five kids who lived in Jellicoe eighteen years ago. She needs to find out more, but this means confronting her own story, making sense of her strange, recurring dream, and finding her mother—who abandoned her on the Jellicoe Road.

The moving, joyous and brilliantly compelling new novel from the best-selling, multi-award-winning author of Looking for Alibrandi and Saving Francesca. (less)', 1),
	(571, 'White Teeth', 'Zadie Smith', 448, 3464, 'English', '2001-06-12', NULL, NULL, 'covers/cover572.png', 'At the center of this invigorating novel are two unlikely friends, Archie Jones and Samad Iqbal. Hapless veterans of World War II, Archie and Samad and their families become agents of England’s irrevocable transformation. A second marriage to Clara Bowden, a beautiful, albeit tooth-challenged, Jamaican half his age, quite literally gives Archie a second lease on life, and produces Irie, a knowing child whose personality doesn’t quite match her name (Jamaican for “no problem”). Samad’s late-in-life arranged marriage (he had to wait for his bride to be born), produces twin sons whose separate paths confound Iqbal’s every effort to direct them, and a renewed, if selective, submission to his Islamic faith. Set against London’s racial and cultural tapestry, venturing across the former empire and into the past as it barrels toward the future, White Teeth revels in the ecstatic hodgepodge of modern life, flirting with disaster, confounding expectations, and embracing the comedy of daily existence. (less)', 1),
	(572, 'The Book of Disquiet: The Complete Edition', 'Fernando Pessoa', 433, 5043, 'English', '2017-08-29', NULL, NULL, 'covers/cover573.png', 'Fernando Pessoa was many writers in one. He attributed his prolific writings to a wide range of alternate selves, each of which had a distinct biography, ideology. and horoscope. When he died in 1935, Pessoa left behind a trunk filled with unfinished and unpublished writings, among which were the remarkable pages that make up his posthumous masterpiece, The Book of Disquiet, an astonishing work that, in George Steiner''s words, "gives to Lisbon the haunting spell of Joyce''s Dublin or Kafka''s Prague."Published for the first time some fifty years after his death, this unique collection of short, aphoristic paragraphs comprises the "autobiography" of Bernardo Soares, one of Pessoa''s alternate selves. Part intimate diary, part prose poetry, part descriptive narrative, captivatingly translated by Richard Zenith, The Book of Disquiet is one of the greatest works of the twentieth century.
(less)', 1),
	(573, 'Illuminae', 'Amie Kaufman', 602, 5301, 'English', '2015-10-20', NULL, 'The Illuminae Files #1', 'covers/cover574.png', 'This morning, Kady thought breaking up with Ezra was the hardest thing she’d have to do. This afternoon, her planet was invaded.

The year is 2575, and two rival mega-corporations are at war over a planet that’s little more than a speck at the edge of the universe. Now with enemy fire raining down on them, Kady and Ezra — who are barely even talking to each other—are forced to evacuate with a hostile warship in hot pursuit.

But their problems are just getting started. A plague has broken out and is mutating with terrifying results; the fleet’s AI may actually be their enemy; and nobody in charge will say what’s really going on. As Kady hacks into a web of data to find the truth, it’s clear the only person who can help her is the ex-boyfriend she swore she’d never speak to again.

Told through a fascinating dossier of hacked documents — including emails, maps, files, IMs, medical reports, interviews, and more — Illuminae is the first book in a heart-stopping trilogy about lives interrupted, the price of truth, and the courage of everyday heroes. (less)', 1),
	(574, 'Cujo', 'Stephen King', 432, 3153, 'Spanish', '2006-06-06', NULL, NULL, 'covers/cover575.png', 'Outside a peaceful town in central Maine, a monster is waiting. Cujo is a two-hundred-pound Saint Bernard, the best friend Brett Camber has ever had. One day Cujo chases a rabbit into a bolt-hole—a cave inhabited by sick bats. What happens to Cujo, how he becomes a horrifying vortex inexorably drawing in all the people around him makes for one of the most heart-stopping novels Stephen King has written. (less)', 1),
	(575, 'The Pelican Brief', 'John Grisham', 400, 5557, 'English', '2006-04-25', NULL, NULL, 'covers/cover576.png', 'In suburban Georgetown a killer''s Reeboks whisper on the front floor of a posh home... In a seedy D.C. porno house a patron is swiftly garroted to death... The next day America learns that two of its Supreme Court justices have been assassinated. And in New Orleans, a young law student prepares a legal brief... To Darby Shaw it was no more than a legal shot in the dark, a brilliant guess. To the Washington establishment it was political dynamite. Suddenly Darby is witness to a murder -- a murder intended for her. Going underground, she finds there is only one person she can trust -- an ambitious reporter after a newsbreak hotter than Watergate -- to help her piece together the deadly puzzle. Somewhere between the bayous of  Louisiana and the White House''s inner sanctums, a violent cover-up is being engineered. For someone has read Darby''s brief. Someone who will stop at nothing to destroy the evidence of an unthinkable crime. (less)', 1),
	(576, 'Night World, No. 2', 'L.J. Smith', 662, 4211, 'English', '2008-11-18', NULL, 'Night World #4-6', 'covers/cover577.png', 'Includes:
Book 4 - Dark Angel
Book 5 - The Chosen
Book 6 - Soulmate

Vampires, werewolves, witches, shapeshifters -- they live among us without our knowledge. Night World is their secret society, a secret society with very strict rules. And falling in love breaks all the laws of the Night World.

In Dark Angel, Gillian is saved from drowning by her guardian angel. Only visible to Gillian, Angel will fulfill her heart''s every desire. But when Angel starts making strange and sinister requests, Gillian must question who he truly is and where he came from.

Armed with a wooden stake, martial arts, and the will to resist a vampire''s mind control, Rashel struggles to avenge her mother''s death in The Chosen. Then she meets Quinn, her soulmate, who is part of the world she has vowed to destroy.

Hannah receives notes warning her of incredible danger in Soulmate. But if death is her destiny, is the Lord of the Night World''s love strong enough to save her? (less)', 1),
	(577, 'Sweet Evil', 'Wendy Higgins', 447, 3023, 'English', '2012-05-01', NULL, 'Sweet #1', 'covers/cover578.png', 'Embrace the Forbidden

What if there were teens whose lives literally depended on being bad influences?

This is the reality for sons and daughters of fallen angels.
Tenderhearted Southern girl Anna Whitt was born with the sixth sense to see and feel emotions of other people. She''s aware of a struggle within herself, an inexplicable pull toward danger, but it isn''t until she turns sixteen and meets the alluring Kaidan Rowe that she discovers her terrifying heritage and her willpower is put to the test. He''s the boy your daddy warned you about. If only someone had warned Anna.

Forced to face her destiny, will Anna embrace her halo or her horns? (less)', 1),
	(578, 'The Complete Anne of Green Gables Boxed Set', 'L.M. Montgomery', 2088, 4790, 'English', '1998-10-06', NULL, 'Anne of Green Gables #1-8', 'covers/cover579.png', 'Favorites for nearly 100 years, these classic novels follow the adventures of the spirited redhead Anne Shirley, who comes to stay at Green Gables and wins the hearts of everyone she meets.

Includes Anne of Green Gables, Anne of Avonlea, Anne of the Island, Anne of Windy Poplars, Anne''s House of Dreams, Anne of Ingleside, Rainbow Valley and Rilla of Ingleside - the whole collection. Each book includes: The original, unabridged text; a specially commissioned biography of L.M. Montgomery; a map of Prince Edward Island. (less)', 1),
	(579, 'Needful Things', 'Stephen King', 790, 1659, 'English', '1992-01-01', NULL, NULL, 'covers/cover580.png', 'Leland Gaunt opens a new shop in Castle Rock called Needful Things. Anyone who enters his store finds the object of his or her lifelong dreams and desires: a prized baseball card, a healing amulet. In addition to a token payment, Gaunt requests that each person perform a little "deed," usually a seemingly innocent prank played on someone else from town. These practical jokes cascade out of control and soon the entire town is doing battle with itself. Only Sheriff Alan Pangborn suspects that Gaunt is behind the population''s increasingly violent behavior. (less)', 1),
	(580, 'Fall of Giants', 'Ken Follett', 985, 4495, 'English', '2010-09-28', NULL, 'The Century Trilogy #1', 'covers/cover581.png', 'This is an epic of love, hatred, war and revolution. This is a huge novel that follows five families through the world-shaking dramas of the First World War, the Russian Revolution, and the struggle for votes for women.
It is 1911. The Coronation Day of King George V. The Williams, a Welsh coal-mining family is linked by romance and enmity to the Fitzherberts, aristocratic coal-mine owners. Lady Maud Fitzherbert falls in love with Walter von Ulrich, a spy at the German Embassy in London. Their destiny is entangled with that of an ambitious young aide to U.S. President Woodrow Wilson and to two orphaned Russian brothers, whose plans to emigrate to America fall foul of war, conscription and revolution. In a plot of unfolding drama and intriguing complexity, "Fall Of Giants" moves seamlessly from Washington to St Petersburg, from the dirt and danger of a coal mine to the glittering chandeliers of a palace, from the corridors of power to the bedrooms of the mighty. (less)', 1),
	(581, 'Love, Rosie', 'Cecelia Ahern', 512, 3969, 'English', '2006-12-01', NULL, NULL, 'covers/cover582.png', 'Sometimes you have to look at life in a whole new way...

From the bestselling author of PS, I Love You comes a delightfully enchanting novel about what happens when two people who are meant to be together just can''t seem to get it right.

Rosie and Alex are destined for one another, and everyone seems to know it but them. Best friends since childhood, their relationship gets closer by the day, until Alex gets the news that his family is leaving Dublin and moving to Boston. At 17, Rosie and Alex have just started to see each other in a more romantic light. Devastated, the two make plans for Rosie to apply to colleges in the U.S.

She gets into Boston University, Alex gets into Harvard, and everything is falling into place, when on the eve of her departure, Rosie gets news that will change their lives forever: She''s pregnant by a boy she''d gone out with while on the rebound from Alex.

Her dreams for college, Alex, and a glamorous career dashed, Rosie stays in Dublin to become a single mother, while Alex pursues a medical career and a new love in Boston. But destiny is a funny thing, and in this novel, structured as a series of clever e-mails, letters, notes, and a trail of missed opportunities, Alex and Rosie find out that fate isn''t done with them yet. (less)', 1);
/*!40000 ALTER TABLE "books" ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS "BooksGenres" (
	"bookID" INT NULL DEFAULT NULL,
	"genreID" INT NULL DEFAULT NULL,
	FOREIGN KEY INDEX "FK_genreID" ("genreID"),
	FOREIGN KEY INDEX "FK_genresbookID" ("bookID"),
	CONSTRAINT "FK_genresbookID" FOREIGN KEY ("bookID") REFERENCES "books" ("BookID") ON UPDATE NO_ACTION ON DELETE NO_ACTION,
	CONSTRAINT "FK_genreID" FOREIGN KEY ("genreID") REFERENCES "genres" ("genreID") ON UPDATE NO_ACTION ON DELETE NO_ACTION
);

/*!40000 ALTER TABLE "BooksGenres" DISABLE KEYS */;
INSERT INTO "BooksGenres" ("bookID", "genreID") VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 7),
	(1, 8),
	(1, 9),
	(1, 10),
	(1, 11),
	(1, 12),
	(2, 13),
	(2, 2),
	(2, 14),
	(2, 3),
	(2, 15),
	(2, 16),
	(2, 17),
	(2, 7),
	(2, 8),
	(2, 18),
	(2, 19),
	(3, 1),
	(3, 20),
	(3, 21),
	(3, 7),
	(3, 8),
	(3, 22),
	(3, 23),
	(3, 24),
	(3, 25),
	(3, 26),
	(4, 1),
	(4, 2),
	(4, 27),
	(4, 28),
	(4, 29),
	(4, 30),
	(4, 7),
	(4, 23),
	(4, 8),
	(4, 18),
	(4, 12),
	(5, 2),
	(5, 31),
	(5, 10),
	(5, 32),
	(5, 33),
	(5, 34),
	(5, 7),
	(5, 8),
	(5, 18),
	(5, 35),
	(6, 36),
	(6, 34),
	(6, 29),
	(6, 37),
	(6, 7),
	(6, 38),
	(6, 39),
	(6, 10),
	(6, 8),
	(6, 35),
	(7, 40),
	(7, 41),
	(7, 21),
	(7, 42),
	(7, 7),
	(7, 8),
	(7, 26),
	(7, 24),
	(7, 25),
	(7, 35),
	(8, 2),
	(8, 3),
	(8, 10),
	(8, 43),
	(8, 42),
	(8, 7),
	(8, 8),
	(8, 44),
	(8, 18),
	(8, 35),
	(8, 45),
	(9, 25),
	(9, 46),
	(9, 15),
	(9, 16),
	(9, 21),
	(9, 17),
	(9, 7),
	(9, 47),
	(9, 10),
	(9, 48),
	(9, 26),
	(10, 13),
	(10, 3),
	(10, 49),
	(10, 15),
	(10, 17),
	(10, 29),
	(10, 50),
	(10, 7),
	(10, 10),
	(10, 51),
	(10, 35),
	(10, 45),
	(11, 1),
	(11, 15),
	(11, 52),
	(11, 41),
	(11, 21),
	(11, 17),
	(11, 7),
	(11, 26),
	(11, 53),
	(11, 24),
	(11, 25),
	(12, 54),
	(12, 55),
	(12, 56),
	(12, 57),
	(12, 58),
	(12, 29),
	(12, 59),
	(12, 21),
	(12, 60),
	(12, 53),
	(12, 24),
	(12, 61),
	(13, 62),
	(13, 63),
	(13, 64),
	(13, 65),
	(13, 66),
	(13, 60),
	(13, 67),
	(13, 18),
	(13, 68),
	(13, 69),
	(14, 48),
	(14, 34),
	(14, 41),
	(14, 21),
	(14, 42),
	(14, 7),
	(14, 8),
	(14, 26),
	(14, 25),
	(14, 35),
	(15, 13),
	(15, 2),
	(15, 15),
	(15, 70),
	(15, 71),
	(15, 17),
	(15, 72),
	(15, 44),
	(15, 7),
	(15, 73),
	(15, 18),
	(16, 74),
	(16, 3),
	(16, 18),
	(16, 72),
	(16, 75),
	(16, 42),
	(16, 7),
	(16, 76),
	(16, 77),
	(16, 10),
	(16, 78),
	(16, 79),
	(17, 74),
	(17, 80),
	(17, 81),
	(17, 82),
	(17, 83),
	(17, 42),
	(17, 7),
	(17, 77),
	(17, 10),
	(17, 84),
	(18, 63),
	(18, 56),
	(18, 66),
	(18, 85),
	(18, 86),
	(18, 37),
	(18, 60),
	(18, 67),
	(18, 45),
	(18, 87),
	(19, 2),
	(19, 3),
	(19, 88),
	(19, 15),
	(19, 17),
	(19, 86),
	(19, 7),
	(19, 8),
	(19, 18),
	(19, 67),
	(19, 35),
	(19, 19),
	(20, 13),
	(20, 1),
	(20, 74),
	(20, 89),
	(20, 90),
	(20, 91),
	(20, 92),
	(20, 29),
	(20, 93),
	(20, 94),
	(20, 23),
	(20, 95),
	(21, 2),
	(21, 15),
	(21, 70),
	(21, 71),
	(21, 17),
	(21, 72),
	(21, 44),
	(21, 7),
	(21, 8),
	(21, 73),
	(21, 18),
	(21, 96),
	(22, 13),
	(22, 74),
	(22, 80),
	(22, 81),
	(22, 82),
	(22, 97),
	(22, 42),
	(22, 7),
	(22, 77),
	(22, 10),
	(23, 2),
	(23, 15),
	(23, 70),
	(23, 41),
	(23, 21),
	(23, 17),
	(23, 72),
	(23, 98),
	(23, 7),
	(23, 44),
	(23, 18),
	(23, 24),
	(23, 25),
	(23, 45),
	(24, 74),
	(24, 99),
	(24, 34),
	(24, 81),
	(24, 82),
	(24, 42),
	(24, 7),
	(24, 78),
	(24, 77),
	(24, 10),
	(25, 48),
	(25, 34),
	(25, 100),
	(25, 38),
	(25, 7),
	(25, 10),
	(25, 51),
	(25, 35),
	(25, 45),
	(25, 101),
	(26, 2),
	(26, 102),
	(26, 103),
	(26, 31),
	(26, 3),
	(26, 15),
	(26, 17),
	(26, 72),
	(26, 7),
	(26, 8),
	(26, 18),
	(26, 12),
	(26, 104),
	(27, 13),
	(27, 74),
	(27, 99),
	(27, 81),
	(27, 34),
	(27, 82),
	(27, 29),
	(27, 7),
	(27, 10),
	(27, 45),
	(28, 13),
	(28, 105),
	(28, 106),
	(28, 46),
	(28, 29),
	(28, 107),
	(28, 108),
	(28, 7),
	(28, 10),
	(28, 35),
	(29, 13),
	(29, 74),
	(29, 80),
	(29, 81),
	(29, 34),
	(29, 82),
	(29, 42),
	(29, 7),
	(29, 10),
	(29, 45),
	(30, 1),
	(30, 109),
	(30, 39),
	(30, 7),
	(30, 8),
	(30, 22),
	(30, 10),
	(31, 74),
	(31, 80),
	(31, 15),
	(31, 82),
	(31, 17),
	(31, 83),
	(31, 42),
	(31, 7),
	(31, 78),
	(31, 77),
	(31, 10),
	(32, 1),
	(32, 2),
	(32, 74),
	(32, 110),
	(32, 15),
	(32, 32),
	(32, 111),
	(32, 17),
	(32, 112),
	(32, 7),
	(32, 8),
	(32, 18),
	(32, 12),
	(32, 16),
	(33, 13),
	(33, 74),
	(33, 105),
	(33, 46),
	(33, 81),
	(33, 107),
	(33, 83),
	(33, 108),
	(33, 10),
	(33, 113),
	(34, 74),
	(34, 99),
	(34, 34),
	(34, 18),
	(34, 81),
	(34, 84),
	(34, 7),
	(34, 38),
	(34, 10),
	(34, 35),
	(35, 10),
	(35, 34),
	(35, 100),
	(35, 38),
	(35, 7),
	(35, 8),
	(35, 18),
	(35, 35),
	(35, 45),
	(35, 101),
	(36, 13),
	(36, 74),
	(36, 88),
	(36, 80),
	(36, 15),
	(36, 82),
	(36, 17),
	(36, 7),
	(36, 10),
	(36, 35),
	(36, 16),
	(37, 2),
	(37, 114),
	(37, 32),
	(37, 41),
	(37, 21),
	(37, 98),
	(37, 7),
	(37, 8),
	(37, 18),
	(37, 24),
	(37, 25),
	(38, 1),
	(38, 109),
	(38, 22),
	(38, 21),
	(38, 29),
	(38, 7),
	(38, 8),
	(38, 39),
	(38, 24),
	(39, 115),
	(39, 116),
	(39, 15),
	(39, 66),
	(39, 117),
	(39, 86),
	(39, 118),
	(39, 60),
	(39, 119),
	(39, 18),
	(39, 67),
	(39, 120),
	(39, 121),
	(40, 52),
	(40, 21),
	(40, 42),
	(40, 7),
	(40, 23),
	(40, 22),
	(40, 8),
	(40, 24),
	(40, 25),
	(40, 26),
	(41, 10),
	(41, 88),
	(41, 34),
	(41, 38),
	(41, 7),
	(41, 8),
	(41, 18),
	(41, 51),
	(41, 35),
	(41, 45),
	(42, 13),
	(42, 74),
	(42, 105),
	(42, 46),
	(42, 81),
	(42, 107),
	(42, 83),
	(42, 108),
	(42, 10),
	(42, 113),
	(43, 13),
	(43, 74),
	(43, 90),
	(43, 105),
	(43, 46),
	(43, 36),
	(43, 107),
	(43, 108),
	(43, 10),
	(43, 35),
	(44, 1),
	(44, 3),
	(44, 122),
	(44, 43),
	(44, 41),
	(44, 21),
	(44, 7),
	(44, 8),
	(44, 26),
	(44, 24),
	(44, 25),
	(45, 13),
	(45, 1),
	(45, 123),
	(45, 15),
	(45, 17),
	(45, 29),
	(45, 7),
	(45, 23),
	(45, 39),
	(45, 45),
	(46, 35),
	(46, 99),
	(46, 34),
	(46, 82),
	(46, 29),
	(46, 42),
	(46, 8),
	(46, 7),
	(46, 10),
	(46, 84),
	(47, 2),
	(47, 15),
	(47, 70),
	(47, 71),
	(47, 17),
	(47, 72),
	(47, 44),
	(47, 7),
	(47, 8),
	(47, 73),
	(47, 18),
	(47, 45),
	(48, 13),
	(48, 74),
	(48, 124),
	(48, 80),
	(48, 81),
	(48, 107),
	(48, 42),
	(48, 7),
	(48, 125),
	(48, 10),
	(49, 126),
	(49, 48),
	(49, 34),
	(49, 42),
	(49, 7),
	(49, 8),
	(49, 26),
	(49, 10),
	(49, 25),
	(49, 35),
	(49, 127),
	(50, 74),
	(50, 80),
	(50, 81),
	(50, 42),
	(50, 7),
	(50, 78),
	(50, 77),
	(50, 10),
	(50, 108),
	(50, 45),
	(51, 15),
	(51, 128),
	(51, 70),
	(51, 41),
	(51, 21),
	(51, 17),
	(51, 72),
	(51, 98),
	(51, 7),
	(51, 18),
	(51, 24),
	(51, 25),
	(52, 13),
	(52, 74),
	(52, 88),
	(52, 40),
	(52, 129),
	(52, 97),
	(52, 42),
	(52, 7),
	(52, 10),
	(52, 130),
	(52, 35),
	(53, 74),
	(53, 15),
	(53, 27),
	(53, 17),
	(53, 28),
	(53, 42),
	(53, 7),
	(53, 78),
	(53, 77),
	(53, 18),
	(53, 131),
	(54, 2),
	(54, 132),
	(54, 3),
	(54, 15),
	(54, 133),
	(54, 17),
	(54, 72),
	(54, 134),
	(54, 7),
	(54, 8),
	(54, 42),
	(54, 18),
	(54, 135),
	(55, 74),
	(55, 81),
	(55, 18),
	(55, 34),
	(55, 42),
	(55, 7),
	(55, 8),
	(55, 77),
	(55, 10),
	(55, 108),
	(56, 13),
	(56, 74),
	(56, 105),
	(56, 46),
	(56, 81),
	(56, 107),
	(56, 136),
	(56, 7),
	(56, 108),
	(56, 10),
	(57, 137),
	(57, 3),
	(57, 22),
	(57, 41),
	(57, 21),
	(57, 7),
	(57, 8),
	(57, 26),
	(57, 18),
	(57, 24),
	(57, 25),
	(58, 13),
	(58, 109),
	(58, 3),
	(58, 138),
	(58, 15),
	(58, 17),
	(58, 42),
	(58, 7),
	(58, 139),
	(58, 22),
	(58, 140),
	(58, 16),
	(59, 22),
	(59, 15),
	(59, 41),
	(59, 21),
	(59, 17),
	(59, 141),
	(59, 7),
	(59, 26),
	(59, 142),
	(59, 24),
	(59, 25),
	(59, 16),
	(60, 13),
	(60, 74),
	(60, 1),
	(60, 143),
	(60, 90),
	(60, 91),
	(60, 92),
	(60, 144),
	(60, 30),
	(60, 94),
	(60, 7),
	(61, 2),
	(61, 31),
	(61, 32),
	(61, 145),
	(61, 27),
	(61, 28),
	(61, 7),
	(61, 8),
	(61, 47),
	(61, 18),
	(61, 12),
	(62, 48),
	(62, 34),
	(62, 21),
	(62, 42),
	(62, 7),
	(62, 8),
	(62, 26),
	(62, 10),
	(62, 25),
	(62, 35),
	(63, 74),
	(63, 15),
	(63, 146),
	(63, 147),
	(63, 17),
	(63, 97),
	(63, 42),
	(63, 7),
	(63, 10),
	(63, 35),
	(64, 13),
	(64, 1),
	(64, 91),
	(64, 92),
	(64, 21),
	(64, 29),
	(64, 7),
	(65, 1),
	(65, 74),
	(65, 13),
	(65, 90),
	(65, 91),
	(65, 92),
	(65, 29),
	(65, 148),
	(65, 7),
	(65, 8),
	(65, 94),
	(66, 13),
	(66, 74),
	(66, 88),
	(66, 129),
	(66, 149),
	(66, 97),
	(66, 42),
	(66, 7),
	(66, 10),
	(66, 130),
	(66, 35),
	(67, 2),
	(67, 3),
	(67, 150),
	(67, 27),
	(67, 66),
	(67, 57),
	(67, 58),
	(67, 28),
	(67, 60),
	(67, 18),
	(67, 151),
	(67, 61),
	(68, 1),
	(68, 74),
	(68, 27),
	(68, 28),
	(68, 30),
	(68, 7),
	(68, 131),
	(68, 47),
	(68, 18),
	(68, 152),
	(68, 110),
	(69, 24),
	(69, 41),
	(69, 21),
	(69, 7),
	(69, 8),
	(69, 26),
	(69, 23),
	(69, 153),
	(69, 25),
	(69, 154),
	(70, 1),
	(70, 109),
	(70, 7),
	(70, 8),
	(70, 22),
	(71, 33),
	(71, 34),
	(71, 21),
	(71, 82),
	(71, 7),
	(71, 155),
	(71, 10),
	(71, 156),
	(71, 35),
	(71, 45),
	(72, 74),
	(72, 36),
	(72, 34),
	(72, 100),
	(72, 7),
	(72, 8),
	(72, 10),
	(72, 35),
	(72, 45),
	(72, 101),
	(73, 13),
	(73, 25),
	(73, 46),
	(73, 21),
	(73, 107),
	(73, 7),
	(73, 26),
	(73, 10),
	(73, 48),
	(73, 45),
	(74, 25),
	(74, 41),
	(74, 21),
	(74, 29),
	(74, 7),
	(74, 8),
	(74, 26),
	(74, 24),
	(74, 48),
	(74, 45),
	(75, 25),
	(75, 46),
	(75, 21),
	(75, 157),
	(75, 107),
	(75, 7),
	(75, 26),
	(75, 10),
	(75, 158),
	(75, 48),
	(76, 159),
	(76, 160),
	(76, 56),
	(76, 27),
	(76, 57),
	(76, 58),
	(76, 28),
	(76, 29),
	(76, 161),
	(76, 60),
	(76, 162),
	(76, 67),
	(76, 163),
	(77, 2),
	(77, 31),
	(77, 15),
	(77, 32),
	(77, 17),
	(77, 7),
	(77, 8),
	(77, 73),
	(77, 18),
	(77, 164),
	(78, 22),
	(78, 39),
	(78, 41),
	(78, 21),
	(78, 29),
	(78, 7),
	(78, 26),
	(78, 24),
	(78, 25),
	(78, 45),
	(79, 13),
	(79, 74),
	(79, 80),
	(79, 88),
	(79, 81),
	(79, 82),
	(79, 42),
	(79, 7),
	(79, 10),
	(79, 35),
	(79, 45),
	(80, 165),
	(80, 155),
	(80, 33),
	(80, 166),
	(80, 167),
	(80, 168),
	(80, 169),
	(80, 170),
	(80, 7),
	(80, 77),
	(80, 18),
	(81, 1),
	(81, 2),
	(81, 171),
	(81, 31),
	(81, 122),
	(81, 32),
	(81, 7),
	(81, 8),
	(81, 22),
	(81, 18),
	(82, 2),
	(82, 74),
	(82, 31),
	(82, 32),
	(82, 77),
	(82, 42),
	(82, 7),
	(82, 47),
	(82, 18),
	(82, 127),
	(83, 74),
	(83, 2),
	(83, 3),
	(83, 172),
	(83, 18),
	(83, 42),
	(83, 7),
	(83, 9),
	(83, 77),
	(83, 10),
	(83, 8),
	(84, 2),
	(84, 173),
	(84, 174),
	(84, 32),
	(84, 29),
	(84, 7),
	(84, 47),
	(84, 18),
	(84, 48),
	(84, 45),
	(85, 24),
	(85, 22),
	(85, 41),
	(85, 21),
	(85, 7),
	(85, 8),
	(85, 26),
	(85, 153),
	(85, 25),
	(85, 154),
	(87, 13),
	(87, 174),
	(87, 15),
	(87, 70),
	(87, 21),
	(87, 17),
	(87, 72),
	(87, 29),
	(87, 7),
	(87, 23),
	(87, 45),
	(88, 2),
	(88, 31),
	(88, 3),
	(88, 43),
	(88, 72),
	(88, 86),
	(88, 7),
	(88, 8),
	(88, 73),
	(88, 18),
	(88, 175),
	(88, 12),
	(89, 74),
	(89, 80),
	(89, 81),
	(89, 42),
	(89, 7),
	(89, 108),
	(89, 77),
	(89, 10),
	(89, 78),
	(89, 45),
	(90, 1),
	(90, 7),
	(90, 8),
	(90, 22),
	(91, 1),
	(91, 123),
	(91, 91),
	(91, 92),
	(91, 21),
	(91, 29),
	(91, 30),
	(91, 7),
	(91, 23),
	(91, 22),
	(91, 176),
	(91, 177),
	(92, 13),
	(92, 74),
	(92, 105),
	(92, 46),
	(92, 81),
	(92, 107),
	(92, 7),
	(92, 108),
	(92, 136),
	(92, 10),
	(93, 115),
	(93, 3),
	(93, 15),
	(93, 133),
	(93, 178),
	(93, 66),
	(93, 179),
	(93, 117),
	(93, 112),
	(93, 180),
	(93, 60),
	(93, 67),
	(93, 120),
	(93, 16),
	(94, 181),
	(94, 27),
	(95, 74),
	(95, 15),
	(95, 46),
	(95, 21),
	(95, 17),
	(95, 107),
	(95, 7),
	(95, 10),
	(95, 48),
	(95, 45),
	(96, 74),
	(96, 99),
	(96, 82),
	(96, 29),
	(96, 42),
	(96, 7),
	(96, 78),
	(96, 77),
	(96, 10),
	(96, 84),
	(97, 13),
	(97, 105),
	(97, 46),
	(97, 29),
	(97, 107),
	(97, 83),
	(97, 136),
	(97, 108),
	(97, 7),
	(97, 10),
	(98, 13),
	(98, 74),
	(98, 105),
	(98, 182),
	(98, 81),
	(98, 107),
	(98, 108),
	(98, 7),
	(98, 10),
	(98, 183),
	(99, 2),
	(99, 10),
	(99, 88),
	(99, 32),
	(99, 33),
	(99, 129),
	(99, 7),
	(99, 8),
	(99, 18),
	(99, 130),
	(99, 35),
	(100, 21),
	(100, 53),
	(100, 24),
	(100, 7),
	(101, 13),
	(101, 1),
	(101, 74),
	(101, 12),
	(101, 91),
	(101, 92),
	(101, 7),
	(101, 94),
	(101, 10),
	(101, 110),
	(102, 1),
	(102, 13),
	(102, 15),
	(102, 17),
	(102, 29),
	(102, 7),
	(102, 23),
	(102, 39),
	(102, 95),
	(102, 45),
	(103, 184),
	(103, 3),
	(103, 55),
	(103, 185),
	(103, 66),
	(103, 57),
	(103, 58),
	(103, 186),
	(103, 118),
	(103, 187),
	(103, 60),
	(103, 39),
	(103, 61),
	(104, 13),
	(104, 74),
	(104, 1),
	(104, 90),
	(104, 91),
	(104, 92),
	(104, 97),
	(104, 188),
	(104, 30),
	(104, 7),
	(104, 189),
	(105, 74),
	(105, 15),
	(105, 190),
	(105, 27),
	(105, 17),
	(105, 28),
	(105, 7),
	(105, 8),
	(105, 77),
	(105, 18),
	(105, 16),
	(106, 74),
	(106, 34),
	(106, 18),
	(106, 42),
	(106, 7),
	(106, 78),
	(106, 77),
	(106, 10),
	(106, 35),
	(106, 45),
	(107, 74),
	(107, 191),
	(107, 15),
	(107, 27),
	(107, 17),
	(107, 192),
	(107, 28),
	(107, 7),
	(107, 78),
	(107, 77),
	(107, 18),
	(108, 13),
	(108, 94),
	(108, 1),
	(109, 25),
	(109, 149),
	(109, 21),
	(109, 29),
	(109, 42),
	(109, 7),
	(109, 26),
	(109, 10),
	(109, 48),
	(109, 45),
	(110, 190),
	(110, 193),
	(110, 15),
	(110, 194),
	(110, 66),
	(110, 57),
	(110, 58),
	(110, 72),
	(110, 60),
	(110, 18),
	(110, 61),
	(110, 16),
	(111, 2),
	(111, 103),
	(111, 31),
	(111, 195),
	(111, 32),
	(111, 27),
	(111, 28),
	(111, 196),
	(111, 7),
	(111, 22),
	(111, 18),
	(112, 197),
	(112, 74),
	(112, 25),
	(112, 165),
	(112, 46),
	(112, 166),
	(112, 167),
	(112, 21),
	(112, 7),
	(112, 10),
	(112, 48),
	(113, 13),
	(113, 74),
	(113, 105),
	(113, 46),
	(113, 81),
	(113, 107),
	(113, 7),
	(113, 108),
	(113, 136),
	(113, 10),
	(114, 2),
	(114, 174),
	(114, 116),
	(114, 32),
	(114, 21),
	(114, 118),
	(114, 7),
	(114, 152),
	(114, 47),
	(114, 18),
	(114, 48),
	(115, 13),
	(115, 74),
	(115, 80),
	(115, 15),
	(115, 82),
	(115, 17),
	(115, 83),
	(115, 42),
	(115, 7),
	(115, 10),
	(115, 45),
	(116, 13),
	(116, 198),
	(116, 199),
	(116, 200),
	(116, 201),
	(116, 86),
	(116, 60),
	(116, 202),
	(116, 53),
	(116, 203),
	(116, 204),
	(117, 2),
	(117, 3),
	(117, 43),
	(117, 70),
	(117, 66),
	(117, 57),
	(117, 58),
	(117, 72),
	(117, 188),
	(117, 60),
	(117, 18),
	(117, 61),
	(118, 13),
	(118, 15),
	(118, 205),
	(118, 70),
	(118, 17),
	(118, 72),
	(118, 42),
	(118, 7),
	(118, 8),
	(118, 18),
	(118, 206),
	(118, 177),
	(119, 74),
	(119, 15),
	(119, 190),
	(119, 21),
	(119, 17),
	(119, 97),
	(119, 42),
	(119, 7),
	(119, 45),
	(119, 16),
	(120, 2),
	(120, 3),
	(120, 15),
	(120, 207),
	(120, 17),
	(120, 42),
	(120, 7),
	(120, 8),
	(120, 4),
	(120, 18),
	(120, 6),
	(120, 25),
	(121, 10),
	(121, 208),
	(121, 33),
	(121, 209),
	(121, 192),
	(121, 152),
	(121, 7),
	(121, 77),
	(121, 18),
	(121, 127),
	(122, 34),
	(122, 41),
	(122, 21),
	(122, 29),
	(122, 7),
	(122, 26),
	(122, 10),
	(122, 25),
	(122, 35),
	(122, 45),
	(123, 1),
	(123, 2),
	(123, 70),
	(123, 20),
	(123, 48),
	(123, 21),
	(123, 72),
	(123, 7),
	(123, 8),
	(123, 25),
	(123, 35),
	(124, 2),
	(124, 210),
	(124, 15),
	(124, 199),
	(124, 211),
	(124, 17),
	(124, 86),
	(124, 134),
	(124, 7),
	(124, 8),
	(124, 37),
	(124, 135),
	(125, 13),
	(125, 2),
	(125, 212),
	(125, 3),
	(125, 15),
	(125, 17),
	(125, 72),
	(125, 7),
	(125, 8),
	(125, 9),
	(125, 18),
	(125, 12),
	(125, 213),
	(126, 74),
	(126, 88),
	(126, 80),
	(126, 129),
	(126, 214),
	(126, 97),
	(126, 107),
	(126, 7),
	(126, 10),
	(126, 130),
	(126, 35),
	(127, 74),
	(127, 2),
	(127, 15),
	(127, 17),
	(127, 29),
	(127, 44),
	(127, 7),
	(127, 23),
	(127, 39),
	(127, 8),
	(127, 110),
	(127, 45),
	(128, 74),
	(128, 88),
	(128, 18),
	(128, 42),
	(128, 7),
	(128, 78),
	(128, 77),
	(128, 10),
	(128, 35),
	(128, 45),
	(129, 74),
	(129, 33),
	(129, 34),
	(129, 81),
	(129, 42),
	(129, 7),
	(129, 155),
	(129, 10),
	(129, 35),
	(129, 45),
	(130, 1),
	(130, 2),
	(130, 70),
	(130, 21),
	(130, 72),
	(130, 7),
	(130, 8),
	(130, 39),
	(130, 23),
	(130, 12),
	(130, 45),
	(131, 70),
	(131, 41),
	(131, 21),
	(131, 72),
	(131, 29),
	(131, 98),
	(131, 7),
	(131, 18),
	(131, 24),
	(131, 25),
	(131, 45),
	(132, 13),
	(132, 105),
	(132, 46),
	(132, 29),
	(132, 107),
	(132, 136),
	(132, 108),
	(132, 7),
	(132, 10),
	(132, 23),
	(132, 93),
	(133, 13),
	(133, 74),
	(133, 105),
	(133, 80),
	(133, 46),
	(133, 81),
	(133, 107),
	(133, 7),
	(133, 108),
	(133, 10),
	(134, 13),
	(134, 74),
	(134, 80),
	(134, 15),
	(134, 81),
	(134, 17),
	(134, 97),
	(134, 107),
	(134, 7),
	(134, 10),
	(135, 13),
	(135, 105),
	(135, 46),
	(135, 81),
	(135, 29),
	(135, 107),
	(135, 108),
	(135, 136),
	(135, 7),
	(135, 10),
	(136, 13),
	(136, 74),
	(136, 15),
	(136, 190),
	(136, 149),
	(136, 17),
	(136, 97),
	(136, 42),
	(136, 7),
	(136, 45),
	(136, 16),
	(137, 13),
	(137, 74),
	(137, 124),
	(137, 80),
	(137, 15),
	(137, 81),
	(137, 17),
	(137, 7),
	(137, 125),
	(137, 10),
	(138, 13),
	(138, 74),
	(138, 1),
	(138, 89),
	(138, 90),
	(138, 181),
	(138, 27),
	(138, 29),
	(138, 7),
	(138, 94),
	(138, 45),
	(139, 2),
	(139, 63),
	(139, 10),
	(139, 215),
	(139, 86),
	(139, 44),
	(139, 7),
	(139, 8),
	(139, 216),
	(139, 18),
	(139, 35),
	(140, 1),
	(140, 109),
	(140, 22),
	(140, 39),
	(140, 20),
	(140, 21),
	(140, 7),
	(140, 8),
	(140, 26),
	(140, 25),
	(141, 74),
	(141, 109),
	(141, 99),
	(141, 81),
	(141, 82),
	(141, 29),
	(141, 42),
	(141, 7),
	(141, 10),
	(141, 45),
	(142, 13),
	(142, 74),
	(142, 1),
	(142, 143),
	(142, 91),
	(142, 92),
	(142, 144),
	(142, 30),
	(142, 7),
	(142, 94),
	(142, 189),
	(143, 74),
	(143, 80),
	(143, 81),
	(143, 83),
	(143, 42),
	(143, 78),
	(143, 7),
	(143, 77),
	(143, 10),
	(143, 108),
	(144, 1),
	(144, 74),
	(144, 13),
	(144, 91),
	(144, 92),
	(144, 97),
	(144, 30),
	(144, 7),
	(144, 22),
	(144, 217),
	(144, 189),
	(145, 74),
	(145, 81),
	(145, 34),
	(145, 29),
	(145, 42),
	(145, 108),
	(145, 7),
	(145, 23),
	(145, 10),
	(145, 45),
	(146, 13),
	(146, 106),
	(146, 105),
	(146, 182),
	(146, 218),
	(146, 107),
	(146, 108),
	(146, 136),
	(146, 7),
	(146, 10),
	(146, 183),
	(147, 219),
	(147, 48),
	(147, 41),
	(147, 21),
	(147, 7),
	(147, 8),
	(147, 26),
	(147, 24),
	(147, 25),
	(147, 35),
	(148, 10),
	(148, 34),
	(148, 220),
	(148, 100),
	(148, 42),
	(148, 7),
	(148, 18),
	(148, 35),
	(148, 45),
	(148, 101),
	(149, 13),
	(149, 74),
	(149, 124),
	(149, 80),
	(149, 15),
	(149, 17),
	(149, 97),
	(149, 42),
	(149, 7),
	(149, 125),
	(149, 10),
	(150, 13),
	(150, 74),
	(150, 1),
	(150, 90),
	(150, 54),
	(150, 56),
	(150, 144),
	(150, 30),
	(150, 7),
	(150, 94),
	(150, 20),
	(151, 174),
	(151, 46),
	(151, 15),
	(151, 17),
	(151, 29),
	(151, 107),
	(151, 136),
	(151, 7),
	(151, 108),
	(151, 10),
	(151, 48),
	(152, 74),
	(152, 80),
	(152, 81),
	(152, 34),
	(152, 82),
	(152, 97),
	(152, 42),
	(152, 7),
	(152, 77),
	(152, 10),
	(153, 3),
	(153, 15),
	(153, 43),
	(153, 190),
	(153, 193),
	(153, 17),
	(153, 7),
	(153, 8),
	(153, 39),
	(153, 18),
	(153, 16),
	(154, 1),
	(154, 74),
	(154, 13),
	(154, 54),
	(154, 56),
	(154, 221),
	(154, 97),
	(154, 30),
	(154, 7),
	(154, 152),
	(154, 222),
	(154, 177),
	(155, 2),
	(155, 103),
	(155, 223),
	(155, 31),
	(155, 15),
	(155, 17),
	(155, 72),
	(155, 7),
	(155, 8),
	(155, 18),
	(155, 16),
	(156, 224),
	(156, 3),
	(156, 88),
	(156, 129),
	(156, 34),
	(156, 38),
	(156, 7),
	(156, 10),
	(156, 130),
	(156, 35),
	(156, 45),
	(157, 13),
	(157, 1),
	(157, 225),
	(157, 90),
	(157, 226),
	(157, 21),
	(157, 93),
	(157, 7),
	(157, 94),
	(157, 26),
	(157, 23),
	(157, 24),
	(158, 123),
	(158, 227),
	(158, 89),
	(158, 228),
	(158, 208),
	(158, 10),
	(158, 7),
	(158, 77),
	(158, 18),
	(158, 127),
	(159, 229),
	(159, 2),
	(159, 3),
	(159, 116),
	(159, 33),
	(159, 72),
	(159, 118),
	(159, 86),
	(159, 7),
	(159, 230),
	(159, 18),
	(159, 67),
	(159, 231),
	(160, 57),
	(160, 58),
	(161, 1),
	(161, 2),
	(161, 212),
	(161, 3),
	(161, 21),
	(161, 72),
	(161, 7),
	(161, 8),
	(161, 18),
	(161, 24),
	(161, 12),
	(161, 213),
	(162, 13),
	(162, 89),
	(162, 3),
	(162, 49),
	(162, 15),
	(162, 190),
	(162, 16),
	(162, 17),
	(162, 29),
	(162, 7),
	(162, 19),
	(163, 13),
	(163, 232),
	(163, 99),
	(163, 81),
	(163, 34),
	(163, 82),
	(163, 29),
	(163, 107),
	(163, 7),
	(163, 10),
	(164, 198),
	(164, 233),
	(164, 234),
	(164, 33),
	(164, 70),
	(164, 29),
	(164, 118),
	(164, 72),
	(164, 202),
	(164, 60),
	(164, 235),
	(164, 236),
	(165, 2),
	(165, 15),
	(165, 70),
	(165, 27),
	(165, 71),
	(165, 17),
	(165, 72),
	(165, 28),
	(165, 44),
	(165, 7),
	(165, 8),
	(165, 73),
	(165, 18),
	(166, 3),
	(166, 55),
	(166, 133),
	(166, 66),
	(166, 179),
	(166, 57),
	(166, 58),
	(166, 188),
	(166, 60),
	(166, 237),
	(166, 18),
	(166, 61),
	(167, 74),
	(167, 33),
	(167, 21),
	(167, 192),
	(167, 42),
	(167, 78),
	(167, 7),
	(167, 77),
	(167, 10),
	(167, 45),
	(168, 2),
	(168, 66),
	(168, 72),
	(168, 86),
	(168, 37),
	(168, 60),
	(168, 44),
	(168, 18),
	(168, 53),
	(168, 238),
	(168, 104),
	(169, 198),
	(169, 239),
	(169, 200),
	(169, 240),
	(169, 241),
	(169, 242),
	(169, 243),
	(169, 161),
	(169, 60),
	(169, 140),
	(169, 45),
	(170, 13),
	(170, 74),
	(170, 88),
	(170, 244),
	(170, 129),
	(170, 107),
	(170, 7),
	(170, 10),
	(170, 130),
	(170, 48),
	(170, 35),
	(171, 13),
	(171, 106),
	(171, 15),
	(171, 147),
	(171, 17),
	(171, 218),
	(171, 107),
	(171, 136),
	(171, 108),
	(171, 7),
	(171, 10),
	(171, 35),
	(172, 2),
	(172, 88),
	(172, 10),
	(172, 70),
	(172, 245),
	(172, 72),
	(172, 86),
	(172, 7),
	(172, 8),
	(172, 18),
	(172, 35),
	(173, 2),
	(173, 246),
	(173, 10),
	(173, 195),
	(173, 27),
	(173, 28),
	(173, 83),
	(173, 196),
	(173, 7),
	(173, 131),
	(173, 22),
	(173, 18),
	(174, 13),
	(174, 247),
	(174, 1),
	(174, 25),
	(174, 22),
	(174, 23),
	(174, 26),
	(174, 248),
	(174, 93),
	(174, 20),
	(175, 56),
	(175, 66),
	(175, 72),
	(175, 86),
	(175, 60),
	(175, 161),
	(175, 18),
	(175, 67),
	(175, 238),
	(175, 121),
	(175, 104),
	(176, 13),
	(176, 74),
	(176, 88),
	(176, 80),
	(176, 81),
	(176, 82),
	(176, 107),
	(176, 7),
	(176, 10),
	(176, 35),
	(177, 249),
	(177, 2),
	(177, 1),
	(177, 174),
	(177, 32),
	(177, 111),
	(177, 7),
	(177, 8),
	(177, 18),
	(177, 12),
	(178, 13),
	(178, 74),
	(178, 15),
	(178, 17),
	(178, 107),
	(178, 7),
	(178, 108),
	(178, 10),
	(178, 51),
	(178, 35),
	(179, 25),
	(179, 46),
	(179, 21),
	(179, 29),
	(179, 107),
	(179, 7),
	(179, 26),
	(179, 10),
	(179, 48),
	(179, 45),
	(180, 1),
	(180, 74),
	(180, 7),
	(180, 8),
	(180, 22),
	(180, 10),
	(180, 35),
	(181, 19),
	(181, 3),
	(181, 190),
	(181, 15),
	(181, 66),
	(181, 57),
	(181, 58),
	(181, 60),
	(181, 250),
	(181, 61),
	(181, 16),
	(182, 74),
	(182, 99),
	(182, 15),
	(182, 34),
	(182, 82),
	(182, 17),
	(182, 42),
	(182, 7),
	(182, 78),
	(182, 77),
	(182, 10),
	(183, 13),
	(183, 74),
	(183, 40),
	(183, 36),
	(183, 97),
	(183, 107),
	(183, 42),
	(183, 7),
	(183, 10),
	(183, 35),
	(184, 198),
	(184, 251),
	(184, 200),
	(184, 252),
	(184, 253),
	(184, 60),
	(184, 140),
	(184, 53),
	(184, 254),
	(184, 255),
	(184, 256),
	(185, 13),
	(185, 74),
	(185, 105),
	(185, 46),
	(185, 97),
	(185, 107),
	(185, 136),
	(185, 108),
	(185, 7),
	(185, 10),
	(186, 2),
	(186, 32),
	(186, 56),
	(186, 86),
	(186, 7),
	(186, 8),
	(186, 161),
	(186, 18),
	(186, 67),
	(187, 1),
	(187, 52),
	(187, 41),
	(187, 21),
	(187, 29),
	(187, 7),
	(187, 26),
	(187, 24),
	(187, 25),
	(187, 45),
	(188, 13),
	(188, 74),
	(188, 88),
	(188, 46),
	(188, 107),
	(188, 42),
	(188, 7),
	(188, 10),
	(188, 35),
	(188, 45),
	(189, 1),
	(189, 74),
	(189, 109),
	(189, 88),
	(189, 42),
	(189, 7),
	(189, 8),
	(189, 22),
	(189, 10),
	(189, 35),
	(190, 13),
	(190, 74),
	(190, 46),
	(190, 257),
	(190, 81),
	(190, 107),
	(190, 136),
	(190, 258),
	(190, 108),
	(190, 10),
	(191, 1),
	(191, 2),
	(191, 15),
	(191, 259),
	(191, 17),
	(191, 7),
	(191, 8),
	(191, 39),
	(191, 23),
	(191, 12),
	(192, 13),
	(192, 2),
	(192, 31),
	(192, 3),
	(192, 122),
	(192, 10),
	(192, 43),
	(192, 72),
	(192, 7),
	(192, 8),
	(192, 18),
	(192, 175),
	(193, 13),
	(193, 74),
	(193, 105),
	(193, 80),
	(193, 46),
	(193, 81),
	(193, 107),
	(193, 7),
	(193, 108),
	(193, 10),
	(194, 13),
	(194, 15),
	(194, 190),
	(194, 193),
	(194, 17),
	(194, 29),
	(194, 7),
	(194, 23),
	(194, 45),
	(194, 16),
	(195, 74),
	(195, 80),
	(195, 81),
	(195, 34),
	(195, 82),
	(195, 97),
	(195, 42),
	(195, 7),
	(195, 10),
	(195, 45),
	(196, 13),
	(196, 74),
	(196, 1),
	(196, 143),
	(196, 91),
	(196, 92),
	(196, 144),
	(196, 30),
	(196, 7),
	(196, 189),
	(196, 45),
	(197, 3),
	(197, 150),
	(197, 15),
	(197, 32),
	(197, 111),
	(197, 17),
	(197, 29),
	(197, 7),
	(197, 23),
	(197, 39),
	(197, 8),
	(197, 45),
	(198, 74),
	(198, 47),
	(198, 83),
	(198, 42),
	(198, 78),
	(198, 7),
	(198, 77),
	(198, 10),
	(198, 108),
	(198, 113),
	(199, 1),
	(199, 2),
	(199, 32),
	(199, 260),
	(199, 118),
	(199, 188),
	(199, 7),
	(199, 8),
	(199, 22),
	(199, 18),
	(199, 25),
	(200, 13),
	(200, 1),
	(200, 247),
	(200, 90),
	(200, 29),
	(200, 94),
	(200, 23),
	(200, 7),
	(200, 248),
	(200, 93),
	(201, 1),
	(201, 109),
	(201, 21),
	(201, 7),
	(201, 8),
	(201, 22),
	(202, 2),
	(202, 15),
	(202, 195),
	(202, 27),
	(202, 17),
	(202, 28),
	(202, 196),
	(202, 7),
	(202, 152),
	(202, 22),
	(202, 18),
	(203, 13),
	(203, 2),
	(203, 49),
	(203, 15),
	(203, 205),
	(203, 70),
	(203, 17),
	(203, 72),
	(203, 7),
	(203, 18),
	(203, 261),
	(203, 45),
	(204, 13),
	(204, 74),
	(204, 105),
	(204, 46),
	(204, 97),
	(204, 107),
	(204, 136),
	(204, 108),
	(204, 7),
	(204, 10),
	(205, 13),
	(205, 74),
	(205, 124),
	(205, 90),
	(205, 81),
	(205, 82),
	(205, 29),
	(205, 7),
	(205, 125),
	(205, 10),
	(206, 13),
	(206, 74),
	(206, 1),
	(206, 90),
	(206, 54),
	(206, 56),
	(206, 91),
	(206, 92),
	(206, 144),
	(206, 94),
	(206, 7),
	(206, 22),
	(207, 262),
	(207, 33),
	(207, 34),
	(207, 263),
	(207, 86),
	(207, 264),
	(207, 7),
	(207, 8),
	(207, 10),
	(207, 67),
	(207, 35),
	(208, 115),
	(208, 190),
	(208, 15),
	(208, 66),
	(208, 120),
	(208, 117),
	(208, 112),
	(208, 60),
	(208, 180),
	(208, 61),
	(208, 45),
	(208, 16),
	(209, 265),
	(209, 2),
	(209, 266),
	(209, 103),
	(209, 3),
	(209, 15),
	(209, 267),
	(209, 21),
	(209, 17),
	(209, 6),
	(209, 7),
	(209, 8),
	(210, 1),
	(210, 109),
	(210, 7),
	(210, 8),
	(210, 22),
	(211, 13),
	(211, 74),
	(211, 88),
	(211, 129),
	(211, 97),
	(211, 42),
	(211, 7),
	(211, 10),
	(211, 130),
	(211, 35),
	(211, 45),
	(212, 268),
	(212, 2),
	(212, 3),
	(212, 15),
	(212, 43),
	(212, 205),
	(212, 66),
	(212, 269),
	(212, 60),
	(212, 270),
	(212, 261),
	(212, 45),
	(213, 13),
	(213, 105),
	(213, 46),
	(213, 29),
	(213, 107),
	(213, 83),
	(213, 108),
	(213, 258),
	(213, 7),
	(213, 10),
	(214, 271),
	(214, 219),
	(214, 55),
	(214, 3),
	(214, 43),
	(214, 57),
	(214, 58),
	(214, 60),
	(214, 18),
	(214, 61),
	(214, 206),
	(214, 177),
	(215, 13),
	(215, 1),
	(215, 247),
	(215, 90),
	(215, 33),
	(215, 91),
	(215, 92),
	(215, 29),
	(215, 94),
	(215, 23),
	(215, 7),
	(215, 93),
	(216, 254),
	(216, 55),
	(216, 63),
	(216, 66),
	(216, 57),
	(216, 58),
	(216, 272),
	(216, 60),
	(216, 140),
	(216, 61),
	(216, 45),
	(217, 2),
	(217, 10),
	(217, 195),
	(217, 27),
	(217, 28),
	(217, 83),
	(217, 196),
	(217, 7),
	(217, 152),
	(217, 22),
	(217, 18),
	(217, 131),
	(218, 13),
	(218, 105),
	(218, 106),
	(218, 81),
	(218, 29),
	(218, 107),
	(218, 108),
	(218, 136),
	(218, 7),
	(218, 10),
	(219, 1),
	(219, 109),
	(219, 7),
	(219, 8),
	(219, 22),
	(220, 40),
	(220, 15),
	(220, 21),
	(220, 141),
	(220, 17),
	(220, 112),
	(220, 42),
	(220, 7),
	(220, 26),
	(220, 142),
	(220, 25),
	(220, 16),
	(221, 3),
	(221, 15),
	(221, 17),
	(221, 29),
	(221, 7),
	(221, 8),
	(221, 39),
	(221, 23),
	(221, 12),
	(221, 45),
	(221, 19),
	(222, 13),
	(222, 74),
	(222, 88),
	(222, 46),
	(222, 129),
	(222, 273),
	(222, 107),
	(222, 108),
	(222, 7),
	(222, 10),
	(222, 130),
	(222, 35),
	(223, 13),
	(223, 74),
	(223, 1),
	(223, 91),
	(223, 92),
	(223, 144),
	(223, 97),
	(223, 30),
	(223, 7),
	(223, 94),
	(223, 189),
	(224, 1),
	(224, 2),
	(224, 25),
	(224, 32),
	(224, 21),
	(224, 29),
	(224, 7),
	(224, 8),
	(224, 26),
	(224, 23),
	(224, 48),
	(225, 22),
	(225, 48),
	(225, 41),
	(225, 21),
	(225, 98),
	(225, 7),
	(225, 8),
	(225, 26),
	(225, 24),
	(225, 25),
	(226, 13),
	(226, 74),
	(226, 105),
	(226, 46),
	(226, 107),
	(226, 157),
	(226, 136),
	(226, 108),
	(226, 7),
	(226, 10),
	(227, 1),
	(227, 2),
	(227, 212),
	(227, 31),
	(227, 3),
	(227, 199),
	(227, 72),
	(227, 7),
	(227, 8),
	(227, 274),
	(227, 12),
	(227, 213),
	(228, 63),
	(228, 275),
	(228, 56),
	(228, 27),
	(228, 66),
	(228, 276),
	(228, 28),
	(228, 60),
	(228, 140),
	(228, 67),
	(228, 277),
	(228, 177),
	(229, 74),
	(229, 88),
	(229, 129),
	(229, 34),
	(229, 38),
	(229, 7),
	(229, 10),
	(229, 130),
	(229, 35),
	(229, 45),
	(230, 13),
	(230, 74),
	(230, 105),
	(230, 106),
	(230, 46),
	(230, 81),
	(230, 107),
	(230, 108),
	(230, 10),
	(230, 84),
	(231, 2),
	(231, 210),
	(231, 15),
	(231, 199),
	(231, 211),
	(231, 17),
	(231, 134),
	(231, 7),
	(231, 8),
	(231, 22),
	(231, 18),
	(231, 135),
	(232, 1),
	(232, 2),
	(232, 210),
	(232, 3),
	(232, 15),
	(232, 133),
	(232, 278),
	(232, 279),
	(232, 17),
	(232, 7),
	(232, 8),
	(232, 12),
	(232, 16),
	(233, 1),
	(233, 74),
	(233, 90),
	(233, 81),
	(233, 34),
	(233, 29),
	(233, 42),
	(233, 7),
	(233, 8),
	(233, 10),
	(234, 1),
	(234, 2),
	(234, 13),
	(234, 29),
	(234, 30),
	(234, 7),
	(234, 23),
	(234, 8),
	(234, 187),
	(234, 12),
	(235, 13),
	(235, 74),
	(235, 35),
	(235, 34),
	(235, 82),
	(235, 42),
	(235, 7),
	(235, 10),
	(235, 51),
	(235, 84),
	(236, 229),
	(236, 2),
	(236, 103),
	(236, 31),
	(236, 3),
	(236, 72),
	(236, 230),
	(236, 44),
	(236, 152),
	(236, 7),
	(236, 73),
	(236, 18),
	(237, 280),
	(237, 281),
	(237, 282),
	(237, 61),
	(237, 57),
	(237, 58),
	(237, 276),
	(237, 60),
	(237, 68),
	(237, 277),
	(237, 69),
	(237, 45),
	(237, 177),
	(238, 1),
	(238, 22),
	(238, 234),
	(238, 283),
	(238, 7),
	(238, 8),
	(238, 39),
	(239, 2),
	(239, 284),
	(239, 285),
	(239, 3),
	(239, 15),
	(239, 66),
	(239, 17),
	(239, 286),
	(239, 37),
	(239, 7),
	(239, 8),
	(239, 18),
	(239, 287),
	(240, 13),
	(240, 74),
	(240, 80),
	(240, 182),
	(240, 81),
	(240, 107),
	(240, 7),
	(240, 108),
	(240, 10),
	(240, 45),
	(240, 183),
	(241, 2),
	(241, 15),
	(241, 190),
	(241, 193),
	(241, 17),
	(241, 112),
	(241, 7),
	(241, 18),
	(241, 287),
	(241, 45),
	(241, 16),
	(242, 3),
	(242, 150),
	(242, 15),
	(242, 34),
	(242, 18),
	(242, 17),
	(242, 7),
	(242, 10),
	(242, 151),
	(242, 51),
	(242, 35),
	(243, 13),
	(243, 74),
	(243, 88),
	(243, 80),
	(243, 91),
	(243, 92),
	(243, 97),
	(243, 7),
	(243, 10),
	(243, 35),
	(243, 45),
	(244, 74),
	(244, 3),
	(244, 133),
	(244, 33),
	(244, 81),
	(244, 97),
	(244, 83),
	(244, 42),
	(244, 78),
	(244, 77),
	(244, 10),
	(245, 13),
	(245, 74),
	(245, 105),
	(245, 46),
	(245, 97),
	(245, 107),
	(245, 136),
	(245, 108),
	(245, 7),
	(245, 10),
	(246, 13),
	(246, 74),
	(246, 105),
	(246, 46),
	(246, 81),
	(246, 107),
	(246, 136),
	(246, 108),
	(246, 7),
	(246, 10),
	(247, 13),
	(247, 1),
	(247, 91),
	(247, 92),
	(247, 29),
	(247, 30),
	(247, 7),
	(247, 23),
	(247, 39),
	(247, 8),
	(247, 45),
	(248, 13),
	(248, 105),
	(248, 33),
	(248, 107),
	(248, 108),
	(248, 10),
	(249, 13),
	(249, 2),
	(249, 31),
	(249, 15),
	(249, 32),
	(249, 17),
	(249, 7),
	(249, 8),
	(249, 73),
	(249, 18),
	(249, 12),
	(250, 13),
	(250, 74),
	(250, 105),
	(250, 46),
	(250, 97),
	(250, 107),
	(250, 136),
	(250, 108),
	(250, 7),
	(250, 10),
	(251, 13),
	(251, 105),
	(251, 106),
	(251, 46),
	(251, 21),
	(251, 218),
	(251, 107),
	(251, 108),
	(251, 136),
	(251, 7),
	(251, 10),
	(252, 88),
	(252, 129),
	(252, 7),
	(252, 130),
	(252, 12),
	(252, 35),
	(253, 249),
	(253, 2),
	(253, 31),
	(253, 174),
	(253, 32),
	(253, 111),
	(253, 7),
	(253, 47),
	(253, 18),
	(253, 12),
	(254, 10),
	(254, 88),
	(254, 129),
	(254, 107),
	(254, 7),
	(254, 136),
	(254, 18),
	(254, 130),
	(254, 48),
	(254, 35),
	(254, 45),
	(255, 259),
	(255, 41),
	(255, 21),
	(255, 7),
	(255, 26),
	(255, 24),
	(255, 25),
	(256, 13),
	(256, 15),
	(256, 41),
	(256, 21),
	(256, 17),
	(256, 42),
	(256, 7),
	(256, 26),
	(256, 10),
	(256, 25),
	(257, 13),
	(257, 1),
	(257, 15),
	(257, 91),
	(257, 92),
	(257, 17),
	(257, 29),
	(257, 7),
	(257, 23),
	(257, 22),
	(257, 45),
	(258, 13),
	(258, 74),
	(258, 105),
	(258, 106),
	(258, 46),
	(258, 257),
	(258, 81),
	(258, 218),
	(258, 107),
	(258, 136),
	(258, 10),
	(259, 13),
	(259, 74),
	(259, 105),
	(259, 106),
	(259, 46),
	(259, 218),
	(259, 107),
	(259, 136),
	(259, 108),
	(259, 10),
	(259, 183),
	(260, 219),
	(260, 55),
	(260, 63),
	(260, 45),
	(260, 57),
	(260, 58),
	(260, 86),
	(260, 60),
	(260, 61),
	(260, 206),
	(260, 177),
	(261, 198),
	(261, 288),
	(261, 289),
	(261, 290),
	(261, 283),
	(261, 291),
	(261, 85),
	(261, 37),
	(261, 60),
	(261, 292),
	(262, 2),
	(262, 109),
	(262, 10),
	(262, 27),
	(262, 28),
	(262, 83),
	(262, 37),
	(262, 7),
	(262, 152),
	(262, 293),
	(262, 18),
	(263, 3),
	(263, 55),
	(263, 133),
	(263, 151),
	(263, 66),
	(263, 294),
	(263, 57),
	(263, 58),
	(263, 60),
	(263, 67),
	(263, 61),
	(263, 295),
	(264, 1),
	(264, 109),
	(264, 15),
	(264, 17),
	(264, 7),
	(264, 8),
	(265, 13),
	(265, 22),
	(265, 15),
	(265, 41),
	(265, 21),
	(265, 17),
	(265, 7),
	(265, 8),
	(265, 26),
	(265, 24),
	(265, 25),
	(266, 13),
	(266, 74),
	(266, 99),
	(266, 80),
	(266, 81),
	(266, 82),
	(266, 42),
	(266, 7),
	(266, 77),
	(266, 10),
	(267, 1),
	(267, 109),
	(267, 7),
	(267, 8),
	(267, 22),
	(268, 13),
	(268, 2),
	(268, 31),
	(268, 70),
	(268, 72),
	(268, 7),
	(268, 8),
	(268, 73),
	(268, 18),
	(268, 96),
	(268, 12),
	(269, 184),
	(269, 55),
	(269, 234),
	(269, 66),
	(269, 57),
	(269, 58),
	(269, 60),
	(269, 67),
	(269, 61),
	(269, 45),
	(270, 25),
	(270, 46),
	(270, 21),
	(270, 107),
	(270, 7),
	(270, 8),
	(270, 26),
	(270, 10),
	(270, 48),
	(270, 35),
	(271, 2),
	(271, 174),
	(271, 32),
	(271, 27),
	(271, 21),
	(271, 28),
	(271, 7),
	(271, 152),
	(271, 47),
	(271, 18),
	(271, 48),
	(272, 1),
	(272, 13),
	(272, 221),
	(272, 29),
	(272, 7),
	(272, 23),
	(272, 39),
	(272, 8),
	(272, 12),
	(272, 45),
	(272, 177),
	(273, 1),
	(273, 109),
	(273, 7),
	(273, 8),
	(273, 22),
	(274, 13),
	(274, 105),
	(274, 46),
	(274, 273),
	(274, 107),
	(274, 29),
	(274, 108),
	(274, 136),
	(274, 7),
	(274, 10),
	(275, 2),
	(275, 22),
	(275, 21),
	(275, 72),
	(275, 86),
	(275, 7),
	(275, 8),
	(275, 26),
	(275, 18),
	(275, 25),
	(275, 104),
	(276, 13),
	(276, 1),
	(276, 74),
	(276, 90),
	(276, 91),
	(276, 149),
	(276, 92),
	(276, 29),
	(276, 42),
	(276, 7),
	(276, 94),
	(277, 88),
	(277, 129),
	(277, 29),
	(277, 7),
	(277, 23),
	(277, 10),
	(277, 130),
	(277, 12),
	(277, 35),
	(277, 45),
	(278, 22),
	(278, 41),
	(278, 21),
	(278, 29),
	(278, 98),
	(278, 7),
	(278, 23),
	(278, 26),
	(278, 24),
	(278, 25),
	(279, 40),
	(279, 21),
	(279, 7),
	(279, 296),
	(279, 24),
	(279, 297),
	(279, 25),
	(280, 74),
	(280, 88),
	(280, 18),
	(280, 97),
	(280, 7),
	(280, 78),
	(280, 77),
	(280, 10),
	(280, 35),
	(280, 45),
	(281, 2),
	(281, 212),
	(281, 3),
	(281, 10),
	(281, 27),
	(281, 28),
	(281, 72),
	(281, 7),
	(281, 8),
	(281, 9),
	(281, 18),
	(281, 274),
	(281, 213),
	(282, 2),
	(282, 31),
	(282, 3),
	(282, 15),
	(282, 133),
	(282, 70),
	(282, 17),
	(282, 72),
	(282, 134),
	(282, 7),
	(282, 8),
	(282, 18),
	(282, 12),
	(282, 135),
	(283, 2),
	(283, 171),
	(283, 31),
	(283, 122),
	(283, 15),
	(283, 32),
	(283, 17),
	(283, 42),
	(283, 7),
	(283, 8),
	(283, 18),
	(284, 1),
	(284, 109),
	(284, 7),
	(284, 8),
	(284, 22),
	(285, 2),
	(285, 3),
	(285, 15),
	(285, 288),
	(285, 298),
	(285, 290),
	(285, 17),
	(285, 86),
	(285, 37),
	(285, 7),
	(285, 8),
	(285, 18),
	(286, 1),
	(286, 109),
	(286, 7),
	(286, 8),
	(286, 22),
	(286, 25),
	(287, 15),
	(287, 205),
	(287, 34),
	(287, 17),
	(287, 38),
	(287, 7),
	(287, 10),
	(287, 51),
	(287, 35),
	(287, 45),
	(288, 3),
	(288, 165),
	(288, 27),
	(288, 66),
	(288, 166),
	(288, 167),
	(288, 58),
	(288, 57),
	(288, 186),
	(288, 168),
	(288, 60),
	(288, 28),
	(288, 61),
	(289, 55),
	(289, 63),
	(289, 222),
	(289, 221),
	(289, 57),
	(289, 58),
	(289, 29),
	(289, 60),
	(289, 18),
	(289, 53),
	(289, 61),
	(289, 177),
	(290, 13),
	(290, 74),
	(290, 99),
	(290, 81),
	(290, 34),
	(290, 82),
	(290, 42),
	(290, 7),
	(290, 77),
	(290, 10),
	(291, 232),
	(291, 25),
	(291, 34),
	(291, 81),
	(291, 7),
	(291, 108),
	(291, 8),
	(291, 10),
	(291, 48),
	(291, 35),
	(292, 13),
	(292, 105),
	(292, 46),
	(292, 29),
	(292, 107),
	(292, 273),
	(292, 108),
	(292, 136),
	(292, 258),
	(292, 10),
	(293, 13),
	(293, 74),
	(293, 88),
	(293, 7),
	(293, 23),
	(293, 10),
	(293, 130),
	(293, 299),
	(293, 48),
	(293, 35),
	(294, 2),
	(294, 171),
	(294, 32),
	(294, 33),
	(294, 145),
	(294, 7),
	(294, 8),
	(294, 18),
	(294, 287),
	(294, 12),
	(295, 13),
	(295, 1),
	(295, 247),
	(295, 54),
	(295, 90),
	(295, 56),
	(295, 29),
	(295, 94),
	(295, 23),
	(295, 248),
	(295, 93),
	(295, 20),
	(296, 25),
	(296, 46),
	(296, 21),
	(296, 29),
	(296, 107),
	(296, 7),
	(296, 26),
	(296, 10),
	(296, 48),
	(296, 45),
	(297, 184),
	(297, 55),
	(297, 33),
	(297, 57),
	(297, 58),
	(297, 29),
	(297, 60),
	(297, 155),
	(297, 61),
	(297, 45),
	(298, 13),
	(298, 109),
	(298, 115),
	(298, 15),
	(298, 300),
	(298, 17),
	(298, 117),
	(298, 29),
	(298, 7),
	(298, 18),
	(298, 301),
	(298, 16),
	(299, 1),
	(299, 109),
	(299, 7),
	(299, 22),
	(300, 1),
	(300, 2),
	(300, 32),
	(300, 21),
	(300, 7),
	(300, 8),
	(300, 22),
	(300, 18),
	(300, 25),
	(300, 26),
	(301, 13),
	(301, 105),
	(301, 46),
	(301, 29),
	(301, 107),
	(301, 136),
	(301, 108),
	(301, 7),
	(301, 10),
	(301, 23),
	(301, 93),
	(302, 1),
	(302, 13),
	(302, 74),
	(302, 90),
	(302, 91),
	(302, 92),
	(302, 29),
	(302, 148),
	(302, 7),
	(302, 8),
	(302, 94),
	(303, 13),
	(303, 74),
	(303, 40),
	(303, 97),
	(303, 273),
	(303, 107),
	(303, 42),
	(303, 7),
	(303, 10),
	(303, 35),
	(304, 74),
	(304, 155),
	(304, 33),
	(304, 34),
	(304, 81),
	(304, 42),
	(304, 7),
	(304, 78),
	(304, 77),
	(304, 10),
	(305, 1),
	(305, 2),
	(305, 171),
	(305, 15),
	(305, 32),
	(305, 145),
	(305, 17),
	(305, 7),
	(305, 8),
	(305, 18),
	(305, 12),
	(306, 10),
	(306, 208),
	(306, 228),
	(306, 47),
	(306, 33),
	(306, 152),
	(306, 7),
	(306, 77),
	(306, 18),
	(306, 127),
	(307, 1),
	(307, 60),
	(308, 13),
	(308, 2),
	(308, 195),
	(308, 155),
	(308, 33),
	(308, 27),
	(308, 28),
	(308, 196),
	(308, 7),
	(308, 152),
	(308, 22),
	(308, 18),
	(309, 13),
	(309, 74),
	(309, 40),
	(309, 97),
	(309, 107),
	(309, 42),
	(309, 7),
	(309, 77),
	(309, 10),
	(309, 35),
	(310, 10),
	(310, 7),
	(310, 78),
	(310, 77),
	(311, 74),
	(311, 18),
	(311, 192),
	(311, 42),
	(311, 7),
	(311, 78),
	(311, 77),
	(311, 10),
	(311, 35),
	(311, 127),
	(312, 13),
	(312, 74),
	(312, 88),
	(312, 302),
	(312, 42),
	(312, 7),
	(312, 47),
	(312, 10),
	(312, 35),
	(312, 45),
	(313, 13),
	(313, 74),
	(313, 99),
	(313, 81),
	(313, 82),
	(313, 42),
	(313, 7),
	(313, 78),
	(313, 77),
	(313, 10),
	(314, 74),
	(314, 88),
	(314, 40),
	(314, 129),
	(314, 97),
	(314, 42),
	(314, 7),
	(314, 10),
	(314, 130),
	(314, 35),
	(314, 45),
	(315, 74),
	(315, 99),
	(315, 34),
	(315, 81),
	(315, 82),
	(315, 29),
	(315, 42),
	(315, 7),
	(315, 10),
	(315, 45),
	(316, 13),
	(316, 106),
	(316, 105),
	(316, 46),
	(316, 218),
	(316, 107),
	(316, 108),
	(316, 136),
	(316, 7),
	(316, 10),
	(317, 13),
	(317, 3),
	(317, 22),
	(317, 15),
	(317, 17),
	(317, 29),
	(317, 7),
	(317, 23),
	(317, 39),
	(317, 303),
	(317, 45),
	(318, 1),
	(318, 2),
	(318, 74),
	(318, 155),
	(318, 33),
	(318, 70),
	(318, 72),
	(318, 29),
	(318, 7),
	(318, 8),
	(318, 23),
	(318, 110),
	(319, 109),
	(319, 99),
	(319, 34),
	(319, 18),
	(319, 82),
	(319, 38),
	(319, 7),
	(319, 108),
	(319, 10),
	(319, 35),
	(320, 74),
	(320, 109),
	(320, 99),
	(320, 34),
	(320, 82),
	(320, 42),
	(320, 7),
	(320, 77),
	(320, 10),
	(320, 45),
	(321, 55),
	(321, 63),
	(321, 33),
	(321, 66),
	(321, 57),
	(321, 58),
	(321, 216),
	(321, 60),
	(321, 61),
	(321, 45),
	(322, 304),
	(322, 63),
	(322, 305),
	(322, 66),
	(322, 86),
	(322, 37),
	(322, 60),
	(322, 216),
	(322, 53),
	(322, 87),
	(323, 1),
	(323, 13),
	(323, 184),
	(323, 3),
	(323, 278),
	(323, 133),
	(323, 279),
	(323, 7),
	(323, 8),
	(323, 151),
	(323, 12),
	(323, 45),
	(324, 1),
	(324, 2),
	(324, 171),
	(324, 32),
	(324, 33),
	(324, 152),
	(324, 7),
	(324, 8),
	(324, 18),
	(324, 25),
	(325, 74),
	(325, 25),
	(325, 34),
	(325, 42),
	(325, 7),
	(325, 77),
	(325, 10),
	(325, 48),
	(325, 84),
	(325, 45),
	(326, 13),
	(326, 74),
	(326, 105),
	(326, 46),
	(326, 244),
	(326, 306),
	(326, 107),
	(326, 108),
	(326, 7),
	(326, 10),
	(326, 48),
	(327, 13),
	(327, 1),
	(327, 3),
	(327, 33),
	(327, 91),
	(327, 92),
	(327, 29),
	(327, 7),
	(327, 23),
	(327, 39),
	(327, 303),
	(327, 45),
	(328, 13),
	(328, 2),
	(328, 15),
	(328, 205),
	(328, 70),
	(328, 307),
	(328, 17),
	(328, 72),
	(328, 7),
	(328, 8),
	(328, 308),
	(328, 16),
	(329, 2),
	(329, 74),
	(329, 124),
	(329, 27),
	(329, 18),
	(329, 144),
	(329, 28),
	(329, 83),
	(329, 7),
	(329, 8),
	(329, 131),
	(329, 10),
	(330, 10),
	(330, 36),
	(330, 34),
	(330, 100),
	(330, 38),
	(330, 7),
	(330, 8),
	(330, 18),
	(330, 35),
	(330, 45),
	(331, 13),
	(331, 74),
	(331, 1),
	(331, 89),
	(331, 143),
	(331, 90),
	(331, 54),
	(331, 56),
	(331, 91),
	(331, 92),
	(331, 144),
	(331, 94),
	(332, 13),
	(332, 74),
	(332, 88),
	(332, 36),
	(332, 97),
	(332, 42),
	(332, 7),
	(332, 10),
	(332, 35),
	(332, 16),
	(333, 13),
	(333, 74),
	(333, 1),
	(333, 40),
	(333, 91),
	(333, 92),
	(333, 21),
	(333, 141),
	(333, 97),
	(333, 42),
	(333, 7),
	(333, 142),
	(334, 2),
	(334, 15),
	(334, 70),
	(334, 71),
	(334, 41),
	(334, 21),
	(334, 17),
	(334, 72),
	(334, 44),
	(334, 7),
	(334, 18),
	(334, 24),
	(334, 25),
	(335, 123),
	(335, 2),
	(335, 15),
	(335, 12),
	(335, 17),
	(335, 37),
	(335, 7),
	(335, 8),
	(335, 18),
	(335, 255),
	(335, 309),
	(336, 1),
	(336, 109),
	(336, 7),
	(336, 8),
	(336, 22),
	(337, 13),
	(337, 105),
	(337, 106),
	(337, 81),
	(337, 29),
	(337, 107),
	(337, 218),
	(337, 108),
	(337, 136),
	(337, 10),
	(338, 13),
	(338, 74),
	(338, 90),
	(338, 15),
	(338, 17),
	(338, 29),
	(338, 42),
	(338, 7),
	(338, 8),
	(338, 148),
	(339, 249),
	(339, 2),
	(339, 74),
	(339, 110),
	(339, 174),
	(339, 15),
	(339, 32),
	(339, 111),
	(339, 17),
	(339, 7),
	(339, 8),
	(339, 18),
	(339, 12),
	(340, 99),
	(340, 310),
	(340, 81),
	(340, 82),
	(340, 29),
	(340, 72),
	(340, 42),
	(340, 7),
	(340, 47),
	(340, 10),
	(340, 45),
	(341, 198),
	(341, 200),
	(341, 290),
	(341, 283),
	(341, 86),
	(341, 37),
	(341, 60),
	(341, 311),
	(341, 53),
	(341, 61),
	(342, 13),
	(342, 106),
	(342, 105),
	(342, 46),
	(342, 218),
	(342, 107),
	(342, 108),
	(342, 136),
	(342, 7),
	(342, 10),
	(343, 2),
	(343, 312),
	(343, 31),
	(343, 15),
	(343, 70),
	(343, 288),
	(343, 17),
	(343, 72),
	(343, 37),
	(343, 7),
	(343, 8),
	(343, 18),
	(343, 12),
	(344, 13),
	(344, 74),
	(344, 1),
	(344, 143),
	(344, 91),
	(344, 92),
	(344, 97),
	(344, 30),
	(344, 7),
	(344, 94),
	(344, 189),
	(345, 74),
	(345, 110),
	(345, 25),
	(345, 15),
	(345, 21),
	(345, 17),
	(345, 42),
	(345, 7),
	(345, 9),
	(345, 10),
	(345, 48),
	(346, 1),
	(346, 109),
	(346, 7),
	(346, 8),
	(346, 22),
	(347, 22),
	(347, 41),
	(347, 21),
	(347, 29),
	(347, 98),
	(347, 7),
	(347, 8),
	(347, 26),
	(347, 24),
	(347, 25),
	(348, 13),
	(348, 2),
	(348, 3),
	(348, 15),
	(348, 43),
	(348, 17),
	(348, 72),
	(348, 7),
	(348, 8),
	(348, 18),
	(348, 175),
	(348, 231),
	(349, 265),
	(349, 198),
	(349, 313),
	(349, 233),
	(349, 116),
	(349, 33),
	(349, 57),
	(349, 58),
	(349, 118),
	(349, 202),
	(349, 60),
	(349, 61),
	(349, 45),
	(350, 10),
	(351, 1),
	(351, 2),
	(351, 3),
	(351, 70),
	(351, 72),
	(351, 188),
	(351, 42),
	(351, 7),
	(351, 8),
	(351, 4),
	(351, 18),
	(351, 25),
	(352, 13),
	(352, 74),
	(352, 105),
	(352, 46),
	(352, 273),
	(352, 107),
	(352, 136),
	(352, 108),
	(352, 7),
	(352, 10),
	(353, 74),
	(353, 3),
	(353, 88),
	(353, 129),
	(353, 149),
	(353, 97),
	(353, 42),
	(353, 7),
	(353, 303),
	(353, 130),
	(353, 35),
	(353, 16),
	(354, 2),
	(354, 15),
	(354, 199),
	(354, 70),
	(354, 314),
	(354, 315),
	(354, 17),
	(354, 72),
	(354, 7),
	(354, 8),
	(354, 12),
	(354, 45),
	(355, 224),
	(355, 2),
	(355, 3),
	(355, 150),
	(355, 15),
	(355, 133),
	(355, 17),
	(355, 29),
	(355, 7),
	(355, 23),
	(355, 39),
	(356, 13),
	(356, 2),
	(356, 3),
	(356, 15),
	(356, 17),
	(356, 29),
	(356, 7),
	(356, 8),
	(356, 9),
	(356, 23),
	(356, 213),
	(357, 13),
	(357, 74),
	(357, 1),
	(357, 88),
	(357, 97),
	(357, 7),
	(357, 77),
	(357, 10),
	(357, 151),
	(357, 35),
	(358, 13),
	(358, 74),
	(358, 88),
	(358, 36),
	(358, 97),
	(358, 42),
	(358, 7),
	(358, 10),
	(358, 35),
	(358, 16),
	(359, 233),
	(359, 15),
	(359, 66),
	(359, 117),
	(359, 86),
	(359, 60),
	(359, 18),
	(359, 67),
	(359, 120),
	(359, 121),
	(359, 154),
	(360, 67),
	(360, 316),
	(360, 7),
	(360, 317),
	(361, 74),
	(361, 10),
	(361, 208),
	(361, 33),
	(361, 192),
	(361, 7),
	(361, 152),
	(361, 77),
	(361, 18),
	(361, 78),
	(362, 2),
	(362, 15),
	(362, 199),
	(362, 39),
	(362, 17),
	(362, 29),
	(362, 7),
	(362, 23),
	(362, 8),
	(362, 12),
	(363, 74),
	(363, 80),
	(363, 47),
	(363, 81),
	(363, 34),
	(363, 7),
	(363, 78),
	(363, 77),
	(363, 10),
	(363, 45),
	(364, 55),
	(364, 57),
	(364, 58),
	(364, 188),
	(364, 42),
	(364, 60),
	(364, 39),
	(364, 68),
	(364, 61),
	(364, 69),
	(364, 45),
	(365, 18),
	(365, 21),
	(365, 141),
	(365, 41),
	(365, 7),
	(365, 8),
	(365, 26),
	(365, 142),
	(365, 24),
	(365, 25),
	(366, 13),
	(366, 1),
	(366, 90),
	(366, 155),
	(366, 33),
	(366, 91),
	(366, 92),
	(366, 29),
	(366, 94),
	(366, 23),
	(366, 7),
	(366, 93),
	(367, 198),
	(367, 63),
	(367, 200),
	(367, 56),
	(367, 29),
	(367, 60),
	(367, 140),
	(367, 53),
	(367, 254),
	(367, 45),
	(368, 13),
	(368, 74),
	(368, 88),
	(368, 129),
	(368, 97),
	(368, 42),
	(368, 7),
	(368, 10),
	(368, 130),
	(368, 35),
	(368, 45),
	(369, 13),
	(369, 74),
	(369, 88),
	(369, 80),
	(369, 97),
	(369, 7),
	(369, 10),
	(369, 35),
	(369, 45),
	(369, 217),
	(370, 74),
	(370, 228),
	(370, 208),
	(370, 33),
	(370, 18),
	(370, 276),
	(370, 192),
	(370, 7),
	(370, 77),
	(370, 10),
	(370, 277),
	(371, 74),
	(371, 99),
	(371, 81),
	(371, 34),
	(371, 97),
	(371, 42),
	(371, 7),
	(371, 77),
	(371, 10),
	(371, 84),
	(372, 1),
	(372, 22),
	(372, 15),
	(372, 91),
	(372, 92),
	(372, 21),
	(372, 17),
	(372, 29),
	(372, 7),
	(372, 23),
	(372, 39),
	(372, 8),
	(373, 198),
	(373, 239),
	(373, 200),
	(373, 240),
	(373, 241),
	(373, 242),
	(373, 86),
	(373, 161),
	(373, 243),
	(373, 60),
	(373, 140),
	(373, 53),
	(374, 318),
	(374, 288),
	(374, 283),
	(374, 290),
	(374, 291),
	(374, 58),
	(374, 57),
	(374, 37),
	(374, 60),
	(374, 61),
	(374, 292),
	(375, 319),
	(375, 13),
	(375, 3),
	(375, 15),
	(375, 172),
	(375, 17),
	(375, 6),
	(375, 7),
	(375, 8),
	(375, 4),
	(375, 18),
	(375, 12),
	(376, 13),
	(376, 1),
	(376, 74),
	(376, 90),
	(376, 181),
	(376, 27),
	(376, 144),
	(376, 29),
	(376, 94),
	(376, 22),
	(376, 110),
	(377, 13),
	(377, 1),
	(377, 74),
	(377, 90),
	(377, 91),
	(377, 181),
	(377, 27),
	(377, 92),
	(377, 29),
	(377, 94),
	(377, 7),
	(377, 22),
	(378, 1),
	(378, 109),
	(378, 7),
	(378, 8),
	(378, 22),
	(379, 165),
	(379, 166),
	(379, 167),
	(379, 168),
	(379, 170),
	(379, 83),
	(379, 29),
	(379, 7),
	(379, 108),
	(379, 10),
	(379, 48),
	(380, 137),
	(380, 3),
	(380, 15),
	(380, 205),
	(380, 17),
	(380, 29),
	(380, 37),
	(380, 7),
	(380, 23),
	(380, 39),
	(380, 187),
	(381, 13),
	(381, 74),
	(381, 80),
	(381, 182),
	(381, 81),
	(381, 107),
	(381, 108),
	(381, 7),
	(381, 10),
	(381, 183),
	(382, 2),
	(382, 185),
	(382, 15),
	(382, 21),
	(382, 17),
	(382, 118),
	(382, 37),
	(382, 7),
	(382, 23),
	(382, 39),
	(382, 287),
	(382, 45),
	(383, 13),
	(383, 74),
	(383, 1),
	(383, 33),
	(383, 97),
	(383, 30),
	(383, 7),
	(383, 78),
	(383, 77),
	(383, 110),
	(384, 1),
	(384, 2),
	(384, 32),
	(384, 33),
	(384, 29),
	(384, 7),
	(384, 8),
	(384, 9),
	(384, 23),
	(384, 12),
	(385, 13),
	(385, 1),
	(385, 247),
	(385, 90),
	(385, 91),
	(385, 92),
	(385, 29),
	(385, 94),
	(385, 23),
	(385, 7),
	(385, 248),
	(385, 93),
	(386, 1),
	(386, 41),
	(386, 21),
	(386, 29),
	(386, 98),
	(386, 7),
	(386, 23),
	(386, 24),
	(386, 25),
	(386, 45),
	(387, 13),
	(387, 74),
	(387, 80),
	(387, 81),
	(387, 21),
	(387, 82),
	(387, 42),
	(387, 7),
	(387, 10),
	(387, 45),
	(388, 2),
	(388, 103),
	(388, 22),
	(388, 72),
	(388, 86),
	(388, 44),
	(388, 7),
	(388, 8),
	(388, 76),
	(388, 18),
	(388, 12),
	(389, 2),
	(389, 102),
	(389, 31),
	(389, 3),
	(389, 15),
	(389, 290),
	(389, 17),
	(389, 72),
	(389, 86),
	(389, 7),
	(389, 8),
	(389, 18),
	(389, 104),
	(390, 2),
	(390, 14),
	(390, 3),
	(390, 86),
	(390, 44),
	(390, 7),
	(390, 8),
	(390, 73),
	(390, 18),
	(390, 67),
	(390, 19),
	(391, 13),
	(391, 74),
	(391, 80),
	(391, 97),
	(391, 83),
	(391, 107),
	(391, 7),
	(391, 42),
	(391, 10),
	(391, 45),
	(392, 13),
	(392, 15),
	(392, 257),
	(392, 81),
	(392, 17),
	(392, 107),
	(392, 7),
	(392, 136),
	(392, 108),
	(392, 10),
	(392, 51),
	(392, 35),
	(393, 74),
	(393, 124),
	(393, 81),
	(393, 125),
	(393, 7),
	(393, 78),
	(393, 77),
	(393, 10),
	(393, 42),
	(393, 45),
	(394, 2),
	(394, 15),
	(394, 70),
	(394, 71),
	(394, 17),
	(394, 72),
	(394, 44),
	(394, 7),
	(394, 8),
	(394, 73),
	(394, 18),
	(394, 12),
	(395, 254),
	(395, 15),
	(395, 149),
	(395, 66),
	(395, 188),
	(395, 42),
	(395, 60),
	(395, 68),
	(395, 61),
	(395, 69),
	(395, 45),
	(396, 2),
	(396, 109),
	(396, 15),
	(396, 120),
	(396, 17),
	(396, 117),
	(396, 42),
	(396, 7),
	(396, 8),
	(396, 18),
	(396, 164),
	(397, 74),
	(397, 99),
	(397, 34),
	(397, 81),
	(397, 82),
	(397, 29),
	(397, 42),
	(397, 7),
	(397, 77),
	(397, 10),
	(398, 229),
	(398, 2),
	(398, 31),
	(398, 3),
	(398, 33),
	(398, 18),
	(398, 21),
	(398, 72),
	(398, 230),
	(398, 7),
	(398, 8),
	(398, 10),
	(399, 13),
	(399, 49),
	(399, 15),
	(399, 320),
	(399, 291),
	(399, 17),
	(399, 29),
	(399, 37),
	(399, 7),
	(399, 321),
	(400, 249),
	(400, 2),
	(400, 31),
	(400, 174),
	(400, 32),
	(400, 111),
	(400, 7),
	(400, 47),
	(400, 18),
	(400, 12),
	(401, 2),
	(401, 14),
	(401, 3),
	(401, 15),
	(401, 33),
	(401, 17),
	(401, 44),
	(401, 7),
	(401, 8),
	(401, 73),
	(401, 18),
	(401, 19),
	(402, 2),
	(402, 102),
	(402, 3),
	(402, 15),
	(402, 16),
	(402, 17),
	(402, 72),
	(402, 7),
	(402, 8),
	(402, 22),
	(402, 18),
	(402, 104),
	(403, 10),
	(403, 36),
	(403, 34),
	(403, 220),
	(403, 100),
	(403, 7),
	(403, 8),
	(403, 18),
	(403, 35),
	(403, 45),
	(404, 74),
	(404, 99),
	(404, 82),
	(404, 29),
	(404, 42),
	(404, 7),
	(404, 78),
	(404, 77),
	(404, 10),
	(404, 84),
	(405, 13),
	(405, 1),
	(405, 322),
	(405, 247),
	(405, 90),
	(405, 29),
	(405, 94),
	(405, 23),
	(405, 323),
	(405, 93),
	(405, 255),
	(405, 324),
	(406, 55),
	(406, 222),
	(406, 221),
	(406, 57),
	(406, 58),
	(406, 29),
	(406, 60),
	(406, 18),
	(406, 53),
	(406, 61),
	(406, 177),
	(407, 13),
	(407, 74),
	(407, 105),
	(407, 80),
	(407, 46),
	(407, 107),
	(407, 136),
	(407, 7),
	(407, 108),
	(407, 10),
	(408, 55),
	(408, 33),
	(408, 70),
	(408, 57),
	(408, 58),
	(408, 72),
	(408, 60),
	(408, 18),
	(408, 68),
	(408, 61),
	(408, 69),
	(408, 127),
	(409, 1),
	(409, 109),
	(409, 7),
	(409, 8),
	(409, 22),
	(410, 22),
	(410, 15),
	(410, 41),
	(410, 21),
	(410, 141),
	(410, 17),
	(410, 7),
	(410, 8),
	(410, 26),
	(410, 142),
	(410, 24),
	(410, 25),
	(411, 13),
	(411, 74),
	(411, 105),
	(411, 46),
	(411, 21),
	(411, 97),
	(411, 273),
	(411, 107),
	(411, 7),
	(411, 10),
	(412, 74),
	(412, 81),
	(412, 21),
	(412, 107),
	(412, 42),
	(412, 7),
	(412, 108),
	(412, 77),
	(412, 10),
	(412, 78),
	(413, 1),
	(413, 2),
	(413, 171),
	(413, 32),
	(413, 259),
	(413, 21),
	(413, 7),
	(413, 8),
	(413, 18),
	(413, 24),
	(414, 1),
	(414, 74),
	(414, 221),
	(414, 144),
	(414, 97),
	(414, 30),
	(414, 7),
	(414, 217),
	(414, 222),
	(414, 189),
	(414, 177),
	(415, 1),
	(415, 74),
	(415, 13),
	(415, 54),
	(415, 56),
	(415, 221),
	(415, 97),
	(415, 30),
	(415, 7),
	(415, 152),
	(415, 222),
	(415, 177),
	(416, 325),
	(416, 15),
	(416, 34),
	(416, 18),
	(416, 81),
	(416, 17),
	(416, 83),
	(416, 42),
	(416, 7),
	(416, 10),
	(417, 74),
	(417, 109),
	(417, 99),
	(417, 34),
	(417, 81),
	(417, 82),
	(417, 42),
	(417, 7),
	(417, 10),
	(417, 45),
	(418, 1),
	(418, 2),
	(418, 123),
	(418, 32),
	(418, 39),
	(418, 7),
	(418, 8),
	(418, 23),
	(418, 12),
	(418, 45),
	(419, 74),
	(419, 88),
	(419, 129),
	(419, 149),
	(419, 97),
	(419, 42),
	(419, 7),
	(419, 10),
	(419, 130),
	(419, 35),
	(419, 45),
	(420, 2),
	(420, 10),
	(420, 47),
	(420, 326),
	(420, 83),
	(420, 125),
	(420, 7),
	(420, 86),
	(420, 77),
	(420, 18),
	(421, 2),
	(421, 310),
	(421, 15),
	(421, 190),
	(421, 193),
	(421, 17),
	(421, 72),
	(421, 7),
	(421, 8),
	(421, 18),
	(421, 48),
	(421, 16),
	(422, 2),
	(422, 31),
	(422, 3),
	(422, 15),
	(422, 70),
	(422, 17),
	(422, 50),
	(422, 72),
	(422, 327),
	(422, 7),
	(422, 8),
	(422, 18),
	(422, 12),
	(423, 74),
	(423, 99),
	(423, 34),
	(423, 18),
	(423, 82),
	(423, 42),
	(423, 7),
	(423, 8),
	(423, 77),
	(423, 10),
	(424, 102),
	(424, 212),
	(424, 3),
	(424, 15),
	(424, 41),
	(424, 21),
	(424, 17),
	(424, 72),
	(424, 42),
	(424, 7),
	(424, 139),
	(424, 25),
	(425, 25),
	(425, 22),
	(425, 41),
	(425, 21),
	(425, 29),
	(425, 7),
	(425, 26),
	(425, 24),
	(425, 48),
	(425, 45),
	(426, 74),
	(426, 22),
	(426, 195),
	(426, 81),
	(426, 42),
	(426, 7),
	(426, 78),
	(426, 77),
	(426, 10),
	(426, 51),
	(426, 35),
	(427, 198),
	(427, 328),
	(427, 200),
	(427, 283),
	(427, 86),
	(427, 60),
	(427, 140),
	(427, 53),
	(427, 254),
	(427, 45),
	(428, 13),
	(428, 74),
	(428, 88),
	(428, 80),
	(428, 81),
	(428, 42),
	(428, 7),
	(428, 10),
	(428, 35),
	(428, 45),
	(429, 2),
	(429, 14),
	(429, 3),
	(429, 302),
	(429, 86),
	(429, 44),
	(429, 7),
	(429, 8),
	(429, 47),
	(429, 18),
	(429, 19),
	(430, 13),
	(430, 74),
	(430, 106),
	(430, 105),
	(430, 46),
	(430, 182),
	(430, 218),
	(430, 107),
	(430, 108),
	(430, 10),
	(430, 183),
	(431, 329),
	(431, 74),
	(431, 166),
	(431, 29),
	(431, 107),
	(431, 7),
	(431, 108),
	(431, 23),
	(431, 10),
	(431, 25),
	(431, 35),
	(432, 1),
	(432, 90),
	(432, 40),
	(432, 22),
	(432, 77),
	(432, 21),
	(432, 29),
	(432, 7),
	(432, 8),
	(432, 39),
	(432, 78),
	(432, 24),
	(433, 13),
	(433, 1),
	(433, 247),
	(433, 90),
	(433, 181),
	(433, 91),
	(433, 27),
	(433, 92),
	(433, 29),
	(433, 94),
	(433, 23),
	(433, 7),
	(433, 93),
	(434, 74),
	(434, 191),
	(434, 192),
	(434, 42),
	(434, 78),
	(434, 7),
	(434, 77),
	(434, 10),
	(434, 45),
	(434, 127),
	(435, 22),
	(435, 41),
	(435, 21),
	(435, 29),
	(435, 7),
	(435, 8),
	(435, 26),
	(435, 23),
	(435, 24),
	(435, 25),
	(436, 1),
	(436, 3),
	(436, 91),
	(436, 92),
	(436, 41),
	(436, 21),
	(436, 29),
	(436, 7),
	(436, 23),
	(436, 303),
	(436, 25),
	(436, 45),
	(437, 13),
	(437, 74),
	(437, 1),
	(437, 143),
	(437, 90),
	(437, 144),
	(437, 30),
	(437, 94),
	(437, 7),
	(437, 189),
	(438, 198),
	(438, 199),
	(438, 200),
	(438, 290),
	(438, 283),
	(438, 86),
	(438, 37),
	(438, 60),
	(438, 53),
	(438, 45),
	(439, 2),
	(439, 10),
	(439, 173),
	(439, 32),
	(439, 34),
	(439, 7),
	(439, 47),
	(439, 18),
	(439, 48),
	(439, 35),
	(440, 2),
	(440, 15),
	(440, 128),
	(440, 41),
	(440, 21),
	(440, 17),
	(440, 7),
	(440, 8),
	(440, 24),
	(440, 25),
	(441, 13),
	(441, 74),
	(441, 105),
	(441, 46),
	(441, 97),
	(441, 107),
	(441, 136),
	(441, 108),
	(441, 7),
	(441, 10),
	(442, 74),
	(442, 77),
	(442, 33),
	(442, 34),
	(442, 42),
	(442, 7),
	(442, 155),
	(442, 10),
	(442, 45),
	(442, 217),
	(443, 2),
	(443, 14),
	(443, 3),
	(443, 15),
	(443, 17),
	(443, 86),
	(443, 44),
	(443, 7),
	(443, 8),
	(443, 18),
	(443, 12),
	(443, 19),
	(444, 40),
	(444, 22),
	(444, 41),
	(444, 21),
	(444, 42),
	(444, 7),
	(444, 26),
	(444, 24),
	(444, 25),
	(444, 45),
	(445, 13),
	(445, 1),
	(445, 22),
	(445, 41),
	(445, 21),
	(445, 7),
	(445, 8),
	(445, 26),
	(445, 24),
	(445, 25),
	(446, 74),
	(446, 88),
	(446, 27),
	(446, 28),
	(446, 97),
	(446, 42),
	(446, 7),
	(446, 78),
	(446, 77),
	(446, 10),
	(446, 35),
	(447, 3),
	(447, 55),
	(447, 133),
	(447, 27),
	(447, 66),
	(447, 279),
	(447, 57),
	(447, 58),
	(447, 28),
	(447, 330),
	(447, 60),
	(447, 61),
	(447, 16),
	(448, 1),
	(448, 109),
	(448, 7),
	(448, 8),
	(448, 22),
	(449, 1),
	(449, 15),
	(449, 193),
	(449, 190),
	(449, 17),
	(449, 29),
	(449, 7),
	(449, 23),
	(449, 22),
	(449, 16),
	(450, 1),
	(450, 74),
	(450, 13),
	(450, 54),
	(450, 56),
	(450, 144),
	(450, 97),
	(450, 30),
	(450, 7),
	(450, 152),
	(450, 37),
	(451, 2),
	(451, 10),
	(451, 34),
	(451, 44),
	(451, 7),
	(451, 8),
	(451, 18),
	(451, 48),
	(451, 35),
	(451, 45),
	(452, 2),
	(452, 31),
	(452, 3),
	(452, 88),
	(452, 15),
	(452, 17),
	(452, 7),
	(452, 8),
	(452, 18),
	(452, 67),
	(452, 25),
	(452, 35),
	(452, 19),
	(453, 13),
	(453, 74),
	(453, 1),
	(453, 143),
	(453, 91),
	(453, 92),
	(453, 97),
	(453, 30),
	(453, 7),
	(453, 110),
	(453, 189),
	(454, 13),
	(454, 74),
	(454, 90),
	(454, 80),
	(454, 182),
	(454, 81),
	(454, 82),
	(454, 107),
	(454, 7),
	(454, 10),
	(454, 183),
	(455, 74),
	(455, 99),
	(455, 34),
	(455, 81),
	(455, 82),
	(455, 42),
	(455, 7),
	(455, 78),
	(455, 77),
	(455, 10),
	(456, 13),
	(456, 3),
	(456, 15),
	(456, 133),
	(456, 21),
	(456, 17),
	(456, 134),
	(456, 7),
	(456, 42),
	(456, 10),
	(456, 25),
	(456, 135),
	(457, 3),
	(457, 310),
	(457, 10),
	(457, 34),
	(457, 72),
	(457, 86),
	(457, 7),
	(457, 8),
	(457, 331),
	(457, 18),
	(457, 35),
	(457, 45),
	(458, 1),
	(458, 199),
	(458, 70),
	(458, 21),
	(458, 29),
	(458, 72),
	(458, 7),
	(458, 23),
	(458, 22),
	(458, 8),
	(458, 45),
	(459, 2),
	(459, 3),
	(459, 10),
	(459, 116),
	(459, 47),
	(459, 86),
	(459, 118),
	(459, 7),
	(459, 9),
	(459, 18),
	(459, 12),
	(459, 213),
	(460, 13),
	(460, 74),
	(460, 105),
	(460, 46),
	(460, 97),
	(460, 107),
	(460, 136),
	(460, 7),
	(460, 108),
	(460, 10),
	(461, 13),
	(461, 74),
	(461, 1),
	(461, 40),
	(461, 91),
	(461, 92),
	(461, 21),
	(461, 141),
	(461, 97),
	(461, 42),
	(461, 7),
	(461, 142),
	(462, 13),
	(462, 74),
	(462, 81),
	(462, 107),
	(462, 83),
	(462, 42),
	(462, 7),
	(462, 108),
	(462, 10),
	(462, 84),
	(463, 2),
	(463, 103),
	(463, 171),
	(463, 31),
	(463, 32),
	(463, 7),
	(463, 8),
	(463, 73),
	(463, 18),
	(463, 12),
	(464, 13),
	(464, 74),
	(464, 80),
	(464, 81),
	(464, 273),
	(464, 107),
	(464, 108),
	(464, 7),
	(464, 10),
	(464, 45),
	(465, 1),
	(465, 3),
	(465, 15),
	(465, 33),
	(465, 39),
	(465, 17),
	(465, 79),
	(465, 42),
	(465, 7),
	(465, 8),
	(465, 155),
	(465, 45),
	(466, 232),
	(466, 74),
	(466, 99),
	(466, 81),
	(466, 34),
	(466, 82),
	(466, 107),
	(466, 42),
	(466, 7),
	(466, 258),
	(466, 10),
	(467, 232),
	(467, 109),
	(467, 46),
	(467, 34),
	(467, 38),
	(467, 7),
	(467, 8),
	(467, 10),
	(467, 48),
	(467, 35),
	(468, 1),
	(468, 2),
	(468, 25),
	(468, 32),
	(468, 20),
	(468, 21),
	(468, 29),
	(468, 8),
	(468, 7),
	(468, 10),
	(468, 48),
	(469, 1),
	(469, 2),
	(469, 3),
	(469, 10),
	(469, 4),
	(469, 6),
	(469, 7),
	(469, 8),
	(469, 9),
	(469, 5),
	(469, 11),
	(470, 1),
	(470, 319),
	(470, 2),
	(470, 3),
	(470, 39),
	(470, 172),
	(470, 21),
	(470, 6),
	(470, 7),
	(470, 8),
	(470, 4),
	(470, 24),
	(470, 12),
	(471, 288),
	(471, 289),
	(471, 290),
	(471, 291),
	(471, 85),
	(471, 86),
	(471, 37),
	(471, 60),
	(471, 18),
	(471, 292),
	(472, 74),
	(472, 165),
	(472, 155),
	(472, 33),
	(472, 166),
	(472, 167),
	(472, 30),
	(472, 78),
	(472, 7),
	(472, 77),
	(472, 332),
	(473, 224),
	(473, 1),
	(473, 2),
	(473, 184),
	(473, 74),
	(473, 3),
	(473, 110),
	(473, 333),
	(473, 7),
	(473, 8),
	(473, 18),
	(473, 12),
	(474, 3),
	(474, 55),
	(474, 150),
	(474, 56),
	(474, 66),
	(474, 57),
	(474, 58),
	(474, 60),
	(474, 18),
	(474, 151),
	(474, 61),
	(475, 1),
	(475, 2),
	(475, 74),
	(475, 171),
	(475, 31),
	(475, 32),
	(475, 7),
	(475, 8),
	(475, 152),
	(475, 18),
	(475, 110),
	(476, 137),
	(476, 74),
	(476, 3),
	(476, 15),
	(476, 21),
	(476, 17),
	(476, 192),
	(476, 42),
	(476, 78),
	(476, 7),
	(476, 77),
	(476, 10),
	(477, 3),
	(477, 190),
	(477, 15),
	(477, 260),
	(477, 27),
	(477, 66),
	(477, 28),
	(477, 118),
	(477, 60),
	(477, 4),
	(477, 18),
	(477, 11),
	(477, 16),
	(478, 34),
	(478, 112),
	(478, 100),
	(478, 7),
	(478, 101),
	(478, 38),
	(478, 18),
	(478, 51),
	(478, 35),
	(478, 16),
	(479, 334),
	(479, 10),
	(479, 208),
	(479, 228),
	(479, 33),
	(479, 276),
	(479, 7),
	(479, 77),
	(479, 18),
	(479, 277),
	(479, 127),
	(480, 123),
	(480, 55),
	(480, 33),
	(480, 66),
	(480, 57),
	(480, 58),
	(480, 60),
	(480, 77),
	(480, 18),
	(480, 61),
	(481, 34),
	(481, 100),
	(481, 112),
	(481, 7),
	(481, 101),
	(481, 42),
	(481, 10),
	(481, 35),
	(481, 45),
	(481, 16),
	(482, 74),
	(482, 80),
	(482, 15),
	(482, 21),
	(482, 17),
	(482, 42),
	(482, 78),
	(482, 7),
	(482, 77),
	(482, 10),
	(482, 45),
	(483, 1),
	(483, 2),
	(483, 171),
	(483, 31),
	(483, 32),
	(483, 12),
	(483, 7),
	(483, 8),
	(483, 18),
	(483, 25),
	(484, 109),
	(484, 99),
	(484, 34),
	(484, 81),
	(484, 82),
	(484, 29),
	(484, 42),
	(484, 7),
	(484, 10),
	(484, 45),
	(485, 13),
	(485, 74),
	(485, 80),
	(485, 81),
	(485, 34),
	(485, 82),
	(485, 42),
	(485, 7),
	(485, 77),
	(485, 10),
	(486, 1),
	(486, 109),
	(486, 21),
	(486, 29),
	(486, 42),
	(486, 7),
	(486, 8),
	(486, 22),
	(486, 25),
	(486, 26),
	(487, 2),
	(487, 31),
	(487, 15),
	(487, 32),
	(487, 21),
	(487, 17),
	(487, 335),
	(487, 7),
	(487, 8),
	(487, 73),
	(487, 18),
	(487, 24),
	(488, 74),
	(488, 185),
	(488, 77),
	(488, 21),
	(488, 29),
	(488, 118),
	(488, 42),
	(488, 7),
	(488, 125),
	(488, 10),
	(488, 48),
	(489, 2),
	(489, 33),
	(489, 70),
	(489, 72),
	(489, 188),
	(489, 44),
	(489, 7),
	(489, 42),
	(489, 155),
	(489, 18),
	(489, 45),
	(490, 2),
	(490, 103),
	(490, 3),
	(490, 15),
	(490, 133),
	(490, 17),
	(490, 86),
	(490, 134),
	(490, 7),
	(490, 8),
	(490, 37),
	(490, 18),
	(490, 135),
	(491, 198),
	(491, 63),
	(491, 56),
	(491, 86),
	(491, 60),
	(491, 161),
	(491, 140),
	(491, 53),
	(491, 254),
	(491, 45),
	(492, 1),
	(492, 13),
	(492, 224),
	(492, 184),
	(492, 3),
	(492, 221),
	(492, 29),
	(492, 187),
	(492, 152),
	(492, 60),
	(492, 45),
	(492, 177),
	(493, 13),
	(493, 74),
	(493, 105),
	(493, 46),
	(493, 97),
	(493, 273),
	(493, 107),
	(493, 7),
	(493, 108),
	(493, 10),
	(494, 74),
	(494, 15),
	(494, 46),
	(494, 51),
	(494, 21),
	(494, 17),
	(494, 107),
	(494, 42),
	(494, 7),
	(494, 10),
	(494, 48),
	(494, 35),
	(495, 2),
	(495, 96),
	(495, 33),
	(495, 70),
	(495, 72),
	(495, 7),
	(495, 8),
	(495, 73),
	(495, 18),
	(495, 231),
	(495, 12),
	(496, 88),
	(496, 147),
	(496, 34),
	(496, 220),
	(496, 38),
	(496, 7),
	(496, 336),
	(496, 8),
	(496, 10),
	(496, 35),
	(497, 13),
	(497, 74),
	(497, 105),
	(497, 182),
	(497, 81),
	(497, 107),
	(497, 108),
	(497, 7),
	(497, 10),
	(497, 183),
	(498, 147),
	(498, 34),
	(498, 38),
	(498, 108),
	(498, 7),
	(498, 337),
	(498, 10),
	(498, 48),
	(498, 35),
	(498, 338),
	(499, 74),
	(499, 80),
	(499, 81),
	(499, 83),
	(499, 42),
	(499, 78),
	(499, 7),
	(499, 77),
	(499, 10),
	(499, 108),
	(500, 2),
	(500, 31),
	(500, 15),
	(500, 32),
	(500, 259),
	(500, 17),
	(500, 7),
	(500, 8),
	(500, 18),
	(500, 12),
	(501, 13),
	(501, 106),
	(501, 105),
	(501, 182),
	(501, 218),
	(501, 107),
	(501, 108),
	(501, 136),
	(501, 7),
	(501, 10),
	(501, 183),
	(502, 13),
	(502, 74),
	(502, 88),
	(502, 129),
	(502, 214),
	(502, 97),
	(502, 42),
	(502, 7),
	(502, 10),
	(502, 130),
	(502, 35),
	(503, 2),
	(503, 311),
	(503, 32),
	(503, 290),
	(503, 188),
	(503, 86),
	(503, 7),
	(503, 8),
	(503, 37),
	(503, 18),
	(503, 42),
	(504, 2),
	(504, 14),
	(504, 3),
	(504, 86),
	(504, 44),
	(504, 7),
	(504, 8),
	(504, 73),
	(504, 18),
	(504, 53),
	(504, 19),
	(505, 2),
	(505, 74),
	(505, 10),
	(505, 77),
	(505, 47),
	(505, 326),
	(505, 83),
	(505, 7),
	(505, 125),
	(505, 18),
	(506, 1),
	(506, 74),
	(506, 13),
	(506, 91),
	(506, 92),
	(506, 97),
	(506, 30),
	(506, 7),
	(506, 217),
	(506, 95),
	(506, 189),
	(507, 1),
	(507, 74),
	(507, 13),
	(507, 90),
	(507, 21),
	(507, 29),
	(507, 148),
	(507, 7),
	(507, 8),
	(507, 22),
	(508, 13),
	(508, 1),
	(508, 155),
	(508, 33),
	(508, 91),
	(508, 92),
	(508, 29),
	(508, 7),
	(508, 94),
	(508, 23),
	(508, 45),
	(509, 74),
	(509, 2),
	(509, 3),
	(509, 10),
	(509, 47),
	(509, 70),
	(509, 172),
	(509, 72),
	(509, 7),
	(509, 77),
	(509, 18),
	(509, 127),
	(510, 13),
	(510, 2),
	(510, 174),
	(510, 15),
	(510, 70),
	(510, 71),
	(510, 17),
	(510, 72),
	(510, 44),
	(510, 7),
	(510, 73),
	(510, 18),
	(511, 74),
	(511, 15),
	(511, 27),
	(511, 17),
	(511, 28),
	(511, 30),
	(511, 7),
	(511, 78),
	(511, 77),
	(511, 18),
	(511, 339),
	(511, 127),
	(512, 13),
	(512, 74),
	(512, 106),
	(512, 105),
	(512, 46),
	(512, 257),
	(512, 81),
	(512, 218),
	(512, 107),
	(512, 136),
	(512, 10),
	(513, 1),
	(513, 74),
	(513, 13),
	(513, 3),
	(513, 20),
	(513, 21),
	(513, 97),
	(513, 30),
	(513, 7),
	(513, 303),
	(513, 25),
	(514, 74),
	(514, 47),
	(514, 81),
	(514, 34),
	(514, 7),
	(514, 78),
	(514, 77),
	(514, 10),
	(514, 84),
	(514, 45),
	(515, 1),
	(515, 2),
	(515, 25),
	(515, 32),
	(515, 20),
	(515, 21),
	(515, 29),
	(515, 7),
	(515, 8),
	(515, 47),
	(515, 48),
	(516, 74),
	(516, 88),
	(516, 27),
	(516, 97),
	(516, 28),
	(516, 42),
	(516, 7),
	(516, 78),
	(516, 77),
	(516, 10),
	(516, 35),
	(517, 13),
	(517, 74),
	(517, 40),
	(517, 88),
	(517, 97),
	(517, 107),
	(517, 42),
	(517, 7),
	(517, 10),
	(517, 35),
	(518, 55),
	(518, 234),
	(518, 57),
	(518, 58),
	(518, 29),
	(518, 37),
	(518, 60),
	(518, 39),
	(518, 61),
	(518, 45),
	(519, 13),
	(519, 74),
	(519, 99),
	(519, 81),
	(519, 34),
	(519, 82),
	(519, 29),
	(519, 7),
	(519, 10),
	(519, 45),
	(520, 1),
	(520, 13),
	(520, 90),
	(520, 22),
	(520, 29),
	(520, 148),
	(520, 7),
	(520, 8),
	(520, 39),
	(520, 25),
	(521, 1),
	(521, 74),
	(521, 90),
	(521, 34),
	(521, 29),
	(521, 42),
	(521, 7),
	(521, 8),
	(521, 77),
	(521, 10),
	(521, 78),
	(522, 1),
	(522, 109),
	(522, 7),
	(522, 8),
	(522, 22),
	(523, 13),
	(523, 2),
	(523, 310),
	(523, 15),
	(523, 291),
	(523, 17),
	(523, 72),
	(523, 37),
	(523, 7),
	(523, 8),
	(523, 18),
	(524, 13),
	(524, 74),
	(524, 105),
	(524, 106),
	(524, 46),
	(524, 97),
	(524, 218),
	(524, 107),
	(524, 136),
	(524, 7),
	(524, 10),
	(525, 13),
	(525, 74),
	(525, 105),
	(525, 46),
	(525, 257),
	(525, 81),
	(525, 107),
	(525, 7),
	(525, 108),
	(525, 10),
	(526, 25),
	(526, 129),
	(526, 34),
	(526, 42),
	(526, 7),
	(526, 10),
	(526, 130),
	(526, 164),
	(526, 48),
	(526, 35),
	(526, 45),
	(527, 13),
	(527, 74),
	(527, 224),
	(527, 3),
	(527, 49),
	(527, 15),
	(527, 17),
	(527, 29),
	(527, 7),
	(527, 23),
	(527, 18),
	(528, 2),
	(528, 10),
	(528, 27),
	(528, 28),
	(528, 83),
	(528, 86),
	(528, 7),
	(528, 152),
	(528, 293),
	(528, 18),
	(528, 73),
	(529, 123),
	(529, 228),
	(529, 208),
	(529, 33),
	(529, 340),
	(529, 192),
	(529, 30),
	(529, 7),
	(529, 77),
	(529, 18),
	(529, 53),
	(530, 198),
	(530, 200),
	(530, 290),
	(530, 283),
	(530, 341),
	(530, 86),
	(530, 37),
	(530, 60),
	(530, 53),
	(530, 45),
	(531, 74),
	(531, 80),
	(531, 342),
	(531, 81),
	(531, 21),
	(531, 42),
	(531, 78),
	(531, 7),
	(531, 77),
	(531, 10),
	(532, 13),
	(532, 2),
	(532, 31),
	(532, 70),
	(532, 72),
	(532, 37),
	(532, 7),
	(532, 8),
	(532, 18),
	(532, 12),
	(532, 45),
	(533, 1),
	(533, 2),
	(533, 3),
	(533, 10),
	(533, 172),
	(533, 37),
	(533, 7),
	(533, 8),
	(533, 9),
	(533, 18),
	(533, 12),
	(534, 1),
	(534, 2),
	(534, 3),
	(534, 343),
	(534, 15),
	(534, 133),
	(534, 17),
	(534, 7),
	(534, 8),
	(534, 39),
	(534, 135),
	(534, 16),
	(535, 13),
	(535, 41),
	(535, 21),
	(535, 7),
	(535, 26),
	(535, 214),
	(535, 344),
	(535, 24),
	(535, 25),
	(535, 35),
	(536, 13),
	(536, 74),
	(536, 1),
	(536, 40),
	(536, 91),
	(536, 92),
	(536, 21),
	(536, 141),
	(536, 97),
	(536, 42),
	(536, 7),
	(536, 142),
	(537, 1),
	(537, 2),
	(537, 15),
	(537, 32),
	(537, 17),
	(537, 37),
	(537, 7),
	(537, 8),
	(537, 18),
	(537, 12),
	(537, 45),
	(538, 13),
	(538, 1),
	(538, 91),
	(538, 92),
	(538, 29),
	(538, 7),
	(538, 94),
	(538, 23),
	(538, 8),
	(538, 45),
	(539, 1),
	(539, 74),
	(539, 109),
	(539, 39),
	(539, 7),
	(539, 8),
	(539, 22),
	(539, 10),
	(540, 1),
	(540, 109),
	(540, 7),
	(541, 13),
	(541, 105),
	(541, 106),
	(541, 81),
	(541, 29),
	(541, 107),
	(541, 136),
	(541, 108),
	(541, 7),
	(541, 10),
	(542, 13),
	(542, 1),
	(542, 54),
	(542, 90),
	(542, 24),
	(542, 56),
	(542, 21),
	(542, 29),
	(542, 94),
	(542, 23),
	(542, 26),
	(542, 93),
	(542, 20),
	(543, 13),
	(543, 2),
	(543, 174),
	(543, 15),
	(543, 70),
	(543, 71),
	(543, 17),
	(543, 72),
	(543, 44),
	(543, 7),
	(543, 8),
	(543, 18),
	(544, 13),
	(544, 2),
	(544, 31),
	(544, 15),
	(544, 70),
	(544, 17),
	(544, 72),
	(544, 7),
	(544, 8),
	(544, 18),
	(544, 12),
	(545, 1),
	(545, 74),
	(545, 13),
	(545, 90),
	(545, 29),
	(545, 148),
	(545, 7),
	(545, 8),
	(545, 39),
	(545, 10),
	(546, 1),
	(546, 74),
	(546, 90),
	(546, 15),
	(546, 283),
	(546, 17),
	(546, 7),
	(546, 22),
	(546, 110),
	(546, 16),
	(547, 1),
	(547, 2),
	(547, 25),
	(547, 32),
	(547, 33),
	(547, 51),
	(547, 7),
	(547, 8),
	(547, 23),
	(547, 48),
	(547, 35),
	(548, 13),
	(548, 1),
	(548, 74),
	(548, 90),
	(548, 181),
	(548, 91),
	(548, 27),
	(548, 92),
	(548, 29),
	(548, 93),
	(548, 94),
	(548, 23),
	(548, 95),
	(549, 13),
	(549, 74),
	(549, 1),
	(549, 33),
	(549, 91),
	(549, 92),
	(549, 97),
	(549, 30),
	(549, 7),
	(549, 78),
	(549, 77),
	(550, 1),
	(550, 74),
	(550, 271),
	(550, 123),
	(550, 27),
	(550, 28),
	(550, 192),
	(550, 30),
	(550, 7),
	(550, 78),
	(550, 77),
	(551, 13),
	(551, 74),
	(551, 1),
	(551, 90),
	(551, 54),
	(551, 56),
	(551, 91),
	(551, 92),
	(551, 144),
	(551, 94),
	(551, 7),
	(551, 22),
	(552, 2),
	(552, 103),
	(552, 210),
	(552, 31),
	(552, 3),
	(552, 15),
	(552, 133),
	(552, 211),
	(552, 17),
	(552, 134),
	(552, 7),
	(552, 8),
	(552, 18),
	(552, 135),
	(553, 62),
	(553, 63),
	(553, 305),
	(553, 66),
	(553, 345),
	(553, 86),
	(553, 346),
	(553, 60),
	(553, 53),
	(553, 45),
	(554, 2),
	(554, 3),
	(554, 174),
	(554, 43),
	(554, 27),
	(554, 28),
	(554, 72),
	(554, 44),
	(554, 152),
	(554, 7),
	(554, 73),
	(554, 18),
	(554, 175),
	(555, 13),
	(555, 74),
	(555, 105),
	(555, 46),
	(555, 273),
	(555, 107),
	(555, 7),
	(555, 258),
	(555, 108),
	(555, 10),
	(556, 2),
	(556, 3),
	(556, 15),
	(556, 207),
	(556, 17),
	(556, 42),
	(556, 7),
	(556, 8),
	(556, 4),
	(556, 18),
	(556, 6),
	(557, 13),
	(557, 1),
	(557, 74),
	(557, 90),
	(557, 54),
	(557, 56),
	(557, 181),
	(557, 91),
	(557, 27),
	(557, 92),
	(557, 29),
	(557, 94),
	(557, 7),
	(558, 19),
	(558, 3),
	(558, 15),
	(558, 190),
	(558, 17),
	(558, 29),
	(558, 42),
	(558, 7),
	(558, 8),
	(558, 45),
	(558, 16),
	(559, 13),
	(559, 1),
	(559, 247),
	(559, 89),
	(559, 91),
	(559, 92),
	(559, 29),
	(559, 7),
	(559, 23),
	(559, 94),
	(559, 248),
	(559, 93),
	(560, 74),
	(560, 109),
	(560, 88),
	(560, 40),
	(560, 129),
	(560, 42),
	(560, 7),
	(560, 10),
	(560, 130),
	(560, 25),
	(560, 35),
	(561, 74),
	(561, 33),
	(561, 34),
	(561, 81),
	(561, 42),
	(561, 7),
	(561, 155),
	(561, 10),
	(561, 84),
	(561, 45),
	(562, 13),
	(562, 1),
	(562, 74),
	(562, 90),
	(562, 54),
	(562, 56),
	(562, 91),
	(562, 92),
	(562, 29),
	(562, 94),
	(562, 7),
	(562, 45),
	(563, 198),
	(563, 290),
	(563, 341),
	(563, 283),
	(563, 86),
	(563, 37),
	(563, 7),
	(563, 42),
	(563, 8),
	(563, 10),
	(564, 2),
	(564, 212),
	(564, 31),
	(564, 3),
	(564, 199),
	(564, 72),
	(564, 7),
	(564, 8),
	(564, 9),
	(564, 18),
	(564, 274),
	(564, 213),
	(565, 74),
	(565, 80),
	(565, 185),
	(565, 81),
	(565, 72),
	(565, 118),
	(565, 42),
	(565, 78),
	(565, 7),
	(565, 77),
	(565, 10),
	(565, 104),
	(566, 13),
	(566, 74),
	(566, 88),
	(566, 129),
	(566, 97),
	(566, 107),
	(566, 42),
	(566, 7),
	(566, 10),
	(566, 130),
	(566, 35),
	(567, 2),
	(567, 31),
	(567, 174),
	(567, 34),
	(567, 18),
	(567, 7),
	(567, 8),
	(567, 10),
	(567, 48),
	(567, 35),
	(568, 2),
	(568, 109),
	(568, 15),
	(568, 17),
	(568, 117),
	(568, 188),
	(568, 7),
	(568, 8),
	(568, 23),
	(568, 18),
	(568, 120),
	(569, 13),
	(569, 74),
	(569, 88),
	(569, 46),
	(569, 129),
	(569, 107),
	(569, 136),
	(569, 108),
	(569, 7),
	(569, 10),
	(569, 130),
	(569, 35),
	(570, 1),
	(570, 74),
	(570, 13),
	(570, 3),
	(570, 21),
	(570, 97),
	(570, 30),
	(570, 7),
	(570, 303),
	(570, 110),
	(570, 189),
	(571, 1),
	(571, 2),
	(571, 15),
	(571, 70),
	(571, 17),
	(571, 72),
	(571, 29),
	(571, 7),
	(571, 8),
	(571, 23),
	(571, 18),
	(571, 12),
	(572, 347),
	(572, 2),
	(572, 31),
	(572, 3),
	(572, 199),
	(572, 348),
	(572, 72),
	(572, 86),
	(572, 152),
	(572, 7),
	(572, 8),
	(572, 18),
	(573, 13),
	(573, 74),
	(573, 88),
	(573, 100),
	(573, 42),
	(573, 7),
	(573, 10),
	(573, 25),
	(573, 35),
	(573, 45),
	(574, 339),
	(574, 25),
	(574, 29),
	(574, 7),
	(574, 8),
	(574, 26),
	(574, 10),
	(574, 48),
	(574, 45),
	(574, 127),
	(575, 153),
	(575, 22),
	(575, 41),
	(575, 21),
	(575, 7),
	(575, 8),
	(575, 26),
	(575, 24),
	(575, 25),
	(575, 154),
	(576, 13),
	(576, 74),
	(576, 105),
	(576, 46),
	(576, 257),
	(576, 81),
	(576, 107),
	(576, 136),
	(576, 108),
	(576, 10),
	(577, 13),
	(577, 74),
	(577, 105),
	(577, 46),
	(577, 273),
	(577, 107),
	(577, 108),
	(577, 258),
	(577, 7),
	(577, 10),
	(578, 13),
	(578, 74),
	(578, 224),
	(578, 2),
	(578, 3),
	(578, 15),
	(578, 17),
	(578, 7),
	(578, 78),
	(578, 77),
	(578, 18),
	(579, 25),
	(579, 46),
	(579, 21),
	(579, 29),
	(579, 107),
	(579, 7),
	(579, 26),
	(579, 10),
	(579, 48),
	(579, 45),
	(580, 109),
	(580, 3),
	(580, 19),
	(580, 15),
	(580, 349),
	(580, 17),
	(580, 29),
	(580, 7),
	(580, 8),
	(580, 45),
	(580, 16),
	(581, 13),
	(581, 1),
	(581, 74),
	(581, 89),
	(581, 91),
	(581, 92),
	(581, 29),
	(581, 7),
	(581, 94),
	(581, 23),
	(581, 8);
/*!40000 ALTER TABLE "BooksGenres" ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS "genres" (
	"genreID" INT NOT NULL,
	"genreName" VARCHAR(255) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	PRIMARY KEY ("genreID")
);

/*!40000 ALTER TABLE "genres" DISABLE KEYS */;
INSERT INTO "genres" ("genreID", "genreName") VALUES
	(1, 'Contemporary'),
	(2, 'Literature'),
	(3, 'Cultural'),
	(4, 'Asia'),
	(5, 'Japanese Literature'),
	(6, 'Asian Literature'),
	(7, 'Fiction'),
	(8, 'Novels'),
	(9, 'Magical Realism'),
	(10, 'Fantasy'),
	(11, 'Japan'),
	(12, 'Literary Fiction'),
	(13, 'Romance'),
	(14, 'Russian Literature'),
	(15, 'Historical'),
	(16, 'War'),
	(17, 'Historical Fiction'),
	(18, 'Classics'),
	(19, 'Russia'),
	(20, 'Dark'),
	(21, 'Mystery'),
	(22, 'Drama'),
	(23, 'Adult Fiction'),
	(24, 'Crime'),
	(25, 'Thriller'),
	(26, 'Suspense'),
	(27, 'Academic'),
	(28, 'School'),
	(29, 'Adult'),
	(30, 'Realistic Fiction'),
	(31, '20th Century'),
	(32, 'American'),
	(33, 'Humor'),
	(34, 'Science Fiction Fantasy'),
	(35, 'Science Fiction'),
	(36, 'Aliens'),
	(37, 'Religion'),
	(38, 'Speculative Fiction'),
	(39, 'Book Club'),
	(40, 'Action'),
	(41, 'Mystery Thriller'),
	(42, 'Adventure'),
	(43, 'France'),
	(44, '19th Century'),
	(45, 'Audiobook'),
	(46, 'Supernatural'),
	(47, 'Short Stories'),
	(48, 'Horror'),
	(49, 'Historical Romance'),
	(50, 'Scotland'),
	(51, 'Time Travel'),
	(52, 'Psychological Thriller'),
	(53, 'Psychology'),
	(54, 'Abuse'),
	(55, 'Biography Memoir'),
	(56, 'Sociology'),
	(57, 'Memoir'),
	(58, 'Autobiography'),
	(59, 'True Story'),
	(60, 'Nonfiction'),
	(61, 'Biography'),
	(62, 'Biology'),
	(63, 'Science'),
	(64, 'Sustainability'),
	(65, 'Ecology'),
	(66, 'History'),
	(67, 'Politics'),
	(68, 'Nature'),
	(69, 'Environment'),
	(70, 'British Literature'),
	(71, 'Victorian'),
	(72, 'European Literature'),
	(73, 'Classic Literature'),
	(74, 'Young Adult'),
	(75, 'Swedish Literature'),
	(76, 'Scandinavian Literature'),
	(77, 'Childrens'),
	(78, 'Middle Grade'),
	(79, 'Sweden'),
	(80, 'Young Adult Fantasy'),
	(81, 'Magic'),
	(82, 'High Fantasy'),
	(83, 'Mythology'),
	(84, 'Dragons'),
	(85, 'Theology'),
	(86, 'Philosophy'),
	(87, 'Atheism'),
	(88, 'Dystopia'),
	(89, 'Love'),
	(90, 'New Adult'),
	(91, 'Chick Lit'),
	(92, 'Womens Fiction'),
	(93, 'Erotica'),
	(94, 'Contemporary Romance'),
	(95, 'Music'),
	(96, 'English Literature'),
	(97, 'Teen'),
	(98, 'Detective'),
	(99, 'Epic Fantasy'),
	(100, 'Space'),
	(101, 'Space Opera'),
	(102, 'Germany'),
	(103, 'Nobel Prize'),
	(104, 'German Literature'),
	(105, 'Paranormal Romance'),
	(106, 'Shapeshifters'),
	(107, 'Paranormal'),
	(108, 'Urban Fantasy'),
	(109, 'Epic'),
	(110, 'Coming Of Age'),
	(111, 'Southern'),
	(112, 'Military Fiction'),
	(113, 'Greek Mythology'),
	(114, 'Noir'),
	(115, 'Military History'),
	(116, 'Essays'),
	(117, 'American History'),
	(118, 'Writing'),
	(119, 'American Revolution'),
	(120, 'North American Hi...'),
	(121, 'Political Science'),
	(122, 'Roman'),
	(123, 'Family'),
	(124, 'Retellings'),
	(125, 'Fairy Tales'),
	(126, 'Dinosaurs'),
	(127, 'Animals'),
	(128, 'Historical Mystery'),
	(129, 'Post Apocalyptic'),
	(130, 'Apocalyptic'),
	(131, 'Read For School'),
	(132, 'Finnish Literature'),
	(133, 'Africa'),
	(134, 'Egypt'),
	(135, 'Northern Africa'),
	(136, 'Vampires'),
	(137, 'Italy'),
	(138, 'Amazon'),
	(139, 'Spain'),
	(140, 'Business'),
	(141, 'Espionage'),
	(142, 'Spy Thriller'),
	(143, 'Young Adult Romance'),
	(144, 'High School'),
	(145, 'Americana'),
	(146, 'Alternate History'),
	(147, 'Steampunk'),
	(148, 'Love Story'),
	(149, 'Survival'),
	(150, 'African American'),
	(151, 'Race'),
	(152, 'Poetry'),
	(153, 'Legal Thriller'),
	(154, 'Law'),
	(155, 'Comedy'),
	(156, 'Comic Fantasy'),
	(157, 'Ghosts'),
	(158, 'Ghost Stories'),
	(159, 'Poverty'),
	(160, 'Social Justice'),
	(161, 'Economics'),
	(162, 'Social Movements'),
	(163, 'Social Issues'),
	(164, 'Westerns'),
	(165, 'Sequential Art'),
	(166, 'Comics'),
	(167, 'Graphic Novels'),
	(168, 'Graphic Novels Comics'),
	(169, 'Comic Strips'),
	(170, 'Comic Book'),
	(171, 'The United States Of America'),
	(172, 'India'),
	(173, 'Anthologies'),
	(174, 'Gothic'),
	(175, 'French Literature'),
	(176, 'Aspergers'),
	(177, 'Health'),
	(178, 'Somalia'),
	(179, 'Eastern Africa'),
	(180, 'Military'),
	(181, 'College'),
	(182, 'Fae'),
	(183, 'Fairies'),
	(184, 'Feminism'),
	(185, 'Books About Books'),
	(186, 'Iran'),
	(187, 'Womens'),
	(188, 'Travel'),
	(189, 'Young Adult Contemporary'),
	(190, 'World War II'),
	(191, 'Chapter Books'),
	(192, 'Juvenile'),
	(193, 'Holocaust'),
	(194, 'Italian Literature'),
	(195, 'Plays'),
	(196, 'Theatre'),
	(197, 'Manga'),
	(198, 'Self Help'),
	(199, 'Unfinished'),
	(200, 'Personal Development'),
	(201, 'Marriage'),
	(202, 'Language'),
	(203, 'Relationships'),
	(204, 'Communication'),
	(205, 'Medieval'),
	(206, 'Medicine'),
	(207, 'China'),
	(208, 'Picture Books'),
	(209, 'Cats'),
	(210, 'African Literature'),
	(211, 'Egyptian Literature'),
	(212, 'Spanish Literature'),
	(213, 'Latin American'),
	(214, 'Futuristic'),
	(215, 'Mathematics'),
	(216, 'Physics'),
	(217, 'Death'),
	(218, 'Werewolves'),
	(219, 'Medical'),
	(220, 'Hugo Awards'),
	(221, 'Mental Health'),
	(222, 'Mental Illness'),
	(223, 'Serbian Literature'),
	(224, 'Canada'),
	(225, 'Reverse Harem'),
	(226, 'Polyamorous'),
	(227, 'Rabbits'),
	(228, 'Kids'),
	(229, 'Ireland'),
	(230, 'Irish Literature'),
	(231, '18th Century'),
	(232, 'Dark Fantasy'),
	(233, 'Reference'),
	(234, 'Education'),
	(235, 'Linguistics'),
	(236, 'Humanities'),
	(237, 'Kenya'),
	(238, 'Theory'),
	(239, 'Personal Finance'),
	(240, 'Currency'),
	(241, 'Money'),
	(242, 'Entrepreneurship'),
	(243, 'Finance'),
	(244, 'Zombies'),
	(245, 'Utopia'),
	(246, 'Tragedy'),
	(247, 'Erotic Romance'),
	(248, 'BDSM'),
	(249, 'Southern Gothic'),
	(250, 'Ukraine'),
	(251, 'Game Design'),
	(252, 'Gaming'),
	(253, 'Games'),
	(254, 'Leadership'),
	(255, 'Sports'),
	(256, 'Sports and Games'),
	(257, 'Witches'),
	(258, 'Demons'),
	(259, 'New York'),
	(260, 'Journalism'),
	(261, '14th Century'),
	(262, 'Conspiracy Theories'),
	(263, 'Pseudoscience'),
	(264, 'Occult'),
	(265, 'Art'),
	(266, 'Turkish Literature'),
	(267, 'Turkish'),
	(268, 'European History'),
	(269, 'World History'),
	(270, 'Medieval History'),
	(271, 'Disability'),
	(272, 'Technology'),
	(273, 'Angels'),
	(274, 'Latin American Literature'),
	(275, 'Nutrition'),
	(276, 'Food and Drink'),
	(277, 'Food'),
	(278, 'Nigeria'),
	(279, 'Western Africa'),
	(280, 'Horticulture'),
	(281, 'Gardening'),
	(282, 'Cooking'),
	(283, 'Inspirational'),
	(284, 'Archaeology'),
	(285, 'Judaism'),
	(286, 'Israel'),
	(287, 'Jewish'),
	(288, 'Christianity'),
	(289, 'Christian Living'),
	(290, 'Spirituality'),
	(291, 'Christian'),
	(292, 'Faith'),
	(293, 'Ancient'),
	(294, 'Southern Africa'),
	(295, 'South Africa'),
	(296, 'Emergency Services'),
	(297, 'Police'),
	(298, 'Greece'),
	(299, 'Media Tie In'),
	(300, 'American Civil War'),
	(301, 'Civil War'),
	(302, 'Novella'),
	(303, 'Australia'),
	(304, 'Skepticism'),
	(305, 'Popular Science'),
	(306, 'Young Adult Paranormal'),
	(307, 'Plantagenet'),
	(308, '15th Century'),
	(309, 'Baseball'),
	(310, 'Polish Literature'),
	(311, 'Buddhism'),
	(312, 'Catholic'),
	(313, 'Crafts'),
	(314, 'English History'),
	(315, 'Tudor Period'),
	(316, 'Polygamy'),
	(317, 'Polyamory'),
	(318, 'Christian Non Fiction'),
	(319, 'Indian Literature'),
	(320, 'Christian Fiction'),
	(321, 'Christian Romance'),
	(322, 'Warfare'),
	(323, 'Fighters'),
	(324, 'Sports Romance'),
	(325, 'Arthurian'),
	(326, 'Folklore'),
	(327, 'Modern Classics'),
	(328, 'Management'),
	(329, 'Superheroes'),
	(330, 'Sierra Leone'),
	(331, 'Poland'),
	(332, 'Diary'),
	(333, 'Canadian Literature'),
	(334, 'Storytime'),
	(335, 'Banned Books'),
	(336, 'Cyberpunk'),
	(337, 'New Weird'),
	(338, 'Weird Fiction'),
	(339, 'Dogs'),
	(340, 'Emotion'),
	(341, 'New Age'),
	(342, 'Elves'),
	(343, 'Sudan'),
	(344, 'Romantic Suspense'),
	(345, 'Genetics'),
	(346, 'Evolution'),
	(347, 'Portuguese Literature'),
	(348, 'Portugal'),
	(349, 'World War I');
/*!40000 ALTER TABLE "genres" ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS "pdf" (
	"pdfID" INT NOT NULL,
	"bookID" INT NOT NULL DEFAULT '(0)',
	"pdfLocation" VARCHAR(max) NOT NULL DEFAULT '''''' COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	FOREIGN KEY INDEX "fk_pdfbookID" ("bookID"),
	PRIMARY KEY ("pdfID"),
	CONSTRAINT "fk_pdfbookID" FOREIGN KEY ("bookID") REFERENCES "books" ("BookID") ON UPDATE NO_ACTION ON DELETE NO_ACTION
);

/*!40000 ALTER TABLE "pdf" DISABLE KEYS */;
/*!40000 ALTER TABLE "pdf" ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS "pdfDownloaded" (
	"pdfID" INT NOT NULL,
	"userID" INT NOT NULL,
	"Downloaded" DATETIME NOT NULL,
	FOREIGN KEY INDEX "fk_pdf_downloaded_id" ("pdfID"),
	FOREIGN KEY INDEX "fk_pdf_downloaded_user" ("userID"),
	CONSTRAINT "fk_pdf_downloaded_user" FOREIGN KEY ("userID") REFERENCES "users" ("userID") ON UPDATE NO_ACTION ON DELETE NO_ACTION,
	CONSTRAINT "fk_pdf_downloaded_id" FOREIGN KEY ("pdfID") REFERENCES "pdf" ("pdfID") ON UPDATE NO_ACTION ON DELETE NO_ACTION
);

/*!40000 ALTER TABLE "pdfDownloaded" DISABLE KEYS */;
/*!40000 ALTER TABLE "pdfDownloaded" ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
