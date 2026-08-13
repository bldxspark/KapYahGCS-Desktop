import QtQuick
import QtQuick.Layouts

import QGroundControl
import QGroundControl.Controls

Rectangle {
    color: qgcPal.window
    anchors.fill: parent

    readonly property real _margins: ScreenTools.defaultFontPixelHeight
    readonly property int _currentYear: new Date().getFullYear()

    QGCPalette {
        id: qgcPal
        colorGroupEnabled: true
    }

    QGCFlickable {
        anchors.fill: parent
        anchors.leftMargin: _margins
        anchors.rightMargin: _margins
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        clip: true

        contentWidth: width
        contentHeight: Math.max(height, mainColumn.implicitHeight)

        ColumnLayout {
            id: mainColumn
            width: parent.width
            height: Math.max(implicitHeight, parent.height)
            spacing: _margins

            QGCLabel {
                text: "Help & Support"
                color: qgcPal.text
                font.pointSize: ScreenTools.isMobile
                    ? ScreenTools.largeFontPointSize * 0.95
                    : ScreenTools.largeFontPointSize * 1.3
                font.bold: true
                Layout.fillWidth: true
            }

            Rectangle {
                color: "transparent"
                border.color: qgcPal.text
                border.width: 1
                radius: 5
                Layout.fillWidth: true
                implicitHeight: firstSection.implicitHeight + _margins

                ColumnLayout {
                    id: firstSection
                    anchors.fill: parent
                    anchors.margins: _margins * 0.5
                    spacing: _margins * 0.5

                    QGCLabel {
                        text: "KapYah GCS"
                        color: "#FF0000"
                        font.pointSize: ScreenTools.isMobile
                            ? ScreenTools.largeFontPointSize * 0.8
                            : ScreenTools.largeFontPointSize * 1
                        font.bold: true
                        Layout.fillWidth: true
                    }

                    GridLayout {
                        id: grid1
                        columns: 2
                        columnSpacing: _margins
                        rowSpacing: _margins * 0.5
                        Layout.fillWidth: true

                        QGCLabel { text: qsTr("Official Website") }

                        QGCLabel {
                            linkColor: qgcPal.text
                            text: "<a href=\"https://www.kapyah.com/\">https://www.kapyah.com/</a>"
                            onLinkActivated: (link) => Qt.openUrlExternally(link)
                        }

                        QGCLabel { text: qsTr("Contact Support") }

                        QGCLabel {
                            linkColor: qgcPal.text
                            text: "<a href=\"mailto:contact@kapyah.com\">contact@kapyah.com</a>"
                            onLinkActivated: (link) => Qt.openUrlExternally(link)
                        }

                        QGCLabel { text: qsTr("GitHub") }

                        QGCLabel {
                            linkColor: qgcPal.text
                            text: "<a href=\"https://github.com/bldxspark/KapYahGCS\">https://github.com/bldxspark/KapYahGCS</a>"
                            onLinkActivated: (link) => Qt.openUrlExternally(link)
                        }
                    }
                }
            }

            QGCLabel {
                text: "Explore More"
                color: qgcPal.text
                font.bold: true
                font.pointSize: ScreenTools.isMobile
                    ? ScreenTools.largeFontPointSize * 0.95
                    : ScreenTools.largeFontPointSize * 1.3
                Layout.topMargin: _margins * 0.3
                Layout.fillWidth: true
            }

            Rectangle {
                color: "transparent"
                border.color: qgcPal.text
                border.width: 1
                radius: 5
                Layout.fillWidth: true
                implicitHeight: secondSection.implicitHeight + _margins

                ColumnLayout {
                    id: secondSection
                    anchors.fill: parent
                    anchors.margins: _margins * 0.5
                    spacing: _margins * 0.5

                    QGCLabel {
                        text: "KapYah LogMiner"
                        color: "#ff0000"
                        font.bold: true
                        font.pointSize: ScreenTools.isMobile
                            ? ScreenTools.largeFontPointSize * 0.8
                            : ScreenTools.largeFontPointSize * 1
                        Layout.fillWidth: true
                    }

                    QGCLabel {
                        text: "KapYah LogMiner is a desktop application for analyzing drone flight logs, visualizing mission data, and generating detailed Excel and PDF reports for efficient review and insights."
                        color: qgcPal.text
                        wrapMode: Text.WordWrap
                        Layout.fillWidth: true
                    }

                    GridLayout {
                        id: grid2
                        columns: 2
                        columnSpacing: _margins
                        rowSpacing: _margins * 0.5
                        Layout.fillWidth: true

                        QGCLabel { text: qsTr("Website") }

                        QGCLabel {
                            linkColor: qgcPal.text
                            text: "<a href=\"https://kapyahlogminer.netlify.app/\">https://kapyahlogminer.netlify.app/</a>"
                            onLinkActivated: (link) => Qt.openUrlExternally(link)
                        }

                        QGCLabel { text: qsTr("GitHub") }

                        QGCLabel {
                            linkColor: qgcPal.text
                            text: "<a href=\"https://github.com/bldxspark/KapYah-LogMiner\">https://github.com/bldxspark/KapYah-LogMiner</a>"
                            onLinkActivated: (link) => Qt.openUrlExternally(link)
                        }
                    }
                }
            }

            Item {
                Layout.fillHeight: true   // 👈 dynamic spacer (correct way)
            }

            ColumnLayout {
                Layout.fillWidth: true
                spacing: 2

                QGCLabel {
                    text: "A product by KapYah Industries Pvt. Ltd."
                    color: qgcPal.text
                    font.pointSize: ScreenTools.defaultFontPointSize * 0.9
                    horizontalAlignment: Text.AlignHCenter
                    Layout.fillWidth: true
                }

                QGCLabel {
                    text: "v1.0.0"
                    color: qgcPal.text
                    font.pointSize: ScreenTools.defaultFontPointSize * 0.85
                    horizontalAlignment: Text.AlignHCenter
                    Layout.fillWidth: true
                }

                QGCLabel {
                    text: "© " + _currentYear + " KapYah Industries Pvt. Ltd."
                    color: qgcPal.text
                    font.pointSize: ScreenTools.defaultFontPointSize * 0.85
                    horizontalAlignment: Text.AlignHCenter
                    Layout.fillWidth: true
                }
            }
        }
    }
}
