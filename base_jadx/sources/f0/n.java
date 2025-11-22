package f0;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import g0.a;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class n implements m, a.InterfaceC0091a, k {

    /* renamed from: b, reason: collision with root package name */
    public final String f5453b;

    /* renamed from: c, reason: collision with root package name */
    public final d0.l f5454c;

    /* renamed from: d, reason: collision with root package name */
    public final int f5455d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f5456e;
    public final g0.c f;

    /* renamed from: g, reason: collision with root package name */
    public final g0.a<?, PointF> f5457g;

    /* renamed from: h, reason: collision with root package name */
    public final g0.c f5458h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    public final g0.c f5459i;

    /* renamed from: j, reason: collision with root package name */
    public final g0.c f5460j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    public final g0.c f5461k;

    /* renamed from: l, reason: collision with root package name */
    public final g0.c f5462l;

    /* renamed from: n, reason: collision with root package name */
    public boolean f5464n;

    /* renamed from: a, reason: collision with root package name */
    public final Path f5452a = new Path();

    /* renamed from: m, reason: collision with root package name */
    public final b f5463m = new b();

    public n(d0.l lVar, l0.b bVar, k0.h hVar) {
        g0.a<Float, Float> aVarC;
        this.f5454c = lVar;
        this.f5453b = hVar.f8644a;
        int r82 = hVar.f8645b;
        this.f5455d = r82;
        this.f5456e = hVar.f8652j;
        g0.a<?, ?> aVarC2 = hVar.f8646c.c();
        this.f = (g0.c) aVarC2;
        g0.a<PointF, PointF> aVarC3 = hVar.f8647d.c();
        this.f5457g = aVarC3;
        g0.a<?, ?> aVarC4 = hVar.f8648e.c();
        this.f5458h = (g0.c) aVarC4;
        g0.a<?, ?> aVarC5 = hVar.f8649g.c();
        this.f5460j = (g0.c) aVarC5;
        g0.a<?, ?> aVarC6 = hVar.f8651i.c();
        this.f5462l = (g0.c) aVarC6;
        if (r82 == 1) {
            this.f5459i = (g0.c) hVar.f.c();
            aVarC = hVar.f8650h.c();
        } else {
            aVarC = null;
            this.f5459i = null;
        }
        g0.c cVar = (g0.c) aVarC;
        this.f5461k = cVar;
        bVar.e(aVarC2);
        bVar.e(aVarC3);
        bVar.e(aVarC4);
        bVar.e(aVarC5);
        bVar.e(aVarC6);
        if (r82 == 1) {
            bVar.e(this.f5459i);
            bVar.e(cVar);
        }
        aVarC2.a(this);
        aVarC3.a(this);
        aVarC4.a(this);
        aVarC5.a(this);
        aVarC6.a(this);
        if (r82 == 1) {
            this.f5459i.a(this);
            cVar.a(this);
        }
    }

    @Override // g0.a.InterfaceC0091a
    public final void a() {
        this.f5464n = false;
        this.f5454c.invalidateSelf();
    }

    @Override // f0.c
    public final void b(List<c> list, List<c> list2) {
        int r52 = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) list;
            if (r52 >= arrayList.size()) {
                return;
            }
            c cVar = (c) arrayList.get(r52);
            if (cVar instanceof s) {
                s sVar = (s) cVar;
                if (sVar.f5495c == 1) {
                    ((List) this.f5463m.f5393a).add(sVar);
                    sVar.c(this);
                }
            }
            r52++;
        }
    }

    @Override // i0.f
    public final void c(i0.e eVar, int r22, ArrayList arrayList, i0.e eVar2) {
        p0.f.d(eVar, r22, arrayList, eVar2, this);
    }

    @Override // i0.f
    public final void f(@Nullable q0.c cVar, Object obj) {
        g0.a aVar;
        g0.c cVar2;
        if (obj == d0.q.f4620u) {
            aVar = this.f;
        } else if (obj == d0.q.f4621v) {
            aVar = this.f5458h;
        } else {
            if (obj != d0.q.f4611l) {
                if (obj != d0.q.w || (cVar2 = this.f5459i) == null) {
                    if (obj == d0.q.f4622x) {
                        aVar = this.f5460j;
                    } else if (obj != d0.q.f4623y || (cVar2 = this.f5461k) == null) {
                        if (obj != d0.q.f4624z) {
                            return;
                        } else {
                            aVar = this.f5462l;
                        }
                    }
                }
                cVar2.k(cVar);
                return;
            }
            aVar = this.f5457g;
        }
        aVar.k(cVar);
    }

    @Override // f0.c
    public final String getName() {
        return this.f5453b;
    }

    @Override // f0.m
    public final Path getPath() {
        float f;
        float fCos;
        float f10;
        double d10;
        float f11;
        n nVar;
        Path path;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        Path path2;
        float f17;
        float f18;
        float f19;
        int r24;
        g0.a<?, PointF> aVar;
        double d11;
        double d12;
        float f20;
        double d13;
        boolean z10 = this.f5464n;
        Path path3 = this.f5452a;
        if (z10) {
            return path3;
        }
        path3.reset();
        if (this.f5456e) {
            this.f5464n = true;
            return path3;
        }
        int r12 = g.d.c(this.f5455d);
        g0.a<?, PointF> aVar2 = this.f5457g;
        g0.c cVar = this.f5462l;
        g0.c cVar2 = this.f5460j;
        g0.c cVar3 = this.f5458h;
        g0.c cVar4 = this.f;
        if (r12 != 0) {
            if (r12 == 1) {
                int r13 = (int) Math.floor(cVar4.f().floatValue());
                double radians = Math.toRadians((cVar3 == null ? 0.0d : cVar3.f().floatValue()) - 90.0d);
                double d14 = r13;
                float fFloatValue = cVar.f().floatValue() / 100.0f;
                float fFloatValue2 = cVar2.f().floatValue();
                double d15 = fFloatValue2;
                float fCos2 = (float) (Math.cos(radians) * d15);
                float fSin = (float) (Math.sin(radians) * d15);
                path3.moveTo(fCos2, fSin);
                double d16 = (float) (6.283185307179586d / d14);
                double d17 = radians + d16;
                double dCeil = Math.ceil(d14);
                int r14 = 0;
                double d18 = d16;
                while (r14 < dCeil) {
                    float fCos3 = (float) (Math.cos(d17) * d15);
                    float fSin2 = (float) (Math.sin(d17) * d15);
                    if (fFloatValue != 0.0f) {
                        double d19 = d15;
                        r24 = r14;
                        double dAtan2 = (float) (Math.atan2(fSin, fCos2) - 1.5707963267948966d);
                        float fCos4 = (float) Math.cos(dAtan2);
                        float fSin3 = (float) Math.sin(dAtan2);
                        aVar = aVar2;
                        d11 = d17;
                        double dAtan22 = (float) (Math.atan2(fSin2, fCos3) - 1.5707963267948966d);
                        float f21 = fFloatValue2 * fFloatValue * 0.25f;
                        d12 = d18;
                        f20 = fSin2;
                        d13 = d19;
                        path3.cubicTo(fCos2 - (fCos4 * f21), fSin - (fSin3 * f21), (((float) Math.cos(dAtan22)) * f21) + fCos3, (f21 * ((float) Math.sin(dAtan22))) + fSin2, fCos3, f20);
                    } else {
                        r24 = r14;
                        aVar = aVar2;
                        d11 = d17;
                        d12 = d18;
                        f20 = fSin2;
                        d13 = d15;
                        path3.lineTo(fCos3, f20);
                    }
                    double d20 = d11 + d12;
                    fSin = f20;
                    d15 = d13;
                    d18 = d12;
                    aVar2 = aVar;
                    d17 = d20;
                    fCos2 = fCos3;
                    r14 = r24 + 1;
                }
                PointF pointFF = aVar2.f();
                path3.offset(pointFF.x, pointFF.y);
                path3.close();
            }
            nVar = this;
            path = path3;
        } else {
            g0.a<?, PointF> aVar3 = aVar2;
            float fFloatValue3 = cVar4.f().floatValue();
            double radians2 = Math.toRadians((cVar3 == null ? 0.0d : cVar3.f().floatValue()) - 90.0d);
            double d21 = fFloatValue3;
            float f22 = (float) (6.283185307179586d / d21);
            float f23 = f22 / 2.0f;
            float f24 = fFloatValue3 - ((int) fFloatValue3);
            if (f24 != 0.0f) {
                radians2 += (1.0f - f24) * f23;
            }
            float fFloatValue4 = cVar2.f().floatValue();
            float fFloatValue5 = this.f5459i.f().floatValue();
            g0.c cVar5 = this.f5461k;
            float fFloatValue6 = cVar5 != null ? cVar5.f().floatValue() / 100.0f : 0.0f;
            float fFloatValue7 = cVar != null ? cVar.f().floatValue() / 100.0f : 0.0f;
            if (f24 != 0.0f) {
                float fD = androidx.appcompat.graphics.drawable.a.d(fFloatValue4, fFloatValue5, f24, fFloatValue5);
                double d22 = fD;
                f = fFloatValue5;
                fCos = (float) (Math.cos(radians2) * d22);
                float fSin4 = (float) (d22 * Math.sin(radians2));
                path3.moveTo(fCos, fSin4);
                f10 = fSin4;
                d10 = radians2 + ((f22 * f24) / 2.0f);
                f11 = fD;
            } else {
                f = fFloatValue5;
                double d23 = fFloatValue4;
                fCos = (float) (Math.cos(radians2) * d23);
                float fSin5 = (float) (d23 * Math.sin(radians2));
                path3.moveTo(fCos, fSin5);
                f10 = fSin5;
                d10 = radians2 + f23;
                f11 = 0.0f;
            }
            double dCeil2 = Math.ceil(d21) * 2.0d;
            double d24 = 2.0d;
            int r132 = 0;
            double d25 = d10;
            boolean z11 = false;
            while (true) {
                double d26 = r132;
                if (d26 >= dCeil2) {
                    break;
                }
                float f25 = z11 ? fFloatValue4 : f;
                if (f11 == 0.0f || d26 != dCeil2 - d24) {
                    f12 = f11;
                    f13 = f23;
                } else {
                    f12 = f11;
                    f13 = (f22 * f24) / 2.0f;
                }
                if (f11 == 0.0f || d26 != dCeil2 - 1.0d) {
                    f14 = f22;
                    f15 = f23;
                } else {
                    f14 = f22;
                    f15 = f23;
                    f25 = f12;
                }
                double d27 = f25;
                g0.a<?, PointF> aVar4 = aVar3;
                float fCos5 = (float) (Math.cos(d25) * d27);
                float fSin6 = (float) (d27 * Math.sin(d25));
                if (fFloatValue6 == 0.0f && fFloatValue7 == 0.0f) {
                    path3.lineTo(fCos5, fSin6);
                    path2 = path3;
                    f19 = f13;
                    f16 = fSin6;
                    f17 = f;
                    f18 = fFloatValue4;
                } else {
                    float f26 = fFloatValue4;
                    float f27 = f10;
                    double dAtan23 = (float) (Math.atan2(f10, fCos) - 1.5707963267948966d);
                    float fCos6 = (float) Math.cos(dAtan23);
                    float fSin7 = (float) Math.sin(dAtan23);
                    float f28 = f13;
                    f16 = fSin6;
                    path2 = path3;
                    double dAtan24 = (float) (Math.atan2(fSin6, fCos5) - 1.5707963267948966d);
                    float fCos7 = (float) Math.cos(dAtan24);
                    float fSin8 = (float) Math.sin(dAtan24);
                    float f29 = z11 ? fFloatValue6 : fFloatValue7;
                    float f30 = z11 ? fFloatValue7 : fFloatValue6;
                    float f31 = (z11 ? f : f26) * f29 * 0.47829f;
                    float f32 = fCos6 * f31;
                    float f33 = f31 * fSin7;
                    float f34 = (z11 ? f26 : f) * f30 * 0.47829f;
                    float f35 = fCos7 * f34;
                    float f36 = f34 * fSin8;
                    if (f24 != 0.0f) {
                        if (r132 == 0) {
                            f32 *= f24;
                            f33 *= f24;
                        } else if (d26 == dCeil2 - 1.0d) {
                            f35 *= f24;
                            f36 *= f24;
                        }
                    }
                    f17 = f;
                    f18 = f26;
                    path2.cubicTo(fCos - f32, f27 - f33, fCos5 + f35, f16 + f36, fCos5, f16);
                    f19 = f28;
                }
                d25 += f19;
                z11 = !z11;
                r132++;
                d24 = 2.0d;
                fCos = fCos5;
                f = f17;
                fFloatValue4 = f18;
                f11 = f12;
                f22 = f14;
                f23 = f15;
                aVar3 = aVar4;
                f10 = f16;
                path3 = path2;
            }
            nVar = this;
            PointF pointFF2 = aVar3.f();
            path = path3;
            path.offset(pointFF2.x, pointFF2.y);
            path.close();
        }
        path.close();
        nVar.f5463m.a(path);
        nVar.f5464n = true;
        return path;
    }
}
