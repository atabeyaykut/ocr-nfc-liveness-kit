package org.jmrtd.lds.iso19794;

import ab.b;
import android.support.v4.media.a;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;
import java.util.logging.Logger;
import org.jmrtd.cbeff.BiometricDataBlock;
import org.jmrtd.cbeff.ISO781611;
import org.jmrtd.cbeff.StandardBiometricHeader;
import org.jmrtd.lds.AbstractListInfo;

/* loaded from: classes2.dex */
public class IrisInfo extends AbstractListInfo<IrisBiometricSubtypeInfo> implements BiometricDataBlock {
    public static final int CAPTURE_DEVICE_UNDEF = 0;
    private static final int FORMAT_IDENTIFIER = 1229541888;
    private static final int FORMAT_OWNER_VALUE = 257;
    private static final int FORMAT_TYPE_VALUE = 9;
    public static final int IMAGEFORMAT_MONO_JPEG = 6;
    public static final int IMAGEFORMAT_MONO_JPEG2000 = 14;
    public static final int IMAGEFORMAT_MONO_JPEG_LS = 10;
    public static final int IMAGEFORMAT_MONO_RAW = 2;
    public static final int IMAGEFORMAT_RGB_JPEG = 8;
    public static final int IMAGEFORMAT_RGB_JPEG2000 = 16;
    public static final int IMAGEFORMAT_RGB_JPEG_LS = 12;
    public static final int IMAGEFORMAT_RGB_RAW = 4;
    public static final int INTENSITY_DEPTH_UNDEF = 0;
    public static final int IRBNDY_PROCESSED = 1;
    public static final int IRBNDY_UNDEF = 0;
    public static final int IROCC_PROCESSED = 1;
    public static final int IROCC_UNDEF = 0;
    public static final int IROCC_ZEROFILL = 0;
    public static final int IROC_UNITFILL = 1;
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd");
    public static final int ORIENTATION_BASE = 1;
    public static final int ORIENTATION_FLIPPED = 2;
    public static final int ORIENTATION_UNDEF = 0;
    public static final int SCAN_TYPE_CORRECTED = 4;
    public static final int SCAN_TYPE_INTERLACE_FIELD = 3;
    public static final int SCAN_TYPE_INTERLACE_FRAME = 2;
    public static final int SCAN_TYPE_PROGRESSIVE = 1;
    public static final int SCAN_TYPE_UNDEF = 0;
    public static final int TRANS_STD = 1;
    public static final int TRANS_UNDEF = 0;
    private static final int VERSION_NUMBER = 808529920;
    private static final long serialVersionUID = -3415309711643815511L;
    private int boundaryExtraction;
    private int captureDeviceId;
    private byte[] deviceUniqueId;
    private int horizontalOrientation;
    private int imageFormat;
    private int imageTransformation;
    private int intensityDepth;
    private int irisDiameter;
    private int irisOcclusion;
    private int occlusionFilling;
    private int rawImageHeight;
    private int rawImageWidth;
    private long recordLength;
    private StandardBiometricHeader sbh;
    private int scanType;
    private int verticalOrientation;

    public IrisInfo(int r18, int r19, int r20, int r21, int r22, int r23, int r24, int r25, int r26, int r27, int r28, int r29, int r30, byte[] bArr, List<IrisBiometricSubtypeInfo> list) {
        this(null, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, bArr, list);
    }

    public IrisInfo(InputStream inputStream) throws IOException {
        this(null, inputStream);
    }

    public IrisInfo(StandardBiometricHeader standardBiometricHeader, int r10, int r11, int r12, int r13, int r14, int r15, int r16, int r17, int r18, int r19, int r20, int r21, int r22, byte[] bArr, List<IrisBiometricSubtypeInfo> list) {
        this.sbh = standardBiometricHeader;
        if (list == null) {
            throw new IllegalArgumentException("Null irisBiometricSubtypeInfos");
        }
        this.captureDeviceId = r10;
        this.horizontalOrientation = r11;
        this.verticalOrientation = r12;
        this.scanType = r13;
        this.irisOcclusion = r14;
        this.occlusionFilling = r15;
        this.boundaryExtraction = r16;
        this.irisDiameter = r17;
        this.imageFormat = r18;
        this.rawImageWidth = r19;
        this.rawImageHeight = r20;
        this.intensityDepth = r21;
        this.imageTransformation = r22;
        long recordLength = 0;
        for (IrisBiometricSubtypeInfo irisBiometricSubtypeInfo : list) {
            recordLength += irisBiometricSubtypeInfo.getRecordLength();
            add(irisBiometricSubtypeInfo);
        }
        if (bArr == null || bArr.length != 16) {
            throw new IllegalArgumentException("deviceUniqueId invalid");
        }
        byte[] bArr2 = new byte[16];
        this.deviceUniqueId = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        this.recordLength = recordLength + 45;
    }

