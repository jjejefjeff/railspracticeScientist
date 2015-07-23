class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
#   def first
#     @name = "Bill Nye"
#     @imgurl = "http://vignette2.wikia.nocookie.net/drunken-peasants-podcast/images/e/eb/BillNyeTheScienceMan.jpg/revision/latest?cb=20150322224814"
#     @location = "Los Angeles"
#     @membersince = "1985"
#     @completion = "70"
#     @description = "William Sanford \"Bill\" Nye[1] (born November 27, 1955), popularly known as Bill Nye the Science Guy, is an American science educator, comedian, television host, actor, writer, scientist, and former mechanical engineer, best known as the host of the Disney/PBS children's science show Bill Nye the Science Guy (1993–98) and for his many subsequent appearances in popular media as a science educator."
#     render 'show'
#   end 
#   def second
#     @name = "Neil deGrasse Tyson"
#     @imgurl = "http://www.brainpickings.org/wp-content/uploads/2012/10/neildegrassetyson.jpg"
#     @location = "Manhattan"
#     @membersince = "1990"
#     @completion = "80"
#     @description = "Neil deGrasse Tyson (/ˈniːəl dəˈɡræs ˈtaɪsən/; born October 5, 1958) is an American astrophysicist, cosmologist, author, and science communicator. Since 1996, he has been the Frederick P. Rose Director of the Hayden Planetarium at the Rose Center for Earth and Space in New York City. The center is part of the American Museum of Natural History, where Tyson founded the Department of Astrophysics in 1997 and has been a research associate in the department since 2003."
#     render 'show'
#     end   
#   def third
#     @name = "Carl Sagan"
#     @imgurl = "http://www.myclassiclyrics.com/artist_biographies/images/Carl_Sagan_Biography.jpg"
#     @location = "Brooklyn"
#     @membersince = "1970"
#     @completion = "95"
#     @description = "Carl Edward Sagan (/ˈseɪɡən/; November 9, 1934 – December 20, 1996) was an American astronomer, cosmologist, astrophysicist, astrobiologist, author, science popularizer, and science communicator in astronomy and other natural sciences. His contributions were central to the discovery of the high surface temperatures of Venus. However, he is best known for his contributions to the scientific research of extraterrestrial life, including experimental demonstration of the production of amino acids from basic chemicals by radiation. Sagan assembled the first physical messages that were sent into space: the Pioneer plaque and the Voyager Golden Record, universal messages that could potentially be understood by any extraterrestrial intelligence that might find them."
#     render 'show'
#     end
  
  def show
    @scientist = Scientist.find_by_id(params['id'])
    
      
  end
  
end
