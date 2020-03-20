#!../../bin/linux-x86_64/basicIOC

## You may have to change basicIOC to something else
## everywhere it appears in this file
#cd /home/epics/repos/basicIOC/iocBoot/iocbasicIOC

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/basicIOC.dbd"
basicIOC_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("db/simplePVs.db")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=epics"
