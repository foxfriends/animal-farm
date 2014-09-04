///save()
with(Controller) {
    ini_open(working_directory + "/temp");
    var count;
    count[0] = 0;
    with(_unit) {
        if(object_index >= array_length_1d(count)) {
            count[object_index] = 0;
        }
        count[object_index]++;
        ini_write_real(object_get_name(object_index) + string(count[object_index]), "x", x);
        ini_write_real(object_get_name(object_index) + string(count[object_index]), "y", y);
        ini_write_real(object_get_name(object_index) + string(count[object_index]), "dx", destX);
        ini_write_real(object_get_name(object_index) + string(count[object_index]), "dy", destY);
        ini_write_real(object_get_name(object_index) + string(count[object_index]), "work", work);
        ini_write_real(object_get_name(object_index) + string(count[object_index]), "carrying", carrying);
        ini_write_real(object_get_name(object_index) + string(count[object_index]), "amount", amount);
        ini_write_real(object_get_name(object_index) + string(count[object_index]), "controllable", controllable);
        if(object_index == Cow) {
            ini_write_real(object_get_name(object_index) + string(count[object_index]), "milk", milk);
        } else if(object_index == Chicken) {
            ini_write_real(object_get_name(object_index) + string(count[object_index]), "eggs", eggs);
        }
    }
    for(var k = 0; k < instance_number(Field); k++) {
        with(instance_find(Field, k)) {
            if(object_index >= array_length_1d(count)) {
                count[object_index] = 0;
            }
            for(var i = 0; i < array_height_2d(hayMap); i++) {
                for(var j = 0; j < array_length_2d(hayMap, i); j++) {
                    ini_write_real("Field" + string(count[object_index]) + "." + string(i), string(j), hayMap[i, j]);
                }
            }
            ini_write_real("Field" + string(count[object_index]), "th", targetHeight);
            count[object_index]++;
        }
    }
    with(Hill) {
        ini_write_real("Hill", "stones", stones);
    }
    ini_write_real("Controller", "hay", hay);
    ini_write_real("Controller", "milk", milk);
    ini_write_real("Controller", "apples", apples);
    ini_write_real("Controller", "eggs", eggs);
    ini_write_real("Controller", "state", state);
    ini_write_real("Controller", "progress", progress);
    ini_write_real("Controller", "timer", timer);
    ini_close();
    var temp = file_text_open_read(working_directory + "/temp");
    var file = file_text_open_write(working_directory + "/save");
    while(!file_text_eof(temp)) {
        file_text_write_string(file, encrypt(file_text_read_string(temp)));
        file_text_readln(temp);
        file_text_writeln(file);
    }
    file_text_close(file);
    file_text_close(temp);
    file_delete(working_directory + "/temp");
    alert(window_get_width() - string_width("Game saved") - 32, window_get_height() - 32, "Game saved");
}

