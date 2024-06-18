package states.stages;

import states.stages.objects.*;
import objects.Character;

class HisRoad extends BaseStage
{
	var hisroadBlack:BGSprite;
	var hisroadLight:BGSprite;
	override function create()
	{
		var bg:BGSprite = new BGSprite('BG', -680, -10, 0.7, 1);
		bg.setGraphicSize(Std.int(bg.width * 0.55));
		add(bg);

		var brickBridge:BGSprite = new BGSprite('Bridge', -160, 550, 1, 1);
		brickBridge.setGraphicSize(Std.int(brickBridge.width * 1));
		brickBridge.updateHitbox();
		add(brickBridge);


		if(!ClientPrefs.data.lowQuality) {
			// var stageLight:BGSprite = new BGSprite('stage_light', -125, -100, 0.9, 0.9);
			// stageLight.setGraphicSize(Std.int(stageLight.width * 1.1));
			// stageLight.updateHitbox();
			// add(stageLight);
			// var stageLight:BGSprite = new BGSprite('stage_light', 1225, -100, 0.9, 0.9);
			// stageLight.setGraphicSize(Std.int(stageLight.width * 1.1));
			// stageLight.updateHitbox();
			// stageLight.flipX = true;
			// add(stageLight);

			// var stageCurtains:BGSprite = new BGSprite('stagecurtains', -500, -300, 1.3, 1.3);
			// stageCurtains.setGraphicSize(Std.int(stageCurtains.width * 0.9));
			// stageCurtains.updateHitbox();
			// add(stageCurtains);
		}
	}

	override function createPost() {
		super.createPost();
		hisroadBlack = new BGSprite(null, -800, -400, 0, 0);
		hisroadBlack.makeGraphic(Std.int(FlxG.width * 2), Std.int(FlxG.height * 2), FlxColor.BLACK);
		hisroadBlack.alpha = 0.80;
		// hisroadBlack.blend = LAYER;
		hisroadBlack.visible = true;
		add(hisroadBlack);

		// hisroadLight = new BGSprite('light', 110, 190);
		// hisroadLight.alpha = 0.20;
		// hisroadLight.blend = ERASE;
		// hisroadLight.visible = false;
		// hisroadLight.setGraphicSize(Std.int(hisroadLight.width * 1));
		// add
		// add(hisroadLight);
		
	}

	override function eventPushed(event:objects.Note.EventNote)
	{
		switch(event.event)
		{
			case "His Road lights On Animation":
				// hisroadBlack = new BGSprite(null, -800, -400, 0, 0);
				// hisroadBlack.makeGraphic(Std.int(FlxG.width * 2), Std.int(FlxG.height * 2), FlxColor.BLACK);
				// hisroadBlack.alpha = 0.50;
				// hisroadBlack.visible = false;
				// add(hisroadBlack);
		}
	}

	override function eventCalled(eventName:String, value1:String, value2:String, flValue1:Null<Float>, flValue2:Null<Float>, strumTime:Float)
	{
		switch(eventName) {
			case "His Road lights On Animation":
				if(flValue1 == null) flValue1 = 0;
				var val:Int = Math.round(flValue1);

				if(val == 1) {
					// enable la weaita
					FlxTween.tween(hisroadBlack, {alpha: 0}, 0.7, {onComplete: function(twn:FlxTween) hisroadBlack.visible = false});
				}

				// if(val == 2) {
				// 	//luz qliaa xd 
				// 	hisroadLight.visible = true;
				// }
		}
		// switch(eventName)
		// {
		// 	case "hisroad Spotlight":
				// if(flValue1 == null) flValue1 = 0;
				// var val:Int = Math.round(flValue1);

		// 		switch(val)
		// 		{
		// 			case 1, 2, 3: //enable and target dad
		// 				if(val == 1) //enable
		// 				{
		// 					hisroadBlack.visible = true;
		// 					hisroadLight.visible = true;
		// 					hisroadFog.visible = true;
		// 					defaultCamZoom += 0.12;
		// 				}

		// 				var who:Character = dad;
		// 				if(val > 2) who = boyfriend;
		// 				//2 only targets dad
		// 				hisroadLight.alpha = 0;
		// 				new FlxTimer().start(0.12, function(tmr:FlxTimer) {
		// 					hisroadLight.alpha = 0.375;
		// 				});
		// 				hisroadLight.setPosition(who.getGraphicMidpoint().x - hisroadLight.width / 2, who.y + who.height - hisroadLight.height + 50);
		// 				FlxTween.tween(hisroadFog, {alpha: 0.7}, 1.5, {ease: FlxEase.quadInOut});

		// 			default:
		// 				hisroadBlack.visible = false;
		// 				hisroadLight.visible = false;
		// 				defaultCamZoom -= 0.12;
		// 				FlxTween.tween(hisroadFog, {alpha: 0}, 0.7, {onComplete: function(twn:FlxTween) hisroadFog.visible = false});
		// 		}
		// }
	}
}