package xf;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.annotation.Nullable;
import com.airbnb.epoxy.u;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class y extends com.airbnb.epoxy.u<x> implements com.airbnb.epoxy.y<x> {

    /* renamed from: a, reason: collision with root package name */
    public int f19245a = 0;

    /* renamed from: b, reason: collision with root package name */
    public String f19246b = null;

    public final y a(String str) {
        onMutation();
        this.f19246b = str;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final void addTo(com.airbnb.epoxy.p pVar) {
        super.addTo(pVar);
        addWithDebugValidation(pVar);
    }

    public final y b() {
        super.m422id("nameSurname");
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final void bind(x xVar) {
        x xVar2 = xVar;
        super.bind(xVar2);
        xVar2.setContent(this.f19246b);
        xVar2.setTitle(this.f19245a);
    }

    @Override // com.airbnb.epoxy.u
    public final View buildView(ViewGroup viewGroup) {
        x xVar = new x(viewGroup.getContext());
        xVar.setLayoutParams(new ViewGroup.MarginLayoutParams(-1, -2));
        return xVar;
    }

    public final y c() {
        onMutation();
        this.f19245a = R.string.title_name_surname;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof y) || !super.equals(obj)) {
            return false;
        }
        y yVar = (y) obj;
        yVar.getClass();
        if (this.f19245a != yVar.f19245a) {
            return false;
        }
        String str = this.f19246b;
        String str2 = yVar.f19246b;
        return str == null ? str2 == null : str.equals(str2);
    }

    @Override // com.airbnb.epoxy.u
    @LayoutRes
    public final int getDefaultLayout() {
        throw new UnsupportedOperationException("Layout resources are unsupported for views created programmatically.");
    }

    @Override // com.airbnb.epoxy.u
    public final int getSpanSize(int r12, int r22, int r32) {
        return r12;
    }

    @Override // com.airbnb.epoxy.u
    public final int getViewType() {
        return 0;
    }

    @Override // com.airbnb.epoxy.y
    public final void handlePostBind(x xVar, int r22) {
        validateStateHasNotChangedSinceAdded("The model was changed during the bind call.", r22);
    }

    @Override // com.airbnb.epoxy.y
    public final void handlePreBind(com.airbnb.epoxy.x xVar, x xVar2, int r32) {
        validateStateHasNotChangedSinceAdded("The model was changed between being added to the controller and being bound.", r32);
    }

    @Override // com.airbnb.epoxy.u
    public final int hashCode() {
        int r02 = (androidx.browser.browseractions.b.c(super.hashCode(), 31, 0, 31, 0, 31, 0, 31, 0, 31) + this.f19245a) * 31;
        String str = this.f19246b;
        return r02 + (str != null ? str.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public final com.airbnb.epoxy.u<x> hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<x> mo420id(long j10) {
        super.mo420id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout */
    public final com.airbnb.epoxy.u<x> m426layout(@LayoutRes int r22) {
        throw new UnsupportedOperationException("Layout resources are unsupported with programmatic views.");
    }

    @Override // com.airbnb.epoxy.u
    public final void onVisibilityChanged(float f, float f10, int r92, int r10, x xVar) {
        super.onVisibilityChanged(f, f10, r92, r10, xVar);
    }

    @Override // com.airbnb.epoxy.u
    public final void onVisibilityStateChanged(int r12, x xVar) {
        super.onVisibilityStateChanged(r12, xVar);
    }

    @Override // com.airbnb.epoxy.u
    public final com.airbnb.epoxy.u<x> reset() {
        this.f19245a = 0;
        this.f19246b = null;
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final com.airbnb.epoxy.u<x> show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride */
    public final com.airbnb.epoxy.u<x> m431spanSizeOverride(@Nullable u.c cVar) {
        super.m431spanSizeOverride(null);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final String toString() {
        return "NameSurnameMergeModelModel_{title_Int=" + this.f19245a + ", content_String=" + this.f19246b + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.u
    public final void unbind(x xVar) {
        super.unbind(xVar);
    }

    @Override // com.airbnb.epoxy.u
    public final void bind(x xVar, com.airbnb.epoxy.u uVar) {
        x xVar2 = xVar;
        if (!(uVar instanceof y)) {
            super.bind(xVar2);
            xVar2.setContent(this.f19246b);
            xVar2.setTitle(this.f19245a);
            return;
        }
        y yVar = (y) uVar;
        super.bind(xVar2);
        String str = this.f19246b;
        if (str == null ? yVar.f19246b != null : !str.equals(yVar.f19246b)) {
            xVar2.setContent(this.f19246b);
        }
        int r02 = this.f19245a;
        if (r02 != yVar.f19245a) {
            xVar2.setTitle(r02);
        }
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<x> m421id(long j10, long j11) {
        super.m421id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final com.airbnb.epoxy.u<x> show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<x> m422id(@Nullable CharSequence charSequence) {
        super.m422id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<x> m423id(@Nullable CharSequence charSequence, long j10) {
        super.m423id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<x> m424id(@Nullable CharSequence charSequence, @Nullable CharSequence[] charSequenceArr) {
        super.m424id(charSequence, charSequenceArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<x> m425id(@Nullable Number[] numberArr) {
        super.m425id(numberArr);
        return this;
    }
}
