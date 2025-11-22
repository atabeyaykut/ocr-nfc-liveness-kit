.class public abstract Lyb/r;
.super Lpa/i0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Llb/c;Lbc/l;Lma/b0;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "module"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p1}, Lpa/i0;-><init>(Lma/b0;Llb/c;)V

    return-void
.end method


# virtual methods
.method public abstract E0()Lyb/f0;
.end method
