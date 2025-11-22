package org.jmrtd.lds.iso19794;

import ab.b;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import org.jmrtd.lds.AbstractListInfo;

/* loaded from: classes2.dex */
public class IrisBiometricSubtypeInfo extends AbstractListInfo<IrisImageInfo> {
    public static final int EYE_LEFT = 2;
    public static final int EYE_RIGHT = 1;
    public static final int EYE_UNDEF = 0;
    private static final long serialVersionUID = -6588640634764878039L;
    private int biometricSubtype;
    private int imageFormat;

    public IrisBiometricSubtypeInfo(int r12, int r22, List<IrisImageInfo> list) {
        this.biometricSubtype = r12;
        this.imageFormat = r22;
        addAll(list);
    }

    public IrisBiometricSubtypeInfo(InputStream inputStream, int r22) throws IOException {
        this.imageFormat = r22;
        readObject(inputStream);
    }

    private static String biometricSubtypeToString(int r32) {
        if (r32 == 0) {
            return "Undefined";
        }
        if (r32 == 1) {
            return "Right eye";
        }
        if (r32 == 2) {
            return "Left eye";
        }
        throw new NumberFormatException(b.c(r32, new StringBuilder("Unknown biometric subtype: ")));
    }

    public void addIrisImageInfo(IrisImageInfo irisImageInfo) {
        add(irisImageInfo);
    }

    @Override // org.jmrtd.lds.AbstractListInfo
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || getClass() != obj.getClass()) {
            return false;
        }
        IrisBiometricSubtypeInfo irisBiometricSubtypeInfo = (IrisBiometricSubtypeInfo) obj;
        return this.biometricSubtype == irisBiometricSubtypeInfo.biometricSubtype && this.imageFormat == irisBiometricSubtypeInfo.imageFormat;
    }

    public int getBiometricSubtype() {
        return this.biometricSubtype;
    }

    public int getImageFormat() {
        return this.imageFormat;
    }

    public List<IrisImageInfo> getIrisImageInfos() {
        return getSubRecords();
    }

    public long getRecordLength() {
        Iterator<IrisImageInfo> it = getSubRecords().iterator();
        long recordLength = 3;
        while (it.hasNext()) {
            recordLength += it.next().getRecordLength();
        }
        return recordLength;
    }

    @Override // org.jmrtd.lds.AbstractListInfo
    public int hashCode() {
        return (((super.hashCode() * 31) + this.biometricSubtype) * 31) + this.imageFormat;
    }

    @Override // org.jmrtd.lds.AbstractListInfo
    public void readObject(InputStream inputStream) throws IOException {
        DataInputStream dataInputStream = inputStream instanceof DataInputStream ? (DataInputStream) inputStream : new DataInputStream(inputStream);
        this.biometricSubtype = dataInputStream.readUnsignedByte();
        int unsignedShort = dataInputStream.readUnsignedShort();
        for (int r12 = 0; r12 < unsignedShort; r12++) {
            IrisImageInfo irisImageInfo = new IrisImageInfo(inputStream, this.imageFormat);
            irisImageInfo.getRecordLength();
            add(irisImageInfo);
        }
    }

    public void removeIrisImageInfo(int r12) {
        remove(r12);
    }

    public String toString() {
        return "IrisBiometricSubtypeInfo [biometric subtype: " + biometricSubtypeToString(this.biometricSubtype) + ", imageCount = " + getSubRecords().size() + "]";
    }

    @Override // org.jmrtd.lds.AbstractListInfo, org.jmrtd.lds.AbstractLDSInfo
    public void writeObject(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = outputStream instanceof DataOutputStream ? (DataOutputStream) outputStream : new DataOutputStream(outputStream);
        dataOutputStream.writeByte(this.biometricSubtype & 255);
        List<IrisImageInfo> subRecords = getSubRecords();
        dataOutputStream.writeShort(subRecords.size() & 65535);
        Iterator<IrisImageInfo> it = subRecords.iterator();
        while (it.hasNext()) {
            it.next().writeObject(dataOutputStream);
        }
    }
}
