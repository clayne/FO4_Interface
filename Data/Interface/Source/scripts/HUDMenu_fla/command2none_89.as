package HUDMenu_fla
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public dynamic class command2none_89 extends MovieClip
   {
       
      public var Left:MovieClip;
      
      public var Up:MovieClip;
      
      public var Down:MovieClip;
      
      public var Right:MovieClip;
      
      public function command2none_89()
      {
         super();
         addFrameScript(0,this.frame1,6,this.frame7);
      }
      
      function frame1() : *
      {
         stop();
      }
      
      function frame7() : *
      {
         dispatchEvent(new Event("animationComplete"));
      }
   }
}
