// CKonverter.h
#define N_READ_BUFFER_MERET 32

// class CSzovPar ;

class CKonverter
{
  public :
    CKonverter() ;

  protected :

    char m_pszReadBuffer[N_READ_BUFFER_MERET] ;

    CSzovPar m_cSzovPar ;
    CBinPar  m_cBinPar  ;

    CFile m_cFile ;
    CFileException m_cFileException ;

    CCsvFile m_cCsvFile ;

  public :
    int Konvertal( char* pszFileNev) ;

  public :
    ~CKonverter() ;
} ;