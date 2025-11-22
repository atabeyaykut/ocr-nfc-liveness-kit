package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.ImageHeaderParser;
import e1.w;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import y0.b;

/* loaded from: classes.dex */
public final class a {
    public static int a(@NonNull b bVar, @Nullable InputStream inputStream, @NonNull List list) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new w(inputStream, bVar);
        }
        inputStream.mark(5242880);
        int size = list.size();
        for (int r22 = 0; r22 < size; r22++) {
            try {
                int r32 = ((ImageHeaderParser) list.get(r22)).b(inputStream, bVar);
                if (r32 != -1) {
                    return r32;
                }
            } finally {
                inputStream.reset();
            }
        }
        return -1;
    }

    @NonNull
    public static ImageHeaderParser.ImageType b(@NonNull List<ImageHeaderParser> list, @Nullable ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        int size = list.size();
        for (int r12 = 0; r12 < size; r12++) {
            try {
                ImageHeaderParser.ImageType imageTypeA = list.get(r12).a(byteBuffer);
                q1.a.c(byteBuffer);
                if (imageTypeA != ImageHeaderParser.ImageType.UNKNOWN) {
                    return imageTypeA;
                }
            } catch (Throwable th2) {
                q1.a.c(byteBuffer);
                throw th2;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    @NonNull
    public static ImageHeaderParser.ImageType c(@NonNull b bVar, @Nullable InputStream inputStream, @NonNull List list) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new w(inputStream, bVar);
        }
        inputStream.mark(5242880);
        int size = list.size();
        for (int r02 = 0; r02 < size; r02++) {
            try {
                ImageHeaderParser.ImageType imageTypeC = ((ImageHeaderParser) list.get(r02)).c(inputStream);
                inputStream.reset();
                if (imageTypeC != ImageHeaderParser.ImageType.UNKNOWN) {
                    return imageTypeC;
                }
            } catch (Throwable th2) {
                inputStream.reset();
                throw th2;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }
}
