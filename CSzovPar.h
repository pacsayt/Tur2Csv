// CSzovPar.h

#define N_READ_BUFFER_MERET 32

class CSzovPar : public CPar
{
  public :
    CSzovPar() ;

  protected :
    const static char m_nElvKar ;

    // Ha egy parameter tobb, mint 1 sorbol all, itt veszem f.-be 
    // (eredetileg 1 sor : 1 parameter
    int   m_nPluszSorok ;

  public :
    void Init() ;

    int BufferFeld( char* pszReadBuffer, UINT nBeoByteok) ;

  public :
    ~CSzovPar() ;
} ;