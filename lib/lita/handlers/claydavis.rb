module Lita
  module Handlers
    class ClayDavis < Handler

      route(/^claydavis youtube/, :claydavis_youtube, command: false, help: { "claydavis youtube" => "Posts the Clay Davis youtube video."} )
      route(/^claydavis gif/, :claydavis_gif, command: false, help: { "claydavis gif" => "Posts the Clay Davis gif."} )

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
