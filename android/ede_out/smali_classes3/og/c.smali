.class public interface abstract Log/c;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public varargs abstract id([Ljava/lang/Number;)Log/c;
    .param p1    # [Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract listener(Lx9/l;)Log/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            "Ll9/m;",
            ">;)",
            "Log/c;"
        }
    .end annotation
.end method

.method public abstract service(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)Log/c;
.end method
