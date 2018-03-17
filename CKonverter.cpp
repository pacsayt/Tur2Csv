// CKonverter.cpp

// CFile
#include <afx.h>
#include <string.h>

#include "CPar.h"
#include "SEgyMinta.h"
#include "CCsvFile.h"
#include "CSzovPar.h"
#include "CBinPar.h"
#include "CKonverter.h"

//const char CKonverter::m_nElvKar = 0x0A  ;
//const UINT m_nReadBufferMeret  = 4096;

CKonverter::CKonverter()
{
//  m_nElvKar = 0x0A ;
//  m_nReadBufferMeret = 4096 ;
}

int CKonverter::Konvertal( char* pszFileNev)
{
  UINT  nBeoByteok   = 0 ;
  char* pTalPoz      = NULL ;
  char* pElozoTalPoz = NULL ;
//  char  pszTmp[N_READ_BUFFER_MERET] ;
  UINT  nTmpMer      = 0 ;
  int   nParIdx      = 0 ;
  int   nOsszParIdx  = 0 ;

  int nRC = 0 ;

//TRACE( "CKonverter::Konvertal() <\n") ;
  //example for CFile::Open
  if ( pszFileNev == NULL )
  {
//TRACE( "CKonverter::Konvertal() >\n") ;
    return -1 ;
  }

  // A beolvasando *.tur-file megnyitasa
  if( !m_cFile.Open( pszFileNev, CFile::modeRead, &m_cFileException ) )
	{
    printf( "File could not be opened : %d", m_cFileException.m_cause) ;

//TRACE( "CKonverter::Konvertal() >\n") ;
    return -1 ;
	}

  try
  {
    // Az alabbi algoritmus feltetelezi, hogy mindegyik parameter
    // (ket 0x0A kozti byte-ok) belefernek egy bufferbe !
    // A file vegen 0x0A elvalaszto karakter elvart (es a peldakban van is)
    do
    {
      nBeoByteok = m_cFile.Read( m_pszReadBuffer, N_READ_BUFFER_MERET) ;

      // A szoveges, elso resz feldolgozasa
      nParIdx = m_cSzovPar.BufferFeld( m_pszReadBuffer, nBeoByteok) ;

      if ( nParIdx < 0 )
      {
//TRACE( "CKonverter::Konvertal() >\n") ;
        return -1 ;
      }
    }
    while ( nBeoByteok == N_READ_BUFFER_MERET && m_cSzovPar.MindenParFeld() == FALSE ) ;

    // A konvertalas eredmenyet tartalmazo *.csv file megnyitasa
    nRC = m_cCsvFile.FileNevBeall( pszFileNev) ;

    if( nRC < 0 )
  	{
      printf( "CCsvFile.FileNevBeall failed : %s", pszFileNev) ;

//TRACE( "CKonverter::Konvertal() >\n") ;
      return -1 ;
  	}

    nRC = m_cCsvFile.FileMegnyit() ;

    if( nRC < 0 )
	  {
      printf( "CCsvFile.FileMegnyit failed : %s", pszFileNev) ;

//TRACE( "CKonverter::Konvertal() >\n") ;
      return -1 ;
  	}

    // Az eppen beolvasott buffer vegen levo binaris adatok beolvasasa
    m_cBinPar.Init() ;
    m_cBinPar.CsvFileBeall( &m_cCsvFile) ;
//    m_cBinPar.FileNevBeall( pszFileNev) ;
    m_cBinPar.BinMintakSzamaBeall( m_cSzovPar.BinMintakSzama()) ;
    nParIdx = m_cBinPar.BufferFeld( m_cSzovPar.Tmp(), m_cSzovPar.TmpMer()) ;

    if ( nParIdx < 0 )
    {
//TRACE( "CKonverter::Konvertal() >\n") ;
      return -1 ;
    }

    do
    {
      nBeoByteok = m_cFile.Read( m_pszReadBuffer, N_READ_BUFFER_MERET) ;

      // A szoveges, elso resz feldolgozasa
      nParIdx = m_cBinPar.BufferFeld( m_pszReadBuffer, nBeoByteok) ;

      if ( nParIdx < 0 )
      {
//TRACE( "CKonverter::Konvertal() >\n") ;
        return -1 ;
      }
    }
    while ( nBeoByteok == N_READ_BUFFER_MERET && m_cBinPar.MindenParFeld() == FALSE ) ;

    m_cCsvFile.FileLezar() ;
  }
  catch ( CFileException cFileException)
  {
    printf( "File could not be read : %s", cFileException.m_cause) ;
  }

//TRACE( "CKonverter::Konvertal() >\n") ;
 return 0 ;
}

CKonverter::~CKonverter()
{
}