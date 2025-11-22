package tr.gov.turkiye.edevlet.kapisi.verification.ocr;

import android.os.SystemClock;
import androidx.camera.camera2.interop.c;
import com.google.mlkit.vision.text.internal.TextRecognizerImpl;
import h5.m;
import h5.z;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.h;
import mc.j;
import org.jmrtd.lds.icao.MRZInfo;
import zh.d;

/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final a f17701a;

    /* renamed from: b, reason: collision with root package name */
    public final TextRecognizerImpl f17702b;

    /* renamed from: c, reason: collision with root package name */
    public String f17703c;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f17704d;

    public interface a {
        void a();

        void b(MRZInfo mRZInfo);
    }

    public b(a resultListener) {
        h.f(resultListener, "resultListener");
        this.f17701a = resultListener;
        this.f17704d = new AtomicBoolean(false);
        this.f17702b = c8.b.a();
    }

    public static String a(String str) {
        h.c(str);
        return j.C(j.C(j.C(str, "«", "<"), " ", ""), "c", "<");
    }

    public final void b(ByteBuffer byteBuffer, d dVar, GraphicOverlay graphicOverlay) throws r7.a {
        h.f(graphicOverlay, "graphicOverlay");
        AtomicBoolean atomicBoolean = this.f17704d;
        if (atomicBoolean.get()) {
            return;
        }
        int r52 = dVar.f20460a;
        int r42 = dVar.f20461b;
        int r72 = dVar.f20462c;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        a8.a aVar = new a8.a(byteBuffer, r52, r42, r72);
        a8.a.c(17, 3, r42, r52, byteBuffer.limit(), r72, jElapsedRealtime);
        z zVarA = this.f17702b.a(aVar);
        h.e(zVarA, "textRecognizer.process(image)");
        zVarA.d(m.f6842a, new androidx.view.result.a(new zh.h(this, dVar, graphicOverlay)));
        zVarA.p(new c(10, this));
        atomicBoolean.set(true);
    }
}
