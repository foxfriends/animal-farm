///alert(x, y, message);
/* Show an alert that only lasts a short time
and moves and fades out to get attention */
with(Controller) {
    alertX = argument[0];
    alertY = argument[1];
    alertText = argument[2];
    alertTimer = 3 * room_speed;
}
