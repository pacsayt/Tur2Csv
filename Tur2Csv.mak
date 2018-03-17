# Microsoft Developer Studio Generated NMAKE File, Format Version 4.20
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

!IF "$(CFG)" == ""
CFG=Tur2Csv - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to Tur2Csv - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Tur2Csv - Win32 Release" && "$(CFG)" !=\
 "Tur2Csv - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "Tur2Csv.mak" CFG="Tur2Csv - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Tur2Csv - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "Tur2Csv - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "Tur2Csv - Win32 Debug"
RSC=rc.exe
CPP=cl.exe

!IF  "$(CFG)" == "Tur2Csv - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 1
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
OUTDIR=.\Release
INTDIR=.\Release

ALL : "$(OUTDIR)\Tur2Csv.exe"

CLEAN : 
	-@erase "$(INTDIR)\CBinPar.obj"
	-@erase "$(INTDIR)\CCsvFile.obj"
	-@erase "$(INTDIR)\CKonverter.obj"
	-@erase "$(INTDIR)\CPar.obj"
	-@erase "$(INTDIR)\CSzovPar.obj"
	-@erase "$(INTDIR)\CTur2Csv.obj"
	-@erase "$(OUTDIR)\Tur2Csv.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /YX /c
# ADD CPP /nologo /MT /W4 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /c
CPP_PROJ=/nologo /MT /W4 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D\
 "_MBCS" /Fp"$(INTDIR)/Tur2Csv.pch" /YX /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\Release/
CPP_SBRS=.\.
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/Tur2Csv.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 /nologo /subsystem:console /machine:I386
LINK32_FLAGS=/nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)/Tur2Csv.pdb" /machine:I386 /out:"$(OUTDIR)/Tur2Csv.exe" 
LINK32_OBJS= \
	"$(INTDIR)\CBinPar.obj" \
	"$(INTDIR)\CCsvFile.obj" \
	"$(INTDIR)\CKonverter.obj" \
	"$(INTDIR)\CPar.obj" \
	"$(INTDIR)\CSzovPar.obj" \
	"$(INTDIR)\CTur2Csv.obj"

"$(OUTDIR)\Tur2Csv.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Tur2Csv - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 1
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "$(OUTDIR)\Tur2Csv.exe" "$(OUTDIR)\Tur2Csv.bsc"

CLEAN : 
	-@erase "$(INTDIR)\CBinPar.obj"
	-@erase "$(INTDIR)\CBinPar.sbr"
	-@erase "$(INTDIR)\CCsvFile.obj"
	-@erase "$(INTDIR)\CCsvFile.sbr"
	-@erase "$(INTDIR)\CKonverter.obj"
	-@erase "$(INTDIR)\CKonverter.sbr"
	-@erase "$(INTDIR)\CPar.obj"
	-@erase "$(INTDIR)\CPar.sbr"
	-@erase "$(INTDIR)\CSzovPar.obj"
	-@erase "$(INTDIR)\CSzovPar.sbr"
	-@erase "$(INTDIR)\CTur2Csv.obj"
	-@erase "$(INTDIR)\CTur2Csv.sbr"
	-@erase "$(INTDIR)\vc40.idb"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(OUTDIR)\Tur2Csv.bsc"
	-@erase "$(OUTDIR)\Tur2Csv.exe"
	-@erase "$(OUTDIR)\Tur2Csv.ilk"
	-@erase "$(OUTDIR)\Tur2Csv.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /YX /c
# ADD CPP /nologo /MTd /W4 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /FR /YX /c
CPP_PROJ=/nologo /MTd /W4 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fp"$(INTDIR)/Tur2Csv.pch" /YX /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.\Debug/
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/Tur2Csv.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\CBinPar.sbr" \
	"$(INTDIR)\CCsvFile.sbr" \
	"$(INTDIR)\CKonverter.sbr" \
	"$(INTDIR)\CPar.sbr" \
	"$(INTDIR)\CSzovPar.sbr" \
	"$(INTDIR)\CTur2Csv.sbr"

"$(OUTDIR)\Tur2Csv.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 /nologo /subsystem:console /debug /machine:I386
LINK32_FLAGS=/nologo /subsystem:console /incremental:yes\
 /pdb:"$(OUTDIR)/Tur2Csv.pdb" /debug /machine:I386 /out:"$(OUTDIR)/Tur2Csv.exe" 
LINK32_OBJS= \
	"$(INTDIR)\CBinPar.obj" \
	"$(INTDIR)\CCsvFile.obj" \
	"$(INTDIR)\CKonverter.obj" \
	"$(INTDIR)\CPar.obj" \
	"$(INTDIR)\CSzovPar.obj" \
	"$(INTDIR)\CTur2Csv.obj"

