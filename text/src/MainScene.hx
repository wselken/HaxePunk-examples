import haxepunk.HXP;
import haxepunk.Scene;
import haxepunk.graphics.Text;

class MainScene extends Scene
{
	static inline var ROW_HEIGHT:Int = 32;

	public override function begin()
	{
		HXP.stage.color = 0x008080;

		var count:Int = 0;

		var label = new Text("Normal text");
		label.smooth = false;
		addGraphic(label).y = ROW_HEIGHT * (++count);

		var label = new Text("Colored text");
		label.color = 0xff0000;
		label.smooth = false;
		addGraphic(label).y = ROW_HEIGHT * (++count);

		var label = new Text("Smooth text");
		label.smooth = true;
		addGraphic(label).y = ROW_HEIGHT * (++count);

		var options:TextOptions = {size: 24};
		var label = new Text("Sized text", options);
		label.smooth = true;
		addGraphic(label).y = ROW_HEIGHT * (++count);

		var options:TextOptions = {size: 24, color: 0, border: {style: Outline, size: 1, color: 0xffffff, alpha: 0.75}}
		var label = new Text("Outlined text", options);
		label.smooth = true;
		addGraphic(label).y = ROW_HEIGHT * (++count);

		var options:TextOptions = {size: 24, color: 0xff0000, border: {style: Outline, size: 4, color: 0xff0000, alpha: 0.5}}
		var label = new Text("Big outlined text", options);
		label.smooth = true;
		addGraphic(label).y = ROW_HEIGHT * (++count);

		var options:TextOptions = {size: 24, color: 0xffffff, border: {style: Shadow, size: 4, color: 0, alpha: 0.75}}
		var label = new Text("Shadowed text", 0, 0, 0, 0, options);
		label.smooth = true;
		addGraphic(label).y = ROW_HEIGHT * (++count);

		var options:TextOptions = {size: 24, color: 0, border: {style: Shadow, size: 2, color: 0xffffff, alpha: 0.75}}
		var label = new Text("Inverted shadowed text", 0, 0, 0, 0, options);
		label.smooth = true;
		addGraphic(label).y = ROW_HEIGHT * (++count);

		var options:TextOptions = {size: 24, color: 0, border: {style: Outline, size: 2, color: 0xffffff, alpha: 1}}
		var label = new Text("Rich text", options);
		label.addStyle("blue", new flash.text.TextFormat(null, null, 0x0000ff));
		label.addStyle("green", new flash.text.TextFormat(null, null, 0x00ff00));
		label.smooth = true;
		label.richText = "This is <blue>rich</blue> <green>text</green>!";
		addGraphic(label).y = ROW_HEIGHT * (++count);
	}
}
