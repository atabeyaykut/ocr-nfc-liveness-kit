package com.airbnb.epoxy;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.FloatRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import com.airbnb.epoxy.p;
import java.util.List;

/* loaded from: classes.dex */
public abstract class u<T> {
    private static long idCounter = -1;
    boolean addedToAdapter;
    p controllerToStageTo;
    private boolean currentlyInInterceptors;
    private p firstControllerAddedTo;
    private boolean hasDefaultId;
    private int hashCodeWhenAdded;

    /* renamed from: id, reason: collision with root package name */
    private long f2661id;

    @LayoutRes
    private int layout;
    private boolean shown;

    @Nullable
    private c spanSizeOverride;

    public class a implements p.f {
        public a() {
        }

        @Override // com.airbnb.epoxy.p.f
        public final void a() {
            u uVar = u.this;
            uVar.hashCodeWhenAdded = uVar.hashCode();
            uVar.currentlyInInterceptors = false;
        }

        @Override // com.airbnb.epoxy.p.f
        public final void b() {
            u.this.currentlyInInterceptors = true;
        }
    }

    public interface b {
        boolean a();
    }

    public interface c {
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public u() {
        long j10 = idCounter;
        idCounter = j10 - 1;
        this(j10);
        this.hasDefaultId = true;
    }

    public u(long j10) {
        this.shown = true;
        id(j10);
    }

    private static int getPosition(@NonNull p pVar, @NonNull u<?> uVar) {
        if (pVar.isBuildingModels()) {
            return pVar.getFirstIndexOfModelInBuildingList(uVar);
        }
        q adapter = pVar.getAdapter();
        int size = adapter.f2609g.f.size();
        for (int r12 = 0; r12 < size; r12++) {
            if (adapter.f2609g.f.get(r12).id() == uVar.id()) {
                return r12;
            }
        }
        return -1;
    }

    public void addIf(@NonNull b bVar, @NonNull p pVar) {
        addIf(bVar.a(), pVar);
    }

    public void addIf(boolean z10, @NonNull p pVar) {
        if (z10) {
            addTo(pVar);
            return;
        }
        p pVar2 = this.controllerToStageTo;
        if (pVar2 != null) {
            pVar2.clearModelFromStaging(this);
            this.controllerToStageTo = null;
        }
    }

    public void addTo(@NonNull p pVar) {
        pVar.addInternal(this);
    }

    public final void addWithDebugValidation(@NonNull p pVar) {
        if (pVar == null) {
            throw new IllegalArgumentException("Controller cannot be null");
        }
        if (pVar.isModelAddedMultipleTimes(this)) {
            throw new c0("This model was already added to the controller at position " + pVar.getFirstIndexOfModelInBuildingList(this));
        }
        if (this.firstControllerAddedTo == null) {
            this.firstControllerAddedTo = pVar;
            this.hashCodeWhenAdded = hashCode();
            pVar.addAfterInterceptorCallback(new a());
        }
    }

    public void bind(@NonNull T t10) {
    }

    public void bind(@NonNull T t10, @NonNull u<?> uVar) {
        bind(t10);
    }

    public void bind(@NonNull T t10, @NonNull List<Object> list) {
        bind(t10);
    }

    public View buildView(@NonNull ViewGroup viewGroup) {
        return LayoutInflater.from(viewGroup.getContext()).inflate(getLayout(), viewGroup, false);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return this.f2661id == uVar.f2661id && getViewType() == uVar.getViewType() && this.shown == uVar.shown;
    }

    @LayoutRes
    public abstract int getDefaultLayout();

    @LayoutRes
    public final int getLayout() {
        int r02 = this.layout;
        return r02 == 0 ? getDefaultLayout() : r02;
    }

    public int getSpanSize(int r12, int r22, int r32) {
        return 1;
    }

    public int getViewType() {
        return getLayout();
    }

    public boolean hasDefaultId() {
        return this.hasDefaultId;
    }

    public int hashCode() {
        long j10 = this.f2661id;
        return ((getViewType() + (((int) (j10 ^ (j10 >>> 32))) * 31)) * 31) + (this.shown ? 1 : 0);
    }

