/// scr_menu()

switch(cursor_pos)
{
    case 0: // Start
    {
        room_goto_next();
        break;
    }
    case 1: // Continue
    {
        // PLACEHOLDER
        break;
    }
    case 2: // Class Select
    {
        // PLACEHOLDER
        break;
    }
    case 3: // Options
    {
        // PLACEHOLDER
        break;
    }
    case 4: // Quit
    {
        game_end();
        break;
    }
    
    
    default: // Unknown Option
    {
        break;
    }
}
