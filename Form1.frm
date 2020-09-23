VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00404000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Login example by Rod Inc (c)"
   ClientHeight    =   1680
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3660
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1680
   ScaleWidth      =   3660
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0E0FF&
      Caption         =   "&OK"
      Height          =   375
      Left            =   2160
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   1200
      Width           =   855
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H00C0E0FF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   1680
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   720
      Width           =   1695
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00C0E0FF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1680
      TabIndex        =   0
      Top             =   240
      Width           =   1695
   End
   Begin VB.Label Label2 
      BackColor       =   &H00404000&
      Caption         =   "Enter &Password"
      ForeColor       =   &H8000000E&
      Height          =   375
      Left            =   240
      TabIndex        =   4
      Top             =   720
      Width           =   1335
   End
   Begin VB.Label Label1 
      BackColor       =   &H00404000&
      Caption         =   "Enter &Username"
      ForeColor       =   &H8000000E&
      Height          =   375
      Left            =   240
      TabIndex        =   3
      Top             =   240
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Text1.Text + Text2.Text = "rod1234" Then 'this is sayin that if the username and the password texts are rod1234 then..
MsgBox "correct password", vbInformation 'You have loged in" ' a message box sayin "correct password" with the picture as infomation and the caption as you have loged in.
Load Form2 ' this means make form2 be useable
Form1.Hide ' Do not show form1
Form2.Show 'show form2
Else ' this is sayin if the username and password isnt rod1234 then...
MsgBox "incorrect password", vbCritical, "Sorry"
End If ' this will finish the "if,then,else
End Sub
