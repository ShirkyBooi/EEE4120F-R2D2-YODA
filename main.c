#include <stdio.h>
int
main ()
{
  int input[16] = { 1, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1 };
  int output1[16] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
  int output2[16] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
  int output3[16] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
  int output4[16] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
  int output5[16] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
  int i;
  int inputPacket[16];
  int addra[6] = { 0, 1, 3, 3, 5, 5 };
  int index;
  for (i = 0; i < 16; i++)
    {
      inputPacket[i] = input[i];
    }
  index = (inputPacket[4] * 4) + (inputPacket[5] * 2) + (inputPacket[6]);
  index = addra[index];
  if (index == 1)
    {
      for (i = 0; i < 16; i++)
	{
	  output1[i] = inputPacket[i];
	}
    }
  if (index == 2)
    {
      for (i = 0; i < 16; i++)
	{
	  output2[i] = inputPacket[i];
	}
    }
  if (index == 3)
    {
      for (i = 0; i < 16; i++)
	{
	  output3[i] = inputPacket[i];
	}
    }
  if (index == 4)
    {
      for (i = 0; i < 16; i++)
	{
	  output4[i] = inputPacket[i];
	}
    }
  if (index == 5)
    {
      for (i = 0; i < 16; i++)
	{
	  output5[i] = inputPacket[i];
	}
    }
  return 0;
}
