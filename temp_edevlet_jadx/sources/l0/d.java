package l0;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import d0.l;
import d0.q;
import g0.p;

/* loaded from: classes.dex */
public final class d extends b {
    public final Rect A;

    @Nullable
    public p B;

    @Nullable
    public p C;

    /* renamed from: y, reason: collision with root package name */
    public final e0.a f9292y;

    /* renamed from: z, reason: collision with root package name */
    public final Rect f9293z;

    public d(l lVar, e eVar) {
        super(lVar, eVar);
        this.f9292y = new e0.a(3);
        this.f9293z = new Rect();
        this.A = new Rect();
    }

    @Override // l0.b, f0.e
    public final void d(RectF rectF, Matrix matrix, boolean z10) {
        super.d(rectF, matrix, z10);
        if (q() != null) {
            rectF.set(0.0f, 0.0f, p0.g.c() * r3.getWidth(), p0.g.c() * r3.getHeight());
            this.f9278l.mapRect(rectF);
        }
    }

    @Override // l0.b, i0.f
    public final void f(@Nullable q0.c cVar, Object obj) {
        super.f(cVar, obj);
        if (obj == q.E) {
            if (cVar == null) {
                this.B = null;
                return;
            } else {
                this.B = new p(cVar, null);
                return;
            }
        }
        if (obj == q.H) {
            if (cVar == null) {
                this.C = null;
            } else {
                this.C = new p(cVar, null);
            }
        }
    }

    @Override // l0.b
    public final void j(@NonNull Canvas canvas, Matrix matrix, int r82) {
        Bitmap bitmapQ = q();
        if (bitmapQ == null || bitmapQ.isRecycled()) {
            return;
        }
        float fC = p0.g.c();
        e0.a aVar = this.f9292y;
        aVar.setAlpha(r82);
        p pVar = this.B;
        if (pVar != null) {
            aVar.setColorFilter((ColorFilter) pVar.f());
        }
        canvas.save();
        canvas.concat(matrix);
        int width = bitmapQ.getWidth();
        int height = bitmapQ.getHeight();
        Rect rect = this.f9293z;
        rect.set(0, 0, width, height);
        int width2 = (int) (bitmapQ.getWidth() * fC);
        int height2 = (int) (bitmapQ.getHeight() * fC);
        Rect rect2 = this.A;
        rect2.set(0, 0, width2, height2);
        canvas.drawBitmap(bitmapQ, rect, rect2, aVar);
        canvas.restore();
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x00ef A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap q() {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l0.d.q():android.graphics.Bitmap");
    }
}
