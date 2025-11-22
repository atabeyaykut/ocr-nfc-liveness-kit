.class public abstract Lcc/d;
.super Lcc/m0;
.source "SourceFile"


# instance fields
.field public final b:Ldc/n;

.field public final c:Z

.field public final d:Lec/e;


# direct methods
.method public constructor <init>(Ldc/n;Z)V
    .locals 1

    const-string v0, "originalTypeVariable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcc/m0;-><init>()V

    iput-object p1, p0, Lcc/d;->b:Ldc/n;

    iput-boolean p2, p0, Lcc/d;->c:Z

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const/4 p1, 0x5

    invoke-static {p1, p2}, Lec/i;->b(I[Ljava/lang/String;)Lec/e;

    move-result-object p1

    iput-object p1, p0, Lcc/d;->d:Lec/e;

    return-void
.end method


# virtual methods
.method public final K0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcc/i1;",
            ">;"
        }
    .end annotation

    sget-object v0, Lm9/v;->a:Lm9/v;

    return-object v0
.end method

.method public final L0()Lcc/a1;
    .locals 1

    .line 1
    sget-object v0, Lcc/a1;->b:Lcc/a1$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcc/a1;->c:Lcc/a1;

    .line 7
    .line 8
    return-object v0
.end method

.method public final N0()Z
    .locals 1

    iget-boolean v0, p0, Lcc/d;->c:Z

    return v0
.end method

.method public final O0(Ldc/f;)Lcc/e0;
    .locals 1

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final R0(Ldc/f;)Lcc/s1;
    .locals 1

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final S0(Lcc/a1;)Lcc/s1;
    .locals 1

    .line 1
    const-string v0, "newAttributes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final T0(Z)Lcc/m0;
    .locals 1

    iget-boolean v0, p0, Lcc/d;->c:Z

    if-ne p1, v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcc/d;->V0(Z)Lcc/u0;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final U0(Lcc/a1;)Lcc/m0;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public abstract V0(Z)Lcc/u0;
.end method

.method public o()Lvb/i;
    .locals 1

    iget-object v0, p0, Lcc/d;->d:Lec/e;

    return-object v0
.end method
