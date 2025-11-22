package q;

import android.view.View;
import android.view.ViewGroup;
import q.a;

/* loaded from: classes.dex */
public interface g<T extends View> extends f {

    public static final class a {
        public static <T extends View> e a(g<T> gVar) {
            q.a c0221a;
            q.a c0221a2;
            ViewGroup.LayoutParams layoutParams = gVar.c().getLayoutParams();
            int r02 = layoutParams == null ? -1 : layoutParams.width;
            int width = gVar.c().getWidth();
            int paddingRight = gVar.a() ? gVar.c().getPaddingRight() + gVar.c().getPaddingLeft() : 0;
            if (r02 == -2) {
                c0221a = a.b.f13255a;
            } else {
                int r03 = r02 - paddingRight;
                if (r03 > 0) {
                    c0221a = new a.C0221a(r03);
                } else {
                    int r22 = width - paddingRight;
                    c0221a = r22 > 0 ? new a.C0221a(r22) : null;
                }
            }
            if (c0221a == null) {
                return null;
            }
            ViewGroup.LayoutParams layoutParams2 = gVar.c().getLayoutParams();
            int r12 = layoutParams2 != null ? layoutParams2.height : -1;
            int height = gVar.c().getHeight();
            int paddingTop = gVar.a() ? gVar.c().getPaddingTop() + gVar.c().getPaddingBottom() : 0;
            if (r12 == -2) {
                c0221a2 = a.b.f13255a;
            } else {
                int r13 = r12 - paddingTop;
                if (r13 > 0) {
                    c0221a2 = new a.C0221a(r13);
                } else {
                    int r23 = height - paddingTop;
                    c0221a2 = r23 > 0 ? new a.C0221a(r23) : null;
                }
            }
            if (c0221a2 == null) {
                return null;
            }
            return new e(c0221a, c0221a2);
        }
    }

    boolean a();

    T c();
}
