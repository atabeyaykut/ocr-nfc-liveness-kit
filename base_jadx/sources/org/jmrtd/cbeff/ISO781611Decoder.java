package org.jmrtd.cbeff;

import ab.b;
import android.support.v4.media.a;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.AccessControlException;
import java.util.HashMap;
import java.util.logging.Logger;
import net.sf.scuba.tlv.TLVInputStream;
import net.sf.scuba.tlv.TLVUtil;

/* loaded from: classes2.dex */
public class ISO781611Decoder implements ISO781611 {
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd");
    private BiometricDataBlockDecoder<?> bdbDecoder;

    public ISO781611Decoder(BiometricDataBlockDecoder<?> biometricDataBlockDecoder) {
        this.bdbDecoder = biometricDataBlockDecoder;
    }

    private byte[] decodeSMTValue(InputStream inputStream) throws IOException {
        TLVInputStream tLVInputStream = inputStream instanceof TLVInputStream ? (TLVInputStream) inputStream : new TLVInputStream(inputStream);
        int tag = tLVInputStream.readTag();
        int length = tLVInputStream.readLength();
        if (tag == 129) {
            return tLVInputStream.readValue();
        }
        if (tag == 133) {
            throw new AccessControlException("Access denied. Biometric Information Template is statically protected.");
        }
        long jSkip = 0;
        if (tag == 142) {
            while (true) {
                long j10 = length;
                if (jSkip >= j10) {
                    return null;
                }
                jSkip += tLVInputStream.skip(j10);
            }
        } else {
            if (tag != 158) {
                LOGGER.info("Unsupported data object tag " + Integer.toHexString(tag));
                return null;
            }
            while (true) {
                long j11 = length;
                if (jSkip >= j11) {
                    return null;
                }
                jSkip += tLVInputStream.skip(j11);
            }
        }
    }

    private StandardBiometricHeader readBHT(InputStream inputStream, int r52, int r6, int r72) throws IOException {
        TLVInputStream tLVInputStream = inputStream instanceof TLVInputStream ? (TLVInputStream) inputStream : new TLVInputStream(inputStream);
        if (r52 != 161) {
            LOGGER.warning("Expected tag " + Integer.toHexString(161) + ", found " + Integer.toHexString(r52));
        }
        HashMap map = new HashMap();
        int length = 0;
        while (length < r6) {
            int tag = tLVInputStream.readTag();
            int lengthLength = TLVUtil.getLengthLength(tLVInputStream.readLength()) + TLVUtil.getTagLength(tag) + length;
            byte[] value = tLVInputStream.readValue();
            length = lengthLength + value.length;
            map.put(Integer.valueOf(tag), value);
        }
        return new StandardBiometricHeader(map);
    }

    private CBEFFInfo readBIT(int r32, int r42, InputStream inputStream, int r6) throws IOException {
        TLVInputStream tLVInputStream = inputStream instanceof TLVInputStream ? (TLVInputStream) inputStream : new TLVInputStream(inputStream);
        if (r32 != 32608) {
            throw new IllegalArgumentException("Expected tag BIOMETRIC_INFORMATION_TEMPLATE_TAG (" + Integer.toHexString(ISO781611.BIOMETRIC_INFORMATION_TEMPLATE_TAG) + "), found " + Integer.toHexString(r32) + ", index is " + r6);
        }
        int tag = tLVInputStream.readTag();
        int length = tLVInputStream.readLength();
        if (tag == 125) {
            readStaticallyProtectedBIT(inputStream, tag, length, r6);
            return null;
        }
        if ((tag & 160) == 160) {
            return new SimpleCBEFFInfo(readBiometricDataBlock(inputStream, readBHT(inputStream, tag, length, r6), r6));
        }
        throw new IllegalArgumentException(b.c(tag, new StringBuilder("Unsupported template tag: ")));
    }

