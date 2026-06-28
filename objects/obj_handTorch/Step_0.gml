if (dragging)
{
    x = mouse_x + offset_x;
    y = mouse_y + offset_y;
}


if (is_on)
{
    if (!instance_exists(light_instance))
    {
        light_instance = instance_create_layer(x, y, "Instances", obj_big_lighting);
    }

    // Keep the light attached to the torch
    light_instance.x = x+2
    light_instance.y = y+2;
}
else
{
    if (instance_exists(light_instance))
    {
        instance_destroy(light_instance);
        light_instance = noone;
    }
}