    public IrisInfo(StandardBiometricHeader standardBiometricHeader, InputStream inputStream) throws IOException {
        this.sbh = standardBiometricHeader;
        readObject(inputStream);
    }

    private int getBiometricSubtype() {
        Iterator<IrisBiometricSubtypeInfo> it = getSubRecords().iterator();
        int biometricSubtype = 0;
        while (it.hasNext()) {
            biometricSubtype &= it.next().getBiometricSubtype();
        }
        return biometricSubtype;
    }

    public void addIrisBiometricSubtypeInfo(IrisBiometricSubtypeInfo irisBiometricSubtypeInfo) {
        add(irisBiometricSubtypeInfo);
    }

    @Override // org.jmrtd.lds.AbstractListInfo
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || getClass() != obj.getClass()) {
            return false;
        }
        IrisInfo irisInfo = (IrisInfo) obj;
        StandardBiometricHeader standardBiometricHeader = this.sbh;
        if (standardBiometricHeader == null) {
            if (irisInfo.sbh != null) {
                return false;
            }
        } else if (!standardBiometricHeader.equals(irisInfo.sbh)) {
            return false;
        }
        return this.boundaryExtraction == irisInfo.boundaryExtraction && this.captureDeviceId == irisInfo.captureDeviceId && Arrays.equals(this.deviceUniqueId, irisInfo.deviceUniqueId) && this.horizontalOrientation == irisInfo.horizontalOrientation && this.imageFormat == irisInfo.imageFormat && this.imageTransformation == irisInfo.imageTransformation && this.intensityDepth == irisInfo.intensityDepth && this.irisDiameter == irisInfo.irisDiameter && this.irisOcclusion == irisInfo.irisOcclusion && this.occlusionFilling == irisInfo.occlusionFilling && this.rawImageHeight == irisInfo.rawImageHeight && this.rawImageWidth == irisInfo.rawImageWidth && this.recordLength == irisInfo.recordLength && this.scanType == irisInfo.scanType && this.verticalOrientation == irisInfo.verticalOrientation;
    }

    public int getBoundaryExtraction() {
        return this.boundaryExtraction;
    }

    public int getCaptureDeviceId() {
        return this.captureDeviceId;
    }

    public byte[] getDeviceUniqueId() {
        return this.deviceUniqueId;
    }

    public int getHorizontalOrientation() {
        return this.horizontalOrientation;
    }

    public int getImageFormat() {
        return this.imageFormat;
    }

    public int getImageTransformation() {
        return this.imageTransformation;
    }

    public int getIntensityDepth() {
        return this.intensityDepth;
    }

    public List<IrisBiometricSubtypeInfo> getIrisBiometricSubtypeInfos() {
        return getSubRecords();
    }

    public int getIrisDiameter() {
        return this.irisDiameter;
    }

    public int getIrisOcclusion() {
        return this.irisOcclusion;
    }

    public int getOcclusionFilling() {
        return this.occlusionFilling;
    }

    public int getRawImageHeight() {
        return this.rawImageHeight;
    }

    public int getRawImageWidth() {
        return this.rawImageWidth;
    }

    public int getScanType() {
        return this.scanType;
    }

    @Override // org.jmrtd.cbeff.BiometricDataBlock
    public StandardBiometricHeader getStandardBiometricHeader() {
        if (this.sbh == null) {
            byte[] bArr = {(byte) getBiometricSubtype()};
            TreeMap treeMap = new TreeMap();
            treeMap.put(129, new byte[]{8});
            treeMap.put(Integer.valueOf(ISO781611.BIOMETRIC_SUBTYPE_TAG), bArr);
            treeMap.put(135, new byte[]{1, 1});
            treeMap.put(Integer.valueOf(ISO781611.FORMAT_TYPE_TAG), new byte[]{0, 9});
            this.sbh = new StandardBiometricHeader(treeMap);
        }
        return this.sbh;
    }

    public int getVerticalOrientation() {
        return this.verticalOrientation;
    }

    @Override // org.jmrtd.lds.AbstractListInfo
    public int hashCode() {
        int r12 = (((((((((((((((((((Arrays.hashCode(this.deviceUniqueId) + (((((super.hashCode() * 31) + this.boundaryExtraction) * 31) + this.captureDeviceId) * 31)) * 31) + this.horizontalOrientation) * 31) + this.imageFormat) * 31) + this.imageTransformation) * 31) + this.intensityDepth) * 31) + this.irisDiameter) * 31) + this.irisOcclusion) * 31) + this.occlusionFilling) * 31) + this.rawImageHeight) * 31) + this.rawImageWidth) * 31;
        long j10 = this.recordLength;
        int r13 = (r12 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        StandardBiometricHeader standardBiometricHeader = this.sbh;
        return ((((r13 + (standardBiometricHeader == null ? 0 : standardBiometricHeader.hashCode())) * 31) + this.scanType) * 31) + this.verticalOrientation;
    }

    @Override // org.jmrtd.lds.AbstractListInfo
    public void readObject(InputStream inputStream) throws IOException {
        DataInputStream dataInputStream = inputStream instanceof DataInputStream ? (DataInputStream) inputStream : new DataInputStream(inputStream);
        int r12 = dataInputStream.readInt();
        if (r12 != FORMAT_IDENTIFIER) {
            throw new IllegalArgumentException(b.c(r12, new StringBuilder("'IIR' marker expected! Found ")));
        }
        int r13 = dataInputStream.readInt();
        if (r13 != VERSION_NUMBER) {
            throw new IllegalArgumentException(b.c(r13, new StringBuilder("'010' version number expected! Found ")));
        }
        long j10 = dataInputStream.readInt();
        this.recordLength = j10;
        long j11 = j10 - 45;
        this.captureDeviceId = dataInputStream.readUnsignedShort();
        int unsignedByte = dataInputStream.readUnsignedByte();
        int unsignedShort = dataInputStream.readUnsignedShort();
        if (unsignedShort != 45) {
            throw new IllegalArgumentException(a.d("Expected header length 45, found ", unsignedShort));
        }
        int unsignedShort2 = dataInputStream.readUnsignedShort();
        this.horizontalOrientation = unsignedShort2 & 3;
        this.verticalOrientation = (unsignedShort2 & 12) >> 2;
        this.scanType = (unsignedShort2 & 112) >> 4;
        this.irisOcclusion = (unsignedShort2 & 128) >> 7;
        this.occlusionFilling = (unsignedShort2 & 256) >> 8;
        this.boundaryExtraction = (unsignedShort2 & 512) >> 9;
        this.irisDiameter = dataInputStream.readUnsignedShort();
        this.imageFormat = dataInputStream.readUnsignedShort();
        this.rawImageWidth = dataInputStream.readUnsignedShort();
        this.rawImageHeight = dataInputStream.readUnsignedShort();
        this.intensityDepth = dataInputStream.readUnsignedByte();
        this.imageTransformation = dataInputStream.readUnsignedByte();
        byte[] bArr = new byte[16];
        this.deviceUniqueId = bArr;
        dataInputStream.readFully(bArr);
        long recordLength = 0;
        for (int r02 = 0; r02 < unsignedByte; r02++) {
            IrisBiometricSubtypeInfo irisBiometricSubtypeInfo = new IrisBiometricSubtypeInfo(inputStream, this.imageFormat);
            recordLength += irisBiometricSubtypeInfo.getRecordLength();
            add(irisBiometricSubtypeInfo);
        }
        if (j11 != recordLength) {
            LOGGER.warning("ConstructedDataLength and dataLength differ: dataLength = " + j11 + ", constructedDataLength = " + recordLength);
        }
    }

    public void removeIrisBiometricSubtypeInfo(int r12) {
        remove(r12);
    }

    public String toString() {
        return "IrisInfo []";
    }

    @Override // org.jmrtd.lds.AbstractListInfo, org.jmrtd.lds.AbstractLDSInfo
    public void writeObject(OutputStream outputStream) throws IOException {
        List<IrisBiometricSubtypeInfo> subRecords = getSubRecords();
        Iterator<IrisBiometricSubtypeInfo> it = subRecords.iterator();
        int recordLength = 0;
        while (it.hasNext()) {
            recordLength = (int) (it.next().getRecordLength() + recordLength);
        }
        int r32 = recordLength + 45;
        DataOutputStream dataOutputStream = outputStream instanceof DataOutputStream ? (DataOutputStream) outputStream : new DataOutputStream(outputStream);
        dataOutputStream.writeInt(FORMAT_IDENTIFIER);
        dataOutputStream.writeInt(VERSION_NUMBER);
        dataOutputStream.writeInt(r32);
        dataOutputStream.writeShort(this.captureDeviceId);
        dataOutputStream.writeByte(subRecords.size());
        dataOutputStream.writeShort(45);
        dataOutputStream.writeShort((this.horizontalOrientation & 3) | 0 | ((this.verticalOrientation << 2) & 12) | ((this.scanType << 4) & 112) | ((this.irisOcclusion << 7) & 128) | ((this.occlusionFilling << 8) & 256) | ((this.boundaryExtraction << 9) & 512));
        dataOutputStream.writeShort(this.irisDiameter);
        dataOutputStream.writeShort(this.imageFormat);
        dataOutputStream.writeShort(this.rawImageWidth);
        dataOutputStream.writeShort(this.rawImageHeight);
        dataOutputStream.writeByte(this.intensityDepth);
        dataOutputStream.writeByte(this.imageTransformation);
        dataOutputStream.write(this.deviceUniqueId);
        Iterator<IrisBiometricSubtypeInfo> it2 = subRecords.iterator();
        while (it2.hasNext()) {
            it2.next().writeObject(outputStream);
        }
    }
}
