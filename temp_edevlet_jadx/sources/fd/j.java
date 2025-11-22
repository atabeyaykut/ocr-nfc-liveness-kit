package fd;

import ed.d0;
import ed.z;
import java.io.IOException;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.u;
import kotlin.jvm.internal.v;
import m9.t;
import mc.n;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.crypto.hpke.HPKE;
import x9.p;

/* loaded from: classes2.dex */
public final class j {
    public static final LinkedHashMap a(ArrayList arrayList) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = t.s1(arrayList, new g()).iterator();
        while (it.hasNext()) {
            f fVar = (f) it.next();
            if (((f) linkedHashMap.put(fVar.f5596a, fVar)) == null) {
                while (true) {
                    z zVarO = fVar.f5596a.o();
                    if (zVarO == null) {
                        break;
                    }
                    f fVar2 = (f) linkedHashMap.get(zVarO);
                    z zVar = fVar.f5596a;
                    if (fVar2 != null) {
                        fVar2.f5602h.add(zVar);
                        break;
                    }
                    f fVar3 = new f(zVarO, true, "", -1L, -1L, -1, null, -1L);
                    linkedHashMap.put(zVarO, fVar3);
                    fVar3.f5602h.add(zVar);
                    fVar = fVar3;
                    it = it;
                }
            }
        }
        return linkedHashMap;
    }

    public static final String b(int r12) {
        a6.a.j(16);
        String string = Integer.toString(r12, 16);
        kotlin.jvm.internal.h.e(string, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return kotlin.jvm.internal.h.k(string, "0x");
    }

    public static final f c(d0 d0Var) throws IOException {
        Long lValueOf;
        int r18;
        long j10;
        int r02 = d0Var.b0();
        if (r02 != 33639248) {
            throw new IOException("bad zip: expected " + b(33639248) + " but was " + b(r02));
        }
        d0Var.skip(4L);
        int r03 = d0Var.b() & HPKE.aead_EXPORT_ONLY;
        if ((r03 & 1) != 0) {
            throw new IOException(kotlin.jvm.internal.h.k(b(r03), "unsupported zip: general purpose bit flag="));
        }
        int r10 = d0Var.b() & HPKE.aead_EXPORT_ONLY;
        int r04 = d0Var.b() & HPKE.aead_EXPORT_ONLY;
        int r22 = d0Var.b() & HPKE.aead_EXPORT_ONLY;
        if (r04 == -1) {
            lValueOf = null;
        } else {
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            gregorianCalendar.set(14, 0);
            gregorianCalendar.set(((r22 >> 9) & CertificateBody.profileType) + 1980, ((r22 >> 5) & 15) - 1, r22 & 31, (r04 >> 11) & 31, (r04 >> 5) & 63, (r04 & 31) << 1);
            lValueOf = Long.valueOf(gregorianCalendar.getTime().getTime());
        }
        Long l5 = lValueOf;
        d0Var.b0();
        u uVar = new u();
        uVar.f8974a = d0Var.b0() & BodyPartID.bodyIdMax;
        u uVar2 = new u();
        uVar2.f8974a = d0Var.b0() & BodyPartID.bodyIdMax;
        int r05 = d0Var.b() & HPKE.aead_EXPORT_ONLY;
        int r14 = d0Var.b() & HPKE.aead_EXPORT_ONLY;
        int r15 = d0Var.b() & HPKE.aead_EXPORT_ONLY;
        d0Var.skip(8L);
        u uVar3 = new u();
        uVar3.f8974a = d0Var.b0() & BodyPartID.bodyIdMax;
        String strC = d0Var.c(r05);
        if (n.H(strC, (char) 0)) {
            throw new IOException("bad zip: filename contains 0x00");
        }
        if (uVar2.f8974a == BodyPartID.bodyIdMax) {
            j10 = 8 + 0;
            r18 = r10;
        } else {
            r18 = r10;
            j10 = 0;
        }
        if (uVar.f8974a == BodyPartID.bodyIdMax) {
            j10 += 8;
        }
        if (uVar3.f8974a == BodyPartID.bodyIdMax) {
            j10 += 8;
        }
        long j11 = j10;
        kotlin.jvm.internal.t tVar = new kotlin.jvm.internal.t();
        d(d0Var, r14, new h(tVar, j11, uVar2, d0Var, uVar, uVar3));
        if (j11 > 0 && !tVar.f8973a) {
            throw new IOException("bad zip: zip64 extra required but absent");
        }
        String strC2 = d0Var.c(r15);
        String str = z.f5363b;
        return new f(z.a.a("/", false).q(strC), mc.j.w(strC, "/", false), strC2, uVar.f8974a, uVar2.f8974a, r18, l5, uVar3.f8974a);
    }

    public static final void d(d0 d0Var, int r12, p pVar) throws IOException {
        long j10 = r12;
        while (j10 != 0) {
            if (j10 < 4) {
                throw new IOException("bad zip: truncated header in extra field");
            }
            int r122 = d0Var.b() & HPKE.aead_EXPORT_ONLY;
            long jB = d0Var.b() & 65535;
            long j11 = j10 - 4;
            if (j11 < jB) {
                throw new IOException("bad zip: truncated value in extra field");
            }
            d0Var.l0(jB);
            ed.e eVar = d0Var.f5301b;
            long j12 = eVar.f5304b;
            pVar.mo7invoke(Integer.valueOf(r122), Long.valueOf(jB));
            long j13 = (eVar.f5304b + jB) - j12;
            if (j13 < 0) {
                throw new IOException(kotlin.jvm.internal.h.k(Integer.valueOf(r122), "unsupported zip: too many bytes processed for "));
            }
            if (j13 > 0) {
                eVar.skip(j13);
            }
            j10 = j11 - jB;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final ed.j e(d0 d0Var, ed.j jVar) throws IOException {
        v vVar = new v();
        vVar.f8975a = jVar == null ? 0 : jVar.f;
        v vVar2 = new v();
        v vVar3 = new v();
        int r42 = d0Var.b0();
        if (r42 != 67324752) {
            throw new IOException("bad zip: expected " + b(67324752) + " but was " + b(r42));
        }
        d0Var.skip(2L);
        int r43 = d0Var.b() & HPKE.aead_EXPORT_ONLY;
        if ((r43 & 1) != 0) {
            throw new IOException(kotlin.jvm.internal.h.k(b(r43), "unsupported zip: general purpose bit flag="));
        }
        d0Var.skip(18L);
        int r44 = d0Var.b() & HPKE.aead_EXPORT_ONLY;
        d0Var.skip(d0Var.b() & 65535);
        if (jVar == null) {
            d0Var.skip(r44);
            return null;
        }
        d(d0Var, r44, new i(d0Var, vVar, vVar2, vVar3));
        return new ed.j(jVar.f5325a, jVar.f5326b, null, jVar.f5328d, (Long) vVar3.f8975a, (Long) vVar.f8975a, (Long) vVar2.f8975a);
    }
}