    private CBEFFInfo readBIT(InputStream inputStream, int r42) throws IOException {
        TLVInputStream tLVInputStream = inputStream instanceof TLVInputStream ? (TLVInputStream) inputStream : new TLVInputStream(inputStream);
        return readBIT(tLVInputStream.readTag(), tLVInputStream.readLength(), inputStream, r42);
    }

    private ComplexCBEFFInfo readBITGroup(int r32, int r42, InputStream inputStream) throws IOException {
        TLVInputStream tLVInputStream = inputStream instanceof TLVInputStream ? (TLVInputStream) inputStream : new TLVInputStream(inputStream);
        ComplexCBEFFInfo complexCBEFFInfo = new ComplexCBEFFInfo();
        if (r32 != 32609) {
            throw new IllegalArgumentException("Expected tag " + Integer.toHexString(ISO781611.BIOMETRIC_INFORMATION_GROUP_TEMPLATE_TAG) + ", found " + Integer.toHexString(r32));
        }
        int tag = tLVInputStream.readTag();
        if (tag != 2) {
            throw new IllegalArgumentException("Expected tag BIOMETRIC_INFO_COUNT_TAG (" + Integer.toHexString(2) + ") in CBEFF structure, found " + Integer.toHexString(tag));
        }
        int length = tLVInputStream.readLength();
        if (length != 1) {
            throw new IllegalArgumentException(a.d("BIOMETRIC_INFO_COUNT should have length 1, found length ", length));
        }
        byte[] value = tLVInputStream.readValue();
        int r33 = value[0] & 255;
        for (int r43 = 0; r43 < r33; r43++) {
            complexCBEFFInfo.add(readBIT(inputStream, r43));
        }
        return complexCBEFFInfo;
    }

    private ComplexCBEFFInfo readBITGroup(InputStream inputStream) throws IOException {
        TLVInputStream tLVInputStream = inputStream instanceof TLVInputStream ? (TLVInputStream) inputStream : new TLVInputStream(inputStream);
        int tag = tLVInputStream.readTag();
        if (tag == 32609) {
            return readBITGroup(tag, tLVInputStream.readLength(), inputStream);
        }
        throw new IllegalArgumentException("Expected tag " + Integer.toHexString(ISO781611.BIOMETRIC_INFORMATION_GROUP_TEMPLATE_TAG) + ", found " + Integer.toHexString(tag));
    }

    private BiometricDataBlock readBiometricDataBlock(InputStream inputStream, StandardBiometricHeader standardBiometricHeader, int r72) throws IOException {
        TLVInputStream tLVInputStream = inputStream instanceof TLVInputStream ? (TLVInputStream) inputStream : new TLVInputStream(inputStream);
        int tag = tLVInputStream.readTag();
        if (tag == 24366 || tag == 32558) {
            return this.bdbDecoder.decode(inputStream, standardBiometricHeader, r72, tLVInputStream.readLength());
        }
        throw new IllegalArgumentException("Expected tag BIOMETRIC_DATA_BLOCK_TAG (" + Integer.toHexString(ISO781611.BIOMETRIC_DATA_BLOCK_TAG) + ") or BIOMETRIC_DATA_BLOCK_TAG_ALT (" + Integer.toHexString(ISO781611.BIOMETRIC_DATA_BLOCK_CONSTRUCTED_TAG) + "), found " + Integer.toHexString(tag));
    }

    private void readStaticallyProtectedBIT(InputStream inputStream, int r32, int r42, int r52) throws IOException {
        TLVInputStream tLVInputStream = new TLVInputStream(new ByteArrayInputStream(decodeSMTValue(inputStream)));
        try {
            readBiometricDataBlock(new ByteArrayInputStream(decodeSMTValue(inputStream)), readBHT(tLVInputStream, tLVInputStream.readTag(), tLVInputStream.readLength(), r52), r52);
        } finally {
            tLVInputStream.close();
        }
    }

    public ComplexCBEFFInfo decode(InputStream inputStream) throws IOException {
        return readBITGroup(inputStream);
    }
}
