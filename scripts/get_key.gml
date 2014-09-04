///get_key(input);
/* Returns the key associated with the input
at the current control scheme */
switch(Controller.controls) {
    default:
        keys[CANCEL] = ord("C");
        keys[MENU] = vk_escape;
        keys[ACTION] = ord("X");
        keys[RIGHT] = vk_right;
        keys[LEFT] = vk_left;
        keys[DOWN] = vk_down;
        keys[UP] = vk_up;
        keys[SUBSELECT] = vk_alt;
        keys[ADDSELECT] = vk_control;
        keys[TYPESELECT] = vk_shift;
        keys[ANY_DIR] = noone;
        keys[SPEEDUP] = ord("Z");
        break;
}
return keys[argument[0]];
