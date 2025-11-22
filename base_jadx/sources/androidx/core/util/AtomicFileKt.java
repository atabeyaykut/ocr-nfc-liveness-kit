package androidx.core.util;

import android.annotation.SuppressLint;
import androidx.annotation.RequiresApi;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import org.bouncycastle.i18n.TextBundle;
import x9.l;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a$\u0010\u0005\u001a\u00020\u0003*\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0087\bø\u0001\u0000\u001a\u0014\u0010\b\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006H\u0007\u001a\u001e\u0010\r\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\u000bH\u0007\u001a\r\u0010\u000e\u001a\u00020\u0006*\u00020\u0000H\u0087\b\u001a\u0016\u0010\u000f\u001a\u00020\t*\u00020\u00002\b\b\u0002\u0010\f\u001a\u00020\u000bH\u0007\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0010"}, d2 = {"Landroid/util/AtomicFile;", "Lkotlin/Function1;", "Ljava/io/FileOutputStream;", "Ll9/m;", "block", "tryWrite", "", "array", "writeBytes", "", TextBundle.TEXT_ENTRY, "Ljava/nio/charset/Charset;", "charset", "writeText", "readBytes", "readText", "core-ktx_release"}, k = 2, mv = {1, 7, 1})
@SuppressLint({"ClassVerificationFailure"})
/* loaded from: classes.dex */
public final class AtomicFileKt {
    @RequiresApi(17)
    public static final byte[] readBytes(android.util.AtomicFile atomicFile) throws IOException {
        h.f(atomicFile, "<this>");
        byte[] fully = atomicFile.readFully();
        h.e(fully, "readFully()");
        return fully;
    }

    @RequiresApi(17)
    public static final String readText(android.util.AtomicFile atomicFile, Charset charset) throws IOException {
        h.f(atomicFile, "<this>");
        h.f(charset, "charset");
        byte[] fully = atomicFile.readFully();
        h.e(fully, "readFully()");
        return new String(fully, charset);
    }

    public static /* synthetic */ String readText$default(android.util.AtomicFile atomicFile, Charset charset, int r22, Object obj) {
        if ((r22 & 1) != 0) {
            charset = mc.a.f10357a;
        }
        return readText(atomicFile, charset);
    }

    @RequiresApi(17)
    public static final void tryWrite(android.util.AtomicFile atomicFile, l<? super FileOutputStream, m> block) throws IOException {
        h.f(atomicFile, "<this>");
        h.f(block, "block");
        FileOutputStream stream = atomicFile.startWrite();
        try {
            h.e(stream, "stream");
            block.invoke(stream);
            atomicFile.finishWrite(stream);
        } catch (Throwable th2) {
            atomicFile.failWrite(stream);
            throw th2;
        }
    }

    @RequiresApi(17)
    public static final void writeBytes(android.util.AtomicFile atomicFile, byte[] array) throws IOException {
        h.f(atomicFile, "<this>");
        h.f(array, "array");
        FileOutputStream stream = atomicFile.startWrite();
        try {
            h.e(stream, "stream");
            stream.write(array);
            atomicFile.finishWrite(stream);
        } catch (Throwable th2) {
            atomicFile.failWrite(stream);
            throw th2;
        }
    }

    @RequiresApi(17)
    public static final void writeText(android.util.AtomicFile atomicFile, String text, Charset charset) throws IOException {
        h.f(atomicFile, "<this>");
        h.f(text, "text");
        h.f(charset, "charset");
        byte[] bytes = text.getBytes(charset);
        h.e(bytes, "this as java.lang.String).getBytes(charset)");
        writeBytes(atomicFile, bytes);
    }

    public static /* synthetic */ void writeText$default(android.util.AtomicFile atomicFile, String str, Charset charset, int r32, Object obj) throws IOException {
        if ((r32 & 2) != 0) {
            charset = mc.a.f10357a;
        }
        writeText(atomicFile, str, charset);
    }
}
