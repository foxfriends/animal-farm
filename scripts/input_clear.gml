///input_clear(input);
var key = get_key(argument[0])
switch(argument[0]) {
    //Some keys always work
    case UP:
        keyboard_clear(vk_up);
        break;
    case DOWN:
        keyboard_clear(vk_down);
        break;
    case LEFT:
        keyboard_clear(vk_left);
        break;
    case RIGHT:
        keyboard_clear(vk_right);
        break;
    case ACTION:
        keyboard_clear(vk_enter);
        break;
}
keyboard_clear(key);
