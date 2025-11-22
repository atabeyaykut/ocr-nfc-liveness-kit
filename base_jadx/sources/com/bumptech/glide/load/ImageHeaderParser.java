package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import y0.b;

/* loaded from: classes.dex */
public interface ImageHeaderParser {

    public enum ImageType {
        GIF(true),
        JPEG(false),
        RAW(false),
        PNG_A(true),
        PNG(false),
        WEBP_A(true),
        WEBP(false),
        ANIMATED_WEBP(true),
        AVIF(true),
        UNKNOWN(false);


        /* renamed from: a, reason: collision with root package name */
        public final boolean f2741a;

        ImageType(boolean z10) {
            this.f2741a = z10;
        }

        public boolean hasAlpha() {
            return this.f2741a;
        }

        public boolean isWebp() {
            int r02 = a.f2742a[ordinal()];
            return r02 == 1 || r02 == 2 || r02 == 3;
        }
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2742a;

        static {
            int[] r02 = new int[ImageType.values().length];
            f2742a = r02;
            try {
                r02[ImageType.WEBP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2742a[ImageType.WEBP_A.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2742a[ImageType.ANIMATED_WEBP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @NonNull
    ImageType a(@NonNull ByteBuffer byteBuffer) throws IOException;

    int b(@NonNull InputStream inputStream, @NonNull b bVar) throws IOException;

    @NonNull
    ImageType c(@NonNull InputStream inputStream) throws IOException;

    int d(@NonNull ByteBuffer byteBuffer, @NonNull b bVar) throws IOException;
}
