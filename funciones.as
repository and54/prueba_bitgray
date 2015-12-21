function avanzar(evento:Event):void {
	var mc:MovieClip = MovieClip(evento.currentTarget);
	if(mc.ava){
		if(mc.currentFrame==mc.totalFrames){
			mc.removeEventListener(Event.ENTER_FRAME, avanzar);
			if(this["termino_avance"] != undefined)this["termino_avance"](mc, "avanzar");
		}else mc.nextFrame();
	}else {
		if(mc.currentFrame==1){
			mc.removeEventListener(Event.ENTER_FRAME, avanzar);
			if(this["termino_avance"] != undefined)this["termino_avance"](mc, "avanzar");
		}else if(mc.perm || mc.perm==null)mc.prevFrame();
	}
}
function verificar_correo(txt:String):Boolean {
	var a:int = txt.indexOf("@");
	var p:int = txt.indexOf(".", a);
	if(a>=2 && p>=a+2 && p<txt.length-2)return true;
	else return false;
}
function borrar_todo(mc:MovieClip):void {
	mc.graphics.clear();
	for (var i:int=mc.numChildren-1; i>=0; i--) {
		mc.removeChildAt(i);
	}
}
function randomizar(num1:int, num2:int):int {
	return Math.floor(Math.random()*(num2-num1))+num1;
}
