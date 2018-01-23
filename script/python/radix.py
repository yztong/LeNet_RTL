class radixConvert(object):

    def __init__(self):
        return None

    def hexValuGet(self, srcNum=''):
        return int(srcNum, 16)

    def decValueGet(self, srcNum=''):
        return int(srcNum)

    def binValueGet(self, srcNum=''):
        return int(srcNum, 2)

    def hex2Dec(self, srcNum=''):
        return str(self.hexValuGet(srcNum))

    def cmpmtHex2Dec(self, srcNum='', binTotalLen=0):
        return self.cmpmtBin2Dec(self.hex2Bin(srcNum, binTotalLen), binTotalLen)

    def hex2Bin(self, srcNum='', binWidth=0):
        rawBin = '{0:b}'.format(self.hexValuGet(srcNum))
        finalBinWidth = binWidth
        if rawBin[0] == '-':
            finalBinWidth = binWidth+1
        if finalBinWidth == len(rawBin):
            return rawBin
        # if finalBinWidth
        #    return 'binary length is too small'
        if finalBinWidth > len(rawBin):
            return rawBin.zfill(finalBinWidth)

    def dec2Bin(self, srcNum='', binWidth=0):
        rawBin = '{0:b}'.format(self.decValueGet(srcNum))
        finalBinWidth = binWidth
        if rawBin[0] == '-':
            finalBinWidth = binWidth+1
        if finalBinWidth == len(rawBin):
            return rawBin
        # if finalBinWidth
        #    return 'binary length is too small'
        if finalBinWidth > len(rawBin):
            return rawBin.zfill(finalBinWidth)

    def dec2Bincmpmt(self, srcNum='', binWidth=0):
        if srcNum[0] == '-':
            return self.dec2Bin(str(2**binWidth+self.decValueGet(srcNum)), binWidth)
        else:
            return self.dec2Bin(srcNum, binWidth)

    def dec2Hex(self, srcNum=''):
        iniHex = hex(self.decValueGet(srcNum))
        if iniHex[0] == '-':
            dispHex = iniHex[0]+iniHex[3:-1]+iniHex[-1]
        else:
            dispHex = iniHex[2:-1]+iniHex[-1]
        return dispHex

    def dec2Hexcmpmt(self, srcNum='', binWidth=''):
        binForm = self.dec2Bincmpmt(srcNum, binWidth)
        return self.bin2Hex(binForm)

    def bin2Hex(self, srcNum=''):
        return self.dec2Hex(str(self.binValueGet(srcNum)))

    def bin2Dec(self, srcNum=''):
        return str(self.binValueGet(srcNum))

    def cmpmtBin2Dec(self, srcNum='', binTotalLen=0):
        iniValue = self.binValueGet(srcNum)
        MaxValue = 2**binTotalLen

        tmpNum = srcNum.strip('0b')

        if iniValue < 0:
            return 'the number you input is not a complement binary(only positive allowed)'

        totalLenForm = tmpNum.zfill(binTotalLen)

        if iniValue > MaxValue:
            return 'overflow'
        if totalLenForm[0] == '1':
            return(str(iniValue-MaxValue))
        else:
            return(str(iniValue))

    def cmpmtBin2Hex(self, srcNum='', binTotalLen=0):
        return self.dec2Hex(self.cmpmtBin2Dec(srcNum, binTotalLen))
