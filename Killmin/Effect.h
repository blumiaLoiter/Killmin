/*!
* @brief	�G�t�F�N�g�}�l�[�W���[
*/

#pragma once
#include "System.h"
#include <map>
class Effect;
/*!
* @brief	�G�t�F�N�g�}�l�[�W���B
*/
class Effect{
public:
	/*!
	* @brief	�R���X�g���N�^�B
	*/
	Effect();
	/*!
	* @brief	�f�X�g���N�^�B
	*/
	~Effect();
	/*!
	*@brief	�G�t�F�N�g�̃��[�h�B
	*@details
	* �ǂݍ��ݍς݂̃G�t�F�N�g�̏ꍇ�̓��[�h�͍s��ꂸ�A</br>
	* �����̃G�t�F�N�g���Ԃ��Ă��܂��B
	*@param[in]	filePath	���[�h����G�t�F�N�g�̃t�@�C���p�X�B
	*@return	���[�h�����G�t�F�N�g�t�@�C���B
	*/
	ID3DXEffect* LoadEffect(const char* filePath);
	/*!
	* @brief	�����[�X�B
	*/
	void Release();
private:
	std::map<int, ID3DXEffect*>		effectDictinary;	//!<CEffect�̃C���X�^���X�̃f�B�N�V���i���B�t�@�C���p�X�̃n�b�V���l���L�[�Ɏ����ACEffect�̃C���X�^���X��l�Ɏ��B
};