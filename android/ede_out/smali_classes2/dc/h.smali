.class public final Ldc/h;
.super Lcc/m0;
.source "SourceFile"

# interfaces
.implements Lfc/d;


# instance fields
.field public final b:Lfc/b;

.field public final c:Ldc/j;

.field public final d:Lcc/s1;

.field public final e:Lcc/a1;

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Lfc/b;Ldc/j;Lcc/s1;Lcc/a1;ZI)V
    .locals 7

    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_0

    sget-object p4, Lcc/a1;->b:Lcc/a1$a;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object p4, Lcc/a1;->c:Lcc/a1;

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    move v5, p5

    :goto_0
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2
    invoke-direct/range {v0 .. v6}, Ldc/h;-><init>(Lfc/b;Ldc/j;Lcc/s1;Lcc/a1;ZZ)V

    return-void
.end method

.method public constructor <init>(Lfc/b;Ldc/j;Lcc/s1;Lcc/a1;ZZ)V
    .locals 1

    const-string v0, "captureStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcc/m0;-><init>()V

    iput-object p1, p0, Ldc/h;->b:Lfc/b;

    iput-object p2, p0, Ldc/h;->c:Ldc/j;

    iput-object p3, p0, Ldc/h;->d:Lcc/s1;

    iput-object p4, p0, Ldc/h;->e:Lcc/a1;

    iput-boolean p5, p0, Ldc/h;->f:Z

    iput-boolean p6, p0, Ldc/h;->g:Z

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

    iget-object v0, p0, Ldc/h;->e:Lcc/a1;

    return-object v0
.end method

.method public final M0()Lcc/c1;
    .locals 1

    iget-object v0, p0, Ldc/h;->c:Ldc/j;

    return-object v0
.end method

.method public final N0()Z
    .locals 1

    iget-boolean v0, p0, Ldc/h;->f:Z

    return v0
.end method

.method public final bridge synthetic O0(Ldc/f;)Lcc/e0;
    .locals 0

    invoke-virtual {p0, p1}, Ldc/h;->V0(Ldc/f;)Ldc/h;

    move-result-object p1

    return-object p1
.end method

.method public final Q0(Z)Lcc/s1;
    .locals 8

    .line 1
    new-instance v7, Ldc/h;

    .line 2
    .line 3
    iget-object v1, p0, Ldc/h;->b:Lfc/b;

    .line 4
    .line 5
    iget-object v2, p0, Ldc/h;->c:Ldc/j;

    .line 6
    .line 7
    iget-object v3, p0, Ldc/h;->d:Lcc/s1;

    .line 8
    .line 9
    iget-object v4, p0, Ldc/h;->e:Lcc/a1;

    .line 10
    .line 11
    const/16 v6, 0x20

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    move v5, p1

    .line 15
    invoke-direct/range {v0 .. v6}, Ldc/h;-><init>(Lfc/b;Ldc/j;Lcc/s1;Lcc/a1;ZI)V

    .line 16
    .line 17
    .line 18
    return-object v7
.end method

.method public final bridge synthetic R0(Ldc/f;)Lcc/s1;
    .locals 0

    invoke-virtual {p0, p1}, Ldc/h;->V0(Ldc/f;)Ldc/h;

    move-result-object p1

    return-object p1
.end method

.method public final T0(Z)Lcc/m0;
    .locals 8

    .line 1
    new-instance v7, Ldc/h;

    .line 2
    .line 3
    iget-object v1, p0, Ldc/h;->b:Lfc/b;

    .line 4
    .line 5
    iget-object v2, p0, Ldc/h;->c:Ldc/j;

    .line 6
    .line 7
    iget-object v3, p0, Ldc/h;->d:Lcc/s1;

    .line 8
    .line 9
    iget-object v4, p0, Ldc/h;->e:Lcc/a1;

    .line 10
    .line 11
    const/16 v6, 0x20

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    move v5, p1

    .line 15
    invoke-direct/range {v0 .. v6}, Ldc/h;-><init>(Lfc/b;Ldc/j;Lcc/s1;Lcc/a1;ZI)V

    .line 16
    .line 17
    .line 18
    return-object v7
.end method

.method public final U0(Lcc/a1;)Lcc/m0;
    .locals 8

    .line 1
    const-string v0, "newAttributes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ldc/h;

    .line 7
    .line 8
    iget-object v2, p0, Ldc/h;->b:Lfc/b;

    .line 9
    .line 10
    iget-object v3, p0, Ldc/h;->c:Ldc/j;

    .line 11
    .line 12
    iget-object v4, p0, Ldc/h;->d:Lcc/s1;

    .line 13
    .line 14
    iget-boolean v6, p0, Ldc/h;->f:Z

    .line 15
    .line 16
    iget-boolean v7, p0, Ldc/h;->g:Z

    .line 17
    .line 18
    move-object v1, v0

    .line 19
    move-object v5, p1

    .line 20
    invoke-direct/range {v1 .. v7}, Ldc/h;-><init>(Lfc/b;Ldc/j;Lcc/s1;Lcc/a1;ZZ)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final V0(Ldc/f;)Ldc/h;
    .locals 8

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Ldc/h;->b:Lfc/b;

    .line 7
    .line 8
    iget-object v0, p0, Ldc/h;->c:Ldc/j;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ldc/j;->c(Ldc/f;)Ldc/j;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    iget-object v0, p0, Ldc/h;->d:Lcc/s1;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ldc/f;->x(Lfc/h;)Lcc/e0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcc/e0;->P0()Lcc/s1;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    move-object v4, p1

    .line 29
    iget-object v5, p0, Ldc/h;->e:Lcc/a1;

    .line 30
    .line 31
    iget-boolean v6, p0, Ldc/h;->f:Z

    .line 32
    .line 33
    const/16 v7, 0x20

    .line 34
    .line 35
    new-instance p1, Ldc/h;

    .line 36
    .line 37
    move-object v1, p1

    .line 38
    invoke-direct/range {v1 .. v7}, Ldc/h;-><init>(Lfc/b;Ldc/j;Lcc/s1;Lcc/a1;ZI)V

    .line 39
    .line 40
    .line 41
    return-object p1
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
