/obj/proc/DefaultTopicState()
	return ui_default_state()

/obj/Topic(var/href, var/href_list = list(), var/datum/ui_state/state)
	if((. = ..()))
		return
	state = state || DefaultTopicState() || ui_default_state()
	if(CanUseTopic(usr, state, href_list) == UI_INTERACTIVE)
		CouldUseTopic(usr)
		return OnTopic(usr, href_list, state)
	CouldNotUseTopic(usr)
	return TRUE

/obj/proc/OnTopic(var/mob/user, var/href_list, var/datum/ui_state/state)
	return FALSE

/obj/CanUseTopic(var/mob/user, var/datum/ui_state/state, var/href_list)
	if(user.CanUseObjTopic(src))
		return ..()
	return UI_CLOSE

/mob/living/silicon/CanUseObjTopic(var/obj/O)
	var/id = src.GetIdCard()
	if(id && O.check_access(id))
		return TRUE
	to_chat(src, "<span class='danger'>\icon[src] Access Denied!</span>")
	return FALSE

/mob/proc/CanUseObjTopic()
	return TRUE

/obj/proc/CouldUseTopic(var/mob/user)
	user.AddTopicPrint(src)

/mob/proc/AddTopicPrint(var/atom/target)
	if(!istype(target))
		return
	target.add_hiddenprint(src)

/mob/living/AddTopicPrint(var/atom/target)
	if(!istype(target))
		return
	if(Adjacent(target))
		target.add_fingerprint(src)
	else
		target.add_hiddenprint(src)

/mob/living/silicon/ai/AddTopicPrint(var/atom/target)
	if(!istype(target))
		return
	target.add_hiddenprint(src)

/obj/proc/CouldNotUseTopic(var/mob/user)
	return
