package n1;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import q1.l;
import tr.gov.turkiye.edevlet.kapisi.R;

@Deprecated
/* loaded from: classes.dex */
public abstract class h<T extends View, Z> extends n1.a<Z> {

    /* renamed from: a, reason: collision with root package name */
    public final T f10531a;

    /* renamed from: b, reason: collision with root package name */
    public final a f10532b;

    @VisibleForTesting
    public static final class a {

        /* renamed from: d, reason: collision with root package name */
        @Nullable
        @VisibleForTesting
        public static Integer f10533d;

        /* renamed from: a, reason: collision with root package name */
        public final View f10534a;

        /* renamed from: b, reason: collision with root package name */
        public final ArrayList f10535b = new ArrayList();

        /* renamed from: c, reason: collision with root package name */
        @Nullable
        public ViewTreeObserverOnPreDrawListenerC0195a f10536c;

        /* renamed from: n1.h$a$a, reason: collision with other inner class name */
        public static final class ViewTreeObserverOnPreDrawListenerC0195a implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: a, reason: collision with root package name */
            public final WeakReference<a> f10537a;

            public ViewTreeObserverOnPreDrawListenerC0195a(@NonNull a aVar) {
                this.f10537a = new WeakReference<>(aVar);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                if (Log.isLoggable("ViewTarget", 2)) {
                    Log.v("ViewTarget", "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                a aVar = this.f10537a.get();
                if (aVar != null) {
                    ArrayList arrayList = aVar.f10535b;
                    if (!arrayList.isEmpty()) {
                        int r32 = aVar.c();
                        int r42 = aVar.b();
                        boolean z10 = false;
                        if (r32 > 0 || r32 == Integer.MIN_VALUE) {
                            if (r42 > 0 || r42 == Integer.MIN_VALUE) {
                                z10 = true;
                            }
                        }
                        if (z10) {
                            Iterator it = new ArrayList(arrayList).iterator();
                            while (it.hasNext()) {
                                ((f) it.next()).c(r32, r42);
                            }
                            ViewTreeObserver viewTreeObserver = aVar.f10534a.getViewTreeObserver();
                            if (viewTreeObserver.isAlive()) {
                                viewTreeObserver.removeOnPreDrawListener(aVar.f10536c);
                            }
                            aVar.f10536c = null;
                            arrayList.clear();
                        }
                    }
                }
                return true;
            }
        }

        public a(@NonNull View view) {
            this.f10534a = view;
        }

        public final int a(int r22, int r32, int r42) {
            int r02 = r32 - r42;
            if (r02 > 0) {
                return r02;
            }
            int r23 = r22 - r42;
            if (r23 > 0) {
                return r23;
            }
            View view = this.f10534a;
            if (view.isLayoutRequested() || r32 != -2) {
                return 0;
            }
            if (Log.isLoggable("ViewTarget", 4)) {
                Log.i("ViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
            }
            Context context = view.getContext();
            if (f10533d == null) {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                l.b(windowManager);
                Display defaultDisplay = windowManager.getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f10533d = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f10533d.intValue();
        }

        public final int b() {
            View view = this.f10534a;
            int paddingBottom = view.getPaddingBottom() + view.getPaddingTop();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            return a(view.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingBottom);
        }

        public final int c() {
            View view = this.f10534a;
            int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            return a(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        }
    }

    public h(@NonNull T t10) {
        l.b(t10);
        this.f10531a = t10;
        this.f10532b = new a(t10);
    }

    @Override // n1.g
    @Nullable
    public final m1.d a() {
        Object tag = this.f10531a.getTag(R.id.glide_custom_view_target_tag);
        if (tag == null) {
            return null;
        }
        if (tag instanceof m1.d) {
            return (m1.d) tag;
        }
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }

    @Override // n1.g
    @CallSuper
    public final void b(@NonNull f fVar) {
        this.f10532b.f10535b.remove(fVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
    @Override // n1.g
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(@androidx.annotation.NonNull n1.f r8) {
        /*
            r7 = this;
            n1.h$a r0 = r7.f10532b
            int r1 = r0.c()
            int r2 = r0.b()
            r3 = 1
            r4 = 0
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r1 > 0) goto L15
            if (r1 != r5) goto L13
            goto L15
        L13:
            r6 = 0
            goto L16
        L15:
            r6 = 1
        L16:
            if (r6 == 0) goto L23
            if (r2 > 0) goto L1f
            if (r2 != r5) goto L1d
            goto L1f
        L1d:
            r5 = 0
            goto L20
        L1f:
            r5 = 1
        L20:
            if (r5 == 0) goto L23
            goto L24
        L23:
            r3 = 0
        L24:
            if (r3 == 0) goto L2a
            r8.c(r1, r2)
            goto L49
        L2a:
            java.util.ArrayList r1 = r0.f10535b
            boolean r2 = r1.contains(r8)
            if (r2 != 0) goto L35
            r1.add(r8)
        L35:
            n1.h$a$a r8 = r0.f10536c
            if (r8 != 0) goto L49
            android.view.View r8 = r0.f10534a
            android.view.ViewTreeObserver r8 = r8.getViewTreeObserver()
            n1.h$a$a r1 = new n1.h$a$a
            r1.<init>(r0)
            r0.f10536c = r1
            r8.addOnPreDrawListener(r1)
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: n1.h.e(n1.f):void");
    }

    @Override // n1.g
    @CallSuper
    public void h(@Nullable Drawable drawable) {
        a aVar = this.f10532b;
        ViewTreeObserver viewTreeObserver = aVar.f10534a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(aVar.f10536c);
        }
        aVar.f10536c = null;
        aVar.f10535b.clear();
    }

    @Override // n1.g
    public final void j(@Nullable m1.d dVar) {
        this.f10531a.setTag(R.id.glide_custom_view_target_tag, dVar);
    }

    public final String toString() {
        return "Target for: " + this.f10531a;
    }
}
