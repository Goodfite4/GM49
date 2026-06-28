if (!activated)
{
    activated = true;

    with (target_object)
    {
        var xx = x;
        var yy = y;
        var lay = layer;

        instance_destroy();

        instance_create_layer(xx, yy, lay, other.replacement_object);
		room_goto(rm_ending);

    }
}