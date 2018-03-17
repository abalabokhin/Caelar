CHAIN
IF~Global("BDEEAunplot","Global",1)~THEN BDAUN Plot1
~<CHARNAME>! It's really you. I can't believe I finally found you.~
DO~SetGlobal("bd_alt_willing_surrender","global",10)~
=~I came in the vague hope our ways would cross here. It was before I learned about the trap this town turns out to be. But even with such knowledge, I couldn't have decided not to come.~
END
++~Aun Argent, what the hell are you doing here?~+ Plot2
++~Do I know you, paladin? Are you some bhaalspawn to stand in my way?~+ Plot3
++~Who in the name of any god would send people to meet me HERE?~+ Plot2

CHAIN
IF~~THEN BDAUN Plot3
~Calm down, <CHARNAME>, we met before, alas under turbulent circumstances you may try to forget. Avernus. I am Aun Argent, Caelar's uncle.~EXTERN BDAUN Plot2

CHAIN
IF~~THEN BDAUN Plot2
~A common acquaintance helped me to track you down.~
==BDAUN IF~InParty("CVSandr")~THEN~(Nods at Sandrah) Your father, mylady, he is about the only person who seems to be able to follow the twisted road your party takes through the Realms...~
==BDAUN IF~!InParty("CVSandr")~THEN~Elminster, he is about the only person who seems to be able to follow the twisted road your party takes through the Realms...~
==BDAUN~He was sure that your fate would lead you to Saradush sooner or later.~
END
++~The fool, he sent you into a trap, old man.~+ Plot4
++~The meddler, didn't he tell you there is no way out of here?~+ Plot4
++~You must be quite desperate to come to a town under siege with no hope to leave it alive.~+ Plot4

CHAIN
IF~~THEN BDAUN Plot4
~Our mutual friend mentioned some abilities you have gained. That pocket plane of yours can be my way out of this town. But more important - it is a possible way into Avernus.~
END
++~You must be mad, Aun, why would you want to return to that place?~+ Plot5
++~Don't tell me you miss that cage there. You won't have much company with that demon dead now.~+ Plot5
++~I'm afraid I can see where this is leading to.~+ Plot5

CHAIN
IF~~THEN BDAUN Plot5
~Caelar, you know that she is still there. With your new access to the lower planes we have a chance to rescue her. We MUST rescue her...she is my blood, my only family... ~
END
++~Listen, Aun. I will not leave you here. I will now send you to my pocket plane and to safety. We will talk about the rest as soon as I can return there myself.~DO~SetGlobal("BDEEAunplot","Global",2)~EXIT


CHAIN
IF~Global("BDEEAunplot","Global",3)~THEN BDAUN Plot11
~This place is different from the part of Hell I used to know but I can't really call it an improvement.~
DO~SetGlobal("BDEEAunplot","Global",4)~
=~Still, at this moment it's as close to Caelar as I can wish to be.~
END
++~So it's really your foolish wish to have me save your niece?~+ Plot12
++~Be glad to be here, like it or not. Saradush may turn out to be more hell than my place here.~+ Plot12
++~Pick a broom or hammer and nails, feel free to re-decorate, anything you do would be an improvement, just don't stand around here lamenting.~+ Plot12

CHAIN
IF~~THEN BDAUN Plot12
~I didn't come here to complain and I take this place and its owner as what they are.~
=~<CHARNAME>, I came here not to beg, although I will if I must, but to give you a challenge. Rescue Caelar. You can if you want.~
END
++~Why the hell...why should I?~+ Plot13
++~A challenge you say. A challenge to do the rescue or a challenge to bear with her thereafter?~+ Plot13
++~An interesting prospect, but what is in it for me?~+ Plot13

CHAIN
IF~~THEN BDAUN Plot13
~I spent a long time in that place where she guards now. I know how the place changes any man or woman. You learn to suffer but most of all - there is only one person there you can deal with and that is yourself.~
=~The devils and creatures there are nothing but evil that leaves only your own self for you to deal with and come to terms with.~
END
++~Go on.~+ Plot14
++~Stop it, I don't need to hear the details.~+ Plot15

CHAIN
IF~~THEN BDAUN Plot14
~To be in a place like Avernus with nothing to face and contemplate but your own self will leave its marks.
To live your life a second time, all you did and all you did not. Your decisions, your mistakes. The endless fires burn away excuses and lies and leave your naked self for you to face. And this is all that will be left of you in the end.~
END
++~Whom will I find should I decide to rescue Caelar, can you tell me, Aun.~+ Plot16
++~What is Caelar's naked self like, what do you thinh, Aun.~+ Plot16
++~What if all that's left of Caelar in the end is a monstrosity.~+ Plot16
++~It may be better not to bring back what is left of Caelar, did you consider that aspect?.~+ Plot16

CHAIN
IF~~THEN BDAUN Plot15
~You of all people should know what I have to tell you. Look around you and realise where you are. Understand.~EXTERN BDAUN Plot14

