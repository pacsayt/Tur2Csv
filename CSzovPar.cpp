// CSzovPar.cpp
#include <afx.h>
#include <string.h>

#include "CPar.h"
#include "SEgyMinta.h"
#include "CCsvFile.h"
#include "CBinPar.h"
#include "CSzovPar.h"

const char CSzovPar::m_nElvKar = 0x0A  ;

CSzovPar::CSzovPar()
{
  Init() ;
}

void CSzovPar::Init()
{
  CPar::Init() ;

  m_nFeldParamSzama = N_BIN_PARAM_SZAMA ;
  m_nPluszSorok     = 0 ;
  m_nBinMintakSzama = 0 ;
}

int CSzovPar::BufferFeld( char* pszReadBuffer, UINT nBeoByteok)
{
  char* pTalPoz       = NULL ;
  char* pElozoTalPoz  = NULL ;
  int   nKovParDarMer = 0  ;
//  char  pszTmp[N_READ_BUFFER_MERET] ;
//  UINT  nTmpMer      = 0 ;
//  int   nParIdx      = 0 ;
  int nAtalakitott = 0 ;

  if ( pszReadBuffer == NULL /*int nBufferMer*/)
  {
    return -1 ; // ???
  }

  pElozoTalPoz = pszReadBuffer ;

  do
  {
    pTalPoz = strchr( pElozoTalPoz, m_nElvKar) ;

    if ( pTalPoz != NULL )
    {
      // Itt mar ugyis (?) talatunk egy parametert, 
      // es hogy a switch-ben ne kelljen 1-et levonni
      // Szamoljuk a parametereket (mert csak egyesek erdekesek)
      m_nParIdx++ ;

      // Ha az egyik fele a parameternek mar benne van ...
      if ( m_nTmpMer > 0 )
      {
        nKovParDarMer = pTalPoz - pszReadBuffer ;

        while ( nKovParDarMer > 0 )
        {
          // Befer-e meg a bufferbe az aktualis parameter aktualis resze
          if ( nKovParDarMer + m_nTmpMer < N_READ_BUFFER_MERET )
          {
            // Igen
            memcpy( m_pszTmp + m_nTmpMer, pszReadBuffer, nKovParDarMer) ;
            m_pszTmp[m_nTmpMer+nKovParDarMer] = '\0' ;
            nKovParDarMer = 0 ;
            m_nTmpMer     = 0 ;
          }
          else
          {
            // Nem : darabonkent kiirjuk
            memcpy( m_pszTmp + m_nTmpMer, pszReadBuffer, (N_READ_BUFFER_MERET - m_nTmpMer) ) ;
            m_pszTmp[N_READ_BUFFER_MERET] = '\0' ;
            nKovParDarMer = nKovParDarMer - (N_READ_BUFFER_MERET - m_nTmpMer) ;
            m_nTmpMer     = 0 ;
          }         

          printf( ">%s<\n", m_pszTmp) ;
        }

//        m_pszTmp[m_nTmpMer+nKovParDarMer] = '\0' ;
//        printf( ">%s<\n", m_pszTmp) ;
        // Ha egy parameter nem fer bele egy bufferbe, akkor csak a veget probalja atalakitani
        switch ( m_nParIdx )
        {
          case N_NOTE_SOROK_SZAMA :
            // A "note" tobb soros is lehet, hany sorbol all
            nAtalakitott = atoi( m_pszTmp) ;
            // 1\nnote de lehet : 0\n is -> igen (mod_4.tur)!
            m_nPluszSorok = m_nPluszSorok + nAtalakitott ;
            m_nFeldParamSzama = m_nFeldParamSzama + nAtalakitott ;
            break ;
          case N_BIN_PARAM_SZAMA :
            m_nBinMintakSzama = atoi( m_pszTmp) ;
            break ;
          default :
            ;
        }

        m_nTmpMer = 0 ;
      }
      else
      {
        *pTalPoz = '\0' ;
        printf( ">%s<\n", pElozoTalPoz) ;

        switch ( m_nParIdx - m_nPluszSorok )
        {
          case N_NOTE_SOROK_SZAMA :
            // A "note" tobb soros is lehet, hany sorbol all
            nAtalakitott = atoi( pElozoTalPoz) ;
            // 1\nnote de lehet : 0\n is -> igen (mod_4.tur)!
            m_nPluszSorok = m_nPluszSorok + nAtalakitott ;
            m_nFeldParamSzama = m_nFeldParamSzama + nAtalakitott ;
            break ;
          case N_BIN_PARAM_SZAMA :
            m_nBinMintakSzama = atoi( pElozoTalPoz) ;
            break ;
          default :
            ;
        }
      }

      pTalPoz++ ;
      pElozoTalPoz = pTalPoz ;
    }
    else // A parameter vege nincs mar ebben a bufferben
    {
      if ( m_nTmpMer > 0 )
      {
        m_pszTmp[m_nTmpMer] = '\0' ;
        printf( "%s", m_pszTmp) ;
      }

      pszReadBuffer[nBeoByteok-1] = '\0' ; // ez felulirja a   m_nFeldParamSzama-t 0-ra
      printf( "%s", pElozoTalPoz) ;
    }
  }
  while ( pTalPoz != NULL && pTalPoz < (pszReadBuffer + nBeoByteok) && m_nParIdx < m_nFeldParamSzama ) ;

  if ( m_nParIdx >= m_nFeldParamSzama)
  {
    m_nTmpMer = N_READ_BUFFER_MERET - (pElozoTalPoz-pszReadBuffer) ;
    memcpy( m_pszTmp, pElozoTalPoz, m_nTmpMer) ;

    m_bMindenParFeld = TRUE ;
  }

  return m_nParIdx ;
}

CSzovPar::~CSzovPar()
{
//  m_nElvKar = 0x0A ;
//  m_nReadBufferMeret = 4096 ;
}
