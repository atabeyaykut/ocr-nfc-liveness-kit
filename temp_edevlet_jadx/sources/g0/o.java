package g0;

import android.graphics.Matrix;
import android.graphics.PointF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import d0.q;
import g0.a;
import java.util.Collections;

/* loaded from: classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public final Matrix f5768a = new Matrix();

    /* renamed from: b, reason: collision with root package name */
    public final Matrix f5769b;

    /* renamed from: c, reason: collision with root package name */
    public final Matrix f5770c;

    /* renamed from: d, reason: collision with root package name */
    public final Matrix f5771d;

    /* renamed from: e, reason: collision with root package name */
    public final float[] f5772e;

    @NonNull
    public a<PointF, PointF> f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public a<?, PointF> f5773g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    public a<q0.d, q0.d> f5774h;

    /* renamed from: i, reason: collision with root package name */
    @NonNull
    public a<Float, Float> f5775i;

    /* renamed from: j, reason: collision with root package name */
    @NonNull
    public a<Integer, Integer> f5776j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    public c f5777k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    public c f5778l;

    /* renamed from: m, reason: collision with root package name */
    @Nullable
    public a<?, Float> f5779m;

    /* renamed from: n, reason: collision with root package name */
    @Nullable
    public a<?, Float> f5780n;

    public o(j0.l lVar) {
        j0.e eVar = lVar.f7957a;
        this.f = eVar == null ? null : eVar.c();
        j0.m<PointF, PointF> mVar = lVar.f7958b;
        this.f5773g = mVar == null ? null : mVar.c();
        j0.g gVar = lVar.f7959c;
        this.f5774h = gVar == null ? null : gVar.c();
        j0.b bVar = lVar.f7960d;
        this.f5775i = bVar == null ? null : bVar.c();
        j0.b bVar2 = lVar.f;
        c cVar = bVar2 == null ? null : (c) bVar2.c();
        this.f5777k = cVar;
        if (cVar != null) {
            this.f5769b = new Matrix();
            this.f5770c = new Matrix();
            this.f5771d = new Matrix();
            this.f5772e = new float[9];
        } else {
            this.f5769b = null;
            this.f5770c = null;
            this.f5771d = null;
            this.f5772e = null;
        }
        j0.b bVar3 = lVar.f7962g;
        this.f5778l = bVar3 == null ? null : (c) bVar3.c();
        j0.d dVar = lVar.f7961e;
        if (dVar != null) {
            this.f5776j = dVar.c();
        }
        j0.b bVar4 = lVar.f7963h;
        if (bVar4 != null) {
            this.f5779m = bVar4.c();
        } else {
            this.f5779m = null;
        }
        j0.b bVar5 = lVar.f7964i;
        if (bVar5 != null) {
            this.f5780n = bVar5.c();
        } else {
            this.f5780n = null;
        }
    }

    public final void a(l0.b bVar) {
        bVar.e(this.f5776j);
        bVar.e(this.f5779m);
        bVar.e(this.f5780n);
        bVar.e(this.f);
        bVar.e(this.f5773g);
        bVar.e(this.f5774h);
        bVar.e(this.f5775i);
        bVar.e(this.f5777k);
        bVar.e(this.f5778l);
    }

    public final void b(a.InterfaceC0091a interfaceC0091a) {
        a<Integer, Integer> aVar = this.f5776j;
        if (aVar != null) {
            aVar.a(interfaceC0091a);
        }
        a<?, Float> aVar2 = this.f5779m;
        if (aVar2 != null) {
            aVar2.a(interfaceC0091a);
        }
        a<?, Float> aVar3 = this.f5780n;
        if (aVar3 != null) {
            aVar3.a(interfaceC0091a);
        }
        a<PointF, PointF> aVar4 = this.f;
        if (aVar4 != null) {
            aVar4.a(interfaceC0091a);
        }
        a<?, PointF> aVar5 = this.f5773g;
        if (aVar5 != null) {
            aVar5.a(interfaceC0091a);
        }
        a<q0.d, q0.d> aVar6 = this.f5774h;
        if (aVar6 != null) {
            aVar6.a(interfaceC0091a);
        }
        a<Float, Float> aVar7 = this.f5775i;
        if (aVar7 != null) {
            aVar7.a(interfaceC0091a);
        }
        c cVar = this.f5777k;
        if (cVar != null) {
            cVar.a(interfaceC0091a);
        }
        c cVar2 = this.f5778l;
        if (cVar2 != null) {
            cVar2.a(interfaceC0091a);
        }
    }

    public final boolean c(@Nullable q0.c cVar, Object obj) {
        c cVar2;
        a aVar;
        c cVar3;
        a<?, Float> aVar2;
        if (obj == q.f4605e) {
            aVar = this.f;
            if (aVar == null) {
                this.f = new p(cVar, new PointF());
                return true;
            }
        } else if (obj == q.f) {
            aVar = this.f5773g;
            if (aVar == null) {
                this.f5773g = new p(cVar, new PointF());
                return true;
            }
        } else {
            if (obj == q.f4606g) {
                a<?, PointF> aVar3 = this.f5773g;
                if (aVar3 instanceof m) {
                    m mVar = (m) aVar3;
                    q0.c<Float> cVar4 = mVar.f5766m;
                    mVar.f5766m = cVar;
                    return true;
                }
            }
            if (obj == q.f4607h) {
                a<?, PointF> aVar4 = this.f5773g;
                if (aVar4 instanceof m) {
                    m mVar2 = (m) aVar4;
                    q0.c<Float> cVar5 = mVar2.f5767n;
                    mVar2.f5767n = cVar;
                    return true;
                }
            }
            if (obj == q.f4612m) {
                aVar = this.f5774h;
                if (aVar == null) {
                    this.f5774h = new p(cVar, new q0.d());
                    return true;
                }
            } else if (obj == q.f4613n) {
                aVar = this.f5775i;
                if (aVar == null) {
                    this.f5775i = new p(cVar, Float.valueOf(0.0f));
                    return true;
                }
            } else {
                if (obj != q.f4603c) {
                    if (obj != q.A || (aVar2 = this.f5779m) == null) {
                        if (obj != q.B || (aVar2 = this.f5780n) == null) {
                            if (obj == q.f4614o && (cVar3 = this.f5777k) != null) {
                                if (cVar3 == null) {
                                    this.f5777k = new c(Collections.singletonList(new q0.a(Float.valueOf(0.0f))));
                                }
                                aVar = this.f5777k;
                            } else {
                                if (obj != q.f4615p || (cVar2 = this.f5778l) == null) {
                                    return false;
                                }
                                if (cVar2 == null) {
                                    this.f5778l = new c(Collections.singletonList(new q0.a(Float.valueOf(0.0f))));
                                }
                                aVar = this.f5778l;
                            }
                        } else if (aVar2 == null) {
                            this.f5780n = new p(cVar, 100);
                            return true;
                        }
                    } else if (aVar2 == null) {
                        this.f5779m = new p(cVar, 100);
                        return true;
                    }
                    aVar2.k(cVar);
                    return true;
                }
                aVar = this.f5776j;
                if (aVar == null) {
                    this.f5776j = new p(cVar, 100);
                    return true;
                }
            }
        }
        aVar.k(cVar);
        return true;
    }

    public final Matrix d() {
        float[] fArr;
        Matrix matrix = this.f5768a;
        matrix.reset();
        a<?, PointF> aVar = this.f5773g;
        if (aVar != null) {
            PointF pointFF = aVar.f();
            float f = pointFF.x;
            if (f != 0.0f || pointFF.y != 0.0f) {
                matrix.preTranslate(f, pointFF.y);
            }
        }
        a<Float, Float> aVar2 = this.f5775i;
        if (aVar2 != null) {
            float fFloatValue = aVar2 instanceof p ? aVar2.f().floatValue() : ((c) aVar2).l();
            if (fFloatValue != 0.0f) {
                matrix.preRotate(fFloatValue);
            }
        }
        if (this.f5777k != null) {
            float fCos = this.f5778l == null ? 0.0f : (float) Math.cos(Math.toRadians((-r2.l()) + 90.0f));
            float fSin = this.f5778l == null ? 1.0f : (float) Math.sin(Math.toRadians((-r6.l()) + 90.0f));
            float fTan = (float) Math.tan(Math.toRadians(this.f5777k.l()));
            int r82 = 0;
            while (true) {
                fArr = this.f5772e;
                if (r82 >= 9) {
                    break;
                }
                fArr[r82] = 0.0f;
                r82++;
            }
            fArr[0] = fCos;
            fArr[1] = fSin;
            float f10 = -fSin;
            fArr[3] = f10;
            fArr[4] = fCos;
            fArr[8] = 1.0f;
            Matrix matrix2 = this.f5769b;
            matrix2.setValues(fArr);
            for (int r83 = 0; r83 < 9; r83++) {
                fArr[r83] = 0.0f;
            }
            fArr[0] = 1.0f;
            fArr[3] = fTan;
            fArr[4] = 1.0f;
            fArr[8] = 1.0f;
            Matrix matrix3 = this.f5770c;
            matrix3.setValues(fArr);
            for (int r84 = 0; r84 < 9; r84++) {
                fArr[r84] = 0.0f;
            }
            fArr[0] = fCos;
            fArr[1] = f10;
            fArr[3] = fSin;
            fArr[4] = fCos;
            fArr[8] = 1.0f;
            Matrix matrix4 = this.f5771d;
            matrix4.setValues(fArr);
            matrix3.preConcat(matrix2);
            matrix4.preConcat(matrix3);
            matrix.preConcat(matrix4);
        }
        a<q0.d, q0.d> aVar3 = this.f5774h;
        if (aVar3 != null) {
            q0.d dVarF = aVar3.f();
            float f11 = dVarF.f13289a;
            if (f11 != 1.0f || dVarF.f13290b != 1.0f) {
                matrix.preScale(f11, dVarF.f13290b);
            }
        }
        a<PointF, PointF> aVar4 = this.f;
        if (aVar4 != null) {
            PointF pointFF2 = aVar4.f();
            float f12 = pointFF2.x;
            if (f12 != 0.0f || pointFF2.y != 0.0f) {
                matrix.preTranslate(-f12, -pointFF2.y);
            }
        }
        return matrix;
    }

    public final Matrix e(float f) {
        a<?, PointF> aVar = this.f5773g;
        PointF pointFF = aVar == null ? null : aVar.f();
        a<q0.d, q0.d> aVar2 = this.f5774h;
        q0.d dVarF = aVar2 == null ? null : aVar2.f();
        Matrix matrix = this.f5768a;
        matrix.reset();
        if (pointFF != null) {
            matrix.preTranslate(pointFF.x * f, pointFF.y * f);
        }
        if (dVarF != null) {
            double d10 = f;
            matrix.preScale((float) Math.pow(dVarF.f13289a, d10), (float) Math.pow(dVarF.f13290b, d10));
        }
        a<Float, Float> aVar3 = this.f5775i;
        if (aVar3 != null) {
            float fFloatValue = aVar3.f().floatValue();
            a<PointF, PointF> aVar4 = this.f;
            PointF pointFF2 = aVar4 != null ? aVar4.f() : null;
            matrix.preRotate(fFloatValue * f, pointFF2 == null ? 0.0f : pointFF2.x, pointFF2 != null ? pointFF2.y : 0.0f);
        }
        return matrix;
    }
}
