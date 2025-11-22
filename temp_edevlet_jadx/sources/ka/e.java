package ka;

import androidx.exifinterface.media.ExifInterface;
import cc.m0;
import cc.t1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.h;
import lb.f;
import m9.a0;
import m9.n;
import m9.t;
import m9.v;
import m9.y;
import m9.z;
import ma.b;
import ma.j;
import ma.o0;
import ma.p;
import ma.r0;
import ma.u;
import ma.w0;
import na.h;
import pa.p0;
import pa.v0;
import pa.x;

/* loaded from: classes2.dex */
public final class e extends p0 {

    public static final class a {
        public static e a(b functionClass, boolean z10) {
            String lowerCase;
            h.f(functionClass, "functionClass");
            e eVar = new e(functionClass, null, b.a.DECLARATION, z10);
            o0 o0VarJ0 = functionClass.J0();
            v vVar = v.f10173a;
            List<w0> list = functionClass.f8797l;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (!(((w0) obj).I() == t1.IN_VARIANCE)) {
                    break;
                }
                arrayList.add(obj);
            }
            z zVarZ1 = t.z1(arrayList);
            ArrayList arrayList2 = new ArrayList(n.Q0(zVarZ1));
            Iterator it = zVarZ1.iterator();
            while (true) {
                a0 a0Var = (a0) it;
                if (!a0Var.hasNext()) {
                    eVar.N0(null, o0VarJ0, vVar, vVar, arrayList2, ((w0) t.i1(list)).q(), ma.a0.ABSTRACT, p.f10225e);
                    eVar.A = true;
                    return eVar;
                }
                y yVar = (y) a0Var.next();
                int r52 = yVar.f10176a;
                w0 w0Var = (w0) yVar.f10177b;
                String strO = w0Var.getName().o();
                h.e(strO, "typeParameter.name.asString()");
                if (h.a(strO, ExifInterface.GPS_DIRECTION_TRUE)) {
                    lowerCase = "instance";
                } else if (h.a(strO, ExifInterface.LONGITUDE_EAST)) {
                    lowerCase = "receiver";
                } else {
                    lowerCase = strO.toLowerCase(Locale.ROOT);
                    h.e(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                }
                h.a.C0201a c0201a = h.a.f10653a;
                f fVarT = f.t(lowerCase);
                m0 m0VarQ = w0Var.q();
                kotlin.jvm.internal.h.e(m0VarQ, "typeParameter.defaultType");
                ArrayList arrayList3 = arrayList2;
                arrayList3.add(new v0(eVar, null, r52, c0201a, fVarT, m0VarQ, false, false, false, null, r0.f10243a));
                arrayList2 = arrayList3;
            }
        }
    }

    public e(j jVar, e eVar, b.a aVar, boolean z10) {
        super(jVar, eVar, h.a.f10653a, ic.t.f7395g, aVar, r0.f10243a);
        this.f13016n = true;
        this.f13024y = z10;
        this.f13025z = false;
    }

    @Override // pa.p0, pa.x
    public final x K0(b.a kind, j newOwner, u uVar, r0 r0Var, na.h annotations, f fVar) {
        kotlin.jvm.internal.h.f(newOwner, "newOwner");
        kotlin.jvm.internal.h.f(kind, "kind");
        kotlin.jvm.internal.h.f(annotations, "annotations");
        return new e(newOwner, (e) uVar, kind, this.f13024y);
    }

    @Override // pa.x, ma.u
    public final boolean L() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
    @Override // pa.x
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final pa.x L0(pa.x.a r11) {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ka.e.L0(pa.x$a):pa.x");
    }

    @Override // pa.x, ma.z
    public final boolean isExternal() {
        return false;
    }

    @Override // pa.x, ma.u
    public final boolean isInline() {
        return false;
    }
}
