package ib;

import gb.n;
import gb.o;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import l9.k;
import m9.t;

/* loaded from: classes2.dex */
public final class d implements c {

    /* renamed from: a, reason: collision with root package name */
    public final o f7351a;

    /* renamed from: b, reason: collision with root package name */
    public final n f7352b;

    public d(o oVar, n nVar) {
        this.f7351a = oVar;
        this.f7352b = nVar;
    }

    @Override // ib.c
    public final String a(int r92) throws IOException {
        k<List<String>, List<String>, Boolean> kVarC = c(r92);
        List<String> list = kVarC.f9591a;
        String strG1 = t.g1(kVarC.f9592b, ".", null, null, null, 62);
        if (list.isEmpty()) {
            return strG1;
        }
        return t.g1(list, "/", null, null, null, 62) + '/' + strG1;
    }

    @Override // ib.c
    public final boolean b(int r12) {
        return c(r12).f9593c.booleanValue();
    }

    public final k<List<String>, List<String>, Boolean> c(int r82) {
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        boolean z10 = false;
        while (r82 != -1) {
            n.c cVar = this.f7352b.f6425b.get(r82);
            String str = (String) this.f7351a.f6449b.get(cVar.f6435d);
            n.c.EnumC0111c enumC0111c = cVar.f6436e;
            kotlin.jvm.internal.h.c(enumC0111c);
            int r42 = enumC0111c.ordinal();
            if (r42 == 0) {
                linkedList2.addFirst(str);
            } else if (r42 == 1) {
                linkedList.addFirst(str);
            } else if (r42 == 2) {
                linkedList2.addFirst(str);
                z10 = true;
            }
            r82 = cVar.f6434c;
        }
        return new k<>(linkedList, linkedList2, Boolean.valueOf(z10));
    }

    @Override // ib.c
    public final String getString(int r22) {
        String str = (String) this.f7351a.f6449b.get(r22);
        kotlin.jvm.internal.h.e(str, "strings.getString(index)");
        return str;
    }
}
