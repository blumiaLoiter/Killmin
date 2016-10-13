/*
	画面上に文字を表示する（デバッグ用）

	※ 非効率な作業していてとても遅い（描画スピードがゲーム向きでない）
	※ あくまで開発段階のデバッグ用として留めましょう
*/
#include "System.h"
#define SAFE_RELEASE(p) { if(p) { (p)->Release(); (p) = NULL; } }

class DebugFont
{
	LPD3DXFONT	pFont;	// フォントオブジェクト
public:
	void Init(LPDIRECT3DDEVICE9 pd3d);
	void Render(double d);
};

class CStopwatch {
public:
	/*!
	*@brief	コンストラクタ。
	*/
	CStopwatch()
	{
		freq         = 0;
		end          = 0;
		begin        = 0;
		elapsed      = 0.0;
		elapsedMill  = 0.0;
		elapsedMicro = 0.0;
	}
	/*!
	*@brief	デストラクタ。
	*/
	~CStopwatch()
	{
	}
	/*!
	*@brief	計測開始。
	*/
	void Start()
	{
		::QueryPerformanceCounter((LARGE_INTEGER*)&begin);
	}
	/*!
	*@brief	計測終了
	*/
	void Stop()
	{
		::QueryPerformanceFrequency((LARGE_INTEGER*)&freq);
		::QueryPerformanceCounter((LARGE_INTEGER*)&end);
		elapsed      = double(end - begin) / freq;
		elapsedMill  = elapsedMicro * 1000.0;
		elapsedMicro = elapsedMill * 1000.0;
	}
	/*!
	*@brief	経過時間を取得(単位:秒)
	*/
	double GetElapsed() const
	{
		return elapsed;
	}
	/*!
	*@brief	経過時間を取得(単位:ミリ秒)
	*/
	double GetElapsedMillisecond() const
	{
		return elapsedMill;
	}
	/*!
	*@brief	経過時間を取得(単位:マイクロ秒)
	*/
	double GetElapsedMicrosecond() const
	{
		return elapsedMicro;
	}
private:
	LONGLONG freq;
	LONGLONG end;
	LONGLONG begin;
	double elapsed;			//経過時間(単位：秒)
	double elapsedMill;		//経過時間(単位：ミリ秒)
	double elapsedMicro;	//経過時間(単位：マイクロ秒)

};