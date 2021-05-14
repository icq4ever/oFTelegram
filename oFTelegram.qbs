import qbs
import qbs.Process
import qbs.File
import qbs.FileInfo
import qbs.TextFile
import "../../../libs/openFrameworksCompiled/project/qtcreator/ofApp.qbs" as ofApp

Project{
    property string of_root: "../../.."

    ofApp {
        name: { return FileInfo.baseName(sourceDirectory) }

        files: [
            'src/main.cpp',
            'src/ofApp.cpp',
            'src/ofApp.h',
            'src/tgbot-cpp/include/tgbot/Api.h',
            'src/tgbot-cpp/include/tgbot/Bot.h',
            'src/tgbot-cpp/include/tgbot/EventBroadcaster.h',
            'src/tgbot-cpp/include/tgbot/EventHandler.h',
            'src/tgbot-cpp/include/tgbot/TgException.h',
            'src/tgbot-cpp/include/tgbot/TgTypeParser.h',
            'src/tgbot-cpp/include/tgbot/export.h',
            'src/tgbot-cpp/include/tgbot/net/BoostHttpOnlySslClient.h',
            'src/tgbot-cpp/include/tgbot/net/CurlHttpClient.h',
            'src/tgbot-cpp/include/tgbot/net/HttpClient.h',
            'src/tgbot-cpp/include/tgbot/net/HttpParser.h',
            'src/tgbot-cpp/include/tgbot/net/HttpReqArg.h',
            'src/tgbot-cpp/include/tgbot/net/HttpServer.h',
            'src/tgbot-cpp/include/tgbot/net/TgLongPoll.h',
            'src/tgbot-cpp/include/tgbot/net/TgWebhookLocalServer.h',
            'src/tgbot-cpp/include/tgbot/net/TgWebhookServer.h',
            'src/tgbot-cpp/include/tgbot/net/TgWebhookTcpServer.h',
            'src/tgbot-cpp/include/tgbot/net/Url.h',
            'src/tgbot-cpp/include/tgbot/tgbot.h',
            'src/tgbot-cpp/include/tgbot/tools/FileTools.h',
            'src/tgbot-cpp/include/tgbot/tools/StringTools.h',
            'src/tgbot-cpp/include/tgbot/types/Animation.h',
            'src/tgbot-cpp/include/tgbot/types/Audio.h',
            'src/tgbot-cpp/include/tgbot/types/BotCommand.h',
            'src/tgbot-cpp/include/tgbot/types/CallbackGame.h',
            'src/tgbot-cpp/include/tgbot/types/CallbackQuery.h',
            'src/tgbot-cpp/include/tgbot/types/Chat.h',
            'src/tgbot-cpp/include/tgbot/types/ChatMember.h',
            'src/tgbot-cpp/include/tgbot/types/ChatPermissions.h',
            'src/tgbot-cpp/include/tgbot/types/ChatPhoto.h',
            'src/tgbot-cpp/include/tgbot/types/ChosenInlineResult.h',
            'src/tgbot-cpp/include/tgbot/types/Contact.h',
            'src/tgbot-cpp/include/tgbot/types/Document.h',
            'src/tgbot-cpp/include/tgbot/types/File.h',
            'src/tgbot-cpp/include/tgbot/types/ForceReply.h',
            'src/tgbot-cpp/include/tgbot/types/Game.h',
            'src/tgbot-cpp/include/tgbot/types/GameHighScore.h',
            'src/tgbot-cpp/include/tgbot/types/GenericReply.h',
            'src/tgbot-cpp/include/tgbot/types/InlineKeyboardButton.h',
            'src/tgbot-cpp/include/tgbot/types/InlineKeyboardMarkup.h',
            'src/tgbot-cpp/include/tgbot/types/InlineQuery.h',
            'src/tgbot-cpp/include/tgbot/types/InlineQueryResult.h',
            'src/tgbot-cpp/include/tgbot/types/InlineQueryResultArticle.h',
            'src/tgbot-cpp/include/tgbot/types/InlineQueryResultAudio.h',
            'src/tgbot-cpp/include/tgbot/types/InlineQueryResultCachedAudio.h',
            'src/tgbot-cpp/include/tgbot/types/InlineQueryResultCachedDocument.h',
            'src/tgbot-cpp/include/tgbot/types/InlineQueryResultCachedGif.h',
            'src/tgbot-cpp/include/tgbot/types/InlineQueryResultCachedMpeg4Gif.h',
            'src/tgbot-cpp/include/tgbot/types/InlineQueryResultCachedPhoto.h',
            'src/tgbot-cpp/include/tgbot/types/InlineQueryResultCachedSticker.h',
            'src/tgbot-cpp/include/tgbot/types/InlineQueryResultCachedVideo.h',
            'src/tgbot-cpp/include/tgbot/types/InlineQueryResultCachedVoice.h',
            'src/tgbot-cpp/include/tgbot/types/InlineQueryResultContact.h',
            'src/tgbot-cpp/include/tgbot/types/InlineQueryResultDocument.h',
            'src/tgbot-cpp/include/tgbot/types/InlineQueryResultGame.h',
            'src/tgbot-cpp/include/tgbot/types/InlineQueryResultGif.h',
            'src/tgbot-cpp/include/tgbot/types/InlineQueryResultLocation.h',
            'src/tgbot-cpp/include/tgbot/types/InlineQueryResultMpeg4Gif.h',
            'src/tgbot-cpp/include/tgbot/types/InlineQueryResultPhoto.h',
            'src/tgbot-cpp/include/tgbot/types/InlineQueryResultVenue.h',
            'src/tgbot-cpp/include/tgbot/types/InlineQueryResultVideo.h',
            'src/tgbot-cpp/include/tgbot/types/InlineQueryResultVoice.h',
            'src/tgbot-cpp/include/tgbot/types/InputContactMessageContent.h',
            'src/tgbot-cpp/include/tgbot/types/InputFile.h',
            'src/tgbot-cpp/include/tgbot/types/InputLocationMessageContent.h',
            'src/tgbot-cpp/include/tgbot/types/InputMedia.h',
            'src/tgbot-cpp/include/tgbot/types/InputMediaAnimation.h',
            'src/tgbot-cpp/include/tgbot/types/InputMediaAudio.h',
            'src/tgbot-cpp/include/tgbot/types/InputMediaDocument.h',
            'src/tgbot-cpp/include/tgbot/types/InputMediaPhoto.h',
            'src/tgbot-cpp/include/tgbot/types/InputMediaVideo.h',
            'src/tgbot-cpp/include/tgbot/types/InputMessageContent.h',
            'src/tgbot-cpp/include/tgbot/types/InputTextMessageContent.h',
            'src/tgbot-cpp/include/tgbot/types/InputVenueMessageContent.h',
            'src/tgbot-cpp/include/tgbot/types/Invoice.h',
            'src/tgbot-cpp/include/tgbot/types/KeyboardButton.h',
            'src/tgbot-cpp/include/tgbot/types/LabeledPrice.h',
            'src/tgbot-cpp/include/tgbot/types/Location.h',
            'src/tgbot-cpp/include/tgbot/types/LoginUrl.h',
            'src/tgbot-cpp/include/tgbot/types/MaskPosition.h',
            'src/tgbot-cpp/include/tgbot/types/Message.h',
            'src/tgbot-cpp/include/tgbot/types/MessageEntity.h',
            'src/tgbot-cpp/include/tgbot/types/OrderInfo.h',
            'src/tgbot-cpp/include/tgbot/types/PhotoSize.h',
            'src/tgbot-cpp/include/tgbot/types/Poll.h',
            'src/tgbot-cpp/include/tgbot/types/PollOption.h',
            'src/tgbot-cpp/include/tgbot/types/PreCheckoutQuery.h',
            'src/tgbot-cpp/include/tgbot/types/ReplyKeyboardMarkup.h',
            'src/tgbot-cpp/include/tgbot/types/ReplyKeyboardRemove.h',
            'src/tgbot-cpp/include/tgbot/types/ResponseParameters.h',
            'src/tgbot-cpp/include/tgbot/types/ShippingAddress.h',
            'src/tgbot-cpp/include/tgbot/types/ShippingOption.h',
            'src/tgbot-cpp/include/tgbot/types/ShippingQuery.h',
            'src/tgbot-cpp/include/tgbot/types/Sticker.h',
            'src/tgbot-cpp/include/tgbot/types/StickerSet.h',
            'src/tgbot-cpp/include/tgbot/types/SuccessfulPayment.h',
            'src/tgbot-cpp/include/tgbot/types/Update.h',
            'src/tgbot-cpp/include/tgbot/types/User.h',
            'src/tgbot-cpp/include/tgbot/types/UserProfilePhotos.h',
            'src/tgbot-cpp/include/tgbot/types/Venue.h',
            'src/tgbot-cpp/include/tgbot/types/Video.h',
            'src/tgbot-cpp/include/tgbot/types/VideoNote.h',
            'src/tgbot-cpp/include/tgbot/types/Voice.h',
            'src/tgbot-cpp/include/tgbot/types/WebhookInfo.h',
            'src/tgbot-cpp/src/Api.cpp',
            'src/tgbot-cpp/src/Bot.cpp',
            'src/tgbot-cpp/src/EventHandler.cpp',
            'src/tgbot-cpp/src/TgException.cpp',
            'src/tgbot-cpp/src/TgTypeParser.cpp',
            'src/tgbot-cpp/src/net/BoostHttpOnlySslClient.cpp',
            'src/tgbot-cpp/src/net/CurlHttpClient.cpp',
            'src/tgbot-cpp/src/net/HttpParser.cpp',
            'src/tgbot-cpp/src/net/TgLongPoll.cpp',
            'src/tgbot-cpp/src/net/Url.cpp',
            'src/tgbot-cpp/src/tools/FileTools.cpp',
            'src/tgbot-cpp/src/tools/StringTools.cpp',
            'src/tgbot-cpp/src/types/InlineQueryResult.cpp',
            'src/tgbot-cpp/src/types/InputFile.cpp',
        ]

        of.addons: [
        ]

        // additional flags for the project. the of module sets some
        // flags by default to add the core libraries, search paths...
        // this flags can be augmented through the following properties:
        of.pkgConfigs: []       // list of additional system pkgs to include
        of.includePaths: []     // include search paths
        of.cFlags: []           // flags passed to the c compiler
        of.cxxFlags: []         // flags passed to the c++ compiler
        of.linkerFlags: []      // flags passed to the linker
        of.defines: []          // defines are passed as -D to the compiler
                                // and can be checked with #ifdef or #if in the code
        of.frameworks: []       // osx only, additional frameworks to link with the project
        of.staticLibraries: []  // static libraries
        of.dynamicLibraries: [] // dynamic libraries

        // other flags can be set through the cpp module: http://doc.qt.io/qbs/cpp-module.html
        // eg: this will enable ccache when compiling
        //
        // cpp.compilerWrapper: 'ccache'

        Depends{
            name: "cpp"
        }

        // common rules that parse the include search paths, core libraries...
        Depends{
            name: "of"
        }

        // dependency with the OF library
        Depends{
            name: "openFrameworks"
        }
    }

    property bool makeOF: true  // use makfiles to compile the OF library
                                // will compile OF only once for all your projects
                                // otherwise compiled per project with qbs
    

    property bool precompileOfMain: false  // precompile ofMain.h
                                           // faster to recompile when including ofMain.h 
                                           // but might use a lot of space per project

    references: [FileInfo.joinPaths(of_root, "/libs/openFrameworksCompiled/project/qtcreator/openFrameworks.qbs")]
}
