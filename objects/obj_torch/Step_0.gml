if instance_exists(obj_lamp) {
	if obj_lamp.is_on == true { is_on = false }
	else { is_on = true }
}

if (is_on)
{
    if (!instance_exists(light_instance))
    {
        light_instance = instance_create_layer(x, y, "Instances", obj_lighting);
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