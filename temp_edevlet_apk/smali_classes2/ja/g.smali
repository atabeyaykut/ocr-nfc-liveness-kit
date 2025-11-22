.class public final Lja/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx9/a<",
        "Ljava/util/Collection<",
        "Lma/i0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lja/k;


# direct methods
.method public constructor <init>(Lja/k;)V
    .locals 0

    iput-object p1, p0, Lja/g;->a:Lja/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lma/i0;

    .line 3
    .line 4
    iget-object v1, p0, Lja/g;->a:Lja/k;

    .line 5
    .line 6
    invoke-virtual {v1}, Lja/k;->l()Lpa/g0;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    sget-object v3, Lja/o;->k:Llb/c;

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Lpa/g0;->I0(Llb/c;)Lma/i0;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v2, v0, v3

    .line 18
    .line 19
    invoke-virtual {v1}, Lja/k;->l()Lpa/g0;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget-object v3, Lja/o;->m:Llb/c;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Lpa/g0;->I0(Llb/c;)Lma/i0;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x1

    .line 30
    aput-object v2, v0, v3

    .line 31
    .line 32
    invoke-virtual {v1}, Lja/k;->l()Lpa/g0;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    sget-object v3, Lja/o;->n:Llb/c;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Lpa/g0;->I0(Llb/c;)Lma/i0;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x2

    .line 43
    aput-object v2, v0, v3

    .line 44
    .line 45
    invoke-virtual {v1}, Lja/k;->l()Lpa/g0;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sget-object v2, Lja/o;->l:Llb/c;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lpa/g0;->I0(Llb/c;)Lma/i0;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v2, 0x3

    .line 56
    aput-object v1, v0, v2

    .line 57
    .line 58
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method
