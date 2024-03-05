namespace Archipelago::Settings
{
    void ap_get_game(char32 buf) //Return your game name
    {
        sprintf(buf, "Your Game Title");
    }
    long items_handling() //return your item handling mode
    {
        return 101Lb;
    }
    void add_tags(JSONRef ref) //Add your tags
    {
        ref->add_indx_str("ZQuest Classic");
    }
}
