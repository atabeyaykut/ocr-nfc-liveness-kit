.class public final Lc5/x;
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

    iput-object p1, p0, Lc5/x;->c:Lc5/u1;

    iput-object p2, p0, Lc5/x;->a:Ljava/lang/String;

    iput-wide p3, p0, Lc5/x;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lc5/x;->c:Lc5/u1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc5/t2;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lc5/x;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Lc5/u1;->c:Landroidx/collection/ArrayMap;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Ljava/lang/Integer;

    .line 18
    .line 19
    iget-object v4, v0, Lc5/x4;->a:Lc5/z4;

    .line 20
    .line 21
    check-cast v4, Lc5/i4;

    .line 22
    .line 23
    if-eqz v3, :cond_3

    .line 24
    .line 25
    iget-object v5, v4, Lc5/i4;->q:Lc5/f6;

    .line 26
    .line 27
    invoke-static {v5}, Lc5/i4;->d(Lc5/r3;)V

    .line 28
    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    invoke-virtual {v5, v6}, Lc5/f6;->o(Z)Lc5/b6;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    add-int/lit8 v3, v3, -0x1

    .line 40
    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    iget-object v3, v0, Lc5/u1;->b:Landroidx/collection/ArrayMap;

    .line 47
    .line 48
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    check-cast v6, Ljava/lang/Long;

    .line 53
    .line 54
    iget-object v4, v4, Lc5/i4;->j:Lc5/e3;

    .line 55
    .line 56
    iget-wide v7, p0, Lc5/x;->b:J

    .line 57
    .line 58
    if-nez v6, :cond_0

    .line 59
    .line 60
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 61
    .line 62
    .line 63
    const-string v1, "First ad unit exposure time was never set"

    .line 64
    .line 65
    iget-object v3, v4, Lc5/e3;->f:Lc5/c3;

    .line 66
    .line 67
    invoke-virtual {v3, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 72
    .line 73
    .line 74
    move-result-wide v9

    .line 75
    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    sub-long v9, v7, v9

    .line 79
    .line 80
    invoke-virtual {v0, v1, v9, v10, v5}, Lc5/u1;->h(Ljava/lang/String;JLc5/b6;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    iget-wide v1, v0, Lc5/u1;->d:J

    .line 90
    .line 91
    const-wide/16 v9, 0x0

    .line 92
    .line 93
    cmp-long v3, v1, v9

    .line 94
    .line 95
    if-nez v3, :cond_1

    .line 96
    .line 97
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 98
    .line 99
    .line 100
    const-string v0, "First ad exposure time was never set"

    .line 101
    .line 102
    iget-object v1, v4, Lc5/e3;->f:Lc5/c3;

    .line 103
    .line 104
    invoke-virtual {v1, v0}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    sub-long/2addr v7, v1

    .line 109
    invoke-virtual {v0, v7, v8, v5}, Lc5/u1;->g(JLc5/b6;)V

    .line 110
    .line 111
    .line 112
    iput-wide v9, v0, Lc5/u1;->d:J

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    iget-object v0, v4, Lc5/i4;->j:Lc5/e3;

    .line 124
    .line 125
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 126
    .line 127
    .line 128
    const-string v2, "Call to endAdUnitExposure for unknown ad unit id"

    .line 129
    .line 130
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 131
    .line 132
    invoke-virtual {v0, v1, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    :goto_1
    return-void
.end method
