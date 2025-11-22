package androidx.core.view;

import android.view.Menu;
import android.view.MenuItem;
import java.util.Iterator;
import kotlin.Metadata;
import x9.p;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010)\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0015\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\n\u001a\u0015\u0010\u0007\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0003H\u0086\u0002\u001a\u0015\u0010\t\u001a\u00020\b*\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0003H\u0086\n\u001a\r\u0010\n\u001a\u00020\u0006*\u00020\u0000H\u0086\b\u001a\r\u0010\u000b\u001a\u00020\u0006*\u00020\u0000H\u0086\b\u001a$\u0010\u000e\u001a\u00020\b*\u00020\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\fH\u0086\bø\u0001\u0000\u001a*\u0010\u0010\u001a\u00020\b*\u00020\u00002\u0018\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u000fH\u0086\bø\u0001\u0000\u001a\u0013\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u0011*\u00020\u0000H\u0086\u0002\u001a\u0015\u0010\u0013\u001a\u00020\b*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\b\"\u0016\u0010\u0016\u001a\u00020\u0001*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015\"\u001b\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\u0017*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001b"}, d2 = {"Landroid/view/Menu;", "", "index", "Landroid/view/MenuItem;", "get", "item", "", "contains", "Ll9/m;", "minusAssign", "isEmpty", "isNotEmpty", "Lkotlin/Function1;", "action", "forEach", "Lkotlin/Function2;", "forEachIndexed", "", "iterator", "removeItemAt", "getSize", "(Landroid/view/Menu;)I", "size", "Llc/h;", "getChildren", "(Landroid/view/Menu;)Llc/h;", "children", "core-ktx_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class MenuKt {

    @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\t\u0010\u0004\u001a\u00020\u0003H\u0096\u0002J\t\u0010\u0005\u001a\u00020\u0002H\u0096\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"androidx/core/view/MenuKt$iterator$1", "", "Landroid/view/MenuItem;", "", "hasNext", "next", "Ll9/m;", "remove", "", "index", "I", "core-ktx_release"}, k = 1, mv = {1, 7, 1})
    /* renamed from: androidx.core.view.MenuKt$iterator$1, reason: invalid class name */
    public static final class AnonymousClass1 implements Iterator<MenuItem>, y9.a {
        final /* synthetic */ Menu $this_iterator;
        private int index;

        public AnonymousClass1(Menu menu) {
            this.$this_iterator = menu;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < this.$this_iterator.size();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public MenuItem next() {
            Menu menu = this.$this_iterator;
            int r12 = this.index;
            this.index = r12 + 1;
            MenuItem item = menu.getItem(r12);
            if (item != null) {
                return item;
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // java.util.Iterator
        public void remove() {
            l9.m mVar;
            Menu menu = this.$this_iterator;
            int r12 = this.index - 1;
            this.index = r12;
            MenuItem item = menu.getItem(r12);
            if (item != null) {
                menu.removeItem(item.getItemId());
                mVar = l9.m.f9594a;
            } else {
                mVar = null;
            }
            if (mVar == null) {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    public static final boolean contains(Menu menu, MenuItem item) {
        kotlin.jvm.internal.h.f(menu, "<this>");
        kotlin.jvm.internal.h.f(item, "item");
        int size = menu.size();
        for (int r22 = 0; r22 < size; r22++) {
            if (kotlin.jvm.internal.h.a(menu.getItem(r22), item)) {
                return true;
            }
        }
        return false;
    }

    public static final void forEach(Menu menu, x9.l<? super MenuItem, l9.m> action) {
        kotlin.jvm.internal.h.f(menu, "<this>");
        kotlin.jvm.internal.h.f(action, "action");
        int size = menu.size();
        for (int r12 = 0; r12 < size; r12++) {
            MenuItem item = menu.getItem(r12);
            kotlin.jvm.internal.h.e(item, "getItem(index)");
            action.invoke(item);
        }
    }

    public static final void forEachIndexed(Menu menu, p<? super Integer, ? super MenuItem, l9.m> action) {
        kotlin.jvm.internal.h.f(menu, "<this>");
        kotlin.jvm.internal.h.f(action, "action");
        int size = menu.size();
        for (int r12 = 0; r12 < size; r12++) {
            Integer numValueOf = Integer.valueOf(r12);
            MenuItem item = menu.getItem(r12);
            kotlin.jvm.internal.h.e(item, "getItem(index)");
            action.mo7invoke(numValueOf, item);
        }
    }

    public static final MenuItem get(Menu menu, int r22) {
        kotlin.jvm.internal.h.f(menu, "<this>");
        MenuItem item = menu.getItem(r22);
        kotlin.jvm.internal.h.e(item, "getItem(index)");
        return item;
    }

    public static final lc.h<MenuItem> getChildren(final Menu menu) {
        kotlin.jvm.internal.h.f(menu, "<this>");
        return new lc.h<MenuItem>() { // from class: androidx.core.view.MenuKt$children$1
            @Override // lc.h
            public Iterator<MenuItem> iterator() {
                return MenuKt.iterator(menu);
            }
        };
    }

    public static final int getSize(Menu menu) {
        kotlin.jvm.internal.h.f(menu, "<this>");
        return menu.size();
    }

    public static final boolean isEmpty(Menu menu) {
        kotlin.jvm.internal.h.f(menu, "<this>");
        return menu.size() == 0;
    }

    public static final boolean isNotEmpty(Menu menu) {
        kotlin.jvm.internal.h.f(menu, "<this>");
        return menu.size() != 0;
    }

    public static final Iterator<MenuItem> iterator(Menu menu) {
        kotlin.jvm.internal.h.f(menu, "<this>");
        return new AnonymousClass1(menu);
    }

    public static final void minusAssign(Menu menu, MenuItem item) {
        kotlin.jvm.internal.h.f(menu, "<this>");
        kotlin.jvm.internal.h.f(item, "item");
        menu.removeItem(item.getItemId());
    }

    public static final void removeItemAt(Menu menu, int r22) {
        l9.m mVar;
        kotlin.jvm.internal.h.f(menu, "<this>");
        MenuItem item = menu.getItem(r22);
        if (item != null) {
            menu.removeItem(item.getItemId());
            mVar = l9.m.f9594a;
        } else {
            mVar = null;
        }
        if (mVar == null) {
            throw new IndexOutOfBoundsException();
        }
    }
}
