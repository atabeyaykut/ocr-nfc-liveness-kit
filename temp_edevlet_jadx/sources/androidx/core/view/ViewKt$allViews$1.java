package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import c5.w;
import kotlin.Metadata;
import x9.p;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Llc/j;", "Landroid/view/View;", "Ll9/m;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@r9.e(c = "androidx.core.view.ViewKt$allViews$1", f = "View.kt", l = {414, 416}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class ViewKt$allViews$1 extends r9.h implements p<lc.j<? super View>, p9.d<? super l9.m>, Object> {
    final /* synthetic */ View $this_allViews;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewKt$allViews$1(View view, p9.d<? super ViewKt$allViews$1> dVar) {
        super(2, dVar);
        this.$this_allViews = view;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        ViewKt$allViews$1 viewKt$allViews$1 = new ViewKt$allViews$1(this.$this_allViews, dVar);
        viewKt$allViews$1.L$0 = obj;
        return viewKt$allViews$1;
    }

    @Override // x9.p
    /* renamed from: invoke, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public final Object mo7invoke(lc.j<? super View> jVar, p9.d<? super l9.m> dVar) {
        return ((ViewKt$allViews$1) create(jVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.label;
        if (r12 == 0) {
            w.F(obj);
            lc.j jVar = (lc.j) this.L$0;
            View view = this.$this_allViews;
            this.L$0 = jVar;
            this.label = 1;
            jVar.a(view, this);
            return aVar;
        }
        if (r12 == 1) {
            lc.j jVar2 = (lc.j) this.L$0;
            w.F(obj);
            View view2 = this.$this_allViews;
            if (view2 instanceof ViewGroup) {
                lc.h<View> descendants = ViewGroupKt.getDescendants((ViewGroup) view2);
                this.L$0 = null;
                this.label = 2;
                jVar2.getClass();
                Object objB = jVar2.b(descendants.iterator(), this);
                if (objB != aVar) {
                    objB = l9.m.f9594a;
                }
                if (objB == aVar) {
                    return aVar;
                }
            }
        } else {
            if (r12 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.F(obj);
        }
        return l9.m.f9594a;
    }
}
