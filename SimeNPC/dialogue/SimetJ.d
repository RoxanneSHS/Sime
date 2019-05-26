BEGIN SimeP

CHAIN
IF~GlobalLT("AsylumPlot","GLOBAL",12)~ THEN SimeP Brynn1
~That was short. Are you sure you don't want my company any longer?~
END
++ ~Sime, it is better if we go on separately for now.~ + Brynn2
++ ~Oops! It was a mistake, Sime, stay with me.~ DO~JoinParty()~EXIT

CHAIN 
IF~~ THEN SimeP Brynn2
~Yeah, I was afraid you'd say that. It was worth a try to advance with you anyway.~
END
IF~AreaCheck("ar1600")~THEN REPLY ~Maybe you can find some worthy infomation for us on your own.~ + Brynn3
IF~!AreaCheck("ar1600")~THEN REPLY  ~Maybe you can find some worthy infomation for us on your own.~ + Brynn4
++ ~Oops! It was a mistake, Sime, stay with me.~ DO~JoinParty()~EXIT

CHAIN 
IF~~ THEN SimeP Brynn3
~I will scout around a bit and meet you at the pass leading to the asylum itself. Work with haste, <CHARNAME>. Our enemies know we are here.~DO~SetDialog("ppsime") Wait(2) ForceSpellPoint([3481.126],WIZARD_DIMENSION_DOOR)~EXIT

CHAIN
IF~~ THEN SimeP Brynn4
~I will scout around a bit and meet you at the pass leading to the asylum itself. Work with haste, <CHARNAME>. Our enemies know we are here.~DO~SetDialog("ppsime") Wait(2) EscapeAreaMove("ar1600",3481,126,5)~EXIT


BEGIN SimeJ

CHAIN 
IF~Global("SimeAranRelation","Locals",1)~ THEN SimeJ NotAran1
~<CHARNAME>, there is something I need to clarify before we move on - urgently.~
DO~SetGlobal("SimeAranRelation","Locals",2)~
END
++~It best be really important, Sime, we have not much time.~ + NotAran3
++~It better be the truth, lady shadow thief.~ + NotAran3
++~If I say "not now" I mean what I say.~ + NotAran2

CHAIN
IF~~THEN SimeJ NotAran2
~If I say "I leave now" I mean what I say.~DO~EscapeAreaDestroy(12)~EXIT

CHAIN
IF~~THEN SimeJ NotAran3
~It is important and it is true and it is necessary that you know about it.~
=~Aran was aware that Saemon was secretly dealing with all parties around Athkatla that had an interest in bringing you to Brynnlaw, even if their reasons are quite different ones. His preference was that you take his offer but in case you wouldn't he'd still have his observer on the island.~
END
++~That observer would be you, of course.~ + NotAran5
++~He knew about those other offers?~ + NotAran4

CHAIN
IF~~THEN SimeJ NotAran4
~We knew no details but we knew there were others interested and we knew that they all would need Saemon in the end.~ EXTERN SimeJ NotAran5

CHAIN
IF~~THEN SimeJ NotAran5
~I was volunteering to do the task where others were just horrified. I must get into Spellhold, <CHARNAME>. I must.~
=~I made sure that I would be on board of the Galante come what may. Saemon's crew is as flexible in their business as is their captain. His first mate Carras had an open ear for me...~
==SimeJ IF~Dead("aran")~THEN~Aran's unexpected end does not change this for me. ~
==SimeJ~I must get into Spellhold to know what happened to the missing shadow thieves that were not turned into vampires by Bodhi.~
END
++~This sounds like a personal quest rather than a guild mission.~ + NotAran6
++~Experience tells me that there is a specific thief that interests you.~ + NotAran6
IF~Dead("aran")~THEN REPLY~Aran was just a means to you, just like I am now.~+ NotAran6
IF~!Dead("aran")~THEN REPLY~I wonder if Aran knows about your hidden agenda.~+ NotAran6

CHAIN
IF~~THEN SimeJ NotAran6
~I told Aran about my reason to go to Spellhold just as I am telling you now. For Aran my search for my brother assured him my full dedication to the task. I hope you see it the same. My reason to get into that place is as important to me as your own is to yourself.~
=~Yes, it is my brother, a shadow thief who was somehow abducted by the hostile guild in Athkatla. Like others he had disappeared and not returned as a vampire like most. Arkanis Gath claimed that the trail of those missing collegues led to Spellhold.~
=~Enough for now, <CHARNAME>, business is waiting.~DO~RunAwayFrom(Player1,20)~EXIT

CHAIN
IF~Global("SimeDeshRelation","Locals",1)~ THEN SimeJ Deshwarn1
~Psst, <CHARNAME>, before you go inside to meet Desharik, there is one thing you need to know.~
DO~SetGlobal("SimeDeshRelation","Locals",2)~
END
++~Does he know you?~ + Deshwarn2
++~Do you know him?~ + Deshwarn2
++~I have to risk it, but I'd listen to your warning?~ + Deshwarn2
++~Regardless of what you think - there is no other way.~ + Deshwarn3

