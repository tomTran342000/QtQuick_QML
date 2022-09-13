import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id : rootId
    visible: true
    width: 640
    height: 480
    title: qsTr("QML Syntax Demo")

    property string textToShow: ""

    Row{
        id : row1
        anchors.centerIn: parent
        spacing: 20

        Rectangle {
            id : redRecId
            width: 150
            height: 150
            color: "red"
            radius:20
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("this is red rectangle ")
                    textToShow = "red"
                }
            }
        }

        Rectangle {
            id : greenRecId
            width: 150
            height: 150
            color: "green"
            radius: 20
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("this is green rectangle")
                    textToShow = "green"
                }
            }
        }

        Rectangle {
            id : blueRecId
            width: 150
            height: 150
            color: "blue"
            radius: 20
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("this is blue rectangle")
                    textToShow = "blue"
                }
            }
        }

        Rectangle {
            id : textRecId
            width: 150
            height: 150
            color: "dodgerblue"
            radius:  100

            Text {
                id: textId
                anchors.centerIn: parent
                text: textToShow
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on")
                }
            }
        }
    }
}
