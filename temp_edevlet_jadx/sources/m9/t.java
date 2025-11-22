package m9;

import java.io.IOException;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.Set;

/* loaded from: classes2.dex */
public class t extends q {
    public static final ArrayList A1(Iterable iterable, Iterable other) {
        kotlin.jvm.internal.h.f(iterable, "<this>");
        kotlin.jvm.internal.h.f(other, "other");
        Iterator it = iterable.iterator();
        Iterator it2 = other.iterator();
        ArrayList arrayList = new ArrayList(Math.min(n.Q0(iterable), n.Q0(other)));
        while (it.hasNext() && it2.hasNext()) {
            arrayList.add(new l9.g(it.next(), it2.next()));
        }
        return arrayList;
    }

    public static final r U0(Iterable iterable) {
        kotlin.jvm.internal.h.f(iterable, "<this>");
        return new r(iterable);
    }

    public static final boolean V0(Set set, Object obj) {
        kotlin.jvm.internal.h.f(set, "<this>");
        return set.contains(obj);
    }

    public static final List W0(Iterable iterable) {
        ArrayList arrayList;
        kotlin.jvm.internal.h.f(iterable, "<this>");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size() - 1;
            if (size <= 0) {
                return v.f10173a;
            }
            if (size == 1) {
                return b8.f.S(h1(iterable));
            }
            arrayList = new ArrayList(size);
            if (iterable instanceof List) {
                if (iterable instanceof RandomAccess) {
                    int size2 = collection.size();
                    for (int r12 = 1; r12 < size2; r12++) {
                        arrayList.add(((List) iterable).get(r12));
                    }
                } else {
                    ListIterator listIterator = ((List) iterable).listIterator(1);
                    while (listIterator.hasNext()) {
                        arrayList.add(listIterator.next());
                    }
                }
                return arrayList;
            }
        } else {
            arrayList = new ArrayList();
        }
        int r02 = 0;
        for (Object obj : iterable) {
            if (r02 >= 1) {
                arrayList.add(obj);
            } else {
                r02++;
            }
        }
        return b8.f.Z(arrayList);
    }

    public static final List X0(List list) {
        kotlin.jvm.internal.h.f(list, "<this>");
        List list2 = list;
        int size = list.size() - 1;
        if (size < 0) {
            size = 0;
        }
        return t1(list2, size);
    }

    public static final ArrayList Y0(Iterable iterable, x9.l lVar) {
        kotlin.jvm.internal.h.f(iterable, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            if (((Boolean) lVar.invoke(obj)).booleanValue()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final <T> T Z0(Iterable<? extends T> iterable) {
        kotlin.jvm.internal.h.f(iterable, "<this>");
        if (iterable instanceof List) {
            return (T) a1((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static final <T> T a1(List<? extends T> list) {
        kotlin.jvm.internal.h.f(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(0);
    }

    public static final <T> T b1(Iterable<? extends T> iterable) {
        kotlin.jvm.internal.h.f(iterable, "<this>");
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                return null;
            }
            return (T) list.get(0);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public static final <T> T c1(List<? extends T> list) {
        kotlin.jvm.internal.h.f(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static final Object d1(int r12, List list) {
        kotlin.jvm.internal.h.f(list, "<this>");
        if (r12 < 0 || r12 > b8.f.M(list)) {
            return null;
        }
        return list.get(r12);
    }

    public static final void e1(Iterable iterable, Appendable buffer, CharSequence separator, CharSequence prefix, CharSequence postfix, int r72, CharSequence truncated, x9.l lVar) throws IOException {
        kotlin.jvm.internal.h.f(iterable, "<this>");
        kotlin.jvm.internal.h.f(buffer, "buffer");
        kotlin.jvm.internal.h.f(separator, "separator");
        kotlin.jvm.internal.h.f(prefix, "prefix");
        kotlin.jvm.internal.h.f(postfix, "postfix");
        kotlin.jvm.internal.h.f(truncated, "truncated");
        buffer.append(prefix);
        int r52 = 0;
        for (Object obj : iterable) {
            r52++;
            if (r52 > 1) {
                buffer.append(separator);
            }
            if (r72 >= 0 && r52 > r72) {
                break;
            } else {
                a0.b.g(buffer, obj, lVar);
            }
        }
        if (r72 >= 0 && r52 > r72) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
    }

    public static /* synthetic */ void f1(Iterable iterable, Appendable appendable, String str, String str2, String str3, x9.l lVar, int r14) throws IOException {
        if ((r14 & 2) != 0) {
            str = ", ";
        }
        e1(iterable, appendable, str, (r14 & 4) != 0 ? "" : str2, (r14 & 8) != 0 ? "" : str3, (r14 & 16) != 0 ? -1 : 0, (r14 & 32) != 0 ? "..." : null, (r14 & 64) != 0 ? null : lVar);
    }

    public static String g1(Iterable iterable, String str, String str2, String str3, x9.l lVar, int r13) throws IOException {
        if ((r13 & 1) != 0) {
            str = ", ";
        }
        String separator = str;
        String prefix = (r13 & 2) != 0 ? "" : str2;
        String postfix = (r13 & 4) != 0 ? "" : str3;
        int r52 = (r13 & 8) != 0 ? -1 : 0;
        CharSequence truncated = (r13 & 16) != 0 ? "..." : null;
        x9.l lVar2 = (r13 & 32) != 0 ? null : lVar;
        kotlin.jvm.internal.h.f(iterable, "<this>");
        kotlin.jvm.internal.h.f(separator, "separator");
        kotlin.jvm.internal.h.f(prefix, "prefix");
        kotlin.jvm.internal.h.f(postfix, "postfix");
        kotlin.jvm.internal.h.f(truncated, "truncated");
        StringBuilder sb2 = new StringBuilder();
        e1(iterable, sb2, separator, prefix, postfix, r52, truncated, lVar2);
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "joinTo(StringBuilder(), …ed, transform).toString()");
        return string;
    }

    public static final <T> T h1(Iterable<? extends T> iterable) {
        T next;
        kotlin.jvm.internal.h.f(iterable, "<this>");
        if (iterable instanceof List) {
            return (T) i1((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    public static final <T> T i1(List<? extends T> list) {
        kotlin.jvm.internal.h.f(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(b8.f.M(list));
    }

    public static final <T> T j1(List<? extends T> list) {
        kotlin.jvm.internal.h.f(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    public static final ArrayList k1(Iterable iterable, Iterable iterable2) {
        kotlin.jvm.internal.h.f(iterable, "<this>");
        if (iterable instanceof Collection) {
            return m1(iterable2, (Collection) iterable);
        }
        ArrayList arrayList = new ArrayList();
        p.T0(iterable, arrayList);
        p.T0(iterable2, arrayList);
        return arrayList;
    }

    public static final ArrayList l1(Iterable iterable, Object obj) {
        if (iterable instanceof Collection) {
            return n1(obj, (Collection) iterable);
        }
        ArrayList arrayList = new ArrayList();
        p.T0(iterable, arrayList);
        arrayList.add(obj);
        return arrayList;
    }

    public static final ArrayList m1(Iterable elements, Collection collection) {
        kotlin.jvm.internal.h.f(collection, "<this>");
        kotlin.jvm.internal.h.f(elements, "elements");
        if (!(elements instanceof Collection)) {
            ArrayList arrayList = new ArrayList(collection);
            p.T0(elements, arrayList);
            return arrayList;
        }
        Collection collection2 = (Collection) elements;
        ArrayList arrayList2 = new ArrayList(collection2.size() + collection.size());
        arrayList2.addAll(collection);
        arrayList2.addAll(collection2);
        return arrayList2;
    }

    public static final ArrayList n1(Object obj, Collection collection) {
        kotlin.jvm.internal.h.f(collection, "<this>");
        ArrayList arrayList = new ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(obj);
        return arrayList;
    }

    public static final <T> T o1(Iterable<? extends T> iterable) {
        kotlin.jvm.internal.h.f(iterable, "<this>");
        if (iterable instanceof List) {
            return (T) p1((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        T next = it.next();
        if (it.hasNext()) {
            throw new IllegalArgumentException("Collection has more than one element.");
        }
        return next;
    }

    public static final <T> T p1(List<? extends T> list) {
        kotlin.jvm.internal.h.f(list, "<this>");
        int size = list.size();
        if (size == 0) {
            throw new NoSuchElementException("List is empty.");
        }
        if (size == 1) {
            return list.get(0);
        }
        throw new IllegalArgumentException("List has more than one element.");
    }

    public static final <T> T q1(Iterable<? extends T> iterable) {
        kotlin.jvm.internal.h.f(iterable, "<this>");
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.size() == 1) {
                return (T) list.get(0);
            }
            return null;
        }
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        if (it.hasNext()) {
            return null;
        }
        return next;
    }

    public static final <T> T r1(List<? extends T> list) {
        kotlin.jvm.internal.h.f(list, "<this>");
        if (list.size() == 1) {
            return list.get(0);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> List<T> s1(Iterable<? extends T> iterable, Comparator<? super T> comparator) {
        ArrayList arrayListW1;
        kotlin.jvm.internal.h.f(iterable, "<this>");
        boolean z10 = iterable instanceof Collection;
        if (!z10) {
            if (z10) {
                arrayListW1 = w1((Collection) iterable);
            } else {
                ArrayList arrayList = new ArrayList();
                u1(iterable, arrayList);
                arrayListW1 = arrayList;
            }
            o.R0(arrayListW1, comparator);
            return arrayListW1;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return v1(iterable);
        }
        Object[] array = collection.toArray(new Object[0]);
        kotlin.jvm.internal.h.f(array, "<this>");
        if (array.length > 1) {
            Arrays.sort(array, comparator);
        }
        return i.g0(array);
    }

    public static final <T> List<T> t1(Iterable<? extends T> iterable, int r52) {
        kotlin.jvm.internal.h.f(iterable, "<this>");
        int r02 = 0;
        if (!(r52 >= 0)) {
            throw new IllegalArgumentException(androidx.appcompat.graphics.drawable.a.f("Requested element count ", r52, " is less than zero.").toString());
        }
        if (r52 == 0) {
            return v.f10173a;
        }
        if (iterable instanceof Collection) {
            if (r52 >= ((Collection) iterable).size()) {
                return v1(iterable);
            }
            if (r52 == 1) {
                return b8.f.S(Z0(iterable));
            }
        }
        ArrayList arrayList = new ArrayList(r52);
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
            r02++;
            if (r02 == r52) {
                break;
            }
        }
        return b8.f.Z(arrayList);
    }

    public static final void u1(Iterable iterable, AbstractCollection abstractCollection) {
        kotlin.jvm.internal.h.f(iterable, "<this>");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            abstractCollection.add(it.next());
        }
    }

    public static final <T> List<T> v1(Iterable<? extends T> iterable) {
        ArrayList arrayListW1;
        kotlin.jvm.internal.h.f(iterable, "<this>");
        boolean z10 = iterable instanceof Collection;
        if (!z10) {
            if (z10) {
                arrayListW1 = w1((Collection) iterable);
            } else {
                ArrayList arrayList = new ArrayList();
                u1(iterable, arrayList);
                arrayListW1 = arrayList;
            }
            return b8.f.Z(arrayListW1);
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return v.f10173a;
        }
        if (size != 1) {
            return w1(collection);
        }
        return b8.f.S(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
    }

    public static final ArrayList w1(Collection collection) {
        kotlin.jvm.internal.h.f(collection, "<this>");
        return new ArrayList(collection);
    }

    public static final <T> Set<T> x1(Iterable<? extends T> iterable) {
        kotlin.jvm.internal.h.f(iterable, "<this>");
        if (iterable instanceof Collection) {
            return new LinkedHashSet((Collection) iterable);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        u1(iterable, linkedHashSet);
        return linkedHashSet;
    }

    public static final <T> Set<T> y1(Iterable<? extends T> iterable) {
        kotlin.jvm.internal.h.f(iterable, "<this>");
        boolean z10 = iterable instanceof Collection;
        x xVar = x.f10175a;
        if (!z10) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            u1(iterable, linkedHashSet);
            int size = linkedHashSet.size();
            return size != 0 ? size != 1 ? linkedHashSet : x5.a.r(linkedHashSet.iterator().next()) : xVar;
        }
        Collection collection = (Collection) iterable;
        int size2 = collection.size();
        if (size2 == 0) {
            return xVar;
        }
        if (size2 == 1) {
            return x5.a.r(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(b8.f.V(collection.size()));
        u1(iterable, linkedHashSet2);
        return linkedHashSet2;
    }

    public static final z z1(Iterable iterable) {
        kotlin.jvm.internal.h.f(iterable, "<this>");
        return new z(new s(iterable));
    }
}
