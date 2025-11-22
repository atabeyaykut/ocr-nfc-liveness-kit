package com.airbnb.epoxy;

import android.os.Handler;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public abstract class TypedEpoxyController<T> extends p {
    private boolean allowModelBuildRequests;
    private T currentData;

    public TypedEpoxyController() {
    }

    public TypedEpoxyController(Handler handler, Handler handler2) {
        super(handler, handler2);
    }

    @Override // com.airbnb.epoxy.p
    public final void buildModels() {
        if (!isBuildingModels()) {
            throw new IllegalStateException("You cannot call `buildModels` directly. Call `setData` instead to trigger a model refresh with new data.");
        }
        buildModels(this.currentData);
    }

    public abstract void buildModels(T t10);

    @Nullable
    public final T getCurrentData() {
        return this.currentData;
    }

    @Override // com.airbnb.epoxy.p
    public void moveModel(int r22, int r32) {
        this.allowModelBuildRequests = true;
        super.moveModel(r22, r32);
        this.allowModelBuildRequests = false;
    }

    @Override // com.airbnb.epoxy.p
    public void requestDelayedModelBuild(int r22) {
        if (!this.allowModelBuildRequests) {
            throw new IllegalStateException("You cannot call `requestModelBuild` directly. Call `setData` instead to trigger a model refresh with new data.");
        }
        super.requestDelayedModelBuild(r22);
    }

    @Override // com.airbnb.epoxy.p
    public final void requestModelBuild() {
        if (!this.allowModelBuildRequests) {
            throw new IllegalStateException("You cannot call `requestModelBuild` directly. Call `setData` instead to trigger a model refresh with new data.");
        }
        super.requestModelBuild();
    }

    public final void setData(T t10) {
        this.currentData = t10;
        this.allowModelBuildRequests = true;
        requestModelBuild();
        this.allowModelBuildRequests = false;
    }
}
