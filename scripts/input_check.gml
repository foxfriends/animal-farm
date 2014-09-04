///input_check(input);
var key = get_key(argument[0]);
switch(argument[0]) {
    //Some keys always work
    case UP:
        if(keyboard_check(vk_up)) {
            return true;
        }
        break;
    case DOWN:
        if(keyboard_check(vk_down)) {
            return true;
        }
        break;
    case LEFT:
        if(keyboard_check(vk_left)) {
            return true;
        }
        break;
    case RIGHT:
        if(keyboard_check(vk_right)) {
            return true;
        }
        break;
    case ACTION:
        if(keyboard_check(vk_enter)) {
            return true;
        }
        break;
    case ANY_DIR:
        return input_check(LEFT) || input_check(RIGHT) || input_check(UP) || input_check(DOWN);
        break;
}
return keyboard_check(key);
