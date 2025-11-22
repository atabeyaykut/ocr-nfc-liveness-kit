package tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model;

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
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.l;
import xf.j;

/* loaded from: classes3.dex */
public class EditorChoiceServiceItemModel_ extends EditorChoiceServiceItemModel implements y<c>, j {
    private i0<EditorChoiceServiceItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<EditorChoiceServiceItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<EditorChoiceServiceItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<EditorChoiceServiceItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

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
        if (!(obj instanceof EditorChoiceServiceItemModel_) || !super.equals(obj)) {
            return false;
        }
        EditorChoiceServiceItemModel_ editorChoiceServiceItemModel_ = (EditorChoiceServiceItemModel_) obj;
        editorChoiceServiceItemModel_.getClass();
        ServiceModelRealm serviceModelRealm = this.service;
        if (serviceModelRealm == null ? editorChoiceServiceItemModel_.service != null : !serviceModelRealm.equals(editorChoiceServiceItemModel_.service)) {
            return false;
        }
        l<? super ServiceModelRealm, m> lVar = this.listener;
        l<? super ServiceModelRealm, m> lVar2 = editorChoiceServiceItemModel_.listener;
        return lVar == null ? lVar2 == null : lVar.equals(lVar2);
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
        ServiceModelRealm serviceModelRealm = this.service;
        int r03 = (r02 + (serviceModelRealm != null ? serviceModelRealm.hashCode() : 0)) * 31;
        l<? super ServiceModelRealm, m> lVar = this.listener;
        return r03 + (lVar != null ? lVar.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public EditorChoiceServiceItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public EditorChoiceServiceItemModel_ m116id(long j10) {
        super.m284id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public EditorChoiceServiceItemModel_ m117id(long j10, long j11) {
        super.m285id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public EditorChoiceServiceItemModel_ m118id(@Nullable CharSequence charSequence) {
        super.m286id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public EditorChoiceServiceItemModel_ m119id(@Nullable CharSequence charSequence, long j10) {
        super.m287id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public EditorChoiceServiceItemModel_ m120id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m288id(charSequence, charSequenceArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public EditorChoiceServiceItemModel_ m121id(@Nullable Number... numberArr) {
        super.mo289id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public EditorChoiceServiceItemModel_ m122layout(@LayoutRes int r12) {
        super.m290layout(r12);
        return this;
    }

    public EditorChoiceServiceItemModel_ listener(l<? super ServiceModelRealm, m> lVar) {
        onMutation();
        this.listener = lVar;
        return this;
    }

    public l<? super ServiceModelRealm, m> listener() {
        return this.listener;
    }

    /* renamed from: listener, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j m123listener(l lVar) {
        return listener((l<? super ServiceModelRealm, m>) lVar);
    }

    public EditorChoiceServiceItemModel_ onBind(i0<EditorChoiceServiceItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j m124onBind(i0 i0Var) {
        return onBind((i0<EditorChoiceServiceItemModel_, c>) i0Var);
    }

    public EditorChoiceServiceItemModel_ onUnbind(k0<EditorChoiceServiceItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j m125onUnbind(k0 k0Var) {
        return onUnbind((k0<EditorChoiceServiceItemModel_, c>) k0Var);
    }

    public EditorChoiceServiceItemModel_ onVisibilityChanged(l0<EditorChoiceServiceItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j m126onVisibilityChanged(l0 l0Var) {
        return onVisibilityChanged((l0<EditorChoiceServiceItemModel_, c>) l0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public EditorChoiceServiceItemModel_ onVisibilityStateChanged(m0<EditorChoiceServiceItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j m127onVisibilityStateChanged(m0 m0Var) {
        return onVisibilityStateChanged((m0<EditorChoiceServiceItemModel_, c>) m0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // com.airbnb.epoxy.u
    public EditorChoiceServiceItemModel_ reset() {
        this.service = null;
        this.listener = null;
        super.reset();
        return this;
    }

    /* renamed from: service, reason: merged with bridge method [inline-methods] */
    public EditorChoiceServiceItemModel_ m128service(ServiceModelRealm serviceModelRealm) {
        onMutation();
        this.service = serviceModelRealm;
        return this;
    }

    public ServiceModelRealm service() {
        return this.service;
    }

    @Override // com.airbnb.epoxy.u
    public EditorChoiceServiceItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public EditorChoiceServiceItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public EditorChoiceServiceItemModel_ m129spanSizeOverride(@Nullable u.c cVar) {
        super.m295spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "EditorChoiceServiceItemModel_{service=" + this.service + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((EditorChoiceServiceItemModel_) cVar);
    }
}