    @NonNull
    public u<T> hide() {
        return show(false);
    }

    public long id() {
        return this.f2661id;
    }

    public u<T> id(long j10) {
        if ((this.addedToAdapter || this.firstControllerAddedTo != null) && j10 != this.f2661id) {
            throw new c0("Cannot change a model's id after it has been added to the adapter.");
        }
        this.hasDefaultId = false;
        this.f2661id = j10;
        return this;
    }

    public u<T> id(long j10, long j11) {
        return id(b0.a(j11) + (b0.a(j10) * 31));
    }

    public u<T> id(@Nullable CharSequence charSequence) {
        id(b0.b(charSequence));
        return this;
    }

    public u<T> id(@Nullable CharSequence charSequence, long j10) {
        id(b0.a(j10) + (b0.b(charSequence) * 31));
        return this;
    }

    public u<T> id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        long jB = b0.b(charSequence);
        if (charSequenceArr != null) {
            for (CharSequence charSequence2 : charSequenceArr) {
                jB = (jB * 31) + b0.b(charSequence2);
            }
        }
        return id(jB);
    }

    public u<T> id(@Nullable Number... numberArr) {
        long j10 = 0;
        if (numberArr != null) {
            long jA = 0;
            for (Number number : numberArr) {
                jA = (jA * 31) + b0.a(number == null ? 0L : r6.hashCode());
            }
            j10 = jA;
        }
        return id(j10);
    }

    public boolean isDebugValidationEnabled() {
        return this.firstControllerAddedTo != null;
    }

    public boolean isShown() {
        return this.shown;
    }

    @NonNull
    public u<T> layout(@LayoutRes int r12) {
        onMutation();
        this.layout = r12;
        return this;
    }

    public boolean onFailedToRecycleView(@NonNull T t10) {
        return false;
    }

    public final void onMutation() {
        if (isDebugValidationEnabled() && !this.currentlyInInterceptors) {
            throw new d0(this, "", getPosition(this.firstControllerAddedTo, this));
        }
        p pVar = this.controllerToStageTo;
        if (pVar != null) {
            pVar.setStagedModel(this);
        }
    }

    public void onViewAttachedToWindow(@NonNull T t10) {
    }

    public void onViewDetachedFromWindow(@NonNull T t10) {
    }

    public void onVisibilityChanged(@FloatRange(from = 0.0d, to = 100.0d) float f, @FloatRange(from = 0.0d, to = 100.0d) float f10, @Px int r32, @Px int r42, @NonNull T t10) {
    }

    public void onVisibilityStateChanged(int r12, @NonNull T t10) {
    }

    public void preBind(@NonNull T t10, @Nullable u<?> uVar) {
    }

    @NonNull
    public u<T> reset() {
        onMutation();
        this.layout = 0;
        this.shown = true;
        return this;
    }

    public boolean shouldSaveViewState() {
        return false;
    }

    @NonNull
    public u<T> show() {
        return show(true);
    }

    @NonNull
    public u<T> show(boolean z10) {
        onMutation();
        this.shown = z10;
        return this;
    }

    public final int spanSize(int r12, int r22, int r32) {
        return getSpanSize(r12, r22, r32);
    }

    public u<T> spanSizeOverride(@Nullable c cVar) {
        return this;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getClass().getSimpleName());
        sb2.append("{id=");
        sb2.append(this.f2661id);
        sb2.append(", viewType=");
        sb2.append(getViewType());
        sb2.append(", shown=");
        sb2.append(this.shown);
        sb2.append(", addedToAdapter=");
        return androidx.browser.browseractions.b.f(sb2, this.addedToAdapter, '}');
    }

    public void unbind(@NonNull T t10) {
    }

    public final void validateStateHasNotChangedSinceAdded(String str, int r42) {
        if (isDebugValidationEnabled() && !this.currentlyInInterceptors && this.hashCodeWhenAdded != hashCode()) {
            throw new d0(this, str, r42);
        }
    }
}
