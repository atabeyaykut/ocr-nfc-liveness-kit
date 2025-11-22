.class public abstract Lza/y;
.super Lza/o;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lp4/g7;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lza/o;-><init>(Lp4/g7;Lza/o;)V

    return-void
.end method


# virtual methods
.method public n(Ljava/util/ArrayList;Llb/f;)V
    .locals 0

    const-string p1, "name"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final p()Lma/o0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final s(Lcb/q;Ljava/util/ArrayList;Lcc/e0;Ljava/util/List;)Lza/o$a;
    .locals 1

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "valueParameters"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lza/o$a;

    sget-object v0, Lm9/v;->a:Lm9/v;

    invoke-direct {p1, p4, p2, v0, p3}, Lza/o$a;-><init>(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;Lcc/e0;)V

    return-object p1
.end method
