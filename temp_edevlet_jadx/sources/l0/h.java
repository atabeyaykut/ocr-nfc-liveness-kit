package l0;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import d0.l;
import d0.q;
import g0.p;

/* loaded from: classes.dex */
public final class h extends b {
    public final float[] A;
    public final Path B;
    public final e C;

    @Nullable
    public p D;

    /* renamed from: y, reason: collision with root package name */
    public final RectF f9316y;

    /* renamed from: z, reason: collision with root package name */
    public final e0.a f9317z;

    public h(l lVar, e eVar) {
        super(lVar, eVar);
        this.f9316y = new RectF();
        e0.a aVar = new e0.a();
        this.f9317z = aVar;
        this.A = new float[8];
        this.B = new Path();
        this.C = eVar;
        aVar.setAlpha(0);
        aVar.setStyle(Paint.Style.FILL);
        aVar.setColor(eVar.f9304l);
    }

    @Override // l0.b, f0.e
    public final void d(RectF rectF, Matrix matrix, boolean z10) {
        super.d(rectF, matrix, z10);
        RectF rectF2 = this.f9316y;
        e eVar = this.C;
        rectF2.set(0.0f, 0.0f, eVar.f9302j, eVar.f9303k);
        this.f9278l.mapRect(rectF2);
        rectF.set(rectF2);
    }

    @Override // l0.b, i0.f
    public final void f(@Nullable q0.c cVar, Object obj) {
        super.f(cVar, obj);
        if (obj == q.E) {
            if (cVar == null) {
                this.D = null;
            } else {
                this.D = new p(cVar, null);
            }
        }
    }

    @Override // l0.b
    public final void j(Canvas canvas, Matrix matrix, int r14) {
        e eVar = this.C;
        int r12 = Color.alpha(eVar.f9304l);
        if (r12 == 0) {
            return;
        }
        int r142 = (int) ((((r12 / 255.0f) * (this.f9287u.f5776j == null ? 100 : r2.f().intValue())) / 100.0f) * (r14 / 255.0f) * 255.0f);
        e0.a aVar = this.f9317z;
        aVar.setAlpha(r142);
        p pVar = this.D;
        if (pVar != null) {
            aVar.setColorFilter((ColorFilter) pVar.f());
        }
        if (r142 > 0) {
            float[] fArr = this.A;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            float f = eVar.f9302j;
            fArr[2] = f;
            fArr[3] = 0.0f;
            fArr[4] = f;
            float f10 = eVar.f9303k;
            fArr[5] = f10;
            fArr[6] = 0.0f;
            fArr[7] = f10;
            matrix.mapPoints(fArr);
            Path path = this.B;
            path.reset();
            path.moveTo(fArr[0], fArr[1]);
            path.lineTo(fArr[2], fArr[3]);
            path.lineTo(fArr[4], fArr[5]);
            path.lineTo(fArr[6], fArr[7]);
            path.lineTo(fArr[0], fArr[1]);
            path.close();
            canvas.drawPath(path, aVar);
        }
    }
}
