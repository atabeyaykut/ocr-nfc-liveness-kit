package tr.gov.turkiye.edevlet.kapisi.verification.ocr;

import android.os.SystemClock;
import androidx.camera.core.impl.k;
import com.google.mlkit.vision.text.internal.TextRecognizerImpl;
import h5.m;
import h5.z;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.h;
import org.jmrtd.lds.icao.MRZInfo;
import zh.d;
import zh.g;

/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0273a f17698a;

    /* renamed from: b, reason: collision with root package name */
    public final TextRecognizerImpl f17699b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f17700c;

    /* renamed from: tr.gov.turkiye.edevlet.kapisi.verification.ocr.a$a, reason: collision with other inner class name */
    public interface InterfaceC0273a {
        void a();

        void b(MRZInfo mRZInfo);
    }

    public a(InterfaceC0273a resultListener) {
        h.f(resultListener, "resultListener");
        this.f17698a = resultListener;
        this.f17700c = new AtomicBoolean(false);
        this.f17699b = c8.b.a();
    }

    public final void a(MRZInfo mRZInfo) {
        try {
            if (mRZInfo.getDocumentNumber() != null && mRZInfo.getDocumentNumber().length() >= 8 && mRZInfo.getDateOfBirth() != null && mRZInfo.getDateOfBirth().length() == 6 && mRZInfo.getDateOfExpiry() != null && mRZInfo.getDateOfExpiry().length() == 6) {
                this.f17698a.b(mRZInfo);
            }
        } catch (Exception unused) {
            yd.a.f19652a.a("MRZ DATA is not valid", new Object[0]);
        }
    }

    public final void b(ByteBuffer byteBuffer, d dVar, GraphicOverlay graphicOverlay) throws r7.a {
        h.f(graphicOverlay, "graphicOverlay");
        AtomicBoolean atomicBoolean = this.f17700c;
        if (atomicBoolean.get()) {
            return;
        }
        int r52 = dVar.f20460a;
        int r42 = dVar.f20461b;
        int r72 = dVar.f20462c;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        a8.a aVar = new a8.a(byteBuffer, r52, r42, r72);
        a8.a.c(17, 3, r42, r52, byteBuffer.limit(), r72, jElapsedRealtime);
        z zVarA = this.f17699b.a(aVar);
        h.e(zVarA, "textRecognizer.process(image)");
        g gVar = new g(this, dVar, graphicOverlay);
        int r13 = 8;
        zVarA.d(m.f6842a, new androidx.camera.core.impl.utils.futures.a(r13, gVar));
        zVarA.p(new k(r13, this));
        atomicBoolean.set(true);
    }
}
