package e1;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.view.InputDeviceCompat;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class k implements ImageHeaderParser {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f5040a = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f5041b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    public static final class a implements c {

        /* renamed from: a, reason: collision with root package name */
        public final ByteBuffer f5042a;

        public a(ByteBuffer byteBuffer) {
            this.f5042a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // e1.k.c
        public final int a() throws c.a {
            return (b() << 8) | b();
        }

        @Override // e1.k.c
        public final short b() throws c.a {
            ByteBuffer byteBuffer = this.f5042a;
            if (byteBuffer.remaining() >= 1) {
                return (short) (byteBuffer.get() & 255);
            }
            throw new c.a();
        }

        @Override // e1.k.c
        public final int c(int r32, byte[] bArr) {
            ByteBuffer byteBuffer = this.f5042a;
            int r33 = Math.min(r32, byteBuffer.remaining());
            if (r33 == 0) {
                return -1;
            }
            byteBuffer.get(bArr, 0, r33);
            return r33;
        }

        @Override // e1.k.c
        public final long skip(long j10) {
            ByteBuffer byteBuffer = this.f5042a;
            int r52 = (int) Math.min(byteBuffer.remaining(), j10);
            byteBuffer.position(byteBuffer.position() + r52);
            return r52;
        }
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final ByteBuffer f5043a;

        public b(byte[] bArr, int r32) {
            this.f5043a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(r32);
        }

        public final short a(int r42) {
            ByteBuffer byteBuffer = this.f5043a;
            if (byteBuffer.remaining() - r42 >= 2) {
                return byteBuffer.getShort(r42);
            }
            return (short) -1;
        }
    }

    public interface c {

        public static final class a extends IOException {
            public a() {
                super("Unexpectedly reached end of a file");
            }
        }

        int a() throws IOException;

        short b() throws IOException;

        int c(int r12, byte[] bArr) throws IOException;

        long skip(long j10) throws IOException;
    }

    public static final class d implements c {

        /* renamed from: a, reason: collision with root package name */
        public final InputStream f5044a;

        public d(InputStream inputStream) {
            this.f5044a = inputStream;
        }

        @Override // e1.k.c
        public final int a() throws IOException {
            return (b() << 8) | b();
        }

        @Override // e1.k.c
        public final short b() throws IOException {
            int r02 = this.f5044a.read();
            if (r02 != -1) {
                return (short) r02;
            }
            throw new c.a();
        }

        @Override // e1.k.c
        public final int c(int r52, byte[] bArr) throws IOException {
            int r02 = 0;
            int r12 = 0;
            while (r02 < r52 && (r12 = this.f5044a.read(bArr, r02, r52 - r02)) != -1) {
                r02 += r12;
            }
            if (r02 == 0 && r12 == -1) {
                throw new c.a();
            }
            return r02;
        }

        @Override // e1.k.c
        public final long skip(long j10) throws IOException {
            if (j10 < 0) {
                return 0L;
            }
            long j11 = j10;
            while (j11 > 0) {
                InputStream inputStream = this.f5044a;
                long jSkip = inputStream.skip(j11);
                if (jSkip > 0) {
                    j11 -= jSkip;
                } else {
                    if (inputStream.read() == -1) {
                        break;
                    }
                    j11--;
                }
            }
            return j10 - j11;
        }
    }

    public static int e(c cVar, y0.b bVar) throws IOException {
        try {
            int r22 = cVar.a();
            if (!((r22 & 65496) == 65496 || r22 == 19789 || r22 == 18761)) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Parser doesn't handle magic number: " + r22);
                }
                return -1;
            }
            int r02 = g(cVar);
            if (r02 == -1) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Failed to parse exif segment length, or exif segment not found");
                }
                return -1;
            }
            byte[] bArr = (byte[]) bVar.c(byte[].class, r02);
            try {
                return h(cVar, bArr, r02);
            } finally {
                bVar.put(bArr);
            }
        } catch (c.a unused) {
            return -1;
        }
    }

    @NonNull
    public static ImageHeaderParser.ImageType f(c cVar) throws IOException {
        try {
            int r02 = cVar.a();
            if (r02 == 65496) {
                return ImageHeaderParser.ImageType.JPEG;
            }
            int r03 = (r02 << 8) | cVar.b();
            if (r03 == 4671814) {
                return ImageHeaderParser.ImageType.GIF;
            }
            int r04 = (r03 << 8) | cVar.b();
            if (r04 == -1991225785) {
                cVar.skip(21L);
                try {
                    return cVar.b() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
                } catch (c.a unused) {
                    return ImageHeaderParser.ImageType.PNG;
                }
            }
            if (r04 == 1380533830) {
                cVar.skip(4L);
                if (((cVar.a() << 16) | cVar.a()) != 1464156752) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int r05 = (cVar.a() << 16) | cVar.a();
                if ((r05 & InputDeviceCompat.SOURCE_ANY) != 1448097792) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int r06 = r05 & 255;
                if (r06 == 88) {
                    cVar.skip(4L);
                    short sB = cVar.b();
                    return (sB & 2) != 0 ? ImageHeaderParser.ImageType.ANIMATED_WEBP : (sB & 16) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
                }
                if (r06 != 76) {
                    return ImageHeaderParser.ImageType.WEBP;
                }
                cVar.skip(4L);
                return (cVar.b() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
            }
            boolean z10 = false;
            if (((cVar.a() << 16) | cVar.a()) == 1718909296) {
                int r12 = (cVar.a() << 16) | cVar.a();
                if (r12 == 1635150182 || r12 == 1635150195) {
                    z10 = true;
                    break;
                }
                cVar.skip(4L);
                int r07 = r04 - 16;
                if (r07 % 4 == 0) {
                    int r13 = 0;
                    while (r13 < 5 && r07 > 0) {
                        int r22 = (cVar.a() << 16) | cVar.a();
                        if (r22 != 1635150182 && r22 != 1635150195) {
                            r13++;
                            r07 -= 4;
                        }
                        z10 = true;
                    }
                }
            }
            return z10 ? ImageHeaderParser.ImageType.AVIF : ImageHeaderParser.ImageType.UNKNOWN;
        } catch (c.a unused2) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
    }

    public static int g(c cVar) throws IOException {
        short sB;
        int r12;
        long j10;
        long jSkip;
        do {
            short sB2 = cVar.b();
            if (sB2 != 255) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Unknown segmentId=" + ((int) sB2));
                }
                return -1;
            }
            sB = cVar.b();
            if (sB == 218) {
                return -1;
            }
            if (sB == 217) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Found MARKER_EOI in exif segment");
                }
                return -1;
            }
            r12 = cVar.a() - 2;
            if (sB == 225) {
                return r12;
            }
            j10 = r12;
            jSkip = cVar.skip(j10);
        } while (jSkip == j10);
        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            StringBuilder sbF = androidx.constraintlayout.core.a.f("Unable to skip enough data, type: ", sB, ", wanted to skip: ", r12, ", but actually skipped: ");
            sbF.append(jSkip);
            Log.d("DfltImageHeaderParser", sbF.toString());
        }
        return -1;
    }

    public static int h(c cVar, byte[] bArr, int r15) throws IOException {
        ByteOrder byteOrder;
        StringBuilder sb2;
        String string;
        int r13 = cVar.c(r15, bArr);
        if (r13 != r15) {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Unable to read exif segment data, length: " + r15 + ", actually read: " + r13);
            }
            return -1;
        }
        short s7 = 1;
        byte[] bArr2 = f5040a;
        boolean z10 = bArr != null && r15 > bArr2.length;
        if (z10) {
            int r52 = 0;
            while (true) {
                if (r52 >= bArr2.length) {
                    break;
                }
                if (bArr[r52] != bArr2[r52]) {
                    z10 = false;
                    break;
                }
                r52++;
            }
        }
        if (!z10) {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Missing jpeg exif preamble");
            }
            return -1;
        }
        b bVar = new b(bArr, r15);
        short sA = bVar.a(6);
        if (sA != 18761) {
            if (sA != 19789 && Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Unknown endianness = " + ((int) sA));
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        }
        ByteBuffer byteBuffer = bVar.f5043a;
        byteBuffer.order(byteOrder);
        int r152 = (byteBuffer.remaining() - 10 >= 4 ? byteBuffer.getInt(10) : -1) + 6;
        short sA2 = bVar.a(r152);
        int r53 = 0;
        while (r53 < sA2) {
            int r82 = (r53 * 12) + r152 + 2;
            short sA3 = bVar.a(r82);
            if (sA3 == 274) {
                short sA4 = bVar.a(r82 + 2);
                if (sA4 >= s7 && sA4 <= 12) {
                    int r132 = r82 + 4;
                    int r133 = byteBuffer.remaining() - r132 >= 4 ? byteBuffer.getInt(r132) : -1;
                    if (r133 >= 0) {
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            StringBuilder sbF = androidx.constraintlayout.core.a.f("Got tagIndex=", r53, " tagType=", sA3, " formatCode=");
                            sbF.append((int) sA4);
                            sbF.append(" componentCount=");
                            sbF.append(r133);
                            Log.d("DfltImageHeaderParser", sbF.toString());
                        }
                        int r134 = r133 + f5041b[sA4];
                        if (r134 <= 4) {
                            int r83 = r82 + 8;
                            if (r83 < 0 || r83 > byteBuffer.remaining()) {
                                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    string = androidx.constraintlayout.core.a.c("Illegal tagValueOffset=", r83, " tagType=", sA3);
                                    Log.d("DfltImageHeaderParser", string);
                                }
                            } else {
                                if (r134 >= 0 && r134 + r83 <= byteBuffer.remaining()) {
                                    return bVar.a(r83);
                                }
                                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    sb2 = new StringBuilder("Illegal number of bytes for TI tag data tagType=");
                                    sb2.append((int) sA3);
                                }
                            }
                        } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            sb2 = new StringBuilder("Got byte count > 4, not orientation, continuing, formatCode=");
                            sb2.append((int) sA4);
                        }
                    } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                        string = "Negative tiff component count";
                        Log.d("DfltImageHeaderParser", string);
                    }
                } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    sb2 = new StringBuilder("Got invalid format code = ");
                    sb2.append((int) sA4);
                }
                string = sb2.toString();
                Log.d("DfltImageHeaderParser", string);
            }
            r53++;
            s7 = 1;
        }
        return -1;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    public final ImageHeaderParser.ImageType a(@NonNull ByteBuffer byteBuffer) throws IOException {
        q1.l.b(byteBuffer);
        return f(new a(byteBuffer));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final int b(@NonNull InputStream inputStream, @NonNull y0.b bVar) throws IOException {
        q1.l.b(inputStream);
        d dVar = new d(inputStream);
        q1.l.b(bVar);
        return e(dVar, bVar);
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    public final ImageHeaderParser.ImageType c(@NonNull InputStream inputStream) throws IOException {
        q1.l.b(inputStream);
        return f(new d(inputStream));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final int d(@NonNull ByteBuffer byteBuffer, @NonNull y0.b bVar) throws IOException {
        q1.l.b(byteBuffer);
        a aVar = new a(byteBuffer);
        q1.l.b(bVar);
        return e(aVar, bVar);
    }
}