"$(OUTDIR)\Tur2Csv.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

################################################################################
# Begin Target

# Name "Tur2Csv - Win32 Release"
# Name "Tur2Csv - Win32 Debug"

!IF  "$(CFG)" == "Tur2Csv - Win32 Release"

!ELSEIF  "$(CFG)" == "Tur2Csv - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\CTur2Csv.cpp
DEP_CPP_CTUR2=\
	".\CBinPar.h"\
	".\CCsvFile.h"\
	".\CKonverter.h"\
	".\CPar.h"\
	".\CSzovPar.h"\
	".\CTur2Csv.h"\
	".\SEgyMinta.h"\
	

!IF  "$(CFG)" == "Tur2Csv - Win32 Release"


"$(INTDIR)\CTur2Csv.obj" : $(SOURCE) $(DEP_CPP_CTUR2) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "Tur2Csv - Win32 Debug"


"$(INTDIR)\CTur2Csv.obj" : $(SOURCE) $(DEP_CPP_CTUR2) "$(INTDIR)"

"$(INTDIR)\CTur2Csv.sbr" : $(SOURCE) $(DEP_CPP_CTUR2) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\CKonverter.cpp
DEP_CPP_CKONV=\
	".\CBinPar.h"\
	".\CCsvFile.h"\
	".\CKonverter.h"\
	".\CPar.h"\
	".\CSzovPar.h"\
	".\SEgyMinta.h"\
	

!IF  "$(CFG)" == "Tur2Csv - Win32 Release"


"$(INTDIR)\CKonverter.obj" : $(SOURCE) $(DEP_CPP_CKONV) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "Tur2Csv - Win32 Debug"


"$(INTDIR)\CKonverter.obj" : $(SOURCE) $(DEP_CPP_CKONV) "$(INTDIR)"

"$(INTDIR)\CKonverter.sbr" : $(SOURCE) $(DEP_CPP_CKONV) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\CSzovPar.cpp
DEP_CPP_CSZOV=\
	".\CBinPar.h"\
	".\CCsvFile.h"\
	".\CPar.h"\
	".\CSzovPar.h"\
	".\SEgyMinta.h"\
	

!IF  "$(CFG)" == "Tur2Csv - Win32 Release"


"$(INTDIR)\CSzovPar.obj" : $(SOURCE) $(DEP_CPP_CSZOV) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "Tur2Csv - Win32 Debug"


"$(INTDIR)\CSzovPar.obj" : $(SOURCE) $(DEP_CPP_CSZOV) "$(INTDIR)"

"$(INTDIR)\CSzovPar.sbr" : $(SOURCE) $(DEP_CPP_CSZOV) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\CPar.cpp
DEP_CPP_CPAR_=\
	".\CPar.h"\
	".\CSzovPar.h"\
	

!IF  "$(CFG)" == "Tur2Csv - Win32 Release"


"$(INTDIR)\CPar.obj" : $(SOURCE) $(DEP_CPP_CPAR_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "Tur2Csv - Win32 Debug"


"$(INTDIR)\CPar.obj" : $(SOURCE) $(DEP_CPP_CPAR_) "$(INTDIR)"

"$(INTDIR)\CPar.sbr" : $(SOURCE) $(DEP_CPP_CPAR_) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\CBinPar.cpp
DEP_CPP_CBINP=\
	".\CBinPar.h"\
	".\CCsvFile.h"\
	".\CPar.h"\
	".\SEgyMinta.h"\
	

!IF  "$(CFG)" == "Tur2Csv - Win32 Release"


"$(INTDIR)\CBinPar.obj" : $(SOURCE) $(DEP_CPP_CBINP) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "Tur2Csv - Win32 Debug"


"$(INTDIR)\CBinPar.obj" : $(SOURCE) $(DEP_CPP_CBINP) "$(INTDIR)"

"$(INTDIR)\CBinPar.sbr" : $(SOURCE) $(DEP_CPP_CBINP) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\CCsvFile.cpp
DEP_CPP_CCSVF=\
	".\CBinPar.h"\
	".\CCsvFile.h"\
	".\CPar.h"\
	".\CSzovPar.h"\
	".\SEgyMinta.h"\
	

!IF  "$(CFG)" == "Tur2Csv - Win32 Release"


"$(INTDIR)\CCsvFile.obj" : $(SOURCE) $(DEP_CPP_CCSVF) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "Tur2Csv - Win32 Debug"


"$(INTDIR)\CCsvFile.obj" : $(SOURCE) $(DEP_CPP_CCSVF) "$(INTDIR)"

"$(INTDIR)\CCsvFile.sbr" : $(SOURCE) $(DEP_CPP_CCSVF) "$(INTDIR)"


!ENDIF 

# End Source File
# End Target
# End Project
################################################################################
