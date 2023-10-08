# FPGA Projects

## List of used boards:

* Dangerousprototypes 	Xilinx CoolRunner-II CPLD	(Xilinx XC2C64A CPLD)
* Dangerousprototypes 	Xilinx XC9500XL CPLD		(Xilinx XC9572XL CPLD)
* Alchitry 		Mojo V3 board 			(Xilinx Spartan 6)
* Digilent		CMOD S7				(Xilinx Spartan 7)
* Digilent		CMOD A7				(Xilinx Artix 7)
* Lattice 		ICEStick ICE40HX1K-STICK-EVN	(Lattice iCE40 HX1K)
* MUSE LAB 		ICESugar Nano			(Lattice iCE40 LP1K)
* SiPEED 		Tang Nano 9K			(GOWIN GW1N-R 9C)


## Useful tools:

* APIO
sudo apt install fpga-icestorm
sudo apt install nextpnr-ice40


* OpenFPGALoader

git clone https://github.com/trabucayre/openFPGALoader
cd openFPGALoader
mkdir build
cd build
cmake ..
make -j$(nproc)

* GOWIN EDA
