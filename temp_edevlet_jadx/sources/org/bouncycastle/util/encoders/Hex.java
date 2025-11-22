package org.bouncycastle.util.encoders;

import androidx.constraintlayout.core.a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.util.Strings;

/* loaded from: classes2.dex */
public class Hex {
    private static final HexEncoder encoder = new HexEncoder();

    public static int decode(String str, OutputStream outputStream) throws IOException {
        return encoder.decode(str, outputStream);
    }

    public static byte[] decode(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            encoder.decode(str, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e10) {
            throw new DecoderException(a.j(e10, new StringBuilder("exception decoding Hex string: ")), e10);
        }
    }

    public static byte[] decodeStrict(String str) {
        try {
            return encoder.decodeStrict(str, 0, str.length());
        } catch (Exception e10) {
            throw new DecoderException(a.j(e10, new StringBuilder("exception decoding Hex string: ")), e10);
        }
    }

    public static int encode(byte[] bArr, int r22, int r32, OutputStream outputStream) throws IOException {
        return encoder.encode(bArr, r22, r32, outputStream);
    }

    public static int encode(byte[] bArr, OutputStream outputStream) throws IOException {
        return encoder.encode(bArr, 0, bArr.length, outputStream);
    }

    public static byte[] encode(byte[] bArr) {
        return encode(bArr, 0, bArr.length);
    }

    public static byte[] encode(byte[] bArr, int r32, int r42) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            encoder.encode(bArr, r32, r42, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e10) {
            throw new EncoderException(a.j(e10, new StringBuilder("exception encoding Hex string: ")), e10);
        }
    }

    public static String toHexString(byte[] bArr) {
        return toHexString(bArr, 0, bArr.length);
    }

    public static String toHexString(byte[] bArr, int r12, int r22) {
        return Strings.fromByteArray(encode(bArr, r12, r22));
    }

    public static byte[] decode(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            encoder.decode(bArr, 0, bArr.length, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e10) {
            throw new DecoderException(a.j(e10, new StringBuilder("exception decoding Hex data: ")), e10);
        }
    }

    public static byte[] decodeStrict(String str, int r22, int r32) {
        try {
            return encoder.decodeStrict(str, r22, r32);
        } catch (Exception e10) {
            throw new DecoderException(a.j(e10, new StringBuilder("exception decoding Hex string: ")), e10);
        }
    }
}