CHAIN
IF~~THEN BDAUN Plot16
~Caelar is an Argent, she is an aasimar, she will not break and she will not be destroyed. But she will be purified. Yes, she will be humbled and suffering from it. But she will never again be the *Shining Lady*. Her inherited power will give her the strength to make something out of this.~
=~Bhaalspawn, of all the people in the Realms you should be the one to understand her. Like you shape yourself with the heritage you carry and the deeds you did and will do, so does she.~
=~Give her this chance just like you would asks the powers that are to give youself that chance.~
=~Say nothing, <CHARNAME>, contemplate my words. Your decision will answer for you.~DO~RunAwayFrom(Player1,20)~EXIT

CHAIN
IF WEIGHT #-4~Global("BDEEAunplot","Global",4) Global("MelissanYagaKillJob","GLOBAL",0)~THEN PPGUY01 GoHell
~You can use your planar door to travel to several places. Where do you wish to go?~
END
++~I wish to go to Saradush.~EXTERN PPGUY01 3
++~I wish to go to another part of this plane, it is called Avernus.~+ GoHell2
++~I do not wish to leave at this time.~DO~DestroySelf()~EXIT

CHAIN
IF~~THEN PPGUY01 GoHell2
~You can go there one time only, consider this, mortal.~
END
++~This time is now.~DO~SetGlobal("BDEEAunplot","Global",5) Wait(2) SetMasterArea("BD4000") LeaveAreaLUAPanic("BD4500","",[2123.359],2)
ActionOverride(Player1,LeaveAreaLUA("BD4500","",[2123.359],2))
ActionOverride(Player2,LeaveAreaLUA("BD4500","",[2123.359],2))
ActionOverride(Player3,LeaveAreaLUA("BD4500","",[2123.359],2))
ActionOverride(Player4,LeaveAreaLUA("BD4500","",[2123.359],2))
ActionOverride(Player5,LeaveAreaLUA("BD4500","",[2123.359],2))
ActionOverride(Player6,LeaveAreaLUA("BD4500","",[2123.359],2))
DestroySelf()~EXIT
++~I do not wish to leave at this time.~DO~DestroySelf()~EXIT

EXTEND_TOP PPGUY01 0 #2
IF~Global("BDEEAunplot","Global",4)~THEN REPLY~I wish to go to another part of this plane, it is called Avernus.~GOTO GoHell2
END

CHAIN
IF WEIGHT #-6~Global("BDEEAunplot","Global",5)~THEN BDCaelar Rescue1
~By the gods! The seal is broken...~
DO~SetGlobal("BDEEAunplot","Global",6)~
=~<CHARNAME>? Why...How...?~
END
++~The seal is intact. We came through the backdoor.~+ Rescue2
++~Your uncle sent us, Caelar, he pointed us the way to another entrance.~+ Rescue2
++~That are many questions and the answers are long. Be assured no devil can escape.~+ Rescue2

CHAIN
IF~~THEN BDCaelar Rescue2
~All this time I guarded in vain, is this what it is? There are other entrances to this place so there are other exits. To hell...(laughs hysterically).~
=~Tell me nobody knows about those secret ways.~
END
++~Just the mighty Bhaalspawn alone. We have little time to waste. Listen.~+ Rescue3
++~I've become a neighbour of kinds. Why don't you come over to my place for a chat.~+ Rescue3
++~There's no danger since I'm the only one who can use that backdoor. It's time for you to leave this place.~+ Rescue3

CHAIN
IF~~THEN BDCaelar Rescue3
~I'm more than willing to leave this place. I found out long ago that there's nothing I can do here that makes any difference. The portal is sealed and the devils around care little about it. I do nothing here but to think and contemplate like a prisoner for life. And it changes nothing for anyone.~
=~I thought of myself as a guardian of the seal. Baah...the seal is closed and just a piece of rock.~
=~I saw myself as protector of the Prime against Avernus, but it's a joke. All I see are minor demons that are foolish enough to come near my sword. Whoever now rules here, he has other means or other goals than to care for the locked way to the Prime.~
END
++~We can talk about this all once we get out of here. Your uncle is waiting.~+ Rescue4
++~Spare me your self-pity. Be glad you're alive and I'm here with a ticket to leave.~+ Rescue4
++~I can use you far better than this place can. Just come with me and we'll see about your future.~+ Rescue4

CHAIN
IF~~THEN BDCaelar Rescue4
~So, <CHARNAME>, what is this entrance or exit you talk about?~
END
++~I have the ability to move us to MY personal plane in hell at will.~+ Rescue5
++~Once I'm done with exploring here, I will take us to my part of the abyss. It's less hot than here.~+ Rescue5

CHAIN
IF~~THEN BDCaelar Rescue5
~Uncle Aun is there already? (Sigh) My only option is to follow you, it seems.~EXIT