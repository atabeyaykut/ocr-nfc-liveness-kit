package org.jmrtd.lds.iso19794;

import androidx.camera.camera2.internal.c;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.jmrtd.lds.AbstractImageInfo;
import org.jmrtd.lds.ImageInfo;

/* loaded from: classes2.dex */
public class IrisImageInfo extends AbstractImageInfo {
    public static final int IMAGE_QUAL_HIGH_HI = 100;
    public static final int IMAGE_QUAL_HIGH_LO = 76;
    public static final int IMAGE_QUAL_LOW_HI = 50;
    public static final int IMAGE_QUAL_LOW_LO = 26;
    public static final int IMAGE_QUAL_MED_HI = 75;
    public static final int IMAGE_QUAL_MED_LO = 51;
    public static final int IMAGE_QUAL_UNDEF = 254;
    private static final int ROT_ANGLE_UNDEF = 65535;
    private static final int ROT_UNCERTAIN_UNDEF = 65535;
    private static final long serialVersionUID = 833541246115625112L;
    private int imageFormat;
    private int imageNumber;
    private int quality;
    private int rotationAngle;
    private int rotationAngleUncertainty;

    public IrisImageInfo(int r10, int r11, int r12, int r13, int r14, int r15, InputStream inputStream, int r17, int r18) throws IOException {
        super(3, r14, r15, inputStream, r17, getMimeTypeFromImageFormat(r18));
        if (inputStream == null) {
            throw new IllegalArgumentException("Null image bytes");
        }
        this.imageNumber = r10;
        this.quality = r11;
        this.rotationAngle = r12;
        this.rotationAngleUncertainty = r13;
    }

    public IrisImageInfo(int r11, int r12, int r13, InputStream inputStream, int r15, int r16) throws IOException {
        this(r11, IMAGE_QUAL_UNDEF, 65535, 65535, r12, r13, inputStream, r15, r16);
    }

    public IrisImageInfo(InputStream inputStream, int r32) throws IOException {
        super(3);
        this.imageFormat = r32;
        setMimeType(getMimeTypeFromImageFormat(r32));
        readObject(inputStream);
    }

    private static String getMimeTypeFromImageFormat(int r12) {
        if (r12 == 2 || r12 == 4) {
            return ImageInfo.WSQ_MIME_TYPE;
        }
        if (r12 == 6 || r12 == 8 || r12 == 10 || r12 == 12) {
            return ImageInfo.JPEG_MIME_TYPE;
        }
        if (r12 == 14 || r12 == 16) {
            return ImageInfo.JPEG2000_MIME_TYPE;
        }
        return null;
    }

    @Override // org.jmrtd.lds.AbstractImageInfo
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || getClass() != obj.getClass()) {
            return false;
        }
        IrisImageInfo irisImageInfo = (IrisImageInfo) obj;
        return this.imageFormat == irisImageInfo.imageFormat && this.imageNumber == irisImageInfo.imageNumber && this.quality == irisImageInfo.quality && this.rotationAngle == irisImageInfo.rotationAngle && this.rotationAngleUncertainty == irisImageInfo.rotationAngleUncertainty;
    }

    public int getImageFormat() {
        return this.imageFormat;
    }

    public int getImageNumber() {
        return this.imageNumber;
    }

    public int getQuality() {
        return this.quality;
    }

    @Override // org.jmrtd.lds.ImageInfo
    public long getRecordLength() {
        return getImageLength() + 11;
    }

    public int getRotationAngle() {
        return this.rotationAngle;
    }

    public int getRotationAngleUncertainty() {
        return this.rotationAngleUncertainty;
    }

    @Override // org.jmrtd.lds.AbstractImageInfo
    public int hashCode() {
        return (((((((((super.hashCode() * 31) + this.imageFormat) * 31) + this.imageNumber) * 31) + this.quality) * 31) + this.rotationAngle) * 31) + this.rotationAngleUncertainty;
    }

    @Override // org.jmrtd.lds.AbstractImageInfo
    public void readObject(InputStream inputStream) throws IOException {
        DataInputStream dataInputStream = inputStream instanceof DataInputStream ? (DataInputStream) inputStream : new DataInputStream(inputStream);
        this.imageNumber = dataInputStream.readUnsignedShort();
        this.quality = dataInputStream.readUnsignedByte();
        this.rotationAngle = dataInputStream.readShort();
        this.rotationAngleUncertainty = dataInputStream.readUnsignedShort();
        readImage(inputStream, dataInputStream.readInt() & BodyPartID.bodyIdMax);
    }

    @Override // org.jmrtd.lds.AbstractImageInfo
    public String toString() {
        StringBuilder sb2 = new StringBuilder("IrisImageInfo [image number: ");
        sb2.append(this.imageNumber);
        sb2.append(", quality: ");
        sb2.append(this.quality);
        sb2.append(", image: ");
        sb2.append(getWidth());
        sb2.append(" x ");
        sb2.append(getHeight());
        sb2.append("mime-type: ");
        return c.h(sb2, getMimeTypeFromImageFormat(this.imageFormat), "]");
    }

    @Override // org.jmrtd.lds.AbstractImageInfo
    public void writeObject(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = outputStream instanceof DataOutputStream ? (DataOutputStream) outputStream : new DataOutputStream(outputStream);
        dataOutputStream.writeShort(this.imageNumber);
        dataOutputStream.writeByte(this.quality);
        dataOutputStream.writeShort(this.rotationAngle);
        dataOutputStream.writeShort(this.rotationAngleUncertainty);
        dataOutputStream.writeInt(getImageLength());
        writeImage(dataOutputStream);
    }
}
