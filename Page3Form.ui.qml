import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
//import QtMultimedia 5.5



Item {
    width: 800
    property alias switchDelegate1: switchDelegate1
    property alias switchDelegate2: switchDelegate2
    property alias switch2: switch2
    property alias switch1: switch1
    property alias switchalarma: switchalarma
    property alias button: button
    z: -1






    GroupBox {
        id: grupocamara
        x: 29
        y: 22
        width: 329
        height: 267
        visible: false
        z: -1
        title: qsTr("Cámaras")

        Switch {
            id: switchcamara
            x: 198
            y: -50
            text: qsTr("Encender")
            antialiasing: false
        }

        Text {
            id: textmodulo
            x: 397
            y: 220
            width: 183
            height: 52
            color: "#ffffff"
            text: qsTr("Smart Switch")
            scale: 1
            z: 3
            font.bold: false
            font.pixelSize: 28

            SwitchDelegate {
                id: switchDelegate1
                x: 0
                y: 34
                text: qsTr("Switch 1")
            }

            SwitchDelegate {
                id: switchDelegate2
                x: 0
                y: 72
                text: qsTr("Switch 2")
            }
        }

        Button {
            id: button
            x: 640
            y: 266
            text: qsTr("Salir")
            z: 0
        }

        Text {
            id: text3
            x: 41
            y: 277
            width: 110
            height: 37
            color: "#ffffff"
            text: qsTr("Page3")
            font.pixelSize: 30
            z: 1

            Switch {
                id: switchalarma
                x: 126
                y: -2
                text: switchalarma.checked ? "Encendida" : "Apagada"
                antialiasing: false
            }
        }

        GroupBox {
            id: groupBox1
            x: 402
            y: -40
            z: -1
            title: qsTr("Sensores")

            GridLayout {
                rows: 4
                columns: 2

                RadioButton {
                    id: radioButton1
                    text: qsTr("Detector de Humo")
                }

                Button {
                    id: button1
                    text: qsTr("Test")
                }

                RadioButton {
                    id: radioButton2
                    text: qsTr("Detector de Movimiento")
                }

                Button {
                    id: button2
                    text: qsTr("Test")
                }

                Switch {
                    id: switch1
                    text: qsTr("Ventana 01")
                }

                Label {
                    id: label1
                    text: switch1.checked ? "Abierta" : "Cerrada"
                }

                Switch {
                    id: switch2
                    text: qsTr("Ventana 02")
                }

                Label {
                    id: label2
                    text: switch2.checked ? "Abierta" : "Cerrada"
                }
            }
        }

        Rectangle {
            id: rectangle1
            x: 50
            y: -40
            width: 800
            height: 483
            color: "#00557f"
            z: -3
        }
    }

    Image {
        id: image
        x: 0
        y: 0
        source: "res/FondoInvestigacion.png"

        Switch {
            id: switch3
            x: 243
            y: 189
            rotation: 180
        }

        Switch {
            id: switch4
            x: 243
            y: 234
            rotation: 180
        }

        Switch {
            id: switch5
            x: 642
            y: 208
            rotation: 180
        }
    }


}
