import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Section Demo (Decoration)")

    ListView{
        id : mListViewId
        anchors.fill:parent
        model : mListModelId
        delegate: delegateId
        section{
            property : "company"
            criteria: ViewSection.FullString
            delegate: sectionDelegateId
        }

    }

    Component{
        id : sectionDelegateId
        Rectangle{
            id : sectionId
            width: parent.width
            height: 50
            color: "red"
            border.color: "yellowgreen"
            radius: 20

            Text {
                id: sectionTextId
                text: section                   //section here is a company that groub by section
                anchors.centerIn: parent
                font.pointSize: 20

            }
            MouseArea{
                anchors.fill:parent
                onClicked: {
                    console.log("Clicked on: " + section)
                }
            }
        }
    }

    ListModel {
        id : mListModelId
        ListElement{
            names : "Pick Mo" ; company : "BAIDU"
        }
        ListElement{
            names : "Jack May" ; company : "BAIDU"
        }
        ListElement{
            names : "Jeffery Mor" ; company : "APPLE"
        }
        ListElement{
            names : "Brad Mend" ; company : "APPLE"
        }

        ListElement{
            names : "Mary Beige" ; company : "TENCENT"
        }
        ListElement{
            names : "Eugene Fits" ; company : "GOOGLE"
        }ListElement{
            names : "Eugene Fits" ; company : "GOOGLE"
        }
        ListElement{
            names : "Bamba Pikt" ; company : "TENCENT"
        }
        ListElement{
            names : "Seth Moris" ; company : "GOOGLE"
        }
        ListElement{
            names : "Miriam Katv" ; company : "GOOGLE"
        }

        ListElement{
            names : "Kantkl Vikney" ; company : "GOOGLE"
        }
    }

    Component{
        id : delegateId
        Rectangle{
            id : rectangleId
            width : parent.width
            height: 50
            color: "beige"
            border.color : "yellowgreen"
            radius: 20

            Text {
                id: textId
                anchors.centerIn: parent
                text: names
                font.pointSize: 20
            }
            MouseArea{
                anchors.fill : parent
                onClicked: {
                    console.log("Clicked on: " + names)
                }
            }
        }
    }
}
