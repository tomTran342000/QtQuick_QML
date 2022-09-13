import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Line Model Demo")

    ListView{
        id : listViewId
        anchors.fill : parent
        model : ["hoang","ben","tom","tim","haha","timby","little"]
        delegate: delegateId
    }

    Component {
        id : delegateId
        Rectangle{
            id: rectId
            width: parent.width
            height: 50
            color: "beige"
            border.color: "greenyellow"
            radius: 20
            Text {
                id: textId
                anchors.centerIn: parent
                font.pointSize: 20
                text: modelData
            }

        }
    }
}
