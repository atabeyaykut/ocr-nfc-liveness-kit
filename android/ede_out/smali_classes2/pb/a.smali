.class public final Lpb/a;
.super Lcc/m0;
.source "SourceFile"

# interfaces
.implements Lfc/d;


# instance fields
.field public final b:Lcc/i1;

.field public final c:Lpb/b;

.field public final d:Z

.field public final e:Lcc/a1;


# direct methods
.method public constructor <init>(Lcc/i1;Lpb/b;ZLcc/a1;)V
    .locals 1

    const-string v0, "typeProjection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcc/m0;-><init>()V

    iput-object p1, p0, Lpb/a;->b:Lcc/i1;

    iput-object p2, p0, Lpb/a;->c:Lpb/b;

    iput-boolean p3, p0, Lpb/a;->d:Z

    iput-object p4, p0, Lpb/a;->e:Lcc/a1;

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

    iget-object v0, p0, Lpb/a;->e:Lcc/a1;

    return-object v0
.end method

.method public final M0()Lcc/c1;
    .locals 1

    iget-object v0, p0, Lpb/a;->c:Lpb/b;

    return-object v0
.end method

.method public final N0()Z
    .locals 1

    iget-boolean v0, p0, Lpb/a;->d:Z

    return v0
.end method

.method public final O0(Ldc/f;)Lcc/e0;
    .locals 4

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lpb/a;

    .line 7
    .line 8
    iget-object v1, p0, Lpb/a;->b:Lcc/i1;

    .line 9
    .line 10
    invoke-interface {v1, p1}, Lcc/i1;->a(Ldc/f;)Lcc/i1;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v1, "typeProjection.refine(kotlinTypeRefiner)"

    .line 15
    .line 16
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-boolean v1, p0, Lpb/a;->d:Z

    .line 20
    .line 21
    iget-object v2, p0, Lpb/a;->e:Lcc/a1;

    .line 22
    .line 23
    iget-object v3, p0, Lpb/a;->c:Lpb/b;

    .line 24
    .line 25
    invoke-direct {v0, p1, v3, v1, v2}, Lpb/a;-><init>(Lcc/i1;Lpb/b;ZLcc/a1;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public final Q0(Z)Lcc/s1;
    .locals 4

    iget-boolean v0, p0, Lpb/a;->d:Z

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lpb/a;

    iget-object v1, p0, Lpb/a;->c:Lpb/b;

    iget-object v2, p0, Lpb/a;->e:Lcc/a1;

    iget-object v3, p0, Lpb/a;->b:Lcc/i1;

    invoke-direct {v0, v3, v1, p1, v2}, Lpb/a;-><init>(Lcc/i1;Lpb/b;ZLcc/a1;)V

    :goto_0
    return-object v0
.end method

.method public final R0(Ldc/f;)Lcc/s1;
    .locals 4

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lpb/a;

    .line 7
    .line 8
    iget-object v1, p0, Lpb/a;->b:Lcc/i1;

    .line 9
    .line 10
    invoke-interface {v1, p1}, Lcc/i1;->a(Ldc/f;)Lcc/i1;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v1, "typeProjection.refine(kotlinTypeRefiner)"

    .line 15
    .line 16
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-boolean v1, p0, Lpb/a;->d:Z

    .line 20
    .line 21
    iget-object v2, p0, Lpb/a;->e:Lcc/a1;

    .line 22
    .line 23
    iget-object v3, p0, Lpb/a;->c:Lpb/b;

    .line 24
    .line 25
    invoke-direct {v0, p1, v3, v1, v2}, Lpb/a;-><init>(Lcc/i1;Lpb/b;ZLcc/a1;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public final T0(Z)Lcc/m0;
    .locals 4

    iget-boolean v0, p0, Lpb/a;->d:Z

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lpb/a;

    iget-object v1, p0, Lpb/a;->c:Lpb/b;

    iget-object v2, p0, Lpb/a;->e:Lcc/a1;

    iget-object v3, p0, Lpb/a;->b:Lcc/i1;

    invoke-direct {v0, v3, v1, p1, v2}, Lpb/a;-><init>(Lcc/i1;Lpb/b;ZLcc/a1;)V

    :goto_0
    return-object v0
.end method

.method public final U0(Lcc/a1;)Lcc/m0;
    .locals 4

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpb/a;

    iget-object v1, p0, Lpb/a;->b:Lcc/i1;

    iget-object v2, p0, Lpb/a;->c:Lpb/b;

    iget-boolean v3, p0, Lpb/a;->d:Z

    invoke-direct {v0, v1, v2, v3, p1}, Lpb/a;-><init>(Lcc/i1;Lpb/b;ZLcc/a1;)V

    return-object v0
.end method

.method public final o()Lvb/i;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Lec/i;->a(IZ[Ljava/lang/String;)Lec/e;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Captured("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lpb/a;->b:Lcc/i1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lpb/a;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "?"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
