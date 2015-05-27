module Lita
  module Handlers
    class ClayDavis < Handler

      route(/^claydavis$/, :claydavis, command: false, help: { "claydavis" => "Posts the Clay Davis gif."} )
      route(/^\(claydavis\)$/, :claydavis, command: false, help: { "claydavis" => "Posts the Clay Davis gif."} )
      route(/^claydavis\syoutube$/, :claydavis_youtube, command: false, help: { "claydavis youtube" => "Posts the Clay Davis youtube video."} )
      route(/^claydavis\sgif$/, :claydavis_gif, command: false, help: { "claydavis gif" => "Posts the Clay Davis gif."} )
      route(/sheee+it/, :claydavis_gif, command: false, help: { "sheee+it" => "Posts the Clay Davis gif."} )


      def claydavis(request)
        request.reply("http://www.animoller.com/old-blog/images/2010/09/sheeeet.gif")
      end

      def claydavis_youtube(request)
        request.reply("https://youtu.be/1-ykugiRKyM")
      end

      def claydavis_gif(request)
        request.reply("http://i.imgur.com/nv9hR03.gif")
      end

    end

    Lita.register_handler(ClayDavis)

  end
end
