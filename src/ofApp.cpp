#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    tgToken = "1847036846:AAHSXeiDLtGYdmWIoLwvkRVrsJDVZ_PtzCc";
    channelID = -1001443940495;
    bot = new Bot(tgToken);

    bot->getEvents().onCommand("start", [&bot = bot](Message::Ptr message){
        cout << message->text << endl;
        bot->getApi().sendMessage(message->chat->id, "바레 : 당신의 날씨 봇입니다!\nhttps://t.me/joinchat/wyj9xg8uZCE1Y2E9");
    });
    bot->getEvents().onCommand("invite", [&bot = bot](Message::Ptr message){
        cout << message->text << endl;
        cout << bot->getApi().getChat(message->chat->id)->inviteLink << endl;
        // bot->getApi().createChatInviteLink
        // bot->getApi().sendMessage(message->chat->id, "바레 당신의 날씨 봇입니다!");
    });
    // bot->getEvents().onAnyMessage([&bot = bot](Message::Ptr message){
    //     cout << "Uer wrote " << message->text << endl;
    //     bot->getApi().sendMessage(message->chat->id, "Your Message is " + message->text);
    // });

    cout << bot->getApi().getMe()->username << endl;

    longPoll = new TgLongPoll(*bot);
    bot->getApi().deleteWebhook();

    timerTgPoll = ofGetElapsedTimeMillis();
}

//--------------------------------------------------------------
void ofApp::update(){
    if(ofGetElapsedTimeMillis() - timerTgPoll > 5000){
        longPoll->start();
        timerTgPoll = ofGetElapsedTimeMillis();    
    }
}

//--------------------------------------------------------------
void ofApp::draw(){

}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
    cout << "key pressed" << endl;
}

//--------------------------------------------------------------
void ofApp::keyReleased(int key){
    if ( key == 'C' || key == 'c'){
        cout << "C" << endl;
        /*
        Message::Ptr sendMessage(std::int64_t chatId, const std::string& text, bool disableWebPagePreview = false, std::int32_t replyToMessageId = 0,
                             GenericReply::Ptr replyMarkup = std::make_shared<GenericReply>(), const std::string& parseMode = "", bool disableNotification = false) const
        */
        bot->getApi().sendMessage(bot->getApi().getChat(channelID)->id, ofGetTimestampString());
        // bot->getApi().sendMessage(bot->getApi().getChat()->id, "alablahblahblah");
    }
}

//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y ){

}

//--------------------------------------------------------------
void ofApp::mouseDragged(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseReleased(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseEntered(int x, int y){

}

//--------------------------------------------------------------
void ofApp::mouseExited(int x, int y){

}

//--------------------------------------------------------------
void ofApp::windowResized(int w, int h){

}

//--------------------------------------------------------------
void ofApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
void ofApp::dragEvent(ofDragInfo dragInfo){ 

}
