package com.airbnb.epoxy;

import java.util.List;

/* loaded from: classes.dex */
public class SimpleEpoxyController extends p {
    private List<? extends u<?>> currentModels;
    private boolean insideSetModels;

    @Override // com.airbnb.epoxy.p
    public final void buildModels() {
        if (!isBuildingModels()) {
            throw new c0("You cannot call `buildModels` directly. Call `setModels` instead.");
        }
        add(this.currentModels);
    }

    @Override // com.airbnb.epoxy.p
    public final void requestModelBuild() {
        if (!this.insideSetModels) {
            throw new c0("You cannot call `requestModelBuild` directly. Call `setModels` instead.");
        }
        super.requestModelBuild();
    }

    public void setModels(List<? extends u<?>> list) {
        this.currentModels = list;
        this.insideSetModels = true;
        requestModelBuild();
        this.insideSetModels = false;
    }
}
