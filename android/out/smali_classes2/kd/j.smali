.class public final Lkd/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkd/j$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkd/j$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkd/j;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lkd/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()D
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lkd/j;->a:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lkd/j$a;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    iget-wide v5, v2, Lkd/j$a;->b:J

    .line 30
    .line 31
    sub-long/2addr v3, v5

    .line 32
    const-wide/16 v5, 0x4e20

    .line 33
    .line 34
    cmp-long v7, v3, v5

    .line 35
    .line 36
    if-gez v7, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iput-object v0, p0, Lkd/j;->a:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    monitor-exit p0

    .line 48
    iget-object v0, p0, Lkd/j;->a:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    add-int/lit8 v1, v0, -0x1

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    const/4 v3, 0x2

    .line 58
    if-le v0, v3, :cond_2

    .line 59
    .line 60
    div-int/lit8 v1, v0, 0xa

    .line 61
    .line 62
    add-int/lit8 v4, v1, 0x1

    .line 63
    .line 64
    sub-int v1, v0, v1

    .line 65
    .line 66
    sub-int/2addr v1, v3

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    const/4 v4, 0x0

    .line 69
    :goto_1
    const-wide/16 v5, 0x0

    .line 70
    .line 71
    move v7, v4

    .line 72
    :goto_2
    if-gt v7, v1, :cond_3

    .line 73
    .line 74
    iget-object v8, p0, Lkd/j;->a:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    check-cast v8, Lkd/j$a;

    .line 81
    .line 82
    iget-object v8, v8, Lkd/j$a;->a:Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    int-to-double v8, v8

    .line 89
    add-double/2addr v5, v8

    .line 90
    add-int/lit8 v7, v7, 0x1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    sub-int/2addr v1, v4

    .line 94
    const/4 v4, 0x1

    .line 95
    add-int/2addr v1, v4

    .line 96
    int-to-double v7, v1

    .line 97
    div-double/2addr v5, v7

    .line 98
    const-string v1, "RunningAverageRssiFilter"

    .line 99
    .line 100
    const-string v7, "Running average mRssi based on %s measurements: %s"

    .line 101
    .line 102
    new-array v3, v3, [Ljava/lang/Object;

    .line 103
    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    aput-object v0, v3, v2

    .line 109
    .line 110
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    aput-object v0, v3, v4

    .line 115
    .line 116
    invoke-static {v1, v7, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    return-wide v5

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    monitor-exit p0

    .line 122
    throw v0
.end method

.method public final c(Ljava/lang/Integer;)V
    .locals 3

    new-instance v0, Lkd/j$a;

    invoke-direct {v0}, Lkd/j$a;-><init>()V

    iput-object p1, v0, Lkd/j$a;->a:Ljava/lang/Integer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lkd/j$a;->b:J

    iget-object p1, p0, Lkd/j;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lkd/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
