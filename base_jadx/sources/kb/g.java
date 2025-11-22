package kb;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import jb.a;
import m9.a0;
import m9.n;
import m9.t;
import m9.y;
import m9.z;

/* loaded from: classes2.dex */
public class g implements ib.c {

    /* renamed from: d, reason: collision with root package name */
    public static final List<String> f8816d;

    /* renamed from: a, reason: collision with root package name */
    public final String[] f8817a;

    /* renamed from: b, reason: collision with root package name */
    public final Set<Integer> f8818b;

    /* renamed from: c, reason: collision with root package name */
    public final List<a.d.c> f8819c;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        String strG1 = t.g1(b8.f.T('k', 'o', 't', 'l', 'i', 'n'), "", null, null, null, 62);
        List<String> listT = b8.f.T(strG1.concat("/Any"), strG1.concat("/Nothing"), strG1.concat("/Unit"), strG1.concat("/Throwable"), strG1.concat("/Number"), strG1.concat("/Byte"), strG1.concat("/Double"), strG1.concat("/Float"), strG1.concat("/Int"), strG1.concat("/Long"), strG1.concat("/Short"), strG1.concat("/Boolean"), strG1.concat("/Char"), strG1.concat("/CharSequence"), strG1.concat("/String"), strG1.concat("/Comparable"), strG1.concat("/Enum"), strG1.concat("/Array"), strG1.concat("/ByteArray"), strG1.concat("/DoubleArray"), strG1.concat("/FloatArray"), strG1.concat("/IntArray"), strG1.concat("/LongArray"), strG1.concat("/ShortArray"), strG1.concat("/BooleanArray"), strG1.concat("/CharArray"), strG1.concat("/Cloneable"), strG1.concat("/Annotation"), strG1.concat("/collections/Iterable"), strG1.concat("/collections/MutableIterable"), strG1.concat("/collections/Collection"), strG1.concat("/collections/MutableCollection"), strG1.concat("/collections/List"), strG1.concat("/collections/MutableList"), strG1.concat("/collections/Set"), strG1.concat("/collections/MutableSet"), strG1.concat("/collections/Map"), strG1.concat("/collections/MutableMap"), strG1.concat("/collections/Map.Entry"), strG1.concat("/collections/MutableMap.MutableEntry"), strG1.concat("/collections/Iterator"), strG1.concat("/collections/MutableIterator"), strG1.concat("/collections/ListIterator"), strG1.concat("/collections/MutableListIterator"));
        f8816d = listT;
        z zVarZ1 = t.z1(listT);
        int r12 = b8.f.V(n.Q0(zVarZ1));
        LinkedHashMap linkedHashMap = new LinkedHashMap(r12 >= 16 ? r12 : 16);
        Iterator it = zVarZ1.iterator();
        while (true) {
            a0 a0Var = (a0) it;
            if (!a0Var.hasNext()) {
                return;
            }
            y yVar = (y) a0Var.next();
            linkedHashMap.put((String) yVar.f10177b, Integer.valueOf(yVar.f10176a));
        }
    }

    public g(String[] strArr, Set set, ArrayList arrayList) {
        this.f8817a = strArr;
        this.f8818b = set;
        this.f8819c = arrayList;
    }

    @Override // ib.c
    public final String a(int r12) {
        return getString(r12);
    }

    @Override // ib.c
    public final boolean b(int r22) {
        return this.f8818b.contains(Integer.valueOf(r22));
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x005c  */
    @Override // ib.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String getString(int r10) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kb.g.getString(int):java.lang.String");
    }
}
