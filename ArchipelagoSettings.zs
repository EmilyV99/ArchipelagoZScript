namespace Archipelago::Settings
{
	void ap_get_game(char32 buf) //Return your game name
	{
		sprintf(buf, "Your Game Title");
	}
	long items_handling() //return your item handling mode
	{
		//ITEMS_NONE                  // No ReceivedItems is sent to you, ever.
		//ITEMS_REMOTE                // You get items sent from other worlds.
		//ITEMS_REMOTE_STARTING       // You get your starting inventory and items from other worlds sent.
		//ITEMS_REMOTE_LOCAL          // You get items sent from your own and other worlds.
		//ITEMS_REMOTE_STARTING_LOCAL // You get your starting inventory and items from your and other worlds sent.
		return ITEMS_REMOTE_STARTING;
	}
	void add_tags(JSONRef ref) //Add your tags
	{
		//DeathLink is handled automatically via the slot_data
		ref->add_indx_str("ZQuest Classic");
	}
	void on_room_info(JSONRef ref)
	{
		//https://github.com/ArchipelagoMW/Archipelago/blob/main/docs/network%20protocol.md#RoomInfo

	}
	void on_connected(JSONRef ref)
	{
		//https://github.com/ArchipelagoMW/Archipelago/blob/main/docs/network%20protocol.md#Connected

	}
	void on_item_received(NetworkItem itm, int total_count)
	{
		//itemlist is a SINGLE NetworkItem, which has been sent to the player
		//total_count is how many of this item you now own in total
		//'mark_item_collected()' is already called for you for this item, just before this.
		//'itm->localize_item_id()' gives you the item's id relative to the base id
		//'itm->localize_location_id()' does the same for the location; but this is only valid to do if
		//    'itm->player_id == Archipelago::ap_player_id'
		//'itm->player_id' is the ID of the player who sent the item
	}
	void on_location_scouts(NetworkItem itm)
	{
		//itm is a NetworkItem, which has been hinted via a LocationScouts packet.
		//'itm->item_id' is the item's string ID
		//'itm->location_id' is the string ID for the location
		//'itm->player_id' is the ID of the player who will receive the item
	}
	void on_room_update(JSONRef ref)
	{
		//https://github.com/ArchipelagoMW/Archipelago/blob/main/docs/network%20protocol.md#RoomUpdate

	}
	bool on_print_json(JSONRef ref)
	{
		//https://github.com/ArchipelagoMW/Archipelago/blob/main/docs/network%20protocol.md#PrintJSON
		//Return true to log the text to the console, false to ignore it.
		return true;
	}
	void on_bounced(JSONRef ref)
	{
		//https://github.com/ArchipelagoMW/Archipelago/blob/main/docs/network%20protocol.md#Bounced
		
	}
	void on_retrieved(JSONRef ref)
	{
		//https://github.com/ArchipelagoMW/Archipelago/blob/main/docs/network%20protocol.md#Retrieved
		
	}
	void on_set_reply(JSONRef ref)
	{
		//https://github.com/ArchipelagoMW/Archipelago/blob/main/docs/network%20protocol.md#SetReply
		
	}
	void do_remove_location(int id)
	{
		//forcibly mark this location as "already collected"

	}
}