CHAIN
IF~~ THEN SimeJ Deshwarn2
~He knows who I am and I'm sure his men all over town have seen us together and told him. Little happens on this island that he doesn't know.~
=~I see little chance to hoodwink the pirate king when he detects my presence.~
END
++~Pull that hood a little deeper and stay in the back. Let me do the talking~ + Deshwarn3
++~I'll go inside without you, I have to risk it for Imoen.~ + Deshwarn3

CHAIN
IF~~ THEN SimeJ Deshwarn3
~(This will not end well.)~EXIT

CHAIN
IF~Global("PPSimeFamily","Global",1)~THEN SimeJ Brother1
~My brother Keruak was the reason why I joined the shadow thieves.~
DO~SetGlobal("PPSimeFamily","Global",2)~
END
++~Your brother who maybe waits ahead in the Asylum.~ + Brother2
++~It's no wonder you think of him now, it's the same for me with Imoen.~ + Brother2
++~Keruak and Imoen wait ahead, we should make haste to free them.~ + Brother2

CHAIN
IF~~THEN SimeJ Brother2
~You are right, <CHARNAME>. A minute or two to talk about them may not be wasted. I'm sure our approach to the asylum is monitored from inside and they will not act before we arrive.If they had wanted to act they would have done ever since we arrived. No, they wait for us, they want us inside where they think they have full control.~
END
++~You're probably right. You know all about Imoen but I know nothing about Keruak.~+ Brother3
++~And that's why I want to act now and not talk.~+ Brother4

CHAIN
IF~~THEN SimeJ Brother3
~It's almost the same with us as it's with you two. Only we are really siblings. But all our lives it's been me and him, all we ever had was us. It made us strong and helped us survive.~
END
++~You are orphans as well?~ + Brother5
++~What about your parents?~ + Brother5
++~How funny - everybody in the Realms shares the same sad tale.~+ Brother4

CHAIN
IF~~THEN SimeJ Brother4
~I had expected a little more sensitiveness from you. Maybe you lost it on the road. I never lost mine not even in Aran's guild. Were it not for Keruak inside I'd be leaving you already.~ DO~SetGlobal("PPSimeFamily","Global",55)~EXIT

CHAIN
IF~~THEN SimeJ Brother5
~We're not orphans, our parents are somewhere but could not care for us. Our father Kamuzu worked for Mae'Var and one day disappeared. The ways of the guild were undecipherable for us children but Aran kept us as part of the "family".~
=~When I was old enough to investigate myself, there was already tension between Aran and Mae'Var. For a while I was sent to infiltrate Mae'Var's guild but I was found out and barely eacaped their knives. My stint there was too short to find a trace of our father.~
END
IF~Global("FreedKamuzu","GLOBAL",1)~THEN REPLY~Kamuzu? Your father is alive, Sime. We freed him from Mae'Var's incarceration.~+ Brother6
IF~Global("FreedKamuzu","GLOBAL",2)~THEN REPLY~Sime, your father is alive. We freed him from Mae'Var's incarceration and he now is part of my guild in Athkatla.~+ Brother6
IF~!Global("TalkedToKamuza","GLOBAL",0)~THEN REPLY~We met a man Kamuzu who was imprisoned by Mae'Var. I don't know what became of him. At least I can witness he was still alive.~+ Brother6
IF~Global("TalkedToKamuza","GLOBAL",0)~THEN REPLY~Chances are that he is still somewhere in Mae'Var's dungeons.~DO~SetGlobal("PPstillKamJail","Global",1)~+ Brother7

CHAIN
IF~~THEN SimeJ Brother6
~He is alive! And Keruak and me always believed he was! All I can ask for is to get a chance and seek for him once we make it back to Athkatla.~
END
++~I will be glad to help you with that.~+ Brother8
++~Right, now let us do our current task first.~ + Brother8
++~What about your mother?~ + Brother8

CHAIN
IF~~THEN SimeJ Brother7
~This is my hope as well. And Keruak and me always believed he was!~
END
++~I will be glad to help you with that.~+ Brother8
++~Right, now let us do our current task first~ + Brother8
++~What about your mother?~ + Brother8

CHAIN
IF~~THEN SimeJ Brother8
~Let us talk about my mother another time. Imoen and Keruak shall be freed now.~EXIT

CHAIN
IF~Global("PPSimeFamily","Global",3)~THEN SimeJ Keruak1
~I try to solace myself with the thought that there was no way for us to save my brother Keruak. That bastard Irenicus waited until we were there to make each of us suffer the most.~
DO~SetGlobal("PPSimeFamily","Global",4)~
END
++~Keruak lost his life the moment he was caught. His killing was just a matter of Irenicus' whim. He plays with souls and lives like seeing himself as a god already.~ + Keruak2
++~He will pay for everything, Sime. We are a strong union against him.~ + Keruak2

