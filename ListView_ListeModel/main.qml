import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("List View and List Model Demo")

    ListView{
        id : listViewId
        anchors.fill: parent
        model:listModelId
        delegate: delegateId
    }
    ListModel{
        id : listModelId
        ListElement{
            name : "Tom"
            number : "12"
        }
        ListElement{
            name : "Ben"
            number : "1"
        }
        ListElement{
            name : "Shusi"
            number : "4"
        }
        ListElement{
            name : "David"
            number : "3"
        }
        ListElement{
            name : "Sara"
            number : "6"
        }
        ListElement{
            name : "Tom"
            number : "18"
        }
        ListElement{
            name : "been"
            number : "7"
        }
    }
    Component{
        id : delegateId
        Rectangle {
            id : rectId
            width: parent.width
            height: 50
            color: "beige"
            border.color: "yellowgreen"
            radius: 20
            Text {
                id: textId
                anchors.centerIn: parent
                font.pixelSize: 20
                text: name + " : " + number

            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("My name is " + name + " and the number is " + number)
                }
            }
        }
    }
}
