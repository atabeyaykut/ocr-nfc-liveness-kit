package fd;

import ed.z;
import java.util.List;

/* loaded from: classes2.dex */
public final class e extends kotlin.jvm.internal.j implements x9.a<List<? extends l9.g<? extends ed.k, ? extends z>>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ClassLoader f5595a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(ClassLoader classLoader) {
        super(0);
        this.f5595a = classLoader;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x02ab, code lost:
    
        throw new java.io.IOException("bad zip: local file header offset >= central directory offset");
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x02ac, code lost:
    
        r0 = l9.m.f9594a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x02af, code lost:
    
        x5.a.f(r6, null);
        r1 = new ed.l0(r3, r5, fd.j.a(r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x02bb, code lost:
    
        r2 = null;
        x5.a.f(r9, null);
        r0 = new l9.g(r1, fd.d.f5593c);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x02d8, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x02da, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x02db, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x02dd, code lost:
    
        x5.a.f(r6, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x02e0, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x02e6, code lost:
    
        throw new java.io.IOException("unsupported zip: spanned");
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0154, code lost:
    
        r0 = r6.b() & org.bouncycastle.crypto.hpke.HPKE.aead_EXPORT_ONLY;
        r7 = r6.b() & org.bouncycastle.crypto.hpke.HPKE.aead_EXPORT_ONLY;
        r25 = r2;
        r1 = r6.b() & org.bouncycastle.crypto.hpke.HPKE.aead_EXPORT_ONLY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x016d, code lost:
    
        r26 = r14;
        r27 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x017b, code lost:
    
        if (r1 != (r6.b() & org.bouncycastle.crypto.hpke.HPKE.aead_EXPORT_ONLY)) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x017d, code lost:
    
        if (r0 != 0) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x017f, code lost:
    
        if (r7 != 0) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0183, code lost:
    
        r6.skip(4);
        r22 = r6.b0() & org.bouncycastle.asn1.cmc.BodyPartID.bodyIdMax;
        r0 = r6.b() & org.bouncycastle.crypto.hpke.HPKE.aead_EXPORT_ONLY;
        r7 = new fd.a(r1, r22, r0);
        r6.c(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x01a9, code lost:
    
        r6.close();
        r12 = r12 - 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x01b4, code lost:
    
        if (r12 <= 0) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x01b6, code lost:
    
        r1 = ed.v.b(r9.d(r12));
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x01c5, code lost:
    
        if (r1.b0() != 117853008) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x01c7, code lost:
    
        r2 = r1.b0();
        r6 = r1.g0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x01d4, code lost:
    
        if (r1.b0() != 1) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01d6, code lost:
    
        if (r2 != 0) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01d8, code lost:
    
        r2 = ed.v.b(r9.d(r6));
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01e0, code lost:
    
        r6 = r2.b0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01e7, code lost:
    
        if (r6 != 101075792) goto L175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01e9, code lost:
    
        r2.skip(12);
        r6 = r2.b0();
        r7 = r2.b0();
        r29 = r2.g0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0200, code lost:
    
        if (r29 != r2.g0()) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0202, code lost:
    
        if (r6 != 0) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0204, code lost:
    
        if (r7 != 0) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0206, code lost:
    
        r2.skip(8);
        r6 = new fd.a(r29, r2.g0(), r0);
        r0 = l9.m.f9594a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x021b, code lost:
    
        x5.a.f(r2, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x021e, code lost:
    
        r7 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0225, code lost:
    
        throw new java.io.IOException("unsupported zip: spanned");
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x024a, code lost:
    
        throw new java.io.IOException("bad zip: expected " + fd.j.b(101075792) + " but was " + fd.j.b(r6));
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x024b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0259, code lost:
    
        throw new java.io.IOException("unsupported zip: spanned");
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x025a, code lost:
    
        r0 = l9.m.f9594a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x025d, code lost:
    
        x5.a.f(r1, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0261, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x026a, code lost:
    
        r0 = r7.f5588b;
        r2 = new java.util.ArrayList();
        r6 = ed.v.b(r9.d(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0279, code lost:
    
        r7 = r7.f5587a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x027f, code lost:
    
        if (0 >= r7) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0281, code lost:
    
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0283, code lost:
    
        r11 = r11 + 1;
        r13 = fd.j.c(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x028e, code lost:
    
        if (r13.f5601g >= r0) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x029a, code lost:
    
        if (((java.lang.Boolean) r10.invoke(r13)).booleanValue() == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x029c, code lost:
    
        r2.add(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x02a1, code lost:
    
        if (r11 < r7) goto L185;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v11, types: [l9.g] */
    /* JADX WARN: Type inference failed for: r7v21, types: [l9.g] */
    @Override // x9.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<? extends l9.g<? extends ed.k, ? extends ed.z>> invoke() throws java.lang.IllegalAccessException, java.io.IOException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 826
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: fd.e.invoke():java.lang.Object");
    }
}
