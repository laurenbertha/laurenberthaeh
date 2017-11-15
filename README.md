# Tugas yang manakah?

### To Do List
- [x] Create report in README.md no *.pdf no *.doc no *.docx are asked  
- [x] Removing unneeded *.pdf file have it offline and saving traffic data  
- [ ] add picture and explanation  
- [ ] upload source code *.c and or *.h (which you created or edited) to this repository  
- [ ] a cooler project will come then

PROGRESS
Untuk membuat LED Blink langkah-langkahnya seperti berikut :
Beberapa hal yang perlu di sediakan.
* Driver USB ST-Link                                            
* Software CooCox CoIDE                                    
* GNU Tools for ARM Embedded Processors      
* Kabel data USB  mini tipe B
* Module STM32F4 Discovery.
1. Download kedua file program diatas.
2. Install Software CooCox CoIDE dan Driver USB ST-Link.
3. Install GNU Tools for ARM Embedded Processors.
4. Setting tool chain pada CoIDE, untuk seting toolchain bisa lakukan langkah dibawah ini :
a. Jalankan program CoIDE, klik “Poject” -> “Select ToolChain Path” pada menu utama. 
b. Klik tombol “Browse”, cari folder tempat penyimpanan file “arm-none-eabi-gcc.exe”, folder  ini terdapat pada folder instalasi GNU Tools for ARM Embedded Processors.  
c. Klik tombol “OK”, akan muncul peringatan jika folder yang dipilih tidak benar.
5. Pembuatan program Bliking LED
a. Klik “Project” -> “New Project” 
b. Isikan nama Project -> klik tombol “Next”  
c. Pilih tombol “Chip” -> klik tombol “Next”  
d. Pilih jenis processor, dalam hal ini STM32F407VGT -> klik tombol “Finish”  
e. Pada tab “Repository” pilih “GPIO”, CoIDE akan menambahkan file-file yang dibutuhkan untuk mengakses PORT I/O processor pada project kita.  
f. Double klik “main.c” pada file list project, biasanya terdapat pada sisi kiri-bawah program CoIDE, maka CoIDE akan membuka file “main.c” yang merupakan file utama project kita.  
g. Menuliskan program, untuk listing program Blinking LED bisa dilihat dibawah ini.
#include "stm32f4xx_gpio.h"  // file header untuk akses PORT I/O
#include "stm32f4xx.h"       // file header basic system STM32F4
#include "stm32f4xx_rcc.h"

#define LED_BLUE_ON   GPIOD->BSRRL = GPIO_Pin_15;  // led biru on
#define LED_BLUE_OFF  GPIOD->BSRRH = GPIO_Pin_15;  // led biru off
#define LED_RED_ON   GPIOD->BSRRL = GPIO_Pin_14;   // dst
#define LED_RED_OFF  GPIOD->BSRRH = GPIO_Pin_14;
#define LED_ORANGE_ON   GPIOD->BSRRL = GPIO_Pin_13;
#define LED_ORANGE_OFF  GPIOD->BSRRH = GPIO_Pin_13;
#define LED_GREEN_ON   GPIOD->BSRRL = GPIO_Pin_12;
#define LED_GREEN_OFF  GPIOD->BSRRH = GPIO_Pin_12;

void inisialisasi() // Inisialisasi port D, port tempat LED berada
{
    GPIO_InitTypeDef  GPIO_InitStructure;
    RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD, ENABLE);
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_12 | GPIO_Pin_13 |GPIO_Pin_14|GPIO_Pin_15;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
    GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOD, &GPIO_InitStructure);
}

void delay(uint32_t ulang) // procedure delay
{
   while (ulang > 0)
   {ulang--;}
}

int main(void)
{  inisialisasi();        //memanggil fungsi inisialisasi
   while(1)               //proses berulang terus menerus
    {   LED_BLUE_ON;
        LED_RED_OFF;
        delay(1000000);
        LED_BLUE_OFF;
        LED_GREEN_ON;
        delay(1000000);
        LED_GREEN_OFF;
        LED_ORANGE_ON;
        delay(1000000);
        LED_ORANGE_OFF;
        LED_RED_ON;
        delay(1000000);
    }
}

6. Compile dan Download program ke module.
a. Untuk kompilasi klik tombol “Build” atau tekan tombol “F7” pada key board. bisa dilihat apakah ada kesalahan pada listing program pada “Console”, sisi bawah program.  
b. Untuk download program ke modul hubungan modul ke komputer menggunakan kabel data USB kemudian klik tombol “Download Code To Flash”.   
Jika semua berjalan dengan benar maka 4 LED pada modul akan menyala bergantian.
