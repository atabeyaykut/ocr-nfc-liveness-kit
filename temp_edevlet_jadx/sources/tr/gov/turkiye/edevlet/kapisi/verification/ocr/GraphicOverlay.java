package tr.gov.turkiye.edevlet.kapisi.verification.ocr;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import java.util.HashSet;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;", "Landroid/view/View;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "a", "ui-id-verification_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class GraphicOverlay extends View {

    /* renamed from: a, reason: collision with root package name */
    public final Object f17694a;

    /* renamed from: b, reason: collision with root package name */
    public int f17695b;

    /* renamed from: c, reason: collision with root package name */
    public int f17696c;

    /* renamed from: d, reason: collision with root package name */
    public final HashSet f17697d;

    public static abstract class a {
        public abstract void a();
    }

    public GraphicOverlay(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17694a = new Object();
        this.f17697d = new HashSet();
    }

    public final void a() {
        synchronized (this.f17694a) {
            this.f17697d.clear();
            m mVar = m.f9594a;
        }
        postInvalidate();
    }

    public final void b(int r22, int r32) {
        synchronized (this.f17694a) {
            this.f17695b = r22;
            this.f17696c = r32;
            m mVar = m.f9594a;
        }
        postInvalidate();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        h.f(canvas, "canvas");
        super.onDraw(canvas);
        synchronized (this.f17694a) {
            if (this.f17695b != 0 && this.f17696c != 0) {
                canvas.getWidth();
                canvas.getHeight();
            }
            Iterator it = this.f17697d.iterator();
            while (it.hasNext()) {
                ((a) it.next()).a();
            }
            m mVar = m.f9594a;
        }
    }
}
