.class public final Lla/f;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lpa/n;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lla/e;

.field public final synthetic b:Lbc/l;


# direct methods
.method public constructor <init>(Lla/e;Lbc/l;)V
    .locals 0

    iput-object p1, p0, Lla/f;->a:Lla/e;

    iput-object p2, p0, Lla/f;->b:Lbc/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v7, Lpa/n;

    .line 2
    .line 3
    iget-object v0, p0, Lla/f;->a:Lla/e;

    .line 4
    .line 5
    iget-object v1, v0, Lla/e;->b:Lx9/l;

    .line 6
    .line 7
    iget-object v0, v0, Lla/e;->a:Lma/b0;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lma/j;

    .line 14
    .line 15
    sget-object v2, Lla/e;->g:Llb/f;

    .line 16
    .line 17
    sget-object v3, Lma/a0;->d:Lma/a0;

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    invoke-interface {v0}, Lma/b0;->m()Lja/k;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lja/k;->f()Lcc/m0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    move-object v5, v0

    .line 33
    check-cast v5, Ljava/util/Collection;

    .line 34
    .line 35
    iget-object v6, p0, Lla/f;->b:Lbc/l;

    .line 36
    .line 37
    move-object v0, v7

    .line 38
    invoke-direct/range {v0 .. v6}, Lpa/n;-><init>(Lma/j;Llb/f;Lma/a0;ILjava/util/Collection;Lbc/l;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lla/a;

    .line 42
    .line 43
    iget-object v1, p0, Lla/f;->b:Lbc/l;

    .line 44
    .line 45
    invoke-direct {v0, v1, v7}, Lla/a;-><init>(Lbc/l;Lpa/n;)V

    .line 46
    .line 47
    .line 48
    sget-object v1, Lm9/x;->a:Lm9/x;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-virtual {v7, v0, v1, v2}, Lpa/n;->K0(Lvb/i;Ljava/util/Set;Lpa/l;)V

    .line 52
    .line 53
    .line 54
    return-object v7
.end method
