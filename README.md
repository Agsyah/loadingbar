![Image](https://image.prntscr.com/image/0xbhU2IKSOqPKGzBoj050w.png)

# loadingbar
Include ini memudahkan kita untuk menampilkan loading bar untuk membuat server lebih menarik. Cara kerja dari include ini, bar akan berkurang setiap detiknya, jika mencapai nilai 0, maka kita dapat melanjutkan ke fungsi yang akan di gunakan. Jika masih kurang paham, berikut penjelasannya.

# Callback
### StartPlayerLoadingBar(playerid, callback[], subject[], time, color)
* callback[] = Untuk memanggil fungsi yang akan di definisikan.
* subject[] = Header pada loading bar.
* time = Waktu delay untuk menghabiskan value pada bar.
* color = warna untuk progress bar, default: -1429936641

### StopPlayerLoadingBar(playerid)
* Untuk mereset semua data pada loading bar.

# Function
### Cara penggunaan function
```
forward your_function_name(playerid);
public your_function_name(playerid) 
{
	//code here
	return 1;
}
```

# Credits
* Agus Syahputra yang membuat include ini.
* tianmetal untuk ide pada servernya.
