#!/bin/bash
# ----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# <martinbraun123@aol.com> wrote this file. As long as you retain this notice you
# can do whatever you want with this stuff. If we meet some day, and you think
# this stuff is worth it, you can buy me a beer in return. Martin Braun
# ----------------------------------------------------------------------------
cp "%1" "%1_org.ps"
ps2eps -f "%1_org.ps"
epstool --copy --bbox --output "%1_pre_pdf.eps" "%1_org.eps"
epstopdf "%1_pre_pdf.eps" --gsopt=-dEPSCrop --exact --outfile="%2"
rm "%1_org.ps"
rm "%1_org.eps"
sleep 1
rm "%1_pre_pdf.eps"
