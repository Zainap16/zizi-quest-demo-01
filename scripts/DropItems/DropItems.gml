function DropItems(item_x,item_y,items){
	
	var _itemsLen = array_length(items);

	
	if(_itemsLen > 1)
	{
		var _anglePerItem = 360/_itemsLen;
		var _angle = random(360);
		for (var i = 0; i < _itemsLen; i++)
		{
			with(instance_create_layer(item_x, item_y, "Instances",items[0]))
			{
				direction = _angle;
				spd = 0.75 + (_itemsLen * 0.1) + random(0.1);
			}
			_angle += _anglePerItem;
		}
		
		
	}else instance_create_layer(item_x, item_y, "Instances",items[0]);
	
	}