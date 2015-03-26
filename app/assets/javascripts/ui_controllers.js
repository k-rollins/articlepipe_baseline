(function(){

  var app = angular.module('fresher', []);

  app.controller('MenuController', function() {

    var menu = this;
    menu.pattyCake = "Baker's Man!";
    
  });

  app.controller('DingDongController', function() {
      var buzzer = this;  
      buzzer.doorbell = "buzz buzz";
  
  });


  var profile = 
    {
      display_name: "3rdeconomy",
      tagline: "Co-learning and Confabulation",
      bio: "Created in January 2015, 3rdeconomy is a community for practicing and sharing resources about co-learning",
      person_url: "http://3rdeconomy.com"
    }
    


  app.controller('PageController', function(){
   
    this.profile = profile;  

  });


})();
