.class public final Lc5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:Lc5/u1;


# direct methods
.method public constructor <init>(Lc5/u1;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lc5/a;->c:Lc5/u1;

    iput-object p2, p0, Lc5/a;->a:Ljava/lang/String;

    iput-wide p3, p0, Lc5/a;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lc5/a;->c:Lc5/u1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc5/t2;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lc5/a;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Lc5/u1;->c:Landroidx/collection/ArrayMap;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    iget-wide v4, p0, Lc5/a;->b:J

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    iput-wide v4, v0, Lc5/u1;->d:J

    .line 22
    .line 23
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/Integer;

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-int/2addr v0, v6

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const/16 v7, 0x64

    .line 50
    .line 51
    if-lt v3, v7, :cond_2

    .line 52
    .line 53
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 54
    .line 55
    check-cast v0, Lc5/i4;

    .line 56
    .line 57
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 58
    .line 59
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 60
    .line 61
    .line 62
    const-string v1, "Too many ads visible"

    .line 63
    .line 64
    iget-object v0, v0, Lc5/e3;->j:Lc5/c3;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    iget-object v0, v0, Lc5/u1;->b:Landroidx/collection/ArrayMap;

    .line 78
    .line 79
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void
.end method
