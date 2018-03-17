// CSzovPar.cpp
#include <afx.h>
#include <string.h>

#include "CPar.h"
#include "CSzovPar.h"

CPar::CPar()
{
  Init() ;
}

void CPar::Init()
{
  m_nTmpMer = 0 ;
  m_nParIdx = 0 ;

  m_nFeldParamSzama = 55 ;

  m_bMindenParFeld = FALSE ;
}

int CPar::BufferFeld( char* pszReadBuffer, UINT nBeoByteok)
{
  return m_nParIdx ;
}

CPar::~CPar()
{
}
