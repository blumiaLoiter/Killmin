#include "Pikumin.h"
#include "Model.h"
#include "Player.h"

Pikumin::Pikumin()
{//���������s��
	lpModel = nullptr;
	lpPlayer = nullptr;
	addPos = Vec3(0.f, 0.f, 0.f);
}

Pikumin::~Pikumin()
{

}

void Pikumin::Init()
{//�������s��
	if (lpModel == nullptr)
	{
		printf("���ł�Ȃ���");
	}
	else
	{
		addPos = lpModel->GetPosition();
	}
}

void Pikumin::Update()
{//�X�V�s��

}

void Pikumin::StaringPlayer()
{//�v���C���[�����߂�

}