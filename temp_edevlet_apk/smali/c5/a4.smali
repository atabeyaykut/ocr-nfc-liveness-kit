.class public final Lc5/a4;
.super Landroidx/collection/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache<",
        "Ljava/lang/String;",
        "Lcom/google/android/gms/internal/measurement/s0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/c4;


# direct methods
.method public constructor <init>(Lc5/c4;)V
    .locals 0

    iput-object p1, p0, Lc5/a4;->a:Lc5/c4;

    const/16 p1, 0x14

    invoke-direct {p0, p1}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc5/a4;->a:Lc5/c4;

    .line 7
    .line 8
    invoke-virtual {v0}, Lc5/j7;->c()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/qb;->c()V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 18
    .line 19
    check-cast v1, Lc5/i4;

    .line 20
    .line 21
    iget-object v1, v1, Lc5/i4;->g:Lc5/e;

    .line 22
    .line 23
    sget-object v2, Lc5/r2;->q0:Lc5/q2;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v1, v3, v2}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {v0, p1}, Lc5/c4;->n(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget-object v1, v0, Lc5/c4;->g:Landroidx/collection/ArrayMap;

    .line 41
    .line 42
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/google/android/gms/internal/measurement/w2;

    .line 59
    .line 60
    invoke-virtual {v0, p1, v1}, Lc5/c4;->u(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/w2;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v0, p1}, Lc5/c4;->t(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    iget-object v0, v0, Lc5/c4;->j:Lc5/a4;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/collection/LruCache;->snapshot()Ljava/util/Map;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    move-object v3, p1

    .line 78
    check-cast v3, Lcom/google/android/gms/internal/measurement/s0;

    .line 79
    .line 80
    :goto_1
    return-object v3
.end method
