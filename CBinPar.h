// CBinPar.h

#define N_READ_BUFFER_MERET 32

/*
struct SEgyMinta
{
  // UNIX ido [s]
  unsigned long m_nIdo ;
  // UNIX ido [s]
  unsigned long m_nElteltIdo ;
  // Tavolsag [1/100 Km]
  unsigned long m_nTavolsag ;
  // Magassag [m]
  short m_nMagassag ;
  // Pulzus [1/min]
  unsigned char m_nPulzus ;
  // Pedalfordulatszam [1/min]
  unsigned char m_nPedFsz ;
  // Homerseklet [C]
  unsigned char m_nHomers ;
  // Ismeretlen 3 byte
  unsigned char m_aIsmeretlen[3] ;
} ;
*/

class CBinPar : public CPar
{
  public :
    CBinPar() ;

  protected :
    int       m_nBinMintakIdx  ;
    SEgyMinta m_rEgyMinta ;
    CCsvFile* m_pCsvFile  ;

  public :
    void Init() ;
    void CsvFileBeall( CCsvFile* pIniCsvFile) ;

    int BufferFeld( char* pszReadBuffer, UINT nBeoByteok) ;

    int EgyMintaKiir() ;

  public :
    ~CBinPar() ;
} ;