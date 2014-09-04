///load()
with(Controller) {
    if(file_exists(working_directory + "/save")) {
        var file = file_text_open_read(working_directory + "/save");
        //Decrypt
        var temp = file_text_open_write(working_directory + "/temp");
        while(!file_text_eof(file)) {
            file_text_write_string(temp, decrypt(file_text_read_string(file)));
            file_text_readln(file);
            file_text_writeln(temp);
        }
        //Ini
        file_text_close(file);
        file_text_close(temp);
        ini_open(working_directory + "/temp");
        //Get information from file
        var more = true;
        var i = 0;
        while(more) {
            more = false;
            if(ini_section_exists("Pig" + string(i))) {
                with(instance_create(ini_read_real("Pig" + string(i), "x", 0), ini_read_real("Pig" + string(i), "y", 0), Pig)) {
                    work = ini_read_real("Pig" + string(i), "work", 0);
                    carrying = ini_read_real("Pig" + string(i), "carrying", 0);
                    amount = ini_read_real("Pig" + string(i), "amount", 0);
                    controllable = ini_read_real("Pig" + string(i), "controllable", true);
                    destX = ini_read_real("Pig" + string(i), "dx", x);
                    destY = ini_read_real("Pig" + string(i), "dy", y);
                }
                more = true;
            }
            if(ini_section_exists("Napoleon" + string(i))) {
                with(instance_create(ini_read_real("Napoleon" + string(i), "x", 0), ini_read_real("Napoleon" + string(i), "y", 0), Napoleon)) {
                    work = ini_read_real("Napoleon" + string(i), "work", 0);
                    carrying = ini_read_real("Napoleon" + string(i), "carrying", 0);
                    amount = ini_read_real("Napoleon" + string(i), "amount", 0);
                    controllable = ini_read_real("Napoleon" + string(i), "controllable", true);
                    destX = ini_read_real("Napoleon" + string(i), "dx", x);
                    destY = ini_read_real("Napoleon" + string(i), "dy", y);
                }
                more = true;
            }
            if(ini_section_exists("Snowball" + string(i))) {
                with(instance_create(ini_read_real("Snowball" + string(i), "x", 0), ini_read_real("Snowball" + string(i), "y", 0), Snowball)) {
                    work = ini_read_real("Snowball" + string(i), "work", 0);
                    carrying = ini_read_real("Snowball" + string(i), "carrying", 0);
                    amount = ini_read_real("Snowball" + string(i), "amount", 0);
                    controllable = ini_read_real("Snowball" + string(i), "controllable", true);
                    destX = ini_read_real("Snowball" + string(i), "dx", x);
                    destY = ini_read_real("Snowball" + string(i), "dy", y);
                }
                more = true;
            }
            if(ini_section_exists("Squealer" + string(i))) {
                with(instance_create(ini_read_real("Squealer" + string(i), "x", 0), ini_read_real("Squealer" + string(i), "y", 0), Squealer)) {
                    work = ini_read_real("Squealer" + string(i), "work", 0);
                    carrying = ini_read_real("Squealer" + string(i), "carrying", 0);
                    amount = ini_read_real("Squealer" + string(i), "amount", 0);
                    controllable = ini_read_real("Squealer" + string(i), "controllable", true);
                    destX = ini_read_real("Squealer" + string(i), "dx", x);
                    destY = ini_read_real("Squealer" + string(i), "dy", y);
                }
                more = true;
            }
            if(ini_section_exists("Cow" + string(i))) {
                with(instance_create(ini_read_real("Cow" + string(i), "x", 0), ini_read_real("Cow" + string(i), "y", 0), Cow)) {
                    work = ini_read_real("Cow" + string(i), "work", 0);
                    carrying = ini_read_real("Cow" + string(i), "carrying", 0);
                    amount = ini_read_real("Cow" + string(i), "amount", 0);
                    milk = ini_read_real("Cow" + string(i), "milk", 0);
                    controllable = ini_read_real("Cow" + string(i), "controllable", true);
                    destX = ini_read_real("Cow" + string(i), "dx", x);
                    destY = ini_read_real("Cow" + string(i), "dy", y);
                }
                more = true;
            }
            if(ini_section_exists("Horse" + string(i))) {
                with(instance_create(ini_read_real("Horse" + string(i), "x", 0), ini_read_real("Horse" + string(i), "y", 0), Horse)) {
                    work = ini_read_real("Horse" + string(i), "work", 0);
                    carrying = ini_read_real("Horse" + string(i), "carrying", 0);
                    amount = ini_read_real("Horse" + string(i), "amount", 0);
                    controllable = ini_read_real("Horse" + string(i), "controllable", true);
                    destX = ini_read_real("Horse" + string(i), "dx", x);
                    destY = ini_read_real("Horse" + string(i), "dy", y);
                }
                more = true;
            }
            if(ini_section_exists("Boxer" + string(i))) {
                with(instance_create(ini_read_real("Boxer" + string(i), "x", 0), ini_read_real("Boxer" + string(i), "y", 0), Boxer)) {
                    work = ini_read_real("Boxer" + string(i), "work", 0);
                    carrying = ini_read_real("Boxer" + string(i), "carrying", 0);
                    amount = ini_read_real("Boxer" + string(i), "amount", 0);
                    controllable = ini_read_real("Boxer" + string(i), "controllable", true);
                    destX = ini_read_real("Boxer" + string(i), "dx", x);
                    destY = ini_read_real("Boxer" + string(i), "dy", y);
                }
                more = true;
            }
            if(ini_section_exists("Sheep" + string(i))) {
                with(instance_create(ini_read_real("Sheep" + string(i), "x", 0), ini_read_real("Sheep" + string(i), "y", 0), Sheep)) {
                    work = ini_read_real("Sheep" + string(i), "work", 0);
                    carrying = ini_read_real("Sheep" + string(i), "carrying", 0);
                    amount = ini_read_real("Sheep" + string(i), "amount", 0);
                    controllable = ini_read_real("Sheep" + string(i), "controllable", true);
                    destX = ini_read_real("Sheep" + string(i), "dx", x);
                    destY = ini_read_real("Sheep" + string(i), "dy", y);
                }
                more = true;
            }
            if(ini_section_exists("Chicken" + string(i))) {
                with(instance_create(ini_read_real("Chicken" + string(i), "x", 0), ini_read_real("Chicken" + string(i), "y", 0), Chicken)) {
                    work = ini_read_real("Chicken" + string(i), "work", 0);
                    carrying = ini_read_real("Chicken" + string(i), "carrying", 0);
                    amount = ini_read_real("Chicken" + string(i), "amount", 0);
                    eggs = ini_read_real("Chicken" + string(i), "eggs", 0);
                    controllable = ini_read_real("Chicken" + string(i), "controllable", true);
                    destX = ini_read_real("Chicken" + string(i), "dx", x);
                    destY = ini_read_real("Chicken" + string(i), "dy", y);
                }
                more = true;
            }
            if(ini_section_exists("Dog" + string(i))) {
                with(instance_create(ini_read_real("Dog" + string(i), "x", 0), ini_read_real("Dog" + string(i), "y", 0), Dog)) {
                    work = ini_read_real("Dog" + string(i), "work", 0);
                    carrying = ini_read_real("Dog" + string(i), "carrying", 0);
                    amount = ini_read_real("Dog" + string(i), "amount", 0);
                    controllable = ini_read_real("Dog" + string(i), "controllable", true);
                    destX = ini_read_real("Dog" + string(i), "dx", x);
                    destY = ini_read_real("Dog" + string(i), "dy", y);
                }
                more = true;
            }
            if(ini_section_exists("Cat" + string(i))) {
                with(instance_create(ini_read_real("Cat" + string(i), "x", 0), ini_read_real("Cat" + string(i), "y", 0), Cat)) {
                    work = ini_read_real("Cat" + string(i), "work", 0);
                    carrying = ini_read_real("Cat" + string(i), "carrying", 0);
                    amount = ini_read_real("Cat" + string(i), "amount", 0);
                    controllable = ini_read_real("Cat" + string(i), "controllable", true);
                    destX = ini_read_real("Cat" + string(i), "dx", x);
                    destY = ini_read_real("Cat" + string(i), "dy", y);
                }
                more = true;
            }
            if(ini_section_exists("Benjamin" + string(i))) {
                with(instance_create(ini_read_real("Benjamin" + string(i), "x", 0), ini_read_real("Benjamin" + string(i), "y", 0), Benjamin)) {
                    work = ini_read_real("Benjamin" + string(i), "work", 0);
                    carrying = ini_read_real("Benjamin" + string(i), "carrying", 0);
                    amount = ini_read_real("Benjamin" + string(i), "amount", 0);
                    controllable = ini_read_real("Benjamin" + string(i), "controllable", true);
                    destX = ini_read_real("Benjamin" + string(i), "dx", x);
                    destY = ini_read_real("Benjamin" + string(i), "dy", y);
                }
                more = true;
            }
            if(ini_section_exists("Jones" + string(i))) {
                with(instance_create(ini_read_real("Jones" + string(i), "x", 0), ini_read_real("Jones" + string(i), "y", 0), Jones)) {
                    work = ini_read_real("Jones" + string(i), "work", 0);
                    carrying = ini_read_real("Jones" + string(i), "carrying", 0);
                    amount = ini_read_real("Jones" + string(i), "amount", 0);
                    controllable = ini_read_real("Jones" + string(i), "controllable", true);
                    destX = ini_read_real("Jones" + string(i), "dx", x);
                    destY = ini_read_real("Jones" + string(i), "dy", y);
                }
                more = true;
            }
            if(ini_section_exists("Farmer" + string(i))) {
                with(instance_create(ini_read_real("Farmer" + string(i), "x", 0), ini_read_real("Farmer" + string(i), "y", 0), Farmer)) {
                    work = ini_read_real("Farmer" + string(i), "work", 0);
                    carrying = ini_read_real("Farmer" + string(i), "carrying", 0);
                    amount = ini_read_real("Farmer" + string(i), "amount", 0);
                    controllable = ini_read_real("Farmer" + string(i), "controllable", true);
                    destX = ini_read_real("Farmer" + string(i), "dx", x);
                    destY = ini_read_real("Farmer" + string(i), "dy", y);
                }
                more = true;
            }
            if(i < instance_number(Field)) {
                with(instance_find(Field, i)) {
                    for(var j = 0; j < array_height_2d(hayMap); j++) {
                        for(var k = 0; k < array_length_2d(hayMap, j); k++) {
                            hayMap[j, k] = ini_read_real("Field" + string(i) + "." + string(j), string(k), true);
                        }
                    }
                    targetHeight = ini_read_real("Field" + string(i), "th", 1);
                }
                more = true;
            }
            i++;
        }
        with(Hill) {
            stones = ini_read_real("Hill", "stones", 0);
        }
        milk = ini_read_real("Controller", "milk", 0);
        hay = ini_read_real("Controller", "hay", 0);
        eggs = ini_read_real("Controller", "eggs", 0);
        apples = ini_read_real("Controller", "apples", 0);
        state = ini_read_real("Controller", "state", 0);
        progress = ini_read_real("Controller", "progress", 0);
        timer = ini_read_real("Controller", "timer", 0);
        ini_close();
        file_delete(working_directory + "/temp");
    } else {
        alert(window_get_width() / 2 - string_width("No save file exists") / 2, 16, "No save file exists");
    }
}