CHAIN
IF~~THEN SimeJ Keruak2
~Most gods are more merciful than Irenicus.~
=~He may dream of having the power of one but he lacks any justification for potential followers except Bodhi. Gods without followers fade quickly.~EXIT

CHAIN
IF~Global("PPSimeFamily","Global",5)~THEN SimeJ Mother1
~My mother's name...our mother...Keruak's mother...~
DO~SetGlobal("PPSimeFamily","Global",6)~
=~(She steadies herself again.) My mother's name is Merella. She fled from Athkatla when she heard about our father's disappearance. She was sure that Aran would protect us children but he would not protect her.~
END
IF~Dead("uhrang01")~THEN REPLY~Merella - like the ranger protector of Imnesvale?~ + Mother3
IF~Dead("uhrang01")~THEN REPLY~Merella...that is a frequent name in Amn, isn't it? ~+ Mother2
++~...I, I see...~ + Mother2
IF~!Dead("uhrang01")~THEN REPLY~This is a unique name. Maybe we come across some hint during our travels.~ + Mother3

CHAIN
IF~~THEN SimeJ Mother2
~<CHARNAME>? Merella is a very unique name. I know you well enough. You know something about her.~EXTERN SimeJ Mother3

CHAIN
IF~~THEN SimeJ Mother3
~She was a ranger and never felt too much at home in Athkatla. With my father missing and Aran's mage Haz laying his eyes on her it was maybe her only option to flee to the wilderness.~
END
IF~Dead("uhrang01")~THEN REPLY~She was the ranger protector of Imnesvale for many years. She died fighting an overpowering enemy, a true heroine.~ + Mother4
IF~Dead("uhrang01")~THEN REPLY~Merella lives on in the memory of many who knew her. Sadly I was the witness of her death when we fought the Shade Lord who attacke Imnesvale.~+ Mother4
IF~!Dead("uhrang01")~THEN REPLY~Don't give up the hope to find her someday.~ + Mother5
++~It's seeking a needle in a haystack even if the needle is unique. But one never knows.~+ Mother5

CHAIN
IF~~THEN SimeJ Mother4
~Dead...Please tell me everything you know. I want to treasure her memory in my heart. She did for others what she was unable to do for Keruak and me. I feel no blame for her, I feel respect.~
=~(She listens attentively as you tell her all the details about the Umar and Shadow Lord adventure.)~EXIT

CHAIN
IF~~THEN SimeJ Mother5
~Always it's hope and it's accepting the inevitable that kept me going. Keruak's loss was hard but I need to move on with the memory and whatever lesson it has taught me.~EXIT

CHAIN
IF~Global("FindMerella","Locals",1)~THEN SimeJ Shade1
~This doesn't look too promissing. We must make haste to find my mother as I'm afraid her chances against whatever is out there are pretty thin being on her own.~
=~If I don't see her alive that beast out there will pay for it, I swear.~EXIT

CHAIN
IF~Global("PPstillKamJail","Global",6)~ THEN SimeJ Reuniondad
~Thank you for giving me that moment, <CHARNAME>. I hope I can return the favour one day.~
DO~SetGlobal("PPstillKamJail","Global",7)~
END
++~At least one family member you have recovered, it's joy and a bit of sadness for those missing.~ + Reuniondad2
++~You already have done so much for me in our time together, I'm happy I could do something for you after all.~+ Reuniondad2

CHAIN
IF~~ THEN SimeJ Reuniondad2
~Well spoken, I'm ready to move on. My father has now a room upstairs and I can see him each time we pass through here.~EXIT

CHAIN
IF~Global("SeenJon","Locals",1)~THEN SimeJ SeenJon1
~<CHARNAME>, this man is not who he pretends to be. I've seen him before even if I don't know his name. He's not a cowled wizard, that much is sure.~
DO~SetGlobal("SeenJon","Locals",2)~
END
++~What do you know about him?~ + SeenJon2
++~Where dis you see him before?~ + SeenJon2
++~I suspect the same. This may be precisely the man we are hunting, Irenicus.~ + SeenJon2

CHAIN
IF~~THEN SimeJ SeenJon2
~I saw him while I was at Mae'Var's guild. He wanted a job done by the guild, a kidnapping. He was after a group of adventures who had been forced to leave Baldur's Gate due to his machinations. He not only paid Mae'Var a large sum for the service but also guaranteed his men to be excluded from the vampire attacks on shadow thieves.~
END
++~Oh, I know better than anyone who those kidnapped people were.~ + SeenJon3
++~This really explains a lot.~ + SeenJon3

CHAIN
IF~~THEN SimeJ SeenJon3
~I was able to find out where the victims were brought to. Only a few days later Aran ordered his guild to attack that man's hideout below Waukeen's Promenade. You know the rest of the story.~EXIT