/datum/species/unathi
  description = ""

  available_cultural_info = list(
    TAG_CULTURE = list(
      CULTURE_SPACER,
      CULTURE_RIMMER,
      CULTURE_MOGHES,
      CULTURE_POST_MOGHES,
      CULTURE_NAGNECAN,
      CULTURE_OTHER
    ),
    TAG_HOMEWORLD = list(
      LOCATION_MOGHES,
      LOCATION_NAGNEC,
      LOCATION_OTHER
    ),
    TAG_FACTION = list(
      FACTION_IND,
      FACTION_HGM,
      FACTION_UDR,
      FACTION_OTHER
    )
  )

  default_cultural_info = list(
    TAG_CULTURE = CULTURE_NAGNECAN,
    TAG_HOMEWORLD = LOCATION_NAGNEC,
    TAG_FACTION = FACTION_UDR
  )
