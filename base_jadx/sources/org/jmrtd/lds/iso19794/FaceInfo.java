package org.jmrtd.lds.iso19794;

import ab.b;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.scuba.data.Gender;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.jmrtd.cbeff.BiometricDataBlock;
import org.jmrtd.cbeff.ISO781611;
import org.jmrtd.cbeff.StandardBiometricHeader;
import org.jmrtd.lds.AbstractListInfo;
import org.jmrtd.lds.iso19794.FaceImageInfo;

/* loaded from: classes2.dex */
public class FaceInfo extends AbstractListInfo<FaceImageInfo> implements BiometricDataBlock {
    private static final int FORMAT_IDENTIFIER = 1178682112;
    private static final int FORMAT_OWNER_VALUE = 257;
    private static final int FORMAT_TYPE_VALUE = 8;
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd");
    private static final int VERSION_NUMBER = 808529920;
    private static final long serialVersionUID = -6053206262773400725L;
    private StandardBiometricHeader sbh;

    public FaceInfo(InputStream inputStream) throws IOException {
        this((StandardBiometricHeader) null, inputStream);
    }

    public FaceInfo(List<FaceImageInfo> list) {
        this((StandardBiometricHeader) null, list);
    }

    public FaceInfo(StandardBiometricHeader standardBiometricHeader, InputStream inputStream) throws IOException {
        this.sbh = standardBiometricHeader;
        readObject(inputStream);
    }

    public FaceInfo(StandardBiometricHeader standardBiometricHeader, List<FaceImageInfo> list) {
        this.sbh = standardBiometricHeader;
        addAll(list);
    }

    public void addFaceImageInfo(FaceImageInfo faceImageInfo) {
        add(faceImageInfo);
    }

    @Override // org.jmrtd.lds.AbstractListInfo
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || getClass() != obj.getClass()) {
            return false;
        }
        StandardBiometricHeader standardBiometricHeader = this.sbh;
        StandardBiometricHeader standardBiometricHeader2 = ((FaceInfo) obj).sbh;
        return standardBiometricHeader == null ? standardBiometricHeader2 == null : standardBiometricHeader == standardBiometricHeader2 || standardBiometricHeader.equals(standardBiometricHeader2);
    }

    public List<FaceImageInfo> getFaceImageInfos() {
        return getSubRecords();
    }

    @Override // org.jmrtd.cbeff.BiometricDataBlock
    public StandardBiometricHeader getStandardBiometricHeader() {
        if (this.sbh == null) {
            TreeMap treeMap = new TreeMap();
            treeMap.put(129, new byte[]{2});
            treeMap.put(Integer.valueOf(ISO781611.BIOMETRIC_SUBTYPE_TAG), new byte[]{0});
            treeMap.put(135, new byte[]{1, 1});
            treeMap.put(Integer.valueOf(ISO781611.FORMAT_TYPE_TAG), new byte[]{0, 8});
            this.sbh = new StandardBiometricHeader(treeMap);
        }
        return this.sbh;
    }

    @Override // org.jmrtd.lds.AbstractListInfo
    public int hashCode() {
        int r02 = super.hashCode() * 31;
        StandardBiometricHeader standardBiometricHeader = this.sbh;
        return r02 + (standardBiometricHeader == null ? 0 : standardBiometricHeader.hashCode());
    }

    @Override // org.jmrtd.lds.AbstractListInfo
    public void readObject(InputStream inputStream) throws IOException {
        DataInputStream dataInputStream = inputStream instanceof DataInputStream ? (DataInputStream) inputStream : new DataInputStream(inputStream);
        int r32 = dataInputStream.readInt();
        if (r32 != FORMAT_IDENTIFIER) {
            LOGGER.log(Level.WARNING, "'FAC' marker expected! Found " + Integer.toHexString(r32));
            if (r32 == 12) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                dataOutputStream.writeInt(r32);
                short s7 = dataInputStream.readShort();
                dataOutputStream.writeShort(s7);
                int r42 = 0;
                while (r42 < s7) {
                    byte[] bArr = new byte[2048];
                    int r72 = dataInputStream.read(bArr);
                    if (r72 < 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr);
                    r42 += r72;
                }
                add(new FaceImageInfo(Gender.UNKNOWN, FaceImageInfo.EyeColor.UNSPECIFIED, 0, 0, 0, new int[]{0, 0, 0}, new int[]{0, 0, 0}, 1, 0, 0, 0, 0, new FaceImageInfo.FeaturePoint[0], 0, 0, new ByteArrayInputStream(byteArrayOutputStream.toByteArray()), s7, 1));
                return;
            }
        }
        int r33 = dataInputStream.readInt();
        if (r33 != VERSION_NUMBER) {
            throw new IllegalArgumentException(b.c(r33, new StringBuilder("'010' version number expected! Found ")));
        }
        long j10 = (dataInputStream.readInt() & BodyPartID.bodyIdMax) - 14;
        int unsignedShort = dataInputStream.readUnsignedShort();
        long recordLength = 0;
        for (int r52 = 0; r52 < unsignedShort; r52++) {
            FaceImageInfo faceImageInfo = new FaceImageInfo(inputStream);
            recordLength += faceImageInfo.getRecordLength();
            add(faceImageInfo);
        }
        if (j10 != recordLength) {
            LOGGER.warning("ConstructedDataLength and dataLength differ: dataLength = " + j10 + ", constructedDataLength = " + recordLength);
        }
    }

    public void removeFaceImageInfo(int r12) {
        remove(r12);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("FaceInfo [");
        Iterator<FaceImageInfo> it = getSubRecords().iterator();
        while (it.hasNext()) {
            sb2.append(it.next().toString());
        }
        sb2.append("]");
        return sb2.toString();
    }

    @Override // org.jmrtd.lds.AbstractListInfo, org.jmrtd.lds.AbstractLDSInfo
    public void writeObject(OutputStream outputStream) throws IOException {
        List<FaceImageInfo> subRecords = getSubRecords();
        Iterator<FaceImageInfo> it = subRecords.iterator();
        long recordLength = 0;
        while (it.hasNext()) {
            recordLength += it.next().getRecordLength();
        }
        long j10 = 14 + recordLength;
        DataOutputStream dataOutputStream = outputStream instanceof DataOutputStream ? (DataOutputStream) outputStream : new DataOutputStream(outputStream);
        dataOutputStream.writeInt(FORMAT_IDENTIFIER);
        dataOutputStream.writeInt(VERSION_NUMBER);
        dataOutputStream.writeInt((int) (BodyPartID.bodyIdMax & j10));
        dataOutputStream.writeShort(subRecords.size());
        Iterator<FaceImageInfo> it2 = subRecords.iterator();
        while (it2.hasNext()) {
            it2.next().writeObject(dataOutputStream);
        }
    }
}
