package org.jmrtd.lds;

import ab.b;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import net.sf.scuba.tlv.TLVInputStream;
import net.sf.scuba.tlv.TLVOutputStream;
import net.sf.scuba.tlv.TLVUtil;

/* loaded from: classes2.dex */
public class DisplayedImageInfo extends AbstractImageInfo {
    public static final int DISPLAYED_PORTRAIT_TAG = 24384;
    public static final int DISPLAYED_SIGNATURE_OR_MARK_TAG = 24387;
    private static final long serialVersionUID = 3801320585294302721L;
    private int displayedImageTag;

    public DisplayedImageInfo(int r22, byte[] bArr) {
        super(r22, getMimeTypeFromType(r22));
        this.displayedImageTag = getDisplayedImageTagFromType(r22);
        setImageBytes(bArr);
    }

    public DisplayedImageInfo(InputStream inputStream) throws IOException {
        readObject(inputStream);
    }

    private static int getDisplayedImageTagFromType(int r32) {
        if (r32 == 0) {
            return DISPLAYED_PORTRAIT_TAG;
        }
        if (r32 == 1) {
            return DISPLAYED_SIGNATURE_OR_MARK_TAG;
        }
        throw new NumberFormatException(b.c(r32, new StringBuilder("Unknown type: ")));
    }

    private static String getMimeTypeFromType(int r32) {
        if (r32 == 0 || r32 == 1) {
            return ImageInfo.JPEG_MIME_TYPE;
        }
        if (r32 == 2) {
            return ImageInfo.WSQ_MIME_TYPE;
        }
        throw new NumberFormatException(b.c(r32, new StringBuilder("Unknown type: ")));
    }

    private static int getTypeFromDisplayedImageTag(int r32) {
        if (r32 == 24384) {
            return 0;
        }
        if (r32 == 24387) {
            return 1;
        }
        throw new NumberFormatException(b.c(r32, new StringBuilder("Unknown tag: ")));
    }

    @Override // org.jmrtd.lds.AbstractImageInfo
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return super.equals(obj) && getClass() == obj.getClass() && this.displayedImageTag == ((DisplayedImageInfo) obj).displayedImageTag;
    }

    public int getDisplayedImageTag() {
        return this.displayedImageTag;
    }

    @Override // org.jmrtd.lds.ImageInfo
    public long getRecordLength() {
        return TLVUtil.getTagLength(getDisplayedImageTagFromType(getType())) + 0 + TLVUtil.getLengthLength(r0) + getImageLength();
    }

    @Override // org.jmrtd.lds.AbstractImageInfo
    public int hashCode() {
        return (super.hashCode() * 31) + this.displayedImageTag;
    }

    @Override // org.jmrtd.lds.AbstractImageInfo
    public void readObject(InputStream inputStream) throws IOException {
        TLVInputStream tLVInputStream = inputStream instanceof TLVInputStream ? (TLVInputStream) inputStream : new TLVInputStream(inputStream);
        int tag = tLVInputStream.readTag();
        this.displayedImageTag = tag;
        if (tag != 24384 && tag != 24387) {
            throw new IllegalArgumentException(b.c(this.displayedImageTag, new StringBuilder("Expected tag 0x5F40 or 0x5F43, found ")));
        }
        int typeFromDisplayedImageTag = getTypeFromDisplayedImageTag(tag);
        setType(typeFromDisplayedImageTag);
        setMimeType(getMimeTypeFromType(typeFromDisplayedImageTag));
        readImage(tLVInputStream, tLVInputStream.readLength());
    }

    @Override // org.jmrtd.lds.AbstractImageInfo
    public void writeObject(OutputStream outputStream) throws IOException {
        TLVOutputStream tLVOutputStream = outputStream instanceof TLVOutputStream ? (TLVOutputStream) outputStream : new TLVOutputStream(outputStream);
        tLVOutputStream.writeTag(getDisplayedImageTagFromType(getType()));
        writeImage(tLVOutputStream);
        tLVOutputStream.writeValueEnd();
    }
}
