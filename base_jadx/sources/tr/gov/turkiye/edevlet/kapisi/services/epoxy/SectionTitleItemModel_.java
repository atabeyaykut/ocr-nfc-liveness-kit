package tr.gov.turkiye.edevlet.kapisi.services.epoxy;

import androidx.annotation.LayoutRes;
import androidx.annotation.Nullable;
import androidx.browser.browseractions.b;
import com.airbnb.epoxy.i0;
import com.airbnb.epoxy.k0;
import com.airbnb.epoxy.l0;
import com.airbnb.epoxy.m0;
import com.airbnb.epoxy.p;
import com.airbnb.epoxy.u;
import com.airbnb.epoxy.x;
import com.airbnb.epoxy.y;
import he.c;
import sg.g;

/* loaded from: classes3.dex */
public class SectionTitleItemModel_ extends SectionTitleItemModel implements y<c>, g {
    private i0<SectionTitleItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<SectionTitleItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<SectionTitleItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<SectionTitleItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

    @Override // com.airbnb.epoxy.u
    public void addTo(p pVar) {
        super.addTo(pVar);
        addWithDebugValidation(pVar);
    }

    @Override // com.airbnb.epoxy.u
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SectionTitleItemModel_) || !super.equals(obj)) {
            return false;
        }
        SectionTitleItemModel_ sectionTitleItemModel_ = (SectionTitleItemModel_) obj;
        sectionTitleItemModel_.getClass();
        String str = this.title;
        String str2 = sectionTitleItemModel_.title;
        return str == null ? str2 == null : str.equals(str2);
    }

    @Override // com.airbnb.epoxy.y
    public void handlePostBind(c cVar, int r22) {
        validateStateHasNotChangedSinceAdded("The model was changed during the bind call.", r22);
    }

    @Override // com.airbnb.epoxy.y
    public void handlePreBind(x xVar, c cVar, int r32) {
        validateStateHasNotChangedSinceAdded("The model was changed between being added to the controller and being bound.", r32);
    }

    @Override // com.airbnb.epoxy.u
    public int hashCode() {
        int r02 = b.c(super.hashCode(), 31, 0, 31, 0, 31, 0, 31, 0, 31);
        String str = this.title;
        return r02 + (str != null ? str.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public SectionTitleItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public SectionTitleItemModel_ m380id(long j10) {
        super.m380id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public SectionTitleItemModel_ m381id(long j10, long j11) {
        super.m381id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public SectionTitleItemModel_ m382id(@Nullable CharSequence charSequence) {
        super.m382id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public SectionTitleItemModel_ m383id(@Nullable CharSequence charSequence, long j10) {
        super.m383id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public SectionTitleItemModel_ m384id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m384id(charSequence, charSequenceArr);
        return this;
    }

    @Override // sg.g
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public SectionTitleItemModel_ mo385id(@Nullable Number... numberArr) {
        super.mo385id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public SectionTitleItemModel_ m386layout(@LayoutRes int r12) {
        super.m386layout(r12);
        return this;
    }

    public /* bridge */ /* synthetic */ g onBind(i0 i0Var) {
        return m387onBind((i0<SectionTitleItemModel_, c>) i0Var);
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public SectionTitleItemModel_ m387onBind(i0<SectionTitleItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ g onUnbind(k0 k0Var) {
        return m388onUnbind((k0<SectionTitleItemModel_, c>) k0Var);
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public SectionTitleItemModel_ m388onUnbind(k0<SectionTitleItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ g onVisibilityChanged(l0 l0Var) {
        return m389onVisibilityChanged((l0<SectionTitleItemModel_, c>) l0Var);
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public SectionTitleItemModel_ m389onVisibilityChanged(l0<SectionTitleItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public /* bridge */ /* synthetic */ g onVisibilityStateChanged(m0 m0Var) {
        return m390onVisibilityStateChanged((m0<SectionTitleItemModel_, c>) m0Var);
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public SectionTitleItemModel_ m390onVisibilityStateChanged(m0<SectionTitleItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // com.airbnb.epoxy.u
    public SectionTitleItemModel_ reset() {
        this.title = null;
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public SectionTitleItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public SectionTitleItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public SectionTitleItemModel_ m391spanSizeOverride(@Nullable u.c cVar) {
        super.m391spanSizeOverride(cVar);
        return this;
    }

    public String title() {
        return this.title;
    }

    @Override // sg.g
    public SectionTitleItemModel_ title(String str) {
        onMutation();
        this.title = str;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "SectionTitleItemModel_{title=" + this.title + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((SectionTitleItemModel_) cVar);
    }
}
