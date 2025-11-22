package org.jmrtd.cbeff;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import net.sf.scuba.tlv.TLVOutputStream;
import org.jmrtd.cbeff.BiometricDataBlock;

/* loaded from: classes2.dex */
public class ISO781611Encoder<B extends BiometricDataBlock> implements ISO781611 {
    private BiometricDataBlockEncoder<B> bdbEncoder;

    public ISO781611Encoder(BiometricDataBlockEncoder<B> biometricDataBlockEncoder) {
        this.bdbEncoder = biometricDataBlockEncoder;
    }

    private void writeBHT(TLVOutputStream tLVOutputStream, int r32, SimpleCBEFFInfo<B> simpleCBEFFInfo) throws IOException {
        tLVOutputStream.writeTag(161);
        for (Map.Entry<Integer, byte[]> entry : simpleCBEFFInfo.getBiometricDataBlock().getStandardBiometricHeader().getElements().entrySet()) {
            tLVOutputStream.writeTag(entry.getKey().intValue());
            tLVOutputStream.writeValue(entry.getValue());
        }
        tLVOutputStream.writeValueEnd();
    }

    private void writeBIT(TLVOutputStream tLVOutputStream, int r32, SimpleCBEFFInfo<B> simpleCBEFFInfo) throws IOException {
        tLVOutputStream.writeTag(ISO781611.BIOMETRIC_INFORMATION_TEMPLATE_TAG);
        writeBHT(tLVOutputStream, r32, simpleCBEFFInfo);
        writeBiometricDataBlock(tLVOutputStream, simpleCBEFFInfo.getBiometricDataBlock());
        tLVOutputStream.writeValueEnd();
    }

    private void writeBITGroup(List<CBEFFInfo> list, OutputStream outputStream) throws IOException {
        TLVOutputStream tLVOutputStream = outputStream instanceof TLVOutputStream ? (TLVOutputStream) outputStream : new TLVOutputStream(outputStream);
        tLVOutputStream.writeTag(ISO781611.BIOMETRIC_INFORMATION_GROUP_TEMPLATE_TAG);
        tLVOutputStream.writeTag(2);
        int size = list.size();
        tLVOutputStream.writeValue(new byte[]{(byte) size});
        for (int r32 = 0; r32 < size; r32++) {
            writeBIT(tLVOutputStream, r32, (SimpleCBEFFInfo) list.get(r32));
        }
        tLVOutputStream.writeValueEnd();
    }

    private void writeBiometricDataBlock(TLVOutputStream tLVOutputStream, B b10) throws IOException {
        tLVOutputStream.writeTag(ISO781611.BIOMETRIC_DATA_BLOCK_TAG);
        this.bdbEncoder.encode(b10, tLVOutputStream);
        tLVOutputStream.writeValueEnd();
    }

    public void encode(CBEFFInfo cBEFFInfo, OutputStream outputStream) throws IOException {
        List<CBEFFInfo> subRecords;
        if (cBEFFInfo instanceof SimpleCBEFFInfo) {
            subRecords = Arrays.asList(cBEFFInfo);
        } else if (!(cBEFFInfo instanceof ComplexCBEFFInfo)) {
            return;
        } else {
            subRecords = ((ComplexCBEFFInfo) cBEFFInfo).getSubRecords();
        }
        writeBITGroup(subRecords, outputStream);
    }
}
