import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Column{
        MButton{
            buttonClick: "Button 1"
            onBclicked: {
                console.log("this is button 1")
            }
        }

        MButton{

            buttonClick: "Button 2"
            onBclicked: {
                console.log("this is button 2")
            }
        }
    }

}
