#pragma comment(lib, "comctl32.lib")
#define CASE_MASK ('A' ^ 'a')
#include <windows.h>
#include <stdlib.h>
#include <string>
#include <tchar.h>
#include <CommCtrl.h>
#include "resource.h"
#include <stdint.h>
#include <stdlib.h>

HINSTANCE hInst;

static const unsigned char base64_table[65] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz+/";
std::string base64_encode(const unsigned char* src, size_t len)
{
	unsigned char* out, * pos;
	const unsigned char* end, * in;

	size_t olen;

	olen = 4 * ((len + 2) / 3); /* 3-byte blocks to 4-byte */

	if (olen < len)
		return std::string(); /* integer overflow */

	std::string outStr;
	outStr.resize(olen);
	out = (unsigned char*)&outStr[0];

	end = src + len;
	in = src;
	pos = out;
	while (end - in >= 3) {
		*pos++ = base64_table[in[0] >> 2];
		*pos++ = base64_table[((in[0] & 0x03) << 4) | (in[1] >> 4)];
		*pos++ = base64_table[((in[1] & 0x0f) << 2) | (in[2] >> 6)];
		*pos++ = base64_table[in[2] & 0x3f];
		in += 3;
	}

	if (end - in) {
		*pos++ = base64_table[in[0] >> 2];
		if (end - in == 1) {
			*pos++ = base64_table[(in[0] & 0x03) << 4];
			*pos++ = '=';
		}
		else {
			*pos++ = base64_table[((in[0] & 0x03) << 4) |
				(in[1] >> 4)];
			*pos++ = base64_table[(in[1] & 0x0f) << 2];
		}
		*pos++ = '=';
	}

	return outStr;
}

int checkPassword(CHAR* password) {
	if (strlen(password) != 30) {
		return 0;
	}	
	// shifter 13;
	char newPassword[30];
	memset(newPassword, 0, 30);
	for (int i = 0; i < strlen(password); i++) {
		if (isupper(password[i])) {
			newPassword[i] = (65 + (password[i] - 65 + 13) % 26);
		}
		else if (islower(password[i])) {
			newPassword[i] = (97 + (password[i] - 97 + 13) % 26);
		}
		else {
			newPassword[i] = password[i];
		}
	}
	// xorer
	for (int i = 0; i < 30; i++) {
		newPassword[i] ^= (BYTE)0x2AU;
	}

	std::string encoded = base64_encode((const unsigned char*)newPassword, sizeof(newPassword));
	std::string target = "Z7fC3RvPGXVNXnbrTRfJ3UU4RRbrCmJI3ARqSAML";

	if (strncmp(encoded.c_str(), target.c_str(), 30) != 0) {
		return 0;
	}
	return 1;
}

int true_case(HWND hwndDlg)
{
	MessageBoxA(hwndDlg, "Congrats!!!!! And I wanna go out with you, where you wanna go? :3", ":3", MB_OK);
	EndDialog(hwndDlg, 0);
	return 1;
}

int false_case(HWND hwndDlg)
{
	MessageBoxA(hwndDlg, "I wanna tell you but I'm super shy :(", "T.T", MB_ABORTRETRYIGNORE);
	EndDialog(hwndDlg, 0);
	return 1;
}


BOOL CALLBACK DlgMain(HWND hwndDlg, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
	switch (uMsg) {
		case WM_INITDIALOG:
		{
			HICON hIcon = LoadIconA(GetModuleHandle(NULL), MAKEINTRESOURCEA(IDI_ICON1));
			if (hIcon) {
				SendMessage(hwndDlg, WM_SETICON, ICON_SMALL, (LPARAM)hIcon);
			}
		}
		return TRUE;
	
		case WM_CLOSE:
		{
			EndDialog(hwndDlg, 0);
		}
		return TRUE;
		case WM_COMMAND:
		{
			switch (LOWORD(wParam)) 
			{
				case IDC_BUTTON1:
				{
					CHAR buff[1024];
					HWND textEdit = GetDlgItem(hwndDlg, IDC_EDIT1);
					GetWindowTextA(textEdit, buff, sizeof(buff));
					if (checkPassword(buff) == 1) {
						true_case(hwndDlg);
					}
					else {
						false_case(hwndDlg);
					}
				}

				case IDC_BUTTON2:
				{
					EndDialog(hwndDlg, 0);
				}
			}
		}
	}
	return FALSE;
}

int WINAPI WinMain(
	_In_ HINSTANCE hInstance,
	_In_opt_ HINSTANCE hPrevInstance,
	_In_ LPSTR     lpCmdLine,
	_In_ int       nCmdShow
)
{
	hInst = hInstance;
	InitCommonControls();
	return DialogBox(hInst, MAKEINTRESOURCE(IDD_FORMVIEW), NULL, (DLGPROC)DlgMain);
}

