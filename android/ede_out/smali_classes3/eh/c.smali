.class public interface abstract Leh/c;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract carItem(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;)Leh/c;
.end method

.method public abstract id(Ljava/lang/CharSequence;)Leh/c;
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract selectCar(Lx9/l;)Leh/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;",
            "Ll9/m;",
            ">;)",
            "Leh/c;"
        }
    .end annotation
.end method

.method public abstract selectedCarPlateNumber(Ljava/lang/String;)Leh/c;
.end method

.method public abstract unselectCar(Lx9/l;)Leh/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;",
            "Ll9/m;",
            ">;)",
            "Leh/c;"
        }
    .end annotation
.end method
