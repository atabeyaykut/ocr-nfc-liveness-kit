.class public final Lhc/c;
.super Lcc/e1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcc/e1;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Lcc/c1;)Lcc/i1;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lpb/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lpb/b;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p1}, Lpb/b;->b()Lcc/i1;

    move-result-object v0

    invoke-interface {v0}, Lcc/i1;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcc/k1;

    sget-object v1, Lcc/t1;->e:Lcc/t1;

    invoke-interface {p1}, Lpb/b;->b()Lcc/i1;

    move-result-object p1

    invoke-interface {p1}, Lcc/i1;->getType()Lcc/e0;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lcc/k1;-><init>(Lcc/e0;Lcc/t1;)V

    return-object v0

    :cond_2
    invoke-interface {p1}, Lpb/b;->b()Lcc/i1;

    move-result-object p1

    return-object p1
.end method
