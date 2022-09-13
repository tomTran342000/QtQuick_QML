import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Header Footer Highligth Demo")


    ListView{
        id : listViewId
        anchors.fill: parent
        model:listModelId
        header: headerId
        footer: footerId
        highlight: highlightId
        delegate: delegateId
    }

    ListModel {
        id : listModelId
        ListElement{
            name : "Hong"
            number : "32"
        }
        ListElement{
            name : "Tememer"
            number : "12"
        }
        ListElement{
            name : "Baner"
            number : "21"
        }
        ListElement{
            name : "Ben"
            number : "22"
        }
        ListElement{
            name : "Guys"
            number : "28"
        }
        ListElement{
            name : "Tommy"
            number : "8"
        }
        ListElement{
            name : "Lyly"
            number : "19"
        }

    }

    Component{
        id : delegateId
        Rectangle{
            id : deleRectId
            width: parent.width
            height : 50
            color: "beige"
            border.color: "yellowgreen"
            radius: 20

            Text {
                id: deleTextId
                text: name + " : " +number
                anchors.centerIn: parent
                font.pointSize: 15
            }

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log(name + " : " + number)
                    listViewId.currentIndex = index
                }
            }
        }
    }

    Component {
        id : highlightId
        Rectangle{
            id : highlightRectId
            width: parent.width
            height: 50
            color: "blue"
            radius: 20
            z : 3
            opacity: 0.5

        }
    }

    Component{
        id : headerId
        Rectangle{
            id : headRectId
            width: parent.width
            height:50
            color : "green"
            border.color: "black"
            radius: 20

            Text {
                id: headTextId
                text: "Employee"
                anchors.centerIn: parent
                font.pointSize: 15
            }
        }
    }

    Component{
        id:footerId
        Rectangle{
            id : footerRectId
            width : parent.width
            height: 50
            color: "green"
            border.color: "black"
            radius: 20
        }
    }
}
