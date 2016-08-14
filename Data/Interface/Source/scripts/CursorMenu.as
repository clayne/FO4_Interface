﻿package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class CursorMenu extends MovieClip
   {
       
      public var Cursor_mc:MovieClip;
      
      public function CursorMenu()
      {
         super();
         this.x = -100;
         this.y = -100;
         addEventListener(Event.ADDED_TO_STAGE,this.onStageInit);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onStageDestruct);
      }
      
      private function onStageInit(e:Event) : *
      {
         stage.stageFocusRect = false;
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMovement);
      }
      
      private function onStageDestruct(e:Event) : *
      {
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMovement);
      }
      
      private function onMouseMovement(e:Event) : *
      {
         this.x = stage.mouseX;
         this.y = stage.mouseY;
      }
   }
}
