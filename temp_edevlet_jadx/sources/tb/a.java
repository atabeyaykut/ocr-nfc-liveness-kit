package tb;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.h;
import lb.f;
import m9.p;
import m9.v;
import ma.e;
import p4.g7;

/* loaded from: classes2.dex */
public final class a implements d {

    /* renamed from: b, reason: collision with root package name */
    public final List<d> f15647b = v.f10173a;

    @Override // tb.d
    public final ArrayList a(g7 g7Var, e thisDescriptor) {
        h.f(g7Var, "<this>");
        h.f(thisDescriptor, "thisDescriptor");
        List<d> list = this.f15647b;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            p.T0(((d) it.next()).a(g7Var, thisDescriptor), arrayList);
        }
        return arrayList;
    }

    @Override // tb.d
    public final ArrayList b(g7 g7Var, xa.c thisDescriptor) {
        h.f(g7Var, "<this>");
        h.f(thisDescriptor, "thisDescriptor");
        List<d> list = this.f15647b;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            p.T0(((d) it.next()).b(g7Var, thisDescriptor), arrayList);
        }
        return arrayList;
    }

    @Override // tb.d
    public final ArrayList c(g7 g7Var, e thisDescriptor) {
        h.f(g7Var, "<this>");
        h.f(thisDescriptor, "thisDescriptor");
        List<d> list = this.f15647b;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            p.T0(((d) it.next()).c(g7Var, thisDescriptor), arrayList);
        }
        return arrayList;
    }

    @Override // tb.d
    public final void d(g7 g7Var, e thisDescriptor, f name, n9.a aVar) {
        h.f(g7Var, "<this>");
        h.f(thisDescriptor, "thisDescriptor");
        h.f(name, "name");
        Iterator<T> it = this.f15647b.iterator();
        while (it.hasNext()) {
            ((d) it.next()).d(g7Var, thisDescriptor, name, aVar);
        }
    }

    @Override // tb.d
    public final void e(g7 g7Var, xa.c thisDescriptor, f name, ArrayList arrayList) {
        h.f(g7Var, "<this>");
        h.f(thisDescriptor, "thisDescriptor");
        h.f(name, "name");
        Iterator<T> it = this.f15647b.iterator();
        while (it.hasNext()) {
            ((d) it.next()).e(g7Var, thisDescriptor, name, arrayList);
        }
    }

    @Override // tb.d
    public final void f(g7 g7Var, e thisDescriptor, f name, ArrayList arrayList) {
        h.f(g7Var, "<this>");
        h.f(thisDescriptor, "thisDescriptor");
        h.f(name, "name");
        Iterator<T> it = this.f15647b.iterator();
        while (it.hasNext()) {
            ((d) it.next()).f(g7Var, thisDescriptor, name, arrayList);
        }
    }

    @Override // tb.d
    public final void g(g7 g7Var, e thisDescriptor, ArrayList arrayList) {
        h.f(g7Var, "<this>");
        h.f(thisDescriptor, "thisDescriptor");
        Iterator<T> it = this.f15647b.iterator();
        while (it.hasNext()) {
            ((d) it.next()).g(g7Var, thisDescriptor, arrayList);
        }
    }
}
