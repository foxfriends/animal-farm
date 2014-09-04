//#define pause
///pause() 
/*
Takes an image of the screen, then deactivates all instances,
except controllers. The image must then be drawn, generally
by a controller.
*/
with(Controller) {
    if(!sprite_exists(sPause)) {
        //Create an image from the screen
        sPause = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false, false, 0, 0);
        //Deactivate all instances to prevent them from moving around
        instance_deactivate_all(true);
        //If you have any controllers that shouldn't be deactivated, reactivate them here
        instance_activate_object(_menu);
        instance_activate_object(DialogController);
        instance_activate_object(Controller);
    }
}
