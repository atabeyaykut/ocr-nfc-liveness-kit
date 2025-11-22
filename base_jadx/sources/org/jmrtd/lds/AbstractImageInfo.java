package org.jmrtd.lds;

import ab.b;
import androidx.camera.core.impl.a;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jmrtd.io.SplittableInputStream;

/* loaded from: classes2.dex */
public abstract class AbstractImageInfo implements ImageInfo {
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd");
    private static final long serialVersionUID = 2870092217269116309L;
    private int height;
    private byte[] imageBytes;
    private int imageLength;
    private int imagePositionInInputStream;
    private String mimeType;
    private transient SplittableInputStream splittableInputStream;
    private int type;
    private int width;

    public AbstractImageInfo() {
        this(-1, 0, 0, null);
    }

    public AbstractImageInfo(int r32) {
        this(r32, 0, 0, null);
    }

    public AbstractImageInfo(int r12, int r22, int r32, InputStream inputStream, long j10, String str) throws IOException {
        this(r12, r22, r32, str);
        readImage(inputStream, j10);
    }

    private AbstractImageInfo(int r12, int r22, int r32, String str) {
        this.type = r12;
        this.mimeType = str;
        this.width = r22;
        this.height = r32;
    }

    public AbstractImageInfo(int r22, String str) {
        this(r22, 0, 0, str);
    }

    private byte[] getImageBytes() throws IOException {
        byte[] bArr = new byte[getImageLength()];
        new DataInputStream(getImageInputStream()).readFully(bArr);
        return bArr;
    }

    private static String typeToString(int r32) {
        if (r32 == -1) {
            return "Unknown";
        }
        if (r32 == 0) {
            return "Portrait";
        }
        if (r32 == 1) {
            return "Signature or usual mark";
        }
        if (r32 == 2) {
            return "Finger";
        }
        if (r32 == 3) {
            return "Iris";
        }
        throw new NumberFormatException(b.c(r32, new StringBuilder("Unknown type: ")));
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        try {
            if (!obj.getClass().equals(getClass())) {
                return false;
            }
            AbstractImageInfo abstractImageInfo = (AbstractImageInfo) obj;
            if (!Arrays.equals(getImageBytes(), abstractImageInfo.getImageBytes())) {
                return false;
            }
            String str = this.mimeType;
            if (!(str == null && abstractImageInfo.mimeType == null) && (str == null || !str.equals(abstractImageInfo.mimeType))) {
                return false;
            }
            return this.type == abstractImageInfo.type;
        } catch (Exception e10) {
            LOGGER.log(Level.WARNING, "Exception" + e10);
            return false;
        }
    }

    @Override // org.jmrtd.lds.LDSElement
    public byte[] getEncoded() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            writeObject(byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e10) {
            LOGGER.log(Level.WARNING, "Exception", (Throwable) e10);
            return null;
        }
    }

    @Override // org.jmrtd.lds.ImageInfo
    public int getHeight() {
        return this.height;
    }

    @Override // org.jmrtd.lds.ImageInfo
    public InputStream getImageInputStream() {
        SplittableInputStream splittableInputStream = this.splittableInputStream;
        if (splittableInputStream != null) {
            return splittableInputStream.getInputStream(this.imagePositionInInputStream);
        }
        if (this.imageBytes != null) {
            return new ByteArrayInputStream(this.imageBytes);
        }
        throw new IllegalStateException("Both the byte buffer and the stream are null");
    }

    @Override // org.jmrtd.lds.ImageInfo
    public int getImageLength() {
        if (this.splittableInputStream != null) {
            return this.imageLength;
        }
        byte[] bArr = this.imageBytes;
        if (bArr != null) {
            return bArr.length;
        }
        throw new IllegalStateException("Cannot get length of null");
    }

    @Override // org.jmrtd.lds.ImageInfo
    public String getMimeType() {
        return this.mimeType;
    }

    @Override // org.jmrtd.lds.ImageInfo
    public int getType() {
        return this.type;
    }

    @Override // org.jmrtd.lds.ImageInfo
    public int getWidth() {
        return this.width;
    }

    public int hashCode() {
        int r02 = (this.type * 5) - 591263623;
        String str = this.mimeType;
        return (getImageLength() * 7) + 11 + a.d(str == null ? 1337 : str.hashCode(), 5, 7, r02);
    }

    public void readImage(InputStream inputStream, long j10) throws IOException {
        this.splittableInputStream = null;
        this.imageBytes = new byte[(int) j10];
        new DataInputStream(inputStream).readFully(this.imageBytes);
    }

    public abstract void readObject(InputStream inputStream) throws IOException;

    public final void setHeight(int r12) {
        this.height = r12;
    }

    public final void setImageBytes(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("Cannot set null image bytes");
        }
        try {
            readImage(new ByteArrayInputStream(bArr), bArr.length);
        } catch (IOException e10) {
            LOGGER.log(Level.WARNING, "Exception", (Throwable) e10);
        }
    }

    public final void setMimeType(String str) {
        this.mimeType = str;
    }

    public final void setType(int r12) {
        this.type = r12;
    }

    public final void setWidth(int r12) {
        this.width = r12;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getClass().getSimpleName());
        sb2.append(" [type: ");
        sb2.append(typeToString(this.type) + ", ");
        sb2.append("size: ");
        sb2.append(getImageLength());
        sb2.append("]");
        return sb2.toString();
    }

    public void writeImage(OutputStream outputStream) throws IOException {
        outputStream.write(getImageBytes());
    }

    public abstract void writeObject(OutputStream outputStream) throws IOException;
}
