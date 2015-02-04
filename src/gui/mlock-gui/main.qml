import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.0
import QtQuick.Layouts 1.1
import de.andresimon 1.0

ApplicationWindow {
    id: window1
    visible: true
    width: 600
    height: 500
    color: "#49698d"
    title: "mlock UI"
    minimumWidth: columns.implicitWidth + columns.x *2
    minimumHeight: columns.implicitHeight + columns.y *2

    MlockInterface {
         id: myobject
      }

    ColumnLayout{

        id: columns
        x: 15
        y: 15

        TextArea {
            id: textArea1
            x: 20
            y: 24
            width: 240
            height: 53
            text: "Dexcription"
            readOnly: true

        }

        TextField {
            id: txtMailAddress
            x: 27
            y: 143
            width: 233
            height: 22
            placeholderText: qsTr("E-Mail address")
            Layout.fillWidth: true
        }

        TextField {
            id: txtPassphrase
            x: 27
            y: 182
            width: 233
            height: 22
            echoMode: 2
            placeholderText: qsTr("Passphrase")
            Layout.fillWidth: true
        }

        Button {
            id: btnUnlock
            x: 27
            y: 226
            text: qsTr("Unlock")
            enabled: true
            Layout.fillWidth: true

            onClicked: {
                        console.log(myobject.aufruf(txtMailAddress.text))
                    }

        }
    }
    //  x: Screen.width/2 - width/2
    //  y: Screen.height/2 - height/2
}