import QtQuick 2.12

Item {
    id: rootId
    width: rect.width
    height: rect.height
    property alias buttonClick: textButton.text  //alias
    signal bclicked
    Rectangle {
        id : rect
        width: textButton.implicitWidth + 30
        height: textButton.implicitHeight + 30
        color: "red"
        border.color: "blue"
        Text {
            id: textButton
            text: "Button"

            anchors{
                centerIn: parent
            }
            MouseArea {
                anchors{
                    fill: parent
                }
                onClicked: {
                    //console.log(textButton.text)
                    rootId.bclicked()
                }
            }
        }
    }
}